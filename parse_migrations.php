<?php
// Parse Laravel migrations to extract table names and column names

$migrationDir = "C:/Analysis/HMS_py/LOGIC/analysishms-master/database/migrations/tenant_migrations";
$phpFiles = new RecursiveIteratorIterator(
    new RecursiveDirectoryIterator($migrationDir),
    RecursiveIteratorIterator::LEAVES_ONLY
);
$phpFiles = array_filter(iterator_to_array($phpFiles), function($f) { return $f instanceof SplFileInfo && $f->getExtension() === 'php'; });

$tables = [];

foreach ($phpFiles as $file) {
    $content = file_get_contents($file->getPathname());
    
    // Extract table name
    if (preg_match("/create\s*\(\s*['\"]([^'\"]+)['\"]/i", $content, $m)) {
        $tableName = $m[1];
        
        // Extract column names: $table->method('column_name', ...
        $colNames = [];
        
        if (preg_match_all("/\\\$table->\w+\s*\(\s*['\"]([^'\"\)]+)['\"]/i", $content, $matches, PREG_SET_ORDER)) {
            foreach ($matches as $match) {
                $col = strtolower($match[1]);
                if ($col && !in_array($col, ['unique', 'primary', 'key', 'index', 'nullable', 'default', 'increment', 'unsigned'])) {
                    $colNames[] = $col;
                }
            }
        }
        
        $tables[$tableName] = $colNames;
    }
}

// Output results - avoid foreach warning by using while
$keys = array_keys($tables);
$i = 0;
while ($i < count($keys)) {
    $t = $keys[$i];
    $cols = $tables[$t];
    echo str_pad($t, 30) . " => " . count($cols) . " columns\n";
    $i++;
}

echo "\nTotal tables: " . count($tables) . "\n";