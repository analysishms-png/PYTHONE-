<?php

use App\Http\Controllers\AndroidSaleBill\BillingController;
use App\Http\Controllers\Android\FcmTokenController;
use App\Http\Controllers\Api\ChequeDesignController;
use App\Http\Controllers\Api\DesktopAppUpdateController;
use App\Http\Controllers\Api\NotificationDeliveryController;
use App\Http\Controllers\Api\NotificationController;
use App\Http\Controllers\Api\Reservation;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Essl\EsslWebhookController;
use App\Http\Controllers\PythonAuth;
use App\Http\Controllers\PythonRoomKeyController;
use Illuminate\Support\Facades\Route;

Route::post('/reservation/push/{api_key}', [Reservation::class, 'pushReservation']);

Route::post('/essl/webhook/attendance', [EsslWebhookController::class, 'attendance']);

Route::post('/reactlogin', [LoginController::class, 'reactlogin']);
Route::post('/reactlogout', [LoginController::class, 'reactlogout']);

Route::middleware('auth:sanctum')->post('/fcm-token', [FcmTokenController::class, 'store']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/notifications/sync', [NotificationController::class, 'sync']);

    Route::post('/notifications/{notificationId}/{state}', [NotificationDeliveryController::class, 'acknowledge'])
        ->whereIn('state', ['delivered', 'seen', 'opened']);

    Route::get('/notifications/{notificationId}/statistics', [NotificationDeliveryController::class, 'statistics']);
});

Route::get('/cheque-designs', [ChequeDesignController::class, 'index']);
Route::get('/cheque-designs/{id}', [ChequeDesignController::class, 'show']);
Route::post('/cheque-designs', [ChequeDesignController::class, 'store']);
Route::put('/cheque-designs/{id}', [ChequeDesignController::class, 'update']);
Route::delete('/cheque-designs/{id}', [ChequeDesignController::class, 'destroy']);

Route::post('/v1/login', [BillingController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/v1/outlets', [BillingController::class, 'outlets']);
    Route::get('/v1/categories', [BillingController::class, 'categories']);
    Route::get('/v1/products', [BillingController::class, 'products']);
    Route::post('/v1/bills', [BillingController::class, 'createBill']);
    Route::get('/v1/bills/{billId}', [BillingController::class, 'getBill']);
});

// Check Latest Version
Route::get('/desktop-app/check-update', [DesktopAppUpdateController::class, 'check'])->name('desktop-app.check-update');
// Get Property Details
Route::post('getproperty', [PythonAuth::class, 'getproperty'])->name('getproperty');
// Update Room Key Queue Status Success
Route::post('updateroomkeydata', [PythonRoomKeyController::class, 'updateroomkeydata'])->name('updateroomkeydata')->middleware('log.third.party');
// Update Room Key Queue Status Failed
Route::post('updateroomkeyfailed', [PythonRoomKeyController::class, 'updateroomkeyfailed'])->name('updateroomkeyfailed')->middleware('log.third.party');
