 Step 1: Install PhpSpreadsheet via Composer
composer require phpoffice/phpspreadsheet --ignore-platform-reqs
php artisan make:command GenerateExcelFile
php artisan excel:generate
