<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    public const HOME = '/company';

    public function boot(): void
    {
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60)->by(
                $request->user()?->id ?: $request->ip()
            );
        });

        $this->routes(function () {

            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api.php'));

            Route::middleware('web')
                ->group(base_path('routes/web.php'));

            Route::middleware(['web', 'tenant.bootstrap', 'company'])
                ->group(base_path('routes/company.php'));

            Route::middleware(['web', 'tenant.bootstrap', 'company'])
                ->group(base_path('routes/pointofsale.php'));

            Route::middleware(['web', 'tenant.bootstrap', 'company'])
                ->group(base_path('routes/pointofsale/kot.php'));

            Route::middleware(['web', 'tenant.bootstrap', 'company'])
                ->group(base_path('routes/reporting.php'));

            Route::middleware(['web', 'tenant.bootstrap', 'company'])
                ->group(base_path('routes/userparam.php'));

            Route::middleware('channel')
                ->group(base_path('routes/channel.php'));

            Route::middleware('tools')
                ->group(base_path('routes/tools.php'));
        });
    }
}
