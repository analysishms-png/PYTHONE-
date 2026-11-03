<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Pointofsale;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\Kot;
use App\Http\Controllers\PointOfSale\Outlet\DisplayTable;
use App\Http\Controllers\PointOfSale\Outlet\SaleBill\PrintSaleBill;
use App\Http\Controllers\Pos;
use App\Http\Controllers\Pos\FetchItem;
use App\Http\Controllers\Pos\OrderController;
use App\Http\Controllers\PythonAuth;
use App\Http\Controllers\SaleBill;

// Fetch Item Names
Route::post('fetchitemnames', [CompanyController::class, 'fetchitemnames']);
// Fetch Menu Names
Route::post('fetchmenunames', [CompanyController::class, 'fetchmenunames']);
// Fetch Depart Name
Route::post('departnamefetch', [CompanyController::class, 'departnamefetch'])->name('departnamefetch');
// Guest Detail Fetch
Route::post('guestdtfetch', [CompanyController::class, 'guestdtfetch'])->name('guestdtfetch');
// Guest Detail Fetch
Route::post('guestdtfetchkot', [CompanyController::class, 'guestdtfetchkot'])->name('guestdtfetchkot');
// Guest Log Detail
Route::post('guestdtfetchlog', [CompanyController::class, 'guestdtfetchlog'])->name('guestdtfetchlog');
// Fetch Comp Detail By Billno And Vtype
Route::post('fetchcompdt', [Pointofsale::class, 'fetchcompdt'])->name('fetchcompdt');
// Fetch item Details
Route::post('fetchitemdetails', [CompanyController::class, 'fetchitemdetails']);
// Fetch Item Details By Vno  Previous Nc Kot
Route::post('fetchitempreviousnc', [CompanyController::class, 'fetchitempreviousnc'])->name('fetchitempreviousnc');
// Fetch Tax Stru Of Item
Route::post('fetchtaxstruitem', [CompanyController::class, 'fetchtaxstruitem'])->name('fetchtaxstruitem');
// Fetch Max VTYPE
Route::post('getmaxvtype', [CompanyController::class, 'getmaxvtype'])->name('getmaxvtype');
// Fetch Item On Room Change
Route::post('fetchitemroomchange', [FetchItem::class, 'fetchitemroomchange'])->name('fetchitemroomchange');
// Fetch Item On Room Change
Route::post('fetchitemoldroomno', [Pointofsale::class, 'fetchitemoldroomno'])->name('fetchitemoldroomno');
// Fetch Sale Bill Print Guest Data From Guest Prof
Route::post('fetchgguestprof', [Pointofsale::class, 'fetchgguestprof'])->name('fetchgguestprof');
// Update Del Flag
Route::post('updatedelflagxhr', [Pointofsale::class, 'updatedelflagxhr'])->name('updatedelflagxhr');
// Fetch Company Details
Route::post('fetchcompdetail', [Pointofsale::class, 'fetchcompdetail'])->name('fetchcompdetail');
// Max Discount Value check
Route::get('discountmaxxhr', [Pointofsale::class, 'discountmaxxhr']);
// Check Customer Availability Reward
Route::post('/reward/checkcustomer', [SaleBill::class, 'checkCustomerReward'])->name('checkcustomerreward');
// Submit Sale Bill Entry
Route::post('salebillsubmit', [SaleBill::class, 'salebillsubmit'])->name('salebillsubmit');
// Update Sale Bill Entry
Route::post('salebillupdate', [SaleBill::class, 'salebillupdate'])->name('salebillupdate');
// Fetch Name Lists
Route::post('namelistfetch', [Pointofsale::class, 'namelistfetch'])->name('namelistfetch');
// Fetch Customer Detail By Mobile No.
Route::post('phonefindxhr', [Pointofsale::class, 'phonefindxhr'])->name('phonefindxhr');
// Open Sale Billprint
Route::get('salebillprint', [Pointofsale::class, 'salebillprint']);
// Open Sale Billprint type 2
Route::get('salebillprinttype2', [Pointofsale::class, 'salebillprinttype2']);
// Open Sale Billprint 
Route::get('salebillprint2', [Pointofsale::class, 'salebillprint2']);
// Open Sale Bill 3 Inch Type 2
Route::get('salebillprint2type2', [Pointofsale::class, 'salebillprint2type2']);
// Sale Bill Thermal Print
Route::post('salebillprintthermal', [PrintSaleBill::class, 'salebillprintthermal']);
// Open Sale Bill Settle
route::get('salebillsettle', [Pointofsale::class, 'salebillsettle'])->name('salebillsettle.route');
// Sale Bill Settle Submit
Route::post('salebillsettlesubmit', [Pointofsale::class, 'salebillsettlesubmit'])->name('salebillsettlesubmit');
// Sale Bill Settlement By Billno
Route::post('possalebillsettle', [Pos::class, 'possalebillsettle'])->name('possalebillsettle');
Route::post('possalebillsettleupdate', [Pos::class, 'possalebillsettleupdate'])->name('possalebillsettleupdate');

