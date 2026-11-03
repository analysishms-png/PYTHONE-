<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class SetFolderPermissions extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'permissions:set';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Set 777 permissions on all storage and upload directories';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $this->info('Setting 777 permissions on directories...');

        $directories = [
            storage_path('app'),
            storage_path('logs'),
            storage_path('framework'),
            public_path('admin/property_logo'),
            public_path('admin/dealer_logo'),
            public_path('property/coverimage'),
            public_path('property/qrcode'),
            public_path('uploads'),
        ];

        foreach ($directories as $dir) {
            if (file_exists($dir)) {
                $this->setPermissionsRecursive($dir, 0777);
                $this->info('✓ Set permissions on: ' . $dir);
            } else {
                $this->warn('✗ Directory not found: ' . $dir);
            }
        }

        $this->info('Permissions set successfully!');
        return 0;
    }
// php artisan permissions:set
    /**
     * Set permissions recursively
     *
     * @param string $path
     * @param int $permissions
     * @return void
     */
    private function setPermissionsRecursive($path, $permissions = 0777)
    {
        try {
            @chmod($path, $permissions);

            // Use shell command for Linux/Unix systems
            if (PHP_OS_FAMILY !== 'Windows') {
                @shell_exec('chmod -R 777 ' . escapeshellarg($path));
            }

            if (is_dir($path)) {
                $items = @scandir($path);
                if ($items) {
                    foreach ($items as $item) {
                        if ($item !== '.' && $item !== '..') {
                            $itemPath = $path . DIRECTORY_SEPARATOR . $item;
                            if (is_dir($itemPath)) {
                                @chmod($itemPath, $permissions);
                                $this->setPermissionsRecursive($itemPath, $permissions);
                            } else {
                                @chmod($itemPath, $permissions);
                            }
                        }
                    }
                }
            }
        } catch (\Exception $e) {
            $this->error('Failed to set permissions on ' . $path . ': ' . $e->getMessage());
        }
    }
}
