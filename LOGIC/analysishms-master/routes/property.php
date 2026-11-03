<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Pointofsale;
use App\Http\Controllers\CompanyController;

// Open Checkin Register
Route::get('checkinreg', [Pointofsale::class, 'checkinreg']);
// Fetch Checkin Reg Data
Route::post('fetchcheckinregdata', [Pointofsale::class, 'fetchcheckinregdata'])->name('fetchcheckinregdata');
// Fetch Item On Room Change
Route::post('fetchitemoldroomno', [Pointofsale::class, 'fetchitemoldroomno'])->name('fetchitemoldroomno');
// Submit Sale Bill Entry
Route::post('salebillsubmit', [Pointofsale::class, 'salebillsubmit'])->name('salebillsubmit');
// Update Sale Bill Entry
Route::post('salebillupdate', [Pointofsale::class, 'salebillupdate'])->name('salebillupdate');