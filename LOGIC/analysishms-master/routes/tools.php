<?php

use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\SuperAdmin\BackupController;
use App\Http\Controllers\Tools\MetaController;
use App\Http\Controllers\Tools\ToolsController;
use Illuminate\Support\Facades\Route;

Route::get('tools', [HomeController::class, 'tools'])->name('tools');
// Tools Login
Route::post('toolslogin', [HomeController::class, 'toolslogin'])->name('toolslogin');
// Tools Dashboard
Route::get('tools/dashboard', [ToolsController::class, 'toolsdashboard'])->name('toolsdashboard');
// Change Checkout
Route::get('tools/changecheckout', [ToolsController::class, 'changecheckout'])->name('changecheckout');
// Fetch Foliono
Route::post('tools/fetch_foliono', [ToolsController::class, 'fetchfoliono'])->name('fetchfoliono');
// Change Checkout Submit
Route::post('tools/changecheckoutsubmit', [ToolsController::class, 'changecheckoutsubmit'])->name('changecheckoutsubmit');
// Fetch Billno
Route::post('tools/fetch_billno', [ToolsController::class, 'fetchbillno'])->name('fetch_billno');
// submitCheckoutChange
Route::post('tools/submitCheckoutChange', [ToolsController::class, 'submitCheckoutChange'])->name('submitCheckoutChange');

// Change SW Date
Route::get('tools/changeswdate', [ToolsController::class, 'changeswdate'])->name('changeswdate');
// Fetch SW Date
Route::post('tools/fetch_swdate', [ToolsController::class, 'fetchswdate'])->name('fetchswdate');
// Change SW Date Submit
Route::post('tools/changeswdatesubmit', [ToolsController::class, 'changeswdatesubmit'])->name('changeswdatesubmit');

// Change Company Details
Route::get('tools/changecompanydetails', [ToolsController::class, 'changecompanydetails'])->name('changecompanydetails');
// Fetch Company Details
Route::post('tools/fetch_companydetails', [ToolsController::class, 'fetchcompanydetails'])->name('fetchcompanydetails');
// Fetch States
Route::post('tools/fetch_states', [ToolsController::class, 'fetchstates'])->name('fetchstates');
// Fetch Citys
Route::post('tools/fetch_citys', [ToolsController::class, 'fetchcitys'])->name('fetchcitys');
// Change Company Details Submit
Route::post('tools/changecompanydetailssubmit', [ToolsController::class, 'changecompanydetailssubmit'])->name('changecompanydetailssubmit');

// Comany Reports
Route::get('tools/getcompanydetails', [ToolsController::class, 'getcompanydetails'])->name('getcompanydetails');

// Data Empty Tool
Route::get('tools/dataempty', [ToolsController::class, 'dataempty'])->name('dataempty');
// Delete Data for Folio No
Route::post('tools/delete_date', [ToolsController::class, 'deletedate'])->name('delete-date');

// Room Charge Post Tool
Route::get('tools/roomchargepost', [ToolsController::class, 'roomchargepost'])->name('roomchargepost');
// Get Folio No For Room Charge Post
Route::post('tools/get_foliono_roomchargepost', [ToolsController::class, 'getfolionoroomchargepost'])->name('get_foliono_roomchargepost');
// Get VPrefix for Room Charge Post
Route::post('tools/get_vprefix_roomcharge', [ToolsController::class, 'getvprefixroomcharge'])->name('get_vprefix_roomcharge');
// Fetch Room Charge Post Folio Nos
Route::post('tools/fetch_roomchargepost_folionos', [ToolsController::class, 'fetchroomchargepostfolionos'])->name('fetch_roomchargepost_folionos');
// Fetch Room Charge Post Details
Route::post('tools/fetch_roomchargepost_details', [ToolsController::class, 'fetchroomchargepostdetails'])->name('fetch_roomchargepost_details');
// Room Charge Post Submit
Route::post('tools/roomchargepostsubmit', [ToolsController::class, 'roomchargepostsubmit'])->name('roomchargepostsubmit');