// Company Detail
Route::get('getcompdetail', [Pointofsale::class, 'getcompdetail']);
// Get Sale Bill Print Items
Route::post('salebillprintitems', [Pointofsale::class, 'salebillprintitems'])->name('salebillprintitems');
// Fetch E-Invoice Data
Route::post('fetch-einvoice-data', [Pointofsale::class, 'fetchEinvoiceData'])->name('fetchEinvoiceData');
// Get Outlet Details
Route::post('getoutletdetails', [Pointofsale::class, 'getoutletdetails'])->name('getoutletdetails');
// get Payment qr
Route::post('getpaymentqr', [Pointofsale::class, 'getpaymentqr'])->name('getpaymentqr');
// Open Pos Parameter
Route::get('posparameter', [Pointofsale::class, 'posparameter']);
// Pos General Parameter Submit
Route::post('posgeneralparamstore', [Pointofsale::class, 'posgeneralsubmit'])->name('posgeneralparamstore');
// Pos Outlet Parameter Submit
Route::post('posoutletparamstore', [Pointofsale::class, 'posoutletsubmit'])->name('posoutletparamstore');
// Pos Kot Parameter Submit
Route::post('poskotparamstore', [Pointofsale::class, 'poskotsubmit'])->name('poskotparamstore');
// Pos Order Booking Parameter Submit
Route::post('posorderparamstore', [Pointofsale::class, 'posordersubmit'])->name('posorderparamstore');
// Pos Bill Print Store
Route::post('posbillprintstore', [Pointofsale::class, 'posbillprintsubmit'])->name('posbillprintstore');
// Pos Bill Print Store
Route::post('poskotprintingstore', [Pointofsale::class, 'poskotprintsubmit'])->name('poskotprintingstore');
// Pos Posting Parameter Submit
Route::post('pospostingparamstore', [Pointofsale::class, 'pospostingparamstore'])->name('pospostingparamstore');
// Check Table Booking
Route::post('checktablebooking', [DisplayTable::class, 'checktablebooking'])->name('checktablebooking');
// Fetch Depart Detail
Route::post('fetchsingledcode', [Pointofsale::class, 'fetchsingledcode'])->name('fetchsingledcode');
// Open Pos Genreal Param
Route::get('printingsetup', [Pointofsale::class, 'posgeneralparam']);
// Upating Display Table colors
Route::get('colorfilldisp/{dcode}', [Pos::class, 'colorfilldisp']);


// Open Table Wise Detail Page
Route::get('tablewisesale', [Pointofsale::class, 'tablewisesale'])->name('tablewisesale');
// Table Wise Report Data Fetch
Route::post('tablewiserepfetch', [Pointofsale::class, 'tablewiserepfetch'])->name('tablewiserepfetch');

// Order Request Accept (insert into KOT)
Route::post('order-request/accept', [OrderController::class, 'acceptOrder'])->name('orderrequest.accept');
// Order Request Reject
Route::post('order-request/reject', [OrderController::class, 'rejectOrder'])->name('orderrequest.reject');

Route::get('servicedesk', [Pointofsale::class, 'servicedesk'])->name('servicedesk');
Route::post('/switchoutletxhr', [Pointofsale::class, 'switchoutletxhr']);
Route::post('fetchtablesservicedesk', [Pointofsale::class, 'fetchtablesservicedesk'])->name('fetchtablesservicedesk');
Route::post('/fetchpendingtables', [Pointofsale::class, 'fetchpendingtables']);
Route::post('/mergetableitems', [Pointofsale::class, 'mergetableitems']);
Route::post('/fetcholdbills', [Pointofsale::class, 'fetcholdbills']);
Route::post('/markkotsplit', [Pointofsale::class, 'markKotAsSplit']);
// routes/web.php
Route::post('/fetchtableitemspreview', [Pointofsale::class, 'fetchTableItemsPreview']);
Route::post('/fetchtablestatusservicedesk', [Pointofsale::class, 'fetchtablestatusservicedesk']);
