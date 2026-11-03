<?php

use App\Http\Controllers\Admin\ActivityLogController;
use App\Http\Controllers\Admin\ApplicationLogController;
use App\Http\Controllers\Admin\Performance\CpuController;
use App\Http\Controllers\Admin\Performance\EndpointController;
use App\Http\Controllers\Admin\Performance\OverviewController;
use App\Http\Controllers\Admin\Performance\QueryController;
use App\Http\Controllers\Admin\Performance\SourceController;
use App\Http\Controllers\Admin\Performance\TrafficController;
use App\Http\Controllers\Api\Reservation;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\AutoLoginController;
use App\Http\Controllers\BookingFollowUp;
use App\Http\Controllers\Cron\CleanUp;
use App\Http\Controllers\Cron\DatabaseSend;
use App\Http\Controllers\CronController;
use App\Http\Controllers\DemoRequestController;
use App\Http\Controllers\FeedbackMasterController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\HotelBookingController;
use App\Http\Controllers\Frontend\HotelsController;
use App\Http\Controllers\GeneralController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\Pos\OrderController;
use App\Http\Controllers\PropertyController;
use App\Http\Controllers\PythonAuth;
use App\Http\Controllers\SuperAdmin\BackupController;
use App\Http\Controllers\SuperAdmin\Permission\PermissionUpdateController;
use App\Http\Controllers\SuperAdmin\QRGenerate;
use App\Http\Controllers\SuperAdmin\SuperAdminMainController;
use App\Http\Controllers\Test\TestImageController;
use App\Http\Controllers\TestingControlller;
use App\Http\Controllers\Tools\ToolsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// test welcome route
Route::get('/welcome', function () {
    return view('welcome');
});
Route::get('testing', [TestingControlller::class, 'notification']);
Route::get('/autochargepost', [CronController::class, 'autoCharge']);
Route::get('/run-db-backup', [DatabaseSend::class, 'run']);
Route::get('/cleanup-backups', [CleanUp::class, 'cleanup']);
Route::get('/', [HomeController::class, 'index']);

// Open Page for generated qr
Route::get('order/outlet/{propertyid}/{outlet_code}/{rcode}/{comp_name}', [GeneralController::class, 'outletwiseitemshow'])->name('outlet.outletcode.compname');
// Order Place
Route::post('placeorder', [OrderController::class, 'placeorder'])->name('place.order');
// qr generate string
Route::get('/generateqr', [TestingControlller::class, 'generateQr']);
Route::get('/delay/{seconds}', [TestingControlller::class, 'delayedResult']);

Route::get('/test-image-upload', [TestImageController::class, 'create'])->name('test.image.create');
Route::post('/test-image-upload', [TestImageController::class, 'upload'])->name('test.image.upload');

Route::get('camera', function () {
    return view('camera');
});
Route::get('camera2', function () {
    return view('camera2');
});
Route::get('loader', function () {
    return view('property.layouts.loader');
});
// Route::get('login', [HomeController::class, 'login']);
Route::post('/loginpy', [PythonAuth::class, 'login']);
Auth::routes();

Route::get('/storage-link', function () {
    $target_folder = storage_path('app/public');
    $link_folder = public_path('storage');
    if (! file_exists($link_folder)) {
        symlink($target_folder, $link_folder);
    }
});

// Route to serve storage files directly
Route::get('/storage/{path}', function ($path) {
    $fullPath = storage_path('app/public/'.$path);

    if (! file_exists($fullPath) || is_dir($fullPath)) {
        abort(404);
    }

    $mimeType = mime_content_type($fullPath) ?: 'application/octet-stream';
    $headers = [
        'Content-Type' => $mimeType,
        'Cache-Control' => 'public, max-age=31536000',
    ];

    return response()->file($fullPath, $headers);
})->where('path', '.*');

// routes/web.php
Route::post('/auto-login', [AutoLoginController::class, 'loginUser'])->name('auto.login');

Route::get('application', [HomeController::class, 'application'])->name('application');
// Open Api Usages Page
Route::get('apiusages', [HomeController::class, 'apiusages'])->name('api.usages');
// Redirects to Admin Home
Route::get('superadmin', [MainController::class, 'index'])->name('superadmin')->middleware('superadmin');
// All Tickets for Super Admin
Route::get('superadmin/tickets', [ToolsController::class, 'allTickets'])->name('superadmin.tickets')->middleware('superadmin');

// Superadmin dynamic pages management
Route::get('superadmin/my-pages', [SuperAdminMainController::class, 'myPages'])
    ->name('superadmin.my-pages')
    ->middleware('superadmin');
Route::get('superadmin/my-pages/create', [SuperAdminMainController::class, 'createPage'])
    ->name('superadmin.pages.create')
    ->middleware('superadmin');
