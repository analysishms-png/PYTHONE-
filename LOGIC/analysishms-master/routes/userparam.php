<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserParam;
use App\Http\Controllers\MainController;

// Fetch Main Menu Data
Route::get('getmainmenu', [UserParam::class, 'getmainmenu'])->name('getmainmenu');
// Fetch Menu 2
Route::post('fetchsubmenu', [UserParam::class, 'fetchsubmenu'])->name('fetchsubmenu');
// Fetch Last menu
Route::post('fetchlastmenu', [UserParam::class, 'fetchlastmenu'])->name('fetchlastmenu');
// Fetch Property User Permission
Route::get('userpermision', [UserParam::class, 'userpermision']);
// Get Pos User Details
Route::post('getposuserdetails', [UserParam::class, 'getposuserdetails'])->name('getposuserdetails');
// Fetch Menu List
Route::post('menulist', [UserParam::class, 'menulist'])->name('menulist');
// Submit User Permission Form
Route::post('userparamsubmit', [UserParam::class, 'userparamsubmit'])->name('userparamsubmit');
// User Pos Submit Point Of Sale
Route::post('updateposuserxhr', [UserParam::class, 'updateposuserxhr'])->name('updateposuserxhr');
// Copy User Permission
Route::post('copyuserpermission', [UserParam::class, 'copyuserpermission'])->name('copyuserpermission');
