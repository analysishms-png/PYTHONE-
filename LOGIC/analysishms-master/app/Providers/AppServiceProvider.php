<?php

namespace App\Providers;

use App\Models\Companyreg as Company;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Log;
use App\Logging\DatabaseLogger;
use Illuminate\Support\Facades\Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        Log::extend('database', function ($app, array $config) {
            return new \Monolog\Logger('database', [
                new DatabaseLogger(
                    \Monolog\Level::Debug,
                    true
                ),
            ]);
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        View::composer('property.layouts.header', function ($view) {
            if (Auth::check()) {
                $connection = Auth::user()->propertyid > 100
                    ? 'tenant'
                    : 'main';

                $companies = Company::on($connection)
                    ->where('propertyid', Auth::user()->propertyid)
                    ->orderBy('comp_code', 'ASC')
                    ->get();

                View::share('companies', $companies);
            }
        });
    }
}