Route::post('superadmin/my-pages', [SuperAdminMainController::class, 'storePage'])
    ->name('superadmin.pages.store')
    ->middleware('superadmin');
Route::get('superadmin/my-pages/{id}/edit', [SuperAdminMainController::class, 'editPage'])
    ->name('superadmin.pages.edit')
    ->middleware('superadmin');
Route::put('superadmin/my-pages/{id}', [SuperAdminMainController::class, 'updatePage'])
    ->name('superadmin.pages.update')
    ->middleware('superadmin');
Route::delete('superadmin/my-pages/{id}', [SuperAdminMainController::class, 'destroyPage'])
    ->name('superadmin.pages.destroy')
    ->middleware('superadmin');

Route::get('admin/activity-logs', [ActivityLogController::class, 'index'])
    ->name('admin.activity.logs')
    ->middleware('superadmin');
Route::get('admin/activity-logs/data', [ActivityLogController::class, 'data'])
    ->name('admin.activity.logs.data')
    ->middleware('superadmin');
Route::get('admin/activity-logs/top-routes', [ActivityLogController::class, 'getTopRoutes'])
    ->name('admin.activity.logs.top.routes')
    ->middleware('superadmin');
Route::get('admin/activity-logs/top-users', [ActivityLogController::class, 'getTopUsers'])
    ->name('admin.activity.logs.top.users')
    ->middleware('superadmin');

Route::get('admin/application-logs', [ApplicationLogController::class, 'index'])
    ->name('admin.application.logs')
    ->middleware('superadmin');
Route::get('admin/application-logs/data', [ApplicationLogController::class, 'data'])
    ->name('admin.application.logs.data')
    ->middleware('superadmin');