// Extra Bed Post Tool
Route::get('tools/extrabedpost', [ToolsController::class, 'extrabedpost'])->name('extrabedpost');
// Open Advance Charge
Route::get('tools/advchargetool', [ToolsController::class, 'openadvancecharge'])->name('advcharge.route');
// Get Max Adresno by Tools
Route::post('tools/getmaxadresnobytools', [ToolsController::class, 'getmaxadresnobytools'])->name('getmaxadresnobytools');
// Fetch Revenue Nature by Tools
Route::post('tools/fetchrevnaturebytools', [ToolsController::class, 'fetchrevnaturebytools'])->name('fetchrevnaturebytools');
// Fetch Advance Amount by Tools
Route::post('tools/fetchadvamtbytools', [ToolsController::class, 'fetchadvamtbytools'])->name('fetchadvamtbytools');
// fetchadvamtpaybytools
Route::post('tools/fetchadvamtpaybytools', [ToolsController::class, 'fetchadvamtpaybytools'])->name('fetchadvamtpaybytools');
// Advance Charge Submit
Route::post('tools/advancechargesubmit', [ToolsController::class, 'advancechargesubmit'])->name('advancechargesubmit');

// Change Bill Date
Route::get('tools/changebilldate', [ToolsController::class, 'changebilldate'])->name('changebilldate');
// Fetch Outlet by property id
Route::post('tools/fetch_outlet_by_property', [ToolsController::class, 'fetchoutletbyproperty'])->name('fetch_outlet_by_property');
// Change Bill Date Submit
Route::post('tools/changebilldatesubmit', [ToolsController::class, 'changebilldatesubmit'])->name('changebilldatesubmit');

// POS Recyle
Route::get('tools/posrecycle', [ToolsController::class, 'posrecycle'])->name('posrecycle');
// POS Recyle Submit
Route::post('tools/posrecyclesubmit', [ToolsController::class, 'posrecyclesubmit'])->name('posrecyclesubmit');

// Table Management System
Route::get('tools/tablemanagement', [ToolsController::class, 'tablemanagement'])->name('tablemanagement');
// Fetch All Tables
Route::post('tools/fetch_tables', [ToolsController::class, 'fetchtables'])->name('fetch_tables');
// Fetch Table Data by Property ID
Route::post('tools/fetch_table_data', [ToolsController::class, 'fetchtabledata'])->name('fetch_table_data');
// Update Table Cell
Route::post('tools/update_table_cell', [ToolsController::class, 'updatetablecell'])->name('update_table_cell');
// Bulk Update Records
Route::post('tools/bulk_update_records', [ToolsController::class, 'bulkupdaterecords'])->name('bulk_update_records');
// Insert Record
Route::post('tools/insert_record', [ToolsController::class, 'insertrecord'])->name('insert_record');
// Delete Table Record
Route::post('tools/delete_table_record', [ToolsController::class, 'deletetablerecord'])->name('delete_table_record');
// Delete Multiple Table Records
Route::post('tools/delete_multiple_records', [ToolsController::class, 'deletemultiplerecords'])->name('delete_multiple_records');

// Meta Tags Management Routes
Route::prefix('tools/meta')->group(function () {
    Route::get('/', [MetaController::class, 'index'])->name('meta.index');
    Route::get('create', [MetaController::class, 'editCreate'])->name('meta.create');
    Route::get('edit/{id?}', [MetaController::class, 'editCreate'])->name('meta.edit');
    Route::post('store', [MetaController::class, 'store'])->name('meta.store');
    Route::delete('destroy/{id?}', [MetaController::class, 'destroy'])->name('meta.destroy');
    Route::get('get-by-page/{pageName}', [MetaController::class, 'getByPage'])->name('meta.getByPage');
});

// Log Detaile Report
Route::get('tools/getlogreport', [ToolsController::class, 'logreport'])->name('tools.getlogreport');
// Fetch Log Report
Route::post('tools/fetchlogreport', [ToolsController::class, 'fetchlogreport'])->name('tools.fetchlogreport');

