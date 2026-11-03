<?php

namespace App\Services;

use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use RuntimeException;

class TenantDatabase
{
    public static function connect(int $propertyId): void
    {
        if ($propertyId <= 0) {
            throw new RuntimeException('Invalid property ID.');
        }

        $company = DB::connection('main')
            ->table('company')
            ->where('propertyid', $propertyId)
            ->first();

        if (! $company) {
            throw new RuntimeException(
                "Company not found for property ID [{$propertyId}]."
            );
        }

        $config = self::getConnectionConfig($company);

        Config::set('database.connections.tenant', $config);

        DB::purge('tenant');
        DB::reconnect('tenant');
        DB::setDefaultConnection('tenant');
    }

    public static function databaseName(int $propertyId): string
    {
        if ($propertyId <= 0) {
            throw new RuntimeException('Invalid property ID.');
        }

        $company = DB::connection('main')
            ->table('company')
            ->where('propertyid', $propertyId)
            ->first();

        if ($company && ! empty($company->db_name)) {
            return $company->db_name;
        }

        return 'db_' . $propertyId;
    }

    public static function createDatabase(int $propertyId): void
    {
        if ($propertyId <= 0) {
            throw new RuntimeException('Invalid property ID.');
        }

        $company = DB::connection('main')
            ->table('company')
            ->where('propertyid', $propertyId)
            ->first();

        if (!$company) {
            throw new RuntimeException(
                "Company not found for property ID [{$propertyId}]."
            );
        }

        $database = ! empty($company->db_name)
            ? $company->db_name
            : 'db_' . $propertyId;

        $config = self::getConnectionConfig($company);
        $config['database'] = null;

        Config::set('database.connections.tenant_create', $config);

        DB::purge('tenant_create');
        DB::reconnect('tenant_create');

        DB::connection('tenant_create')->statement(
            "CREATE DATABASE IF NOT EXISTS `{$database}` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
        );

        DB::disconnect('tenant_create');
        DB::purge('tenant_create');
    }

    private static function getConnectionConfig(object $company): array
    {
        $host = ! empty($company->db_host)
            ? $company->db_host
            : env('DB_HOST', '127.0.0.1');

        // $isLocalhost = strtolower($host) === 'localhost';
        $isLocalhost = in_array(strtolower($host), [
            'localhost',
            '127.0.0.1',
            '::1',
        ], true);

        if ($isLocalhost) {
            $username = ! empty($company->db_username)
                ? $company->db_username
                : env('DB_USERNAME', 'root');

            $password = ! empty($company->db_password)
                ? $company->db_password
                : env('DB_PASSWORD', '');
        } else {
            if (empty($company->db_username)) {
                throw new RuntimeException(
                    "Database username is missing for remote host [{$host}]."
                );
            }

            $username = $company->db_username;
            $password = $company->db_password ?? '';
        }

        return [
            'driver' => 'mysql',
            'url' => null,
            'host' => $host,
            'port' => ! empty($company->db_port)
                ? $company->db_port
                : env('DB_PORT', '3306'),
            'database' => ! empty($company->db_name)
                ? $company->db_name
                : 'db_' . $company->propertyid,
            'username' => $username,
            'password' => $password,
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix' => '',
            'prefix_indexes' => true,
            'strict' => false,
            'engine' => null,
            'options' => extension_loaded('pdo_mysql')
                ? array_filter([
                    \PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),
                ])
                : [],
        ];
    }
}