// Logout Admin
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
// Company Register Page
Route::get('/companyreg', [MainController::class, 'companyregister']);
// Load State
Route::post('/getState', [MainController::class, 'getState']);
// Check Mobile
Route::post('/check_mobile', [MainController::class, 'check_mobile']);
// Check Email
Route::post('/check_email', [MainController::class, 'check_email']);
// Check Username
Route::post('/check_username', [MainController::class, 'check_username']);
// Check sn_num
Route::post('/check_sn_num', [MainController::class, 'check_Sno']);
// Submit Company Registration Form
Route::post('companystore', [MainController::class, 'store'])->name('companystore');
// Open Company List
Route::get('/companylist', [MainController::class, 'loadcompanylist']);
// Update property
Route::get('updatepropertyadmin', [MainController::class, 'openUpdateProperty'])->name('propertyid');
// Disable Property
Route::get('disablepropertyadmin', [MainController::class, 'Disablepropertyadmin'])->name('propertyid');
// Enable Property
Route::get('enablepropertyadmin', [MainController::class, 'enableproperty'])->name('propertyid');
// Company Update
Route::post('/updatingproperty', [MainController::class, 'companyupdate'])->name('company.update');
// City Form
Route::get('/cityform', [MainController::class, 'opencity']);
// Check City name
Route::post('/check_city_name', [MainController::class, 'check_city_name']);
// Check zipcode
Route::post('/check_zipcode', [MainController::class, 'check_zipcode']);
// Load State2
Route::post('/getStateadmin', [MainController::class, 'getStateadmin']);
// Submit City Form
Route::post('citystore', [MainController::class, 'submitcity'])->name('citystore');
// State Form
Route::get('/stateform', [MainController::class, 'openstate']);
// Country Form
Route::post('/check_state_insert', [MainController::class, 'check_state_insert']);
// Check state code
Route::post('/check_state_code', [MainController::class, 'check_state_code']);
// Submit State Form
Route::post('statestore', [MainController::class, 'submitstate'])->name('statestore');
// Check Country name
Route::post('/check_country', [MainController::class, 'check_country']);
// Check country_code
Route::post('/check_country_code', [MainController::class, 'check_country_code']);
// Country Form
Route::get('/countryform', [MainController::class, 'opencountry']);
// Submit Country Form
Route::post('countrystore', [MainController::class, 'submitcountry'])->name('countrystore');
// Update Country Form Open
Route::get('updatecountryadmin', [MainController::class, 'updatecountry']);
// Update Country
Route::post('update_countrystore', [MainController::class, 'update_countrystore'])->name('update_countrystore');
// Update state Form Open
Route::get('updatestateformadmin', [MainController::class, 'updatestate']);
// Update state
Route::post('statestoreupdate', [MainController::class, 'update_statestore'])->name('statestoreupdate');
// Update City Form Open
Route::get('updatecityformadmin', [MainController::class, 'updatecity']);
// Update City
Route::post('citystoreupdate', [MainController::class, 'citystoreupdate'])->name('citystoreupdate');
// Open Userlist
Route::get('/userlist', [MainController::class, 'loaduserlist']);
// Open Persmission Page
Route::get('/permissions', [PermissionUpdateController::class, 'PermisionManage']);
// Submit Permission User Module 1st
Route::post('submipermusermodule', [PermissionUpdateController::class, 'submipermusermodule'])->name('submipermusermodule');
// Validate Permission Check Box
Route::post('validatecheck', [PermissionUpdateController::class, 'validatecheck'])->name('validatecheck');
// Disable User
Route::get('disableusermaster2', [MainController::class, 'disableusermaster'])->name('id');
// Enable User
Route::get('enableusermaster2', [MainController::class, 'enableusermaster'])->name('id');
// Open User Master Form
Route::get('/usermasteradmin', [MainController::class, 'openusermaster']);
// Update User Master Form Open
Route::get('updateusermaster2', [MainController::class, 'updateusermaster']);
// Update User Master
Route::post('update_usermaster2', [MainController::class, 'update_usermasterstore'])->name('update_usermaster2');
// Submit User Master Form
Route::post('usermasterstore2', [MainController::class, 'submitusermaster'])->name('usermasterstore2');
// Update User AP from User Master list
Route::post('update_user_ap2', [MainController::class, 'updateUserAp'])->name('update_user_ap2');
// Search Username
Route::match(['get', 'post'], 'searchusername', [MainController::class, 'loadcompanylist'])->name('searchusername');
// Open QR Generate Page
Route::get('superadmin/qrgenerate', [MainController::class, 'openqrgenerate']);
// QR Generate Process
Route::post('superadmin/qrgenerate', [QRGenerate::class, 'generateQR'])->name('admin.qr.generate');
// Get Update Logs
Route::get('getUpdateLogs', [MainController::class, 'fetchUpdates']);
// routes/web.php
// Open Expiry Module
Route::get('expirymodule', [MainController::class, 'showUpdateForm']);
Route::post('/property/update-expiry', [PropertyController::class, 'updateExpiry'])->name('property.updateExpiry');
Route::get('/get-expiry-data/{propertyid}', [PropertyController::class, 'getExpiryData'])->name('property.getExpiryData');
// Open Backup Page
Route::get('superadmin/backups', [BackupController::class, 'index'])->name('superadmin.backups');
// Bulk Database Backup
Route::post('superadmin/bulk-backup/generate', [BackupController::class, 'generateBulkBackup'])->name('superadmin.bulk-backup.generate');
Route::post('superadmin/bulk-backup/fetch', [BackupController::class, 'fetchBulkBackups'])->name('superadmin.bulk-backup.fetch');
Route::post('superadmin/bulk-backup/download', [BackupController::class, 'downloadBulkBackup'])->name('superadmin.bulk-backup.download');
// Download Backup Prepare
Route::get('superadmin/storagefdownload', [BackupController::class, 'downloadStorage'])->name('superadmin.storagefdownload');
// Download Created Backup
Route::get('superadmin/download-temp-zip/{filename}', [BackupController::class, 'downloadTempZip']);
// Download Database
Route::POST('superadmin/database-backup', [BackupController::class, 'downloadDatabaseBackup'])->name('superadmin.database-backup');
// Verify Database
Route::post('superadmin/verify-database', [BackupController::class, 'verifyDatabase'])->name('superadmin.verify-database');
Route::get('/test-exec', [BackupController::class, 'testExec']);
Route::get('/test-dump', [BackupController::class, 'testDump']);
// About Us Open
Route::get('about', [HomeController::class, 'about'])->name('about');
// Front Office Services
Route::get('services/front-office', [HomeController::class, 'frontofficeservices'])->name('services.front-office');
// POS Services
Route::get('services/pointofsale', [HomeController::class, 'pointofsaleservices'])->name('services.pointofsale');
// Banquet Services
Route::get('services/banquet', [HomeController::class, 'banquetservices'])->name('services.banquet');
// Inventory Services
Route::get('services/inventory', [HomeController::class, 'inventoryservices'])->name('services.inventory');
// Reservation Services
Route::get('services/reservation', [HomeController::class, 'reservationservices'])->name('services.reservation');
// Reservation Developer
Route::get('developer/reservation', [HomeController::class, 'reservationdeveloper'])->name('developer.reservation');
// Open Contact Page
Route::get('contact', [HomeController::class, 'contact'])->name('contact');

// Dynamic content page (slug from pages table)
Route::get('page/{slug}', [HomeController::class, 'dynamicPage'])->name('page.show');
// Submit Contact Form
Route::post('contactsubmit', [ContactController::class, 'store'])->name('contact.submit');
// Submit Demo Request
Route::post('/demo-request', [DemoRequestController::class, 'store'])->name('demo-request.store');