// Support Ticket Routes
Route::get('tools/tickets', [ToolsController::class, 'viewTickets'])->name('tools.viewTickets');
Route::post('tools/update-ticket-status', [ToolsController::class, 'updateTicketStatus'])->name('tools.updateTicketStatus');
Route::post('tools/accept-ticket', [ToolsController::class, 'acceptTicket'])->name('tools.acceptTicket');
Route::post('tools/transfer-ticket', [ToolsController::class, 'transferTicket'])->name('tools.transferTicket');
Route::get('tools/pending-notifications', [ToolsController::class, 'getPendingNotifications'])->name('tools.getPendingNotifications');
Route::get('tools/ticket-message-notifications', [ToolsController::class, 'getTicketMessageNotifications'])->name('tools.getTicketMessageNotifications');
Route::get('tools/available-users', [ToolsController::class, 'getAvailableUsers'])->name('tools.getAvailableUsers');
Route::get('tools/ticket-messages', [ToolsController::class, 'getTicketMessages'])->name('tools.getTicketMessages');
Route::post('tools/ticket-messages/send', [ToolsController::class, 'sendTicketMessage'])->name('tools.sendTicketMessage');
Route::post('tools/ticket-messages/edit', [ToolsController::class, 'editTicketMessage'])->name('tools.editTicketMessage');
Route::post('tools/ticket-work-complete', [ToolsController::class, 'markTicketWorkComplete'])->name('tools.markTicketWorkComplete');
Route::get('tools/notification-sound', [ToolsController::class, 'getNotificationSoundSetting'])->name('tools.getNotificationSoundSetting');
Route::post('tools/notification-sound/url', [ToolsController::class, 'saveNotificationSoundUrl'])->name('tools.saveNotificationSoundUrl');
Route::post('tools/notification-sound/upload', [ToolsController::class, 'uploadNotificationSound'])->name('tools.uploadNotificationSound');
Route::post('tools/notification-sound/reset', [ToolsController::class, 'resetNotificationSound'])->name('tools.resetNotificationSound');
// Tools Mark Dashboard
Route::get('tools/markDashboard', [ToolsController::class, 'markDashboard'])->name('markDashboard');
Route::get('CRM', [ToolsController::class, 'CRM'])->name('CRM');
Route::post('CRM/store', [ToolsController::class, 'storeCRM'])->name('CRM.store');
Route::post('CRM/update', [ToolsController::class, 'updateCRM'])->name('CRM.update');
// Integrity Check
Route::get('tools/integritycheck', [ToolsController::class, 'integritycheck'])->name('integritycheck');
Route::post('/get-ledger-blank-subcode', [ToolsController::class, 'getLedgerBlankSubcode'])->name('getLedgerBlankSubcode');
Route::post('/get-ledger-subcode-missing', [ToolsController::class, 'getLedgerSubcodeMissing'])->name('getLedgerSubcodeMissing');
Route::post('/get-subgroup-missing-acgroup', [ToolsController::class, 'getSubgroupMissingAcgroup']);
Route::post('/get-group-nature-mismatch', [ToolsController::class, 'getGroupNatureMismatch']);
Route::post('/get-acgroup-null-nature', [ToolsController::class, 'getAcgroupNullNature']);
Route::post('/get-table6', [ToolsController::class, 'getTable6']);
Route::post('/get-table7', [ToolsController::class, 'getTable7']);
Route::post('/get-table8', [ToolsController::class, 'getTable8']);
Route::post('/get-table9', [ToolsController::class, 'getTable9']);
Route::post('/get-table10', [ToolsController::class, 'getTable10']);
Route::post('/get-table11', [ToolsController::class, 'getTable11']);

Route::get('followUp', [ToolsController::class, 'followUp'])->name('followUp');
Route::post('/followup/update', [ToolsController::class, 'updateFollowUp'])->name('followup.update');

Route::get('/crm/quotation/{orderno}', [ToolsController::class, 'quotationCRM'])
    ->name('CRM.quotation');
Route::get('/api/crm/quotation/{orderno}', [ToolsController::class, 'quotationApi'])
    ->name('CRM.quotation.api');
Route::post('/quotation/{orderno}/pdf', [ToolsController::class, 'quotationGeneratePdf'])
    ->name('CRM.quotation.pdf');

Route::prefix('tools')->group(function () {
    Route::get('/databackups', [BackupController::class, 'toolsIndex'])->name('tools.databackups');
    Route::post('/bulk-backup/generate', [BackupController::class, 'generateBulkBackup'])->name('tools.bulk-backup.generate');
    Route::post('/bulk-backup/fetch', [BackupController::class, 'fetchBulkBackups'])->name('tools.bulk-backup.fetch');
    Route::post('/bulk-backup/download', [BackupController::class, 'downloadBulkBackup'])->name('tools.bulk-backup.download');
    Route::get('/storage-download', [BackupController::class, 'downloadStorage'])->name('tools.storagefdownload');
    Route::get('/download-temp-zip/{filename}', [BackupController::class, 'downloadTempZip'])->name('tools.download-temp-zip');
    Route::post('/verify-database', [BackupController::class, 'verifyDatabase'])->name('tools.verify-database');
});
