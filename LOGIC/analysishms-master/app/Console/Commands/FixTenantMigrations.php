<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class FixTenantMigrations extends Command
{
    protected $signature = 'tenant:fix-migrations';

    protected $description = 'Fix and normalize generated tenant migrations';

    public function handle(): int
    {
        $migrationPath = database_path('migrations/tenant_migrations');

        $files = glob($migrationPath.'/*.php');

        if (! $files) {
            $this->error('No tenant migration files found.');

            return self::FAILURE;
        }

        /*
         * Get all AUTO_INCREMENT columns from the main database.
         */
        $autoIncrementColumns = DB::connection('main')->select("
            SELECT
                TABLE_NAME,
                COLUMN_NAME,
                COLUMN_TYPE
            FROM information_schema.COLUMNS
            WHERE TABLE_SCHEMA = DATABASE()
              AND EXTRA LIKE '%auto_increment%'
            ORDER BY TABLE_NAME, ORDINAL_POSITION
        ");

        /*
         * Get all PRIMARY KEY columns.
         */
        $primaryColumns = DB::connection('main')->select("
            SELECT
                TABLE_NAME,
                COLUMN_NAME
            FROM information_schema.KEY_COLUMN_USAGE
            WHERE TABLE_SCHEMA = DATABASE()
              AND CONSTRAINT_NAME = 'PRIMARY'
            ORDER BY TABLE_NAME, ORDINAL_POSITION
        ");

        $primaryMap = [];

        foreach ($primaryColumns as $primary) {
            $primaryMap[$primary->TABLE_NAME][] = $primary->COLUMN_NAME;
        }

        foreach ($files as $file) {
            $contents = file_get_contents($file);

            /*
             * Tenant migrations must use the tenant connection.
             */
            $contents = str_replace(
                "Schema::connection('main')",
                "Schema::connection('tenant')",
                $contents
            );

            /*
             * Find the table created by this migration.
             */
            if (! preg_match(
                "/->create\(\s*['\"]([^'\"]+)['\"]/",
                $contents,
                $tableMatch
            )) {
                file_put_contents($file, $contents);

                continue;
            }

            $tableName = $tableMatch[1];

            /*
             * Find AUTO_INCREMENT columns belonging to this table.
             */
            $tableAutoIncrementColumns = array_values(
                array_filter(
                    $autoIncrementColumns,
                    fn ($column) => $column->TABLE_NAME === $tableName
                )
            );

            /*
             * Get AUTO_INCREMENT column names.
             *
             * These columns are allowed to keep UNSIGNED.
             */
            $autoIncrementNames = array_map(
                fn ($column) => strtolower($column->COLUMN_NAME),
                $tableAutoIncrementColumns
            );

            /*
             * ---------------------------------------------------------
             * REMOVE UNSIGNED FROM NON-AUTO_INCREMENT INTEGER COLUMNS
             * ---------------------------------------------------------
             *
             * AUTO_INCREMENT columns are excluded because their
             * original UNSIGNED attribute must be preserved.
             */
            $contents = preg_replace_callback(
                '/(\\$table->(?:'
                .'bigIncrements|increments|integer|bigInteger|smallInteger|mediumInteger|tinyInteger'
                .")\\(\\s*['\"]([^'\"]+)['\"][^)]*\\)"
                .'(?:->[^;\\n]+)?)/i',
                function ($matches) use ($autoIncrementNames) {
                    $columnName = strtolower($matches[2]);

                    /*
                     * Preserve UNSIGNED for AUTO_INCREMENT columns.
                     */
                    if (in_array($columnName, $autoIncrementNames, true)) {
                        return $matches[1];
                    }

                    /*
                     * Remove UNSIGNED from all other integer columns.
                     */
                    return preg_replace(
                        '/->unsigned\\(\\)/i',
                        '',
                        $matches[1]
                    );
                },
                $contents
            );

            /*
             * ---------------------------------------------------------
             * NORMALIZE LEGACY TIMESTAMP COLUMNS
             * ---------------------------------------------------------
             *
             * created_at / created_at / created_at -> created_at
             * updated_at / updated_at / updated_at -> updated_at
             *
             * If both modern columns already exist, do not touch
             * timestamp naming in this migration.
             */
            $hasCreatedAt = preg_match(
                "/['\"]created_at['\"]/i",
                $contents
            );

            $hasUpdatedAt = preg_match(
                "/['\"]updated_at['\"]/i",
                $contents
            );

            if (! ($hasCreatedAt && $hasUpdatedAt)) {
                if (! $hasCreatedAt) {
                    $contents = $this->renameColumnCaseInsensitive(
                        $contents,
                        'created_at',
                        'created_at'
                    );
                }

                if (! $hasUpdatedAt) {
                    $contents = $this->renameColumnCaseInsensitive(
                        $contents,
                        'updated_at',
                        'updated_at'
                    );
                }
            }

            /*
             * ---------------------------------------------------------
             * PROCESS AUTO_INCREMENT COLUMNS
             * ---------------------------------------------------------
             */
            foreach ($tableAutoIncrementColumns as $column) {
                $oldColumn = $column->COLUMN_NAME;

                /*
                 * Only legacy identifier names are renamed.
                 *
                 * sn / SN / Sno / SNO / sno -> id
                 *
                 * Ordinary non-AUTO_INCREMENT sn fields were already
                 * excluded because we only process AUTO_INCREMENT here.
                 */
                $isLegacyIdentifier = in_array(
                    strtolower($oldColumn),
                    ['id', 'sno'],
                    true
                );

                $newColumn = $isLegacyIdentifier
                    ? 'id'
                    : $oldColumn;

                /*
                 * Check whether the AUTO_INCREMENT column is part
                 * of the PRIMARY KEY.
                 */
                $isPrimary = in_array(
                    $oldColumn,
                    $primaryMap[$tableName] ?? [],
                    true
                );

                /*
                 * -----------------------------------------------------
                 * PRIMARY AUTO_INCREMENT
                 * -----------------------------------------------------
                 *
                 * Laravel's increments()/bigIncrements() already
                 * creates AUTO_INCREMENT + PRIMARY KEY.
                 *
                 * Therefore we only rename sn/sno -> id here.
                 */
                if ($isPrimary) {
                    if ($newColumn !== $oldColumn) {
                        $contents = $this->renameColumn(
                            $contents,
                            $oldColumn,
                            $newColumn
                        );
                    }

                    continue;
                }

                /*
                 * -----------------------------------------------------
                 * NON-PRIMARY AUTO_INCREMENT
                 * -----------------------------------------------------
                 *
                 * Laravel's second parameter "true" creates a
                 * PRIMARY KEY automatically.
                 *
                 * Therefore remove the "true".
                 *
                 * Example:
                 *
                 * integer('id', true)
                 *
                 * becomes:
                 *
                 * integer('sn')
                 */
                $integerTypes = [
                    'integer',
                    'bigInteger',
                    'smallInteger',
                    'mediumInteger',
                    'tinyInteger',
                ];

                foreach ($integerTypes as $type) {
                    $pattern = "/(\\\$table->{$type}\\(\\s*['\"]"
                        .preg_quote($oldColumn, '/')
                        ."['\"])\s*,\s*true(\))/";

                    $contents = preg_replace(
                        $pattern,
                        '$1$2',
                        $contents
                    );
                }

                /*
                 * bigIncrements() is inherently PRIMARY KEY.
                 *
                 * For a non-primary AUTO_INCREMENT column we must
                 * convert it to bigInteger().
                 */
                $bigIncrementsPattern =
                    "/\\\$table->bigIncrements\\(\\s*['\"]"
                    .preg_quote($oldColumn, '/')
                    ."['\"]\\s*\\)/";

                $contents = preg_replace(
                    $bigIncrementsPattern,
                    "\$table->bigInteger('{$oldColumn}')",
                    $contents
                );

                /*
                 * Rename legacy AUTO_INCREMENT identifier.
                 */
                if ($newColumn !== $oldColumn) {
                    $contents = $this->renameColumn(
                        $contents,
                        $oldColumn,
                        $newColumn
                    );
                }

                /*
                 * DB::connection('tenant') is going to be used,
                 * so make sure the DB facade is imported.
                 */
                $contents = $this->addDbImport($contents);

                /*
                 * -----------------------------------------------------
                 * RESTORE AUTO_INCREMENT
                 * -----------------------------------------------------
                 *
                 * COLUMN_TYPE may contain:
                 *
                 * INT(10)
                 * BIGINT(20) UNSIGNED
                 * INT(11) UNSIGNED
                 *
                 * Remove the old MySQL display width but preserve
                 * UNSIGNED.
                 */
                $columnType = strtoupper($column->COLUMN_TYPE);

                $columnType = preg_replace(
                    '/^(TINYINT|SMALLINT|MEDIUMINT|INT|INTEGER|BIGINT)\(\d+\)/i',
                    '$1',
                    $columnType
                );

                /*
                 * Restore AUTO_INCREMENT without making the column
                 * a PRIMARY KEY.
                 */
                $statement =
                    "        DB::connection('tenant')->statement("
                    ."'ALTER TABLE `{$tableName}` MODIFY `{$newColumn}` "
                    ."{$columnType} NOT NULL AUTO_INCREMENT'"
                    .');';

                /*
                 * Add the ALTER TABLE statement immediately after
                 * Schema::create().
                 */
                if (! str_contains($contents, $statement)) {
                    $contents = preg_replace(
                        '/(\n\s{8}\}\);\n)(\s{4}\}\n\n\s{4}\/\*\*)/',
                        "$1\n{$statement}\n$2",
                        $contents,
                        1
                    );
                }
            }

            file_put_contents($file, $contents);

            $this->line("Processed: {$tableName}");
        }

        $this->info('Tenant migrations fixed successfully.');

        return self::SUCCESS;
    }

    /**
     * Rename an AUTO_INCREMENT column and its references.
     */
    private function renameColumn(
        string $contents,
        string $oldColumn,
        string $newColumn
    ): string {
        /*
         * Rename column definitions.
         *
         * Example:
         *
         * integer('id', true)
         * ->
         * integer('id', true)
         */
        $contents = preg_replace(
            '/(\\$table->(?:'
            .'bigIncrements|increments|integer|bigInteger|smallInteger|mediumInteger|tinyInteger'
            .')\\(\\s*[\'"])'
            .preg_quote($oldColumn, '/')
            .'([\'"])/i',
            '$1'.$newColumn.'$2',
            $contents
        );

        /*
         * Rename unique index:
         *
         * unique('sn')
         * ->
         * unique('id')
         */
        $contents = preg_replace(
            "/->unique\(\s*['\"]"
            .preg_quote($oldColumn, '/')
            ."['\"]\s*\)/i",
            "->unique('{$newColumn}')",
            $contents
        );

        /*
         * Rename references such as:
         *
         * primary(['id', 'propertyid'])
         *
         * index(['sn'])
         *
         * unique(['sn'])
         */
        $contents = preg_replace(
            "/(['\"])"
            .preg_quote($oldColumn, '/')
            ."(['\"])/i",
            '$1'.$newColumn.'$2',
            $contents
        );

        return $contents;
    }

    /**
     * Add DB facade import when DB::connection() is used.
     */
    private function addDbImport(string $contents): string
    {
        if (str_contains(
            $contents,
            'use Illuminate\Support\Facades\DB;'
        )) {
            return $contents;
        }

        return str_replace(
            'use Illuminate\Database\Schema\Blueprint;',
            "use Illuminate\Database\Schema\Blueprint;\n"
            ."use Illuminate\Support\Facades\DB;",
            $contents
        );
    }

    /**
     * Rename legacy timestamp columns case-insensitively.
     *
     * Examples:
     *
     * created_at  -> created_at
     * created_at  -> created_at
     * created_at  -> created_at
     *
     * updated_at -> updated_at
     * updated_at -> updated_at
     * updated_at -> updated_at
     */
    private function renameColumnCaseInsensitive(
        string $contents,
        string $oldColumn,
        string $newColumn
    ): string {
        return preg_replace(
            "/(['\"])"
            .preg_quote($oldColumn, '/')
            ."(['\"])/i",
            '$1'.$newColumn.'$2',
            $contents
        );
    }
}