Route::middleware(['company'])->group(function () {
    Route::get('inquiryfollup', [BookingFollowUp::class, 'index'])->name('inquiryfollup');
    Route::get('get-inquiryfollup', [BookingFollowUp::class, 'data'])->name('get-inquiryfollup');
    // Booking Follow Up
    Route::post('/booking-followup', [BookingFollowUp::class, 'store'])->name('booking-followup.store');
});

Route::get('/booking-followup/comments/{inqno}', [BookingFollowUp::class, 'comments'])->name('bookingfollowup.comments');

// ─── Public Feedback / Guest Portal Routes (No Auth Required) ────────────────
// These are QR-scan facing routes — guests access them without login.
// Auth check is handled inside the controller via GUEST_METHODS exception.

Route::get('feedback/{propertyid}', [FeedbackMasterController::class, 'feedback'])->name('feedback');
Route::post('feedback/room-details', [FeedbackMasterController::class, 'getRoomDetails'])->name('feedback.roomDetails');
Route::post('feedback/submit', [FeedbackMasterController::class, 'store'])->name('feedback.store');

Route::get('/roomservice-portal/{propertyid}/{roomno}', [FeedbackMasterController::class, 'roomserviceqr'])->name('roomserviceqr');

Route::get('/guest-portal/{propertyid}/{roomno}', [FeedbackMasterController::class, 'index'])->name('guestportal');
Route::post('/guest-portal/{propertyid}/{roomno}/service-request', [FeedbackMasterController::class, 'serviceRequest'])->name('guestportal.servicerequest');
Route::get('/guest-portal/{propertyid}/{roomno}/my-stay', [FeedbackMasterController::class, 'myStay'])->name('guestportal.mystay');
Route::get('/guest-portal/{propertyid}/{roomno}/hotel-info', [FeedbackMasterController::class, 'hotelInfo'])->name('guestportal.hotelinfo');
Route::get('/guest-portal/{propertyid}/{roomno}/my-profile', [FeedbackMasterController::class, 'myProfile'])->name('guestportal.myprofile');
Route::get('/guest-portal/{propertyid}/{roomno}/express-checkout', [FeedbackMasterController::class, 'expressCheckout'])->name('guestportal.expresscheckout');
Route::post('/guest-portal/{propertyid}/{roomno}/express-checkout', [FeedbackMasterController::class, 'submitExpressCheckout'])->name('guestportal.expresscheckoutsubmit');

Route::get('/table-feedback/{propertyid}/{tableno?}', [FeedbackMasterController::class, 'tablefeedback'])->name('tablefeedback');
Route::post('/table-feedback/store', [FeedbackMasterController::class, 'tableFeedbackStore'])->name('tablefeedback.store');

// Open Public Property Page
Route::get('hotels/{propertyid}', [HotelsController::class, 'index'])->name('hotels.list');
// Open Hotel Booking Page
// Route::get('hotelbooking/{propertyid}/booking', [HotelsController::class, 'hotelbooking'])->name('hotelbooking');
Route::get('/hotels/{propertyid}/booking', [HotelsController::class, 'hotelbooking'])->name('hotelbooking');
// Submit Hotel Booking
Route::post('hotelbookingsubmit', [HotelBookingController::class, 'store'])->name('hotelbookingsubmit');
// Fetch Datewise Empty Room Categories list
Route::post('fetchdatewiseemptyroomcat/{propertyid}', [HotelsController::class, 'fetchdatewiseemptyroomcat'])->name('fetchdatewiseemptyroomcat');

Route::prefix('admin/performance')->name('admin.performance.')->middleware('superadmin')->group(function () {
    Route::get('/', [OverviewController::class, 'index'])->name('overview');
    Route::get('/data', [OverviewController::class, 'data'])->name('overview.data');
    Route::get('/endpoints', [EndpointController::class, 'index'])->name('endpoints');
    Route::get('/endpoints/show', [EndpointController::class, 'show'])->name('endpoint.detail');
    Route::get('/cpu', [CpuController::class, 'index'])->name('cpu');
    Route::get('/cpu/data', [CpuController::class, 'data'])->name('cpu.data');
    Route::get('/queries', [QueryController::class, 'index'])->name('queries');
    Route::get('/traffic', [TrafficController::class, 'index'])->name('traffic');
    Route::get('/sources', [SourceController::class, 'index'])->name('sources');
    Route::post('/sources/import', [SourceController::class, 'import'])->name('sources.import');
});

Route::get('/banquet-feedback/{propertyid}', [FeedbackMasterController::class, 'banquetfeedback'])->name('banquetfeedback');
Route::post('/banquet-feedback/store', [FeedbackMasterController::class, 'banquetFeedbackStore'])->name('banquetfeedbackstore');
