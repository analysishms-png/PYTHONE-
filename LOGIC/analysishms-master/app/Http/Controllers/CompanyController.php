<?php

namespace App\Http\Controllers;

use App\Exports\BookingSourceExport;
use App\Exports\BuildingMasterExport;
use App\Exports\BusinessSourceExport;
use App\Exports\ChargeMasterExport;
use App\Exports\GuestStatusExport;
use App\Exports\ItemListExport;
use App\Exports\NcTypeMasterExport;
use App\Exports\PayMasterExport;
use App\Exports\RoomCategoryExport;
use App\Exports\RoomFeatureExport;
use App\Exports\RoomMasterExport;
use App\Exports\ServerMasterExport;
use App\Exports\SessionMasterExport;
use App\Exports\TaxMasterExport;
use App\Exports\TaxStructureExport;
use App\Helpers\DateHelper;
use App\Helpers\ResHelper;
use App\Helpers\WhatsappSend;
use App\Jobs\SyncInventoryJob;
use App\Models\ACGroup;
use App\Models\Bookings;
use App\Models\BuildingMaster;
use App\Models\ChannelEnviro;
use App\Models\ChequeDesign;
use App\Models\Cities;
use App\Models\CompanyDiscount;
use App\Models\CompanyLog;
use App\Models\Companyreg;
use App\Models\CompServiceFacilities;
use App\Models\Depart;
use App\Models\Depart1;
use App\Models\EInvoiceBill;
use App\Models\EnviroEinvoice;
use App\Models\EnviroFom;
use App\Models\EnviroGeneral;
use App\Models\EnviroPos;
use App\Models\EnviroWhatsapp;
use App\Models\FeedbackMaster;
use App\Models\FomBillDetail;
use App\Models\GrpBookinDetail;
use App\Models\Guestfolio;
use App\Models\GuestFolioProfDetail;
use App\Models\GuestProf;
use App\Models\Happyhour;
use App\Models\HkAmentiesMaster;
use App\Models\HkChecklistMast;
use App\Models\HkFloor;
use App\Models\Hkroomassign;
use App\Models\HousekeeperMast;
use App\Models\ItemCatMast;
use App\Models\ItemGrp;
use App\Models\ItemMast;
use App\Models\ItemRate;
use App\Models\Items;
use App\Models\Kot;
use App\Models\Kot as KotModal;
use App\Models\Ledger;
use App\Models\MenuHelp;
use App\Models\NightAuditLog;
use App\Models\Paycharge;
use App\Models\PlanDetail;
use App\Models\PlanMast;
use App\Models\PrintingSetup;
use App\Models\Remark;
use App\Models\Revmast;
use App\Models\RoomCat;
use App\Models\RoomInclusive;
use App\Models\RoomInclusiveLog;
use App\Models\Roomkey;
use App\Models\RoomMast;
use App\Models\RoomOcc;
use App\Models\Sagar;
use App\Models\Sale1;
use App\Models\States;
use App\Models\Stock;
use App\Models\SubGroup;
use App\Models\SundryMast;
use App\Models\Sundrytype;
use App\Models\Suntran;
use App\Models\SupportTicket;
use App\Models\SupportTicketMessage;
use App\Models\Tablebooking;
use App\Models\TaxStructure;
use App\Models\TravelAgent;
use App\Models\UnitMast;
use App\Models\User;
use App\Models\UserModule;
use App\Models\UserPermission;
use App\Models\VoucherPrefix;
use App\Repositories\FomRepository;
use App\Services\AccountPosting;
use App\Services\GrcTerms;
use App\Services\RoomInclusivePosting;
use App\Services\RoomStatusSelectionService;
use App\Services\TenantDatabase;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

use function App\Helpers\endsWith;

// use function PHPUnit\Framework\isNull;

class CompanyController extends Controller
{
    protected $username;

    protected $email;

    protected $propertyid;

    protected $currenttime;

    protected $ptlngth;

    protected $prpid;

    protected $compcode;

    protected $ncurdate;

    protected $datemanage;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (! isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            $this->prpid = Auth::user()->propertyid;
            $propertydata = DB::table('users')->where('propertyid', $this->prpid)->first();
            $this->compcode = companyvalue();
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            $this->datemanage = DateHelper::calculateDateRanges($this->ncurdate);

            return $next($request);
        });
    }
    // Warning: Abandon hope, all who enter here. 😱

    public function ncurfetch()
    {
        $ncurdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');

        return $ncurdate;
    }

    public function confirmMyTicketSolved(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);

            if ((string) $ticket->property_id !== (string) Auth::user()->propertyid) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to update this ticket.',
                ], 403);
            }

            if ($ticket->status !== 'working') {
                return response()->json([
                    'success' => false,
                    'message' => 'You can confirm only when ticket is in working status.',
                ], 422);
            }

            if ((bool) $ticket->is_user_satisfied) {
                return response()->json([
                    'success' => true,
                    'message' => 'Ticket is already marked as solved from your side.',
                ]);
            }

            $ticket->is_user_satisfied = true;
            $ticket->user_satisfied_at = now();
            $ticket->save();

            SupportTicketMessage::create([
                'support_ticket_id' => $ticket->id,
                'sender_id' => Auth::id(),
                'sender_name' => Auth::user()->name ?? null,
                'sender_role' => 'user',
                'message' => 'User confirmed that the issue is solved.',
                'delivered_at' => now(),
                'read_at' => now(),
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Thanks! Your confirmation has been recorded. Support can now complete this ticket.',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating ticket: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function editMyTicketMessage(Request $request)
    {
        try {
            $request->validate([
                'ticket_id' => 'required|exists:support_tickets,id',
                'message_id' => 'required|exists:support_ticket_messages,id',
                'message' => 'required|string|max:5000',
            ]);

            $ticket = SupportTicket::findOrFail($request->ticket_id);
            $message = SupportTicketMessage::findOrFail($request->message_id);

            if ((string) $ticket->property_id !== (string) Auth::user()->propertyid) {
                return response()->json([
                    'success' => false,
                    'message' => 'You do not have permission to edit this message.',
                ], 403);
            }

            if ((int) $message->support_ticket_id !== (int) $ticket->id) {
                return response()->json([
                    'success' => false,
                    'message' => 'Message does not belong to selected ticket.',
                ], 422);
            }

            if ((int) $message->sender_id !== (int) Auth::id() || $message->sender_role !== 'user') {
                return response()->json([
                    'success' => false,
                    'message' => 'You can edit only your own message.',
                ], 403);
            }

            $editableUntil = optional($message->created_at)->copy()?->addMinutes(5);
            if (! $editableUntil || now()->greaterThan($editableUntil)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Edit window expired. You can edit message only within 5 minutes.',
                ], 422);
            }

            $newMessage = trim((string) $request->message);
            if ($newMessage === '') {
                return response()->json([
                    'success' => false,
                    'message' => 'Message cannot be empty.',
                ], 422);
            }

            $message->message = $newMessage;
            $message->save();

            return response()->json([
                'success' => true,
                'message' => 'Message edited successfully.',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed.',
                'errors' => $e->errors(),
            ], 422);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error editing message: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function revokeopen($code)
    {
        $value = MenuHelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();

        return $value;
    }

    public function ExportTable()
    {
        echo '<link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">';
        echo '<link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">';
        echo '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>';
        echo '<script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/dataTables.buttons.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.dataTables.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.html5.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.print.min.js"></script>';
    }

    public function DownloadTable($tableName, $title, $columnsToExport, $columnToSearch)
    {
        $exportColumnsJS = json_encode($columnsToExport);
        $searchColumnsJS = json_encode($columnToSearch);

        echo "<script>
        $(document).ready(function() {
            let table = $('#$tableName').DataTable({
                dom: 'Bfrtip',
                pageLength: 15,
                buttons: [
                    {
                        extend: 'excelHtml5',
                        text: 'Excel <i class=\"fa fa-file-excel-o\"></i>',
                        title: '$title',
                        filename: '$title',
                        exportOptions: {
                            columns: $exportColumnsJS
                        }
                    },
                    {
                        extend: 'csvHtml5',
                        text: 'Csv <i class=\"fa-solid fa-file-csv\"></i>',
                        title: '$title',
                        filename: '$title',
                        exportOptions: {
                            columns: $exportColumnsJS
                        }
                    },
                    {
                        extend: 'pdfHtml5',
                        text: 'Pdf <i class=\"fa fa-file-pdf-o\"></i>',
                        title: '$title',
                        filename: '$title',
                        exportOptions: {
                            columns: $exportColumnsJS
                        }
                    },
                    {
                        extend: 'print',
                        text: 'Print <i class=\"fa-solid fa-print\"></i>',
                        title: '$title',
                        filename: '$title',
                        exportOptions: {
                            columns: $exportColumnsJS
                        }
                    }
                ],
                initComplete: function() {
                    // Apply column-specific search
                    let searchColumns = $searchColumnsJS;
                    this.api().columns(searchColumns).every(function() {
                        let column = this;
                        let title = column.header().textContent;
                        let input = document.createElement('input');
                        input.placeholder = 'Search ' + title;
                        $(input).appendTo($(column.footer()).empty());
                        $(input).on('keyup', function () {
                            if (column.search() !== this.value) {
                                column.search(this.value).draw();
                            }
                        });
                    });
                }
            });
        });
        </script>";
    }

    public function opencountry(Request $request)
    {
        $permission = revokeopen(122015);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('countrytable', 'Country Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $countrydata = DB::table('countries')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();

        return view('property.countryform', ['countrydata' => $countrydata]);
    }

    public function openstate(Request $request)
    {
        $permission = revokeopen(122016);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('statetable', 'State Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $data['country'] = DB::table('countries')->get();
        $state_data = States::select(
            'states.*',
            'countries.name as countryname'
        )
            ->leftJoin('countries', 'countries.country_code', '=', 'states.country')
            ->where('states.propertyid', $this->propertyid)
            ->groupBy('states.state_code')
            ->orderBy('states.name', 'ASC')
            ->get();

        return view('property.stateform', ['state_data' => $state_data], $data);
    }

    public function opencity(Request $request)
    {
        $permission = revokeopen(122017);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('cityformmain', 'City Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $data['country'] = DB::table('countries')->get();
        $city_data = DB::table('cities')
            ->select(
                'cities.cityname',
                'cities.propertyid',
                'states.name as statename',
                'countries.name as countryname',
                'cities.u_name',
                'cities.city_code'
            )
            ->join('states', 'cities.state', '=', 'states.state_code')
            ->join('countries', 'cities.country', '=', 'countries.country_code')
            ->where('cities.propertyid', '=', $this->propertyid)
            ->orderBy('cities.cityname', 'asc')
            ->distinct()
            ->get();

        return view('property.cityform', ['city_data' => $city_data], $data);
    }

    public function opentaxmaster()
    {
        $permission = revokeopen(121111);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $this->ExportTable();
        // $this->DownloadTable('taxmaster', 'Tax Master Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $taxdata = DB::table('revmast')
            ->select(
                'revmast.name as taxname',
                'subgroup.name as subname',
                'sundrymast.name as sundryname',
                'payable.name as payable_ac_name',
                'unreg.name as unregistered_ac_name',
                'revmast.*'
            )
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->leftJoin('subgroup as payable', 'payable.sub_code', '=', 'revmast.payable_ac')
            ->leftJoin('subgroup as unreg', 'unreg.sub_code', '=', 'revmast.unregistered_ac')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'T')
            ->orderBy('taxname', 'ASC')
            ->get();

        $sundrymast = SundryMast::where('propertyid', $this->propertyid)->orderBy('name')->get();

        $ledgerdata = DB::table('subgroup')->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();

        return view('property.taxmaster', [
            'taxdata' => $taxdata,
            'sundrymast' => $sundrymast,
            'ledgerdata' => $ledgerdata,
        ]);
    }

    public function printTaxMaster()
    {
        $taxdata = DB::table('revmast')
            ->select(
                'revmast.name as taxname',
                'subgroup.name as subname',
                'sundrymast.name as sundryname',
                'revmast.*'
            )
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'T')
            ->orderBy('taxname', 'ASC')
            ->get();

        $company = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.print.printtaxmaster', [
            'taxdata' => $taxdata,
            'company' => $company,
        ]);
    }

    public function exportTaxMaster()
    {
        $companyName = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->value('comp_name');

        $export = new TaxMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openbusinesssource()
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('businesssource', 'Business Source Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.businesssource', ['data' => $data]);
    }

    public function printBusinessSource()
    {
        $data = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printbusinesssource', ['data' => $data, 'company' => $company]);
    }

    public function exportBusinessSource()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new BusinessSourceExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openunitmast()
    {
        $permission = revokeopen(122021);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('unitmast', 'Unit Master Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $data = DB::table('unitmast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.unitmaster', ['data' => $data]);
    }

    public function opennctypemast()
    {
        $permission = revokeopen(121320);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('nctype_mast', 'NC Type Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('nctype_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('nctype', 'ASC')
            ->get();

        return view('property.nctype', ['data' => $data]);
    }

    public function printNcTypeMaster()
    {
        $data = DB::table('nctype_mast')->where('propertyid', $this->propertyid)->orderBy('nctype', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printnctypemaster', ['data' => $data, 'company' => $company]);
    }

    public function exportNcTypeMaster()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new NcTypeMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openpaytypemast()
    {

        $permission = revokeopen(121113);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('revmast', 'Pay Type Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('revmast')
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'sundrymast.name as sundryname', 'revmast.*')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'revmast.tax_stru')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'P')
            ->orderBy('taxname', 'ASC')
            ->get();

        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')
            ->select('str_code', 'name')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->groupBy('str_code', 'name')
            ->get();

        return view('property.paymaster', ['data' => $data, 'ledgerdata' => $ledgerdata, 'taxstrudata' => $taxstrudata]);
    }

    public function printPayMaster()
    {
        $data = DB::table('revmast')
            ->select('revmast.name as taxname', 'subgroup.name as subname', 'revmast.ac_posting', 'revmast.nature')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'P')
            ->orderBy('taxname', 'ASC')
            ->get();

        $company = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.print.printpaymaster', [
            'data' => $data,
            'company' => $company,
        ]);
    }

    public function exportPayMaster()
    {
        $companyName = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->value('comp_name');

        $export = new PayMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function loadledger(Request $request)
    {
        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $options = [];
        if ($ledgerdata) {
            foreach ($ledgerdata as $row) {
                $options[] = [
                    'value' => $row->sub_code,
                    'text' => $row->name,
                ];
            }
        }

        return response()->json($options);
    }

    public function deleteguestledger(Request $request)
    {
        $dataid = $request->input('dataid');
        $datavalue = $request->input('datavalue');
        $vprefix = $request->input('vprefix');
        $reason = $request->input('reason');
        // Log::info('Delete Guest Ledger Request: dataid=' . $dataid . ', datavalue=' . $datavalue . ', vprefix=' . $vprefix . ', reason=' . $reason);
        if (empty($reason)) {
            return response()->json([
                'success' => false,
                'message' => 'Please Enter Reason',
            ]);
        }

        $isBillPrinted = Paycharge::where('propertyid', $this->propertyid)
            ->where('vno', $dataid)
            ->where('vprefix', $vprefix)
            ->whereNotNull('billno')
            ->where('billno', '!=', 0)
            ->where('billno', '!=', '')
            ->exists();

        if (Auth::user()->useroradmin !== 'admin' && userdata()->deleteguestcharges === 'N') {
            return response()->json([
                'success' => false,
                'message' => 'Delete Not Allowed!',
            ]);
        }

        $savelogyn = DB::table('enviro_form')->where('propertyid', $this->propertyid)->value('guestchargesdeletelog');

        if ($savelogyn == 'Y') {
            $existingrowsdata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('vno', $dataid)
                ->where('vprefix', $vprefix)->get();
            foreach ($existingrowsdata as $existingrows) {
                $loginsertdata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $existingrows->docid,
                    'vno' => $existingrows->vno,
                    'vtype' => $existingrows->vtype,
                    'sno' => $existingrows->sno,
                    'vdate' => $existingrows->vdate,
                    'vtime' => $existingrows->vtime,
                    'vprefix' => $existingrows->vprefix,
                    'paycode' => $existingrows->paycode,
                    'comments' => $existingrows->comments,
                    'guestprof' => $existingrows->guestprof,
                    'roomno' => $existingrows->roomno,
                    'amtdr' => $existingrows->amtdr,
                    'roomtype' => $existingrows->roomtype,
                    'roomcat' => $existingrows->roomcat,
                    'foliono' => $existingrows->foliono,
                    'restcode' => $existingrows->restcode,
                    'remarks' => $reason,
                    'billamount' => $existingrows->billamount,
                    'taxper' => $existingrows->taxper,
                    'onamt' => $existingrows->onamt,
                    'folionodocid' => $existingrows->folionodocid,
                    'taxcondamt' => $existingrows->taxcondamt,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ];
                $insertintopaychargelog = DB::table('paychargelog')->insert($loginsertdata);
            }
        }

        try {
            $deleting = DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('vno', $dataid)
                ->where('vtype', $datavalue)
                ->where('vprefix', $vprefix)
                ->delete();
            if ($deleting) {
                return response()->json([
                    'success' => true,
                    'message' => 'Bill Deleted',
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'No Data Found',
                ], 500);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An error occurred: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function getcompdt(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->first();
        $user = Auth::user();
        $datemanage = $this->datemanage;
        $data = [
            'user' => $user,
            'company' => $company,
            'datemanage' => $datemanage,
        ];

        return json_encode($data);
    }

    public function loadoutlets(Request $request)
    {
        $ledgerdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $options = [];
        if ($ledgerdata) {
            foreach ($ledgerdata as $row) {
                $options[] = [
                    'value' => $row->dcode,
                    'text' => $row->name,
                ];
            }
        }

        return response()->json($options);
    }

    public function openservermast()
    {

        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('server_mast', 'Server Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('server_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.waiter', ['data' => $data]);
    }

    public function opentablemast()
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('table_mast', 'Table Master Data Analysis HMS', [0, 1, 2], [1, 2, 3]);
        $data = DB::table('room_mast')
            ->select('room_mast.*', 'depart.name as departname', 'depart.dcode')
            ->Join('depart', 'depart.dcode', '=', 'room_mast.rest_code')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.type', 'TB')
            ->orderBy('room_mast.name', 'ASC')
            ->distinct()
            ->get();
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('rest_type', 'Outlet')
            ->get();

        return view('property.tablemaster', ['data' => $data, 'departdata' => $departdata]);
    }

    public function opensetupoutlet()
    {
        $permission = revokeopen(121311);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereiN('rest_type', ['Outlet', 'ROOM SERVICE'])
            ->get();

        $floors = HkFloor::where('propertyid', $this->propertyid)->get();

        return view('property.outletsetup', ['data' => $data, 'floors' => $floors]);
    }

    public function opennsessionmast()
    {
        $permission = revokeopen(121319);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('session_mast', 'Session Master Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $data = DB::table('session_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.sessionmast', ['data' => $data]);
    }

    public function printSessionMaster()
    {
        $data = DB::table('session_mast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printsessionmaster', ['data' => $data, 'company' => $company]);
    }

    public function exportSessionMaster()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new SessionMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openroomfeatures()
    {
        $permission = revokeopen(121216);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $this->ExportTable();
        // $this->DownloadTable('roomfeatures', 'Room Features Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('roomfeature')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.roomfeature', ['data' => $data]);
    }

    public function printRoomFeature()
    {
        $data = DB::table('roomfeature')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printroomfeature', ['data' => $data, 'company' => $company]);
    }

    public function exportRoomFeature()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new RoomFeatureExport($this->propertyid, $companyName);
        $export->download();
    }

    public function opengueststatus()
    {
        $permission = revokeopen(121213);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('gueststats', 'Guest Status Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('gueststats')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.gueststatus', ['data' => $data]);
    }

    public function printGuestStatus()
    {
        $data = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printgueststatus', ['data' => $data, 'company' => $company]);
    }

    public function exportGuestStatus()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new GuestStatusExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openchargemaster()
    {
        $permission = revokeopen(121214);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $this->ExportTable();
        $this->DownloadTable('chargemaster', 'Charge Master Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('revmast')
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'sundrymast.name as sundryname', 'revmast.*')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('sundrymast', 'sundrymast.sundry_code', '=', 'revmast.sundry')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'revmast.tax_stru')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', '=', 'FOM' . $this->propertyid)
            ->distinct()
            ->orderBy('name', 'ASC')
            ->get();

        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->groupBy('name')
            ->orderBy('name', 'ASC')->get();

        return view('property.chargemaster', [
            'data' => $data,
            'ledgerdata' => $ledgerdata,
            'taxstrudata' => $taxstrudata,
            'update' => false,
        ]);
    }

    public function printChargeMaster()
    {
        $data = DB::table('revmast')
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'revmast.seq_no', 'revmast.SysYN')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('taxstru', function ($join) {
                $join->on('taxstru.str_code', '=', 'revmast.tax_stru')
                    ->where('taxstru.propertyid', '=', $this->propertyid);
            })
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'C')
            ->where('revmast.Desk_code', '=', 'FOM' . $this->propertyid)
            ->distinct()
            ->orderBy('revmast.name', 'ASC')
            ->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printchargemaster', ['data' => $data, 'company' => $company]);
    }

    public function exportChargeMaster()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new ChargeMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openroomcat()
    {
        $permission = revokeopen(121217);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('room_cat', 'Room Category Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('room_cat')
            ->select('revmast.name as taxname', 'room_cat.*')
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'room_cat.rev_code')
                    ->where('room_cat.propertyid', '=', $this->propertyid);
            })
            ->where('room_cat.propertyid', $this->propertyid)
            ->orderBy('revmast.name', 'ASC')
            ->get();

        $revmastdata = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', 'FOM' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $envirodata = DB::table('enviro_form')
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.roomcategory', ['data' => $data, 'revmastdata' => $revmastdata, 'envirodata' => $envirodata]);
    }

    public function printRoomCategory()
    {
        $data = DB::table('room_cat')
            ->select('revmast.name as taxname', 'room_cat.*')
            ->leftJoin('revmast', function ($join) {
                $join->on('revmast.rev_code', '=', 'room_cat.rev_code')
                    ->where('room_cat.propertyid', '=', $this->propertyid);
            })
            ->where('room_cat.propertyid', $this->propertyid)
            ->orderBy('revmast.name', 'ASC')
            ->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printroomcategory', ['data' => $data, 'company' => $company]);
    }

    public function exportRoomCategory()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new RoomCategoryExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openroommaster()
    {
        $permission = revokeopen(121218);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('room_mast', 'Room Master Data Analysis HMS', [0, 1, 2, 3, 4, 5], [1, 2, 3, 4]);
        $data = DB::table('room_mast')
            ->select('room_cat.name as catname', 'buildingmaster.name as buildingname', 'room_mast.*')
            ->leftJoin('room_cat', 'room_mast.room_cat', '=', 'room_cat.cat_code')
            ->leftJoin('buildingmaster', 'room_mast.building', '=', 'buildingmaster.code')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.type', 'RO')
            ->orderBy('room_mast.rcode', 'ASC')
            ->get();
        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $envirodata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        $floors = DB::table('hkfloors')
            ->where('propertyid', $this->propertyid)
            ->where('isactive', 1)
            ->orderBy('id', 'ASC')
            ->get();
        $buildings = DB::table('buildingmaster')
            ->where('propertyid', $this->propertyid)
            ->where('activeyn', 1)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.roommaster', ['data' => $data, 'roomcat' => $roomcat, 'envirodata' => $envirodata, 'floors' => $floors, 'buildings' => $buildings]);
    }

    public function printRoomMaster()
    {
        $data = DB::table('room_mast')
            ->select('room_cat.name as catname', 'buildingmaster.name as buildingname', 'room_mast.*')
            ->leftJoin('room_cat', 'room_mast.room_cat', '=', 'room_cat.cat_code')
            ->leftJoin('buildingmaster', 'room_mast.building', '=', 'buildingmaster.code')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.type', 'RO')
            ->orderBy('room_mast.rcode', 'ASC')
            ->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printroommaster', ['data' => $data, 'company' => $company]);
    }

    public function exportRoomMaster()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new RoomMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openplanaster()
    {
        $permission = revokeopen(121215);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('plan_mast', 'Plan Master Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('plan_mast')
            ->select('room_cat.name as catname', 'plan_mast.*')
            ->leftJoin('room_cat', 'plan_mast.room_cat', '=', 'room_cat.cat_code')
            ->where('plan_mast.propertyid', $this->propertyid)
            ->orderBy('plan_mast.name', 'ASC')
            ->get();
        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')
            ->select('name', 'str_code')
            ->where('propertyid', $this->propertyid)
            ->groupBy('name')
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $chargedata = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', 'FOM' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();

        return view('property.planmaster', [
            'data' => $data,
            'roomcat' => $roomcat,
            'taxstrudata' => $taxstrudata,
            'chargedata' => $chargedata,
        ]);
    }

    public function openwalkin(Request $request)
    {
        $permission = revokeopen(141112);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        if (! empty($request->query('selected'))) {
            $selectedrooms = app(RoomStatusSelectionService::class)
                ->convert(
                    $request->query('selected'),
                    $request->is('walkincheckin')
                );
        }

        // return $selectedrooms;

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $planmaster = DB::table('plan_mast')
            ->select('name', 'pcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();

        $checkoutdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        $chkoutdate = date('Y-m-d', strtotime($checkoutdate . ' +1 day'));
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->where('activeYN', 'Y')
            ->orderBy('name', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();
        $travelagent = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('activeyn', '1')
            ->orderBy('cityname', 'ASC')->get();
        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();

        $enviro_formdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();

        return view('property.walkin', [
            'selectedrooms' => $selectedrooms ?? [],
            'roomcat' => $roomcat,
            'planmaster' => $planmaster,
            'checkoutdate' => $chkoutdate,
            'bsource' => $bsource,
            'company' => $company,
            'travel_agent' => $travelagent,
            'citydata' => $citydata,
            'countrydata' => $countrydata,
            'nationalitydata' => $nationalitydata,
            'gueststatus' => $gueststatus,
            'enviro_formdata' => $enviro_formdata,
            'canAddCompany' => optional(revokeopen(122018))->ins == 1,
            'canAddTravelAgent' => optional(revokeopen(122018))->ins == 1,
            'canAddCity' => optional(revokeopen(122017))->ins == 1,
        ]);
    }

    public function openprefilledwalkin(Request $request)
    {
        $docid = $request->input('docid');
        $sno = $request->input('sno');

        $maxsno = GrpBookinDetail::where('BookingDocid', $docid)->where('Property_ID', $this->propertyid)->max('Sno');

        $advance = Paycharge::where('propertyid', $this->propertyid)->where('sno', 1)->where('sno1', $maxsno)->where('refdocid', $docid)->get() ?? '';
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        $updatedata = DB::table('grpbookingdetails')->select(
            DB::raw("CASE 
                WHEN bookingplandetails.rev_code IS NULL THEN 'N' 
                ELSE 'Y' 
                END AS planedit"),
            'bookingplandetails.rev_code as brev_code',
            'bookingplandetails.taxinc as btaxinc',
            'bookingplandetails.taxstru as btaxstru',
            'bookingplandetails.fixrate as bfixrate',
            'bookingplandetails.planper as bplanper',
            'bookingplandetails.amount as bamount',
            'bookingplandetails.netplanamt as bnetplanamt',
            'bookingplandetails.room_rate_before_tax as broom_rate_before_tax',
            'bookingplandetails.total_rate as btotal_rate',
            'revmast.name as chargename',
            'grpbookingdetails.*',
            'grpbookingdetails.GuestName as clientname',
            'guestprof.*',
            'booking.GuestProf',
            'booking.advdeposit',
            'booking.BookedBy',
            'booking.TravelMode',
            'booking.ResStatus',
            'grpbookingdetails.NoDays',
            'booking.NoofRooms',
            'booking.Company',
            'booking.MarketSeg',
            'guestprof.complimentry',
            'booking.BussSource',
            'booking.TravelAgency',
            'guestprof.pic_path',
            'plan_mast.pcode',
            'plan_mast.name as planname',
            'plan_mast.room_per as room_perplan',
            'room_mast.rcode',
            'room_mast.name as roomname',
            'guestprof.city',
            'guestprof.add1',
            'guestprof.add2',
            'cities.cityname as nameofcity',
            'cities.zipcode as cityzipcode',
            'guestprof.country_code',
            'guestprof.state_code',
            'states.name as nameofstate',
            'countries.name as nameofcountry',
            'countries.nationality as nameofnationality',
            'booking.ArrFrom',
            'booking.Destination',
            'booking.TravelMode',
            'booking.purpofvisit',
            'booking.RDisc',
            'booking.RSDisc',
            'booking.vehiclenum',
            'booking.RefBookNo',
            'booking.Remarks',
            'booking.pickupdrop'
        )
            ->leftJoin('guestprof', 'grpbookingdetails.BookingDocid', '=', 'guestprof.docid')->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->leftJoin('booking', 'grpbookingdetails.BookingDocid', '=', 'booking.DocId')
            ->leftJoin('plan_mast', 'grpbookingdetails.Plan_Code', '=', 'plan_mast.pcode')
            ->leftJoin('room_mast', 'grpbookingdetails.RoomNo', '=', 'room_mast.rcode')
            ->leftJoin('cities', 'guestprof.city', '=', 'cities.city_code')
            ->leftJoin('countries', 'guestprof.country_code', '=', 'countries.country_code')
            ->leftJoin('states', 'guestprof.state_code', '=', 'states.state_code')
            ->leftJoin('bookingplandetails', function ($join) {
                $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'bookingplandetails.rev_code')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('grpbookingdetails.BookingDocid', $docid)
            ->where('grpbookingdetails.ArrDate', ncurdate())
            ->where(function ($query) {
                $query->whereNull('grpbookingdetails.ContraDocId')
                    ->orWhere('grpbookingdetails.ContraDocId', '');
            })
            ->groupBy('grpbookingdetails.Sno')
            ->get();

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $planmaster = DB::table('plan_mast')
            ->select('name', 'pcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $roommast = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $checkoutdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        $chkoutdate = date('Y-m-d', strtotime($checkoutdate . ' +1 day'));
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();
        $travelagent = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)
            ->orderBy('cityname', 'ASC')->get();
        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();

        $enviro_formdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

        $roominclusive = RoomInclusive::where('propertyid', $this->propertyid)->where('docid', $docid)
            ->orderBy('sno')->get();

        $updatedata = $updatedata->reject(function ($row) {
            return RoomOcc::whereNull('type')
                ->where('depdate', $row->ArrDate)
                ->where('roomno', $row->RoomNo)
                ->exists();
        })->values();

        return view('property.walkinprefilled', [
            'companydata' => $companydata,
            'advance' => $advance,
            'data' => $updatedata,
            'roomcat' => $roomcat,
            'planmaster' => $planmaster,
            'roommast' => $roommast,
            'checkoutdate' => $chkoutdate,
            'bsource' => $bsource,
            'company' => $company,
            'travel_agent' => $travelagent,
            'citydata' => $citydata,
            'countrydata' => $countrydata,
            'nationalitydata' => $nationalitydata,
            'gueststatus' => $gueststatus,
            'enviro_formdata' => $enviro_formdata,
            'ncurdate' => $ncurdate,
            'roominclusive' => $roominclusive,
        ]);
    }

    public function openupdatewalkin(Request $request)
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $updatedata = (new FomRepository($this->propertyid, $request->input('docid')))->getWalkinData(null);

        // return $updatedata;

        $roominclusive = RoomInclusive::where('propertyid', $this->propertyid)
            ->where('contradocid', $request->input('docid'))
            ->get();
        // return $request->input('docid');
        // return $roominclusive;

        // return $updatedata;

        foreach ($updatedata as $row) {
            $plans = PlanMast::where('room_cat', $row->roomcat)
                ->where('propertyid', $this->propertyid)
                ->get();
        }

        $rooms = [];
        foreach ($updatedata as $row) {
            $checkindate = $row->chkindate;
            $previousdate = date('Y-m-d', strtotime('-1 day', strtotime($checkindate)));

            $rooms = DB::table('room_mast')
                ->select('rcode')
                ->whereNotIn('rcode', function ($query) use ($checkindate) {
                    $query->select('roomno')
                        ->from('roomocc')
                        ->whereNull('chkoutdate')
                        ->whereBetween('chkindate', [$checkindate, $checkindate])
                        ->where('propertyid', $this->propertyid);
                })
                ->where('type', 'RO')
                ->where('inclcount', 'Y')
                ->whereNotIn('rcode', function ($query) use ($checkindate) {
                    $query->select('RoomNo')
                        ->from('grpbookingdetails')
                        ->whereBetween('Arrdate', [$checkindate, $checkindate])
                        ->where('Property_ID', $this->propertyid);
                })
                ->where('propertyid', $this->propertyid)
                ->where('room_cat', $row->roomcat)
                ->get();
        }

        // return $updatedata;

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $planmaster = DB::table('plan_mast')
            ->select('name', 'pcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $roommast = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $checkoutdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        $chkoutdate = date('Y-m-d', strtotime($checkoutdate . ' +1 day'));
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();
        $travelagent = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('activeyn', '1')
            ->orderBy('cityname', 'ASC')->get();
        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();

        $enviro_formdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();

        $checkcharge = Paycharge::where('folionodocid', $request->input('docid'))->where('billno', '!=', '0')->first();

        $leaderc = '1';

        if ($checkcharge) {
            $leaderc = '0';
        }

        // return $plans;

        // return $updatedata;
        return view('property.updatewalkin', [
            'rooms' => $rooms,
            'plans' => $plans,
            'leaderc' => $leaderc,
            'data' => $updatedata,
            'roomcat' => $roomcat,
            'planmaster' => $planmaster,
            'roommast' => $roommast,
            'checkoutdate' => $chkoutdate,
            'bsource' => $bsource,
            'company' => $company,
            'travel_agent' => $travelagent,
            'citydata' => $citydata,
            'countrydata' => $countrydata,
            'nationalitydata' => $nationalitydata,
            'gueststatus' => $gueststatus,
            'enviro_formdata' => $enviro_formdata,
            'roominclusive' => $roominclusive,
        ]);
    }

    public function openblankgrc(Request $request)
    {
        $permission = revokeopen(141111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = 'CHK';
        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();
        if ($chkvpf === null || $chkvpf === '0') {
            return response()->json([
                'redirecturl' => '',
                'status' => 'error',
                'message' => 'You are not eligible to checkin for this date: ' . date('d-m-Y', strtotime($this->ncurdate)),
            ]);
        }

        $fom = EnviroFom::where('propertyid', $this->propertyid)->first();
        $start_srl_no = $chkvpf->start_srl_no + 1;
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.blankgrc', [
            'srlno' => $start_srl_no,
            'company' => $companydata,
            'fom' => $fom,
            'ncur' => $this->ncurdate,
        ]);
    }

    public function openupdatereservation(Request $request)
    {
        $permission = revokeopen(131111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $chkcheckin = DB::table('guestfolio')->where('propertyid', $this->propertyid)
            ->where('bookingdocid', base64_decode($request->input('DocId')))->first();
        if ($chkcheckin) {
            return back()->with('error', 'Guest already checked in can not edit Reservation🏡!');
        }

        $advance = Paycharge::where('propertyid', $this->propertyid)->where('sno', 1)->where('refdocid', base64_decode($request->input('DocId')))->get() ?? '';

        // echo base64_decode($request->input('sno'));
        // var_dump($advance);
        // exit;

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $updatedata = DB::table('grpbookingdetails')->select(
            DB::raw("CASE 
                WHEN bookingplandetails.rev_code IS NULL THEN 'N' 
                ELSE 'Y' 
                END AS planedit"),
            'bookingplandetails.rev_code as brev_code',
            'bookingplandetails.taxinc as btaxinc',
            'bookingplandetails.taxstru as btaxstru',
            'bookingplandetails.fixrate as bfixrate',
            'bookingplandetails.planper as bplanper',
            'bookingplandetails.amount as bamount',
            'bookingplandetails.netplanamt as bnetplanamt',
            'bookingplandetails.room_rate_before_tax as broom_rate_before_tax',
            'bookingplandetails.total_rate as btotal_rate',
            'revmast.name as chargename',
            'grpbookingdetails.*',
            'grpbookingdetails.GuestName as clientname',
            'guestprof.*',
            'booking.GuestProf',
            'booking.vdate',
            'booking.Remarks',
            'booking.pickupdrop',
            'booking.BookNo',
            'booking.advdeposit',
            'booking.BookedBy',
            'booking.TravelMode',
            'booking.ResStatus',
            'grpbookingdetails.NoDays',
            'booking.NoofRooms',
            'booking.RefBookNo',
            'booking.Company',
            'booking.MarketSeg',
            'guestprof.complimentry',
            'booking.BussSource',
            'booking.TravelAgency',
            'guestprof.pic_path',
            'plan_mast.pcode',
            'plan_mast.name as planname',
            'plan_mast.room_per as room_perplan',
            'room_mast.rcode',
            'room_mast.name as roomname',
            'guestprof.city',
            'guestprof.add1',
            'guestprof.add2',
            'cities.cityname as nameofcity',
            'cities.zipcode as cityzipcode',
            'guestprof.country_code',
            'guestprof.state_code',
            'states.name as nameofstate',
            'countries.name as nameofcountry',
            'countries.nationality as nameofnationality',
            'booking.ArrFrom',
            'booking.Destination',
            'booking.TravelMode',
            'booking.purpofvisit',
            'booking.RDisc',
            'booking.RSDisc',
            'booking.vehiclenum',
            'booking.RefBookNo'
        )
            ->leftJoin('guestprof', 'grpbookingdetails.BookingDocid', '=', 'guestprof.docid')->where('grpbookingdetails.Property_ID', $this->propertyid)
            ->leftJoin('booking', 'grpbookingdetails.BookingDocid', '=', 'booking.DocId')
            ->leftJoin('plan_mast', 'grpbookingdetails.Plan_Code', '=', 'plan_mast.pcode')
            ->leftJoin('room_mast', 'grpbookingdetails.RoomNo', '=', 'room_mast.rcode')
            ->leftJoin('cities', 'guestprof.city', '=', 'cities.city_code')
            ->leftJoin('countries', 'guestprof.country_code', '=', 'countries.country_code')
            ->leftJoin('states', 'guestprof.state_code', '=', 'states.state_code')
            ->leftJoin('bookingplandetails', function ($join) {
                $join->on('bookingplandetails.docid', '=', 'grpbookingdetails.BookingDocid')
                    ->on('bookingplandetails.sno1', '=', 'grpbookingdetails.Sno');
            })
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'bookingplandetails.rev_code')
            ->where('grpbookingdetails.BookingDocid', base64_decode($request->input('DocId')))
            ->groupBy('grpbookingdetails.Sno')
            ->get();

        $firstRow = $updatedata->first();

        if (! empty($firstRow?->RefBookNo)) {
            return back()->with('error', 'Cannot Edit this reservation booking🏡!');
        }

        foreach ($updatedata as $row) {
            $checkindate = $row->ArrDate;
            $previousdate = date('Y-m-d', strtotime('-1 day', strtotime($checkindate)));

            $rooms = DB::table('room_mast')
                ->select('rcode')
                ->whereNotIn('rcode', function ($query) use ($checkindate) {
                    $query->select('roomno')
                        ->from('roomocc')
                        ->whereNull('chkoutdate')
                        ->whereBetween('chkindate', [$checkindate, $checkindate])
                        ->where('propertyid', $this->propertyid);
                })
                ->where('type', 'RO')
                ->where('inclcount', 'Y')
                ->whereNotIn('rcode', function ($query) use ($checkindate) {
                    $query->select('RoomNo')
                        ->from('grpbookingdetails')
                        ->whereBetween('Arrdate', [$checkindate, $checkindate])
                        ->where('Property_ID', $this->propertyid);
                })
                ->where('propertyid', $this->propertyid)
                ->where('room_cat', $row->RoomCat)
                ->get();
        }

        foreach ($updatedata as $row) {
            $plans = PlanMast::where('room_cat', $row->RoomCat)
                ->where('propertyid', $this->propertyid)
                ->groupBy('pcode')
                ->get();
        }

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();

        $planmaster = DB::table('plan_mast')
            ->select('name', 'pcode', 'tarrif')
            ->where('propertyid', $this->propertyid)
            // ->groupBy('name')
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $roommast = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $checkoutdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        $chkoutdate = date('Y-m-d', strtotime($checkoutdate . ' +1 day'));
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();
        $travelagent = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('activeyn', '1')
            ->orderBy('cityname', 'ASC')->get();
        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();

        $enviro_formdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

        $revmast = Revmast::where('propertyid', $this->propertyid)->where('flag_type', 'FOM')
            ->whereNotIn('rev_code', [
                "DISC{$this->propertyid}",
                "ROFF{$this->propertyid}",
                "TOUT{$this->propertyid}",
                "RMCH{$this->propertyid}",
            ])->where('field_type', 'C')->orderBy('name', 'ASC')->get();

        $roominclusive = RoomInclusive::where('propertyid', $this->propertyid)
            ->where('docid', base64_decode($request->input('DocId')))
            ->get();

        $remarks = Remark::where('docid', base64_decode($request->input('DocId')))
            ->where('sno', 1)
            ->first();

        return view('property.updatereservation', [
            'remarks' => $remarks,
            'plans' => $plans,
            'rooms' => $rooms,
            'companydata' => $companydata,
            'advance' => $advance,
            'data' => $updatedata,
            'roomcat' => $roomcat,
            'planmaster' => $planmaster,
            'roommast' => $roommast,
            'checkoutdate' => $chkoutdate,
            'bsource' => $bsource,
            'company' => $company,
            'travel_agent' => $travelagent,
            'citydata' => $citydata,
            'countrydata' => $countrydata,
            'nationalitydata' => $nationalitydata,
            'gueststatus' => $gueststatus,
            'enviro_formdata' => $enviro_formdata,
            'ncurdate' => $ncurdate,
            'revmast' => $revmast,
            'roominclusive' => $roominclusive,
            // 'page_source'
        ]);
    }

    public function deletewalkin(Request $request)
    {
        $permission = revokeopen(141113);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $docid = base64_decode($request->input('docid'));
        $sno1 = base64_decode($request->input('sno1'));
        $roomoccdata = DB::table('roomocc')->where('docid', $docid)->where('propertyid', $this->propertyid)->get();
        foreach ($roomoccdata as $data) {
            $sno1fetched = $data->sno1;
            $checkinrbooking = DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('ContraDocId', $docid)->where('ContraSno', $sno1fetched)->first();
            if ($checkinrbooking) {
                $blankpanel = [
                    'ContraDocId' => null,
                    'ContraSno' => null,
                ];
                $update = DB::table('grpbookingdetails')->where('Property_ID', $this->propertyid)->where('BookingDocid', $checkinrbooking->BookingDocid)->where('Sno', $sno1fetched)->update($blankpanel);
            }
        }
        $checkinpaycharge = DB::table('paycharge')->where('folionodocid', $docid)->where('propertyid', $this->propertyid)->first();
        if (! empty($checkinpaycharge)) {
            return back()->with('error', 'Related Records existing cannot delete!');
        }
        $checkroomnotchanged = DB::table('roomocc')->where('docid', $docid)->where('propertyid', $this->propertyid)->where('sno', '1')->where('sno1', '1')->value('type');
        if (! empty($checkroomnotchanged)) {
            return back()->with('error', 'Room Has Been Changed Unable TO Delete It!');
        }

        $profileimage = DB::table('guestprof')->where('docid', $docid)->where('propertyid', $this->propertyid)->value('pic_path');
        $guestsign = DB::table('guestprof')->where('docid', $docid)->where('propertyid', $this->propertyid)->value('guestsign');
        $identityimage = DB::table('guestprof')->where('docid', $docid)->where('propertyid', $this->propertyid)->value('idpic_path');
        if (! empty($profileimage)) {
            $folderPathp = storage_path('app/public/walkin/profileimage/' . $profileimage);
            if (file_exists($folderPathp)) {
                unlink($folderPathp);
            }
        }
        if (! empty($guestsign)) {
            $folderPathp = storage_path('app/public/walkin/signature/' . $guestsign);
            if (file_exists($folderPathp)) {
                unlink($folderPathp);
            }
        }
        if (! empty($identityimage)) {
            $folderPathi = storage_path('app/public/walkin/identityimage/' . $identityimage);
            if (file_exists($folderPathi)) {
                unlink($folderPathi);
            }
        }
        try {
            $ncurdate = Carbon::parse(ncurdate())->toDateString();

            $rooms = DB::table('roomocc')
                ->where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->whereNull('type')
                ->get(['roomcat', 'chkindate', 'depdate']);

            $roomocc = DB::table('roomocc')->where('docid', $docid)->where('propertyid', $this->propertyid)->delete();
            $guestproftable = DB::table('guestprof')->where('docid', $docid)->where('propertyid', $this->propertyid)->delete();
            $guestfolio = DB::table('guestfolio')->where('docid', $docid)->where('propertyid', $this->propertyid)->delete();
            $guestfolioprofdetail = DB::table('guestfolioprofdetail')->where('doc_id', $docid)->where('propertyid', $this->propertyid)->delete();
            $chkgrp = GrpBookinDetail::where('ContraDocId', $docid)->update([
                'ContraDocId' => '',
                'ContraSno' => '',
            ]);

            if (channelparameter()->checkyn == 'Y') {
                foreach ($rooms as $room) {
                    $arrivalDate = Carbon::parse($room->chkindate)->toDateString();
                    $departureDate = Carbon::parse($room->depdate)->toDateString();

                    if ($departureDate > $ncurdate || $arrivalDate >= $ncurdate) {
                        SyncInventoryJob::dispatch(
                            $room->roomcat,
                            $room->roomcat,
                            $arrivalDate,
                            $arrivalDate,
                            $departureDate,
                            $departureDate,
                            (int) $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );
                    }
                }
            }

            return back()->with('success', 'Walkin Deleted Successfully');
        } catch (Exception $e) {
            return back()->with('error', 'Error! - ' . $e->getMessage());
        }
    }

    public function deletereservation(Request $request)
    {
        $permission = revokeopen(131111);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $DocId = base64_decode($request->input('DocId'));
        $advancepayment = DB::table('paycharge')->where('refdocid', $DocId)->where('propertyid', $this->propertyid)->first();
        if (isset($advancepayment)) {
            return back()->with('error', 'Error! - Advance already deposited');
        }
        $profileimage = DB::table('guestprof')->where('docid', $DocId)->where('propertyid', $this->propertyid)->value('pic_path');
        $identityimage = DB::table('guestprof')->where('docid', $DocId)->where('propertyid', $this->propertyid)->value('idpic_path');
        if (! empty($profileimage)) {
            $folderPathp = storage_path('app/public/walkin/reservationprofilepic/' . $profileimage);
            if (file_exists($folderPathp)) {
                unlink($folderPathp);
            }
        }
        if (! empty($identityimage)) {
            $folderPathi = storage_path('app/public/walkin/reservationidentitypic/' . $identityimage);
            if (file_exists($folderPathi)) {
                unlink($folderPathi);
            }
        }
        try {
            $roomocc = DB::table('booking')->where('DocId', $DocId)->where('Property_ID', $this->propertyid)->delete();
            $guestproftable = DB::table('guestprof')->where('docid', $DocId)->where('propertyid', $this->propertyid)->delete();
            $grpbookingdetails = DB::table('grpbookingdetails')->where('BookingDocid', $DocId)->where('Property_ID', $this->propertyid)->delete();
            $bookingplandetails = DB::table('bookingplandetails')->where('docid', $DocId)->where('propertyid', $this->propertyid)->delete();

            return back()->with('success', 'Reservation Deleted Successfully');
        } catch (Exception $e) {
            return back()->with('error', 'Error! - ' . $e->getMessage());
        }
    }

    public function checkeditarrival(Request $request)
    {
        $data = DB::table('enviro_form')
            ->join('enviro_general', 'enviro_form.propertyid', '=', 'enviro_general.propertyid')
            ->select('enviro_form.*', 'enviro_general.*')
            ->where('enviro_form.propertyid', $this->propertyid)
            ->first();

        return response()->json($data);
    }

    public function openupdatebsource(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('busssource')
            ->where('bcode', base64_decode($request->input('bcode')))
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.updatebusinesssource', ['data' => $data]);
    }

    public function openupdateroomfeature(Request $request)
    {
        $permission = revokeopen(121216);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('roomfeature')
            ->where('rcode', base64_decode($request->input('rcode')))
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.updateroomfeature', ['data' => $data]);
    }

    public function openupdategueststatus(Request $request)
    {
        $permission = revokeopen(121213);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('gueststats')
            ->where('gcode', base64_decode($request->input('gcode')))
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.updategueststatus', ['data' => $data]);
    }

    public function openupdatechargemaster(Request $request)
    {
        $permission = revokeopen(121214);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('revmast')
            ->select('revmast.name as taxname', 'taxstru.name as taxstruname', 'subgroup.name as subname', 'revmast.*')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'revmast.ac_code')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'revmast.tax_stru')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('revmast.field_type', 'C')
            ->where('revmast.Desk_code', 'FOM' . $this->propertyid)
            ->where('revmast.rev_code', base64_decode($request->input('rev_code')))
            ->where('revmast.id', base64_decode($request->input('id')))
            ->first();

        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->groupBy('name')
            ->orderBy('name', 'ASC')->get();
        $ledgerdatasub = Ledger::where('subcode', base64_decode($request->input('rev_code')))->where('propertyid', $this->propertyid)->where('vtype', 'F_AO')->orderBy('vsno')->get();

        return view('property.updatechargemaster', [
            'data' => $data,
            'ledgerdata' => $ledgerdata,
            'taxstrudata' => $taxstrudata,
            'update' => true,
            'ledgerdatasub' => $ledgerdatasub,
        ]);
    }

    public function openupdateroomcat(Request $request)
    {
        $permission = revokeopen(121217);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('room_cat')
            ->select('revmast.name as taxname', 'room_cat.*')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'room_cat.rev_code')
            ->where('revmast.propertyid', $this->propertyid)
            ->where('room_cat.id', base64_decode($request->input('id')))
            ->first();

        $revmastdata = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', 'FOM' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $ratelistdata = DB::table('rate_list')
            ->where('propertyid', $this->propertyid)
            ->where('room_cat', base64_decode($request->input('cat_code')))
            ->get();

        return view('property.updateroomcategory', ['data' => $data, 'revmastdata' => $revmastdata, 'ratelistdata' => $ratelistdata]);
    }

    public function openupdateroommast(Request $request)
    {
        $permission = revokeopen(121218);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('room_mast')
            ->select('room_cat.name as catname', 'buildingmaster.name as buildingname', 'room_mast.*')
            ->leftJoin('room_cat', 'room_mast.room_cat', '=', 'room_cat.cat_code')
            ->leftJoin('buildingmaster', 'room_mast.building', '=', 'buildingmaster.code')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.id', base64_decode($request->input('id')))
            ->first();

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $ratelistdata = DB::table('rate_list')
            ->where('propertyid', $this->propertyid)
            ->where('room_cat', base64_decode($request->input('cat_code')))
            ->where('roomno', base64_decode($request->input('roomno')))
            ->orderBy('id')
            ->get();
        $envirodata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        $floors = DB::table('hkfloors')
            ->where('propertyid', $this->propertyid)
            ->where('isactive', 1)
            ->orderBy('id', 'ASC')
            ->get();
        $buildings = DB::table('buildingmaster')
            ->where('propertyid', $this->propertyid)
            ->where('activeyn', 1)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.updateroommaster', [
            'data' => $data,
            'roomcat' => $roomcat,
            'ratelistdata' => $ratelistdata,
            'envirodata' => $envirodata,
            'floors' => $floors,
            'buildings' => $buildings,
        ]);
    }

    public function openupdateplanmast(Request $request)
    {
        $permission = revokeopen(121215);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('plan_mast')
            ->select('room_cat.name as catname', 'taxstru.name as taxstruname', 'plan_mast.*', 'plan1.*')
            ->leftJoin('plan1', 'plan_mast.pcode', '=', 'plan1.pcode')
            ->leftJoin('room_cat', 'plan_mast.room_cat', '=', 'room_cat.cat_code')
            ->leftJoin('taxstru', 'plan_mast.room_tax_stru', '=', 'taxstru.str_code')
            ->where('plan_mast.propertyid', $this->propertyid)
            ->where('plan_mast.id', base64_decode($request->input('id')))
            ->first();

        $plan1data = DB::table('plan1')
            ->select('revmast.name as chargingname', 'plan1.*')
            ->leftJoin('revmast', 'plan1.rev_code', '=', 'revmast.rev_code')
            ->where('plan1.propertyid', $this->propertyid)
            ->where('plan1.pcode', base64_decode($request->input('pcode')))
            ->orderBy('sno')
            ->get();

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')
            ->select('name', 'str_code')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $chargedata = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('Desk_code', 'FOM' . $this->propertyid)
            ->orderBy('name', 'ASC')->get();

        return view('property.updateplanmaster', [
            'data' => $data,
            'roomcat' => $roomcat,
            'taxstrudata' => $taxstrudata,
            'chargedata' => $chargedata,
            'plan1data' => $plan1data,
        ]);
    }
    // Future developer, you owe me a coffee for deciphering this. ☕😅

    public function opentaxstructure()
    {
        $permission = revokeopen(121112);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $taxdata = DB::table('taxstru')
            ->select('name', 'str_code')
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->orderBy('name', 'ASC')
            ->get();

        $taxdatamain = DB::table('revmast')->where('field_type', 'T')->where('propertyid', $this->propertyid)->get();

        return view('property.taxstructure', ['taxdata' => $taxdata, 'propertyid' => $this->propertyid, 'taxdatamain' => $taxdatamain]);
    }

    public function printTaxStructure()
    {
        $taxdata = DB::table('taxstru')
            ->select('name', 'str_code')
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->orderBy('name', 'ASC')
            ->get();

        $company = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.print.printtaxstructure', [
            'taxdata' => $taxdata,
            'company' => $company,
        ]);
    }

    public function exportTaxStructure()
    {
        $companyName = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->value('comp_name');

        $export = new TaxStructureExport($this->propertyid, $companyName);
        $export->download();
    }

    public function openledgeraccount()
    {
        $permission = revokeopen(122020);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $ledgerdata = SubGroup::select(
            'subgroup.*',
            'tds_categories.name as tdscategoryname'
        )
            ->leftJoin('tds_categories', function ($join) {
                $join->on('tds_categories.code', '=', 'subgroup.tds_catg')
                    ->where('tds_categories.propertyid', '=', $this->propertyid);
            })
            ->where('subgroup.propertyid', $this->propertyid)
            ->get();

        $ledgerdatamain = DB::table('acgroup')->where('propertyid', $this->propertyid)->get();

        $chequedesigns = ChequeDesign::where('propertyid', $this->propertyid)
            ->where('is_active', 1)
            ->get();

        return view('property.ledgeraccount', [
            'taxdata' => $ledgerdata,
            'ledgerdatamain' => $ledgerdatamain,
            'update' => false,
            'chequedesigns' => $chequedesigns,
        ]);
    }

    public function opencompanymaster()
    {
        $permission = revokeopen(122018);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $comp_mastdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereNotNull('comp_type')
            ->orderBy('name', 'ASC')->get();
        $subgroupdata = DB::table('acgroup')
            ->where('group_name', 'SUNDRY DEBTORS')
            ->where('propertyid', $this->propertyid)->get();

        $travel_agents = TravelAgent::all();

        $citydata = DB::table('cities')->where('activeyn', '1')->where('propertyid', $this->propertyid)->orderBy('cityname', 'ASC')->get();

        return view('property.companymaster', [
            'comp_mastdata' => $comp_mastdata,
            'subgroupdata' => $subgroupdata,
            'citydata' => $citydata,
            'update' => false,
            'travel_agents' => $travel_agents,
        ]);
    }

    public function openupdatecompmaster(Request $request)
    {
        $permission = revokeopen(122018);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $id = base64_decode($request->input('id'));
        $subcode = base64_decode($request->input('comp_code'));

        $travel_agents = TravelAgent::all();

        $comp_mastdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)->where('id', $id)
            ->first();
        $subgroupdata = DB::table('acgroup')
            ->where('group_name', 'SUNDRY DEBTORS')
            ->where('propertyid', $this->propertyid)->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->get();
        $result = DB::table('acgroup')
            ->join('cities', 'acgroup.propertyid', '=', 'cities.propertyid')
            ->where('acgroup.propertyid', $this->propertyid)
            ->where('acgroup.group_code', $comp_mastdata->group_code)
            ->where('cities.city_code', $comp_mastdata->citycode)
            ->select('acgroup.group_name as groupname', 'cities.cityname as cityname')
            ->first();
        $groupname = $result->groupname ?? '';
        $cityname = $result->cityname ?? '';

        $ledgerdatasub = Ledger::where('subcode', $subcode)->where('propertyid', $this->propertyid)->where('vtype', 'F_AO')->orderBy('vsno')->get();

        $amtdrsum = $ledgerdatasub->sum('amtdr') ?? 0;
        $amtcrsum = $ledgerdatasub->sum('amtcr') ?? 0;
        $balance = $amtdrsum - $amtcrsum;
        $drorcr = $balance >= 0 ? 'Dr' : 'Cr';

        $roomcat = RoomCat::where('propertyid', $this->propertyid)->where('type', 'RO')->where('inclcount', 'Y')->orderBy('name')->get();

        $compdiscount = CompanyDiscount::where('propertyid', $this->propertyid)->where('compcode', $subcode)->orderBy('sno')->get();

        return view('property.updatecompanymaster', [
            'comp_mastdata' => $comp_mastdata,
            'subgroupdata' => $subgroupdata,
            'citydata' => $citydata,
            'groupname' => $groupname,
            'cityname' => $cityname,
            'ledgerdatasub' => $ledgerdatasub,
            'update' => true,
            'roomcat' => $roomcat,
            'compdiscount' => $compdiscount,
            'balance' => abs($balance),
            'drorcr' => $drorcr,
            'travel_agents' => $travel_agents,
        ]);
    }

    public function openupdateledgeraccount(Request $request)
    {
        $permission = revokeopen(122020);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $subcode = base64_decode($request->input('sub_code'));
        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('sub_code', $subcode)
            ->first();

        // return $subcode;
        $groupname = DB::table('acgroup')->where('group_code', $ledgerdata->group_code)->first();
        $ledgerdatamain = DB::table('acgroup')->where('propertyid', $this->propertyid)->get();

        $ledgerdatasub = Ledger::where('subcode', $subcode)->where('propertyid', $this->propertyid)->where('vtype', 'F_AO')->orderBy('vsno')->get();

        $amtdrsum = $ledgerdatasub->sum('amtdr') ?? 0;
        $amtcrsum = $ledgerdatasub->sum('amtcr') ?? 0;
        $balance = $amtdrsum - $amtcrsum;
        $drorcr = $balance >= 0 ? 'Dr' : 'Cr';

        $chequedesigns = ChequeDesign::where('propertyid', $this->propertyid)
            ->where('is_active', 1)
            ->get();

        return view('property.updateledgeraccounts', [
            'ledgerdata' => $ledgerdata,
            'ledgerdatamain' => $ledgerdatamain,
            'groupname' => $groupname,
            'ledgerdatasub' => $ledgerdatasub,
            'update' => true,
            'balance' => abs($balance),
            'drorcr' => $drorcr,
            'chequedesigns' => $chequedesigns,
        ]);
    }

    public function openusermaster()
    {
        $permission = revokeopen(122011);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $userdata = DB::table('users')
            ->select('users.*', 'company.role as comprole')
            ->leftJoin('company', function ($join) {
                $join->on('company.u_name', 'users.u_name')
                    ->where('company.propertyid', $this->propertyid);
            })
            ->where('users.propertyid', $this->propertyid)
            ->get();
        // $loginUser = Auth::user();
        //  echo "<pre>";
        //   print_r($userdata);
        //   print_r($loginUser);
        //  exit;

        $path = storage_path('app/public/menu.json');
        $jsonData = file_get_contents($path);
        $menuItems = json_decode($jsonData, true);

        $outlets = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])
            ->get();

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        $designations = DB::table('desig')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();

        return view('property.usermaster', compact('userdata', 'menuItems', 'outlets', 'departments', 'designations'));
    }

    public function checkauth(Request $request)
    {
        $username = $request->input('username');
        $password = $request->input('password');

        // Username se user fetch karo

        $user = DB::table('users')->where(['propertyid' => $this->propertyid, 'u_name' => $username])->first();
        if (empty($user)) {
            return response()->json([
                'status' => 0,
                'message' => 'Invalid username!',
            ]);
        }

        // Check if user exists and password match karta hai
        if ($user && Hash::check($password, $user->password)) {
            return response()->json([
                'status' => 1,
                'message' => 'User found',
                'data' => $user,
            ]);
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Invalid password!',
            ]);
        }
    }

    public function openfomparamter()
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $ledgerdatamain = DB::table('subgroup')->where('propertyid', $this->propertyid)->get();
        $paramdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();

        $revmastcharges = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'C')
            ->where('flag_type', 'FOM')
            ->orderBy('name')
            ->get(['rev_code', 'name']);

        try {
            $advanceroomrentac = DB::table('subgroup')->where('propertyid', $this->propertyid)
                ->where('sub_code', $paramdata->advanceroomrentac)->pluck('name')
                ->first();
            $roomchrgdueac = DB::table('subgroup')->where('propertyid', $this->propertyid)
                ->where('sub_code', $paramdata->roomchrgdueac)->pluck('name')
                ->first();
            $enviro_general = EnviroGeneral::where('propertyid', $this->propertyid)->first();
        } catch (Exception $e) {
            return back()->with('error', 'An Error Occured!');
        }

        // GRC Instructions — khaali fields me default terms pre-fill karo
        $grcDefaults = GrcTerms::defaults();
        if (! $paramdata) {
            $paramdata = new \stdClass;
        }
        foreach (range(1, GrcTerms::COUNT) as $i) {
            $col = 'grcinstruction' . $i;
            if (trim((string) ($paramdata->$col ?? '')) === '') {
                $paramdata->$col = $grcDefaults[$i - 1];
            }
        }

        return view('property.fomparameter', [
            'taxdata' => $ledgerdata,
            'ledgerdatamain' => $ledgerdatamain,
            'fomparamdata' => $paramdata,
            'revmastcharges' => $revmastcharges,
            'advanceroomrentac' => $advanceroomrentac,
            'roomchrgdueac' => $roomchrgdueac,
            'enviro_general' => $enviro_general,
        ]);
    }

    public function getState2(Request $request)
    {
        $cid = $request->post('cid');
        $state = DB::table('states')->where('country', $cid)->where('propertyid', $this->propertyid)->orderBy('name', 'asc')->get();
        $html = '<option value="">Select State</option>';
        foreach ($state as $list) {
            $html .= '<option value="' . $list->state_code . '">' . $list->name . '</option>';
        }
        echo $html;
    }

    public function geRate(Request $request)
    {
        $data = json_decode($request->post('data'));
        $value = DB::table('plan_mast')
            ->where('room_cat', $data[0])
            ->where('pcode', $data[1])
            ->where('propertyid', $this->propertyid)
            ->where('adults', $data[2])
            ->pluck('package_amount')
            ->first();
        echo $value;
    }

    public function geRate2(Request $request)
    {
        $data = json_decode($request->post('data'));
        $value = DB::table('plan_mast')
            ->where('room_cat', $data[0])
            ->where('pcode', $data[1])
            ->where('propertyid', $this->propertyid)
            ->where('adults', $data[2])
            ->where('childs', $data[3])
            ->pluck('package_amount')
            ->first();
        echo $value;
    }

    public function geRate3(Request $request)
    {
        $data = json_decode($request->post('data'));
        if ($data[2] == 1) {
            $type = 'singleuser';
            $value = DB::table('rate_list')
                ->where('room_cat', $data[0])
                ->where('roomno', $data[1])
                ->where('propertyid', $this->propertyid)
                ->where('occtype', $type)
                ->pluck('rate2')
                ->first();
        } elseif ($data[2] == 2) {
            $type = 'multiuser';
            $value = DB::table('rate_list')
                ->where('room_cat', $data[0])
                ->where('roomno', $data[1])
                ->where('propertyid', $this->propertyid)
                ->where('occtype', $type)
                ->pluck('rate2')
                ->first();
        } elseif ($data[2] == 3) {
            $singleuserRate = DB::table('rate_list')
                ->where('room_cat', $data[0])
                ->where('roomno', $data[1])
                ->where('propertyid', $this->propertyid)
                ->where('occtype', 'singleuser')
                ->pluck('rate2')
                ->first();

            $multiuserRate = DB::table('rate_list')
                ->where('room_cat', $data[0])
                ->where('roomno', $data[1])
                ->where('propertyid', $this->propertyid)
                ->where('occtype', 'multiuser')
                ->pluck('rate2')
                ->first();

            $value = $singleuserRate + $multiuserRate;
        } elseif ($data[2] > 3) {
            $type = 'extrauser';
            $value = DB::table('rate_list')
                ->where('room_cat', $data[0])
                ->where('roomno', $data[1])
                ->where('propertyid', $this->propertyid)
                ->where('occtype', $type)
                ->pluck('rate2')
                ->first();
        } else {
            $value = 0;
        }

        return $value;
    }

    public function walkinglocdata(Request $request)
    {
        $citycode = $request->input('citycode');
        $citydata = DB::table('cities')
            ->where('city_code', $citycode)
            ->where('propertyid', $this->propertyid)
            ->first();

        $statedata = DB::table('states')
            ->where('state_code', $citydata->state)
            ->where('propertyid', $this->propertyid)
            ->first();

        $countrydata = DB::table('countries')
            ->where('country_code', $statedata->country)
            ->where('propertyid', $this->propertyid)
            ->first();

        $zipcodereturn = $citydata->zipcode;
        $response = [
            'states' => [
                [
                    'state_code' => $statedata->state_code,
                    'name' => $statedata->name,
                ],
            ],
            'countries' => [
                [
                    'country_code' => $countrydata->country_code,
                    'country_name' => $countrydata->name,
                    'nationality' => $countrydata->nationality,
                ],
            ],
            'zipcode' => $zipcodereturn,
        ];

        return response()->json($response);
    }

    public function getsundrynames(Request $request)
    {
        $sundryname = $request->post('cid');
        $listsundry = DB::table('sundrymast')->where('name', 'LIKE', "%$sundryname%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($listsundry as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getledgernames(Request $request)
    {
        $ledgernames = $request->post('cid');
        $listsundry = DB::table('subgroup')->where('name', 'LIKE', "%$ledgernames%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($listsundry as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function gettaxnames(Request $request)
    {
        $taxnames = $request->post('cid');
        $data = DB::table('revmast')->where('name', 'LIKE', "%$taxnames%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getbnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('busssource')->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getunitnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('unitmast')
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {

            return '';
        }
    }

    public function getnctypenames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('nctype_mast')
            ->where('nctype', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->nctype . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {
            return '';
        }
    }

    public function gettablenames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('room_mast')
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->where('type', 'TB')
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->nctype . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {
            return '';
        }
    }

    public function getoutletnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('depart')
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->where('rest_type', 'Outlet')
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->nctype . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {
            return '';
        }
    }

    public function getpaytypenames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('revmast')
            ->where('name', 'LIKE', "%$names%")
            ->where('field_type', 'P')
            ->where('propertyid', $this->propertyid)
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {
            return '';
        }
    }

    public function getcheckboxes(Request $request)
    {
        $data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'FOM', 'ROOM SERVICE'])
            ->get();

        return $data;
    }

    public function getperfectcheckrows(Request $request)
    {
        $data = DB::table('depart_pay')
            ->where('propertyid', $this->propertyid)
            ->where('rest_code', $request->post('cid2'))
            ->where('pay_code', $request->post('revmoti'))
            ->get();

        return $data;
    }

    public function getcheckeddatadppay(Request $request)
    {
        $data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'FOM', 'ROOM SERVICE'])
            ->get();

        return $data;
    }

    public function getsessionnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('session_mast')
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        if ($data->count() > 0) {
            $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
            foreach ($data as $list) {
                $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
            }
            $output .= '</ul>';

            return $output;
        } else {
            return '';
        }
    }

    public function getrnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('roomfeature')->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getgnames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('gueststats')->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getchargeames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('revmast')
            ->where('field_type', 'C')
            ->where('Desk_code', 'FOM' . $this->propertyid)
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto;">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function getplannames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('plan_mast')
            ->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();

        if ($data->isEmpty()) {
            return null;
        }

        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto;">';

        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }

        $output .= '</ul>';

        return $output;
    }

    public function getreasons(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('roomocc')
            ->select('reasonrchange')
            ->where('reasonrchange', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->distinct()
            ->get();

        if ($data->isEmpty()) {
            return null;
        }

        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto;">';

        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->reason . '</a></li>';
        }

        $output .= '</ul>';

        return $output;
    }

    public function getcitynames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('cities')
            ->where('cityname', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();

        if ($data->isEmpty()) {
            return null;
        }

        $output = '<ul class="dropdown-menu" style="display:block; position:relative; width:auto;">';

        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->cityname . '</a></li>';
        }

        $output .= '</ul>';

        return $output;
    }

    public function submitcountry(Request $request)
    {
        $permission = revokeopen(122015);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'countryname' => 'required',
            'nationality' => 'required',
            'country_code' => 'required',
        ]);
        $countryname = $request->input('countryname');
        $country_code = $request->input('country_code');
        $nationality = $request->input('nationality');

        $existingName = DB::table('countries')
            ->where('propertyid', $this->propertyid)
            ->where('name', $countryname)
            ->first();

        $existingCountryCode = DB::table('countries')
            ->where('propertyid', $this->propertyid)
            ->where('country_code', $country_code)
            ->first();

        $existingNationality = DB::table('countries')
            ->where('propertyid', $this->propertyid)
            ->where('nationality', $nationality)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Country name already exists!');
        } elseif ($existingCountryCode) {
            return back()->with('error', 'Country Code already exists!');
        } elseif ($existingNationality) {
            return back()->with('error', 'Nationality already exists!');
        }

        $data = [
            'u_name' => Auth::user()->name,
            'propertyid' => $this->propertyid,
            'name' => $request->input('countryname'),
            'nationality' => $request->input('nationality'),
            'country_code' => $request->input('country_code'),
        ];

        CompanyLog::InsertCountry($data);

        return back()->with('success', 'Country Inserted successfully!');
    }

    public function deletecountry(Request $request)
    {
        $permission = revokeopen(122015);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $country_code = base64_decode($request->input('country_code'));
            $existsStates = DB::table('states')->where('propertyid', $this->propertyid)->where('country', $country_code)->first();
            $existsCities = DB::table('cities')->where('propertyid', $this->propertyid)->where('country', $country_code)->first();
            if ($existsStates || $existsCities) {
                return back()->with('error', 'This Entity Has Been Used for Some Items, So It Cannot Be Deleted. Please Delete Its Usages First.');
            }
            $deletingrec = DB::table('countries')->where('country_code', $country_code)->delete();

            if ($deletingrec) {
                return back()->with('success', 'Country Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Country');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitstate(Request $request)
    {
        $permission = revokeopen(122016);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'country_select' => 'required',
            'state_name' => 'required',
            'state_code' => 'required',
        ]);

        $stateName = $request->input('state_name');
        $stateCode = $request->input('state_code');

        $existingStateName = DB::table('states')
            ->where('propertyid', $this->propertyid)
            ->where('name', $stateName)
            ->first();

        $existingStateCode = DB::table('states')
            ->where('propertyid', $this->propertyid)
            ->where('state_code', $stateCode)
            ->first();

        if ($existingStateName) {
            return back()->with('error', 'State name already exists!');
        } elseif ($existingStateCode) {
            return back()->with('error', 'State Code already exists!');
        }

        $data = [
            'u_name' => Auth::user()->name,
            'propertyid' => $this->propertyid,
            'country' => $request->input('country_select'),
            'name' => $request->input('state_name'),
            'state_code' => $request->input('state_code'),
        ];

        CompanyLog::InsertState($data);

        return back()->with('success', 'State Inserted successfully!');
    }

    public function deletestate(Request $request)
    {
        $permission = revokeopen(122016);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $state_code = base64_decode($request->input('state_code'));
            $exists = DB::table('cities')->where('propertyid', $this->propertyid)->where('state', $state_code)->first();
            if ($exists) {
                return back()->with('error', 'This Entity Has Been Used for Some Items, So It Cannot Be Deleted. Please Delete Its Usages First.');
            }
            $deleting = DB::table('states')->where('state_code', $state_code)->delete();
            if ($deleting) {
                return back()->with('success', 'State Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete State');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitcity(Request $request)
    {
        $permission = revokeopen(122017);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'country' => 'required',
            'cityname' => 'required',
            'state' => 'required',
        ]);

        $cityname = $request->input('cityname');
        $zipcode = $request->input('zipcode');

        $existingCityname = DB::table('cities')
            ->where('propertyid', $this->propertyid)
            ->where('cityname', $cityname)
            ->first();

        $existingZipcode = DB::table('cities')
            ->where('propertyid', $this->propertyid)
            ->where('zipcode', $zipcode)
            ->first();

        if ($existingCityname) {
            return back()->with('error', 'City name already exists!');
        }

        $maxcitycode = DB::table('cities')->where('propertyid', $this->propertyid)->max('city_code');

        $data = [
            'city_code' => $maxcitycode + 1,
            'u_name' => Auth::user()->name,
            'propertyid' => $this->propertyid,
            'country' => $request->input('country'),
            'cityname' => $request->input('cityname'),
            'zipcode' => $request->input('zipcode'),
            'state' => $request->input('state'),
        ];

        CompanyLog::InsertCity($data);

        return back()->with('success', 'City Inserted successfully!');
    }

    public function deletecity(Request $request)
    {
        $permission = revokeopen(122017);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $city_code = base64_decode($request->input('city_code'));
            $exists = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('citycode', $city_code)->first();
            if ($exists) {
                return back()->with('error', 'This Entity Has Been Used for Some Items, So It Cannot Be Deleted. Please Delete Its Usages First.');
            }
            $deletingrec = DB::table('cities')->where('city_code', $city_code)->delete();
            if ($deletingrec) {
                return back()->with('success', 'City Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete City');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updatecountry(Request $request)
    {
        $permission = revokeopen(122015);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $country_code = base64_decode($request->input('country_code'));
        $country_data = DB::table('countries')->where('country_code', $country_code)->first();

        return view('property.updatecountryform', ['country_data' => $country_data]);
    }

    public function update_countrystore(Request $request)
    {
        $permission = revokeopen(122015);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate(
            [
                'countryname' => 'required',
                'country_code' => 'required',
                'nationality' => 'required',
            ]
        );
        $country_code_first = $request->input('country_code');
        $username = Auth::user()->name;
        $data = [
            'name' => $request->input('countryname'),
            'country_code' => $request->input('country_code'),
            'nationality' => $request->input('nationality'),
            'u_name' => $username,
            'propertyid' => $this->propertyid,
        ];

        $update = CompanyLog::update_country($country_code_first, $data);
        if ($update == true) {
            return back()->with('success', 'Country Updated Successfully');
        } else {
            return back()->with('error', 'Unable to Update Country');
        }
    }

    public function updatestate(Request $request)
    {
        $permission = revokeopen(122016);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $state_code = base64_decode($request->input('state_code'));
        $data['country'] = DB::table('countries')->get();
        $state_data = DB::table('states')->where('state_code', $state_code)->first();

        return view('property.updatestateform', ['state_data' => $state_data], $data);
    }

    public function update_statestore(Request $request)
    {
        $permission = revokeopen(122016);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $request->validate(
            [
                'country_select' => 'required',
                'state_name' => 'required',
                'state_code' => 'required',
            ]
        );

        $state_code = $request->input('state_code');
        $username = Auth::user()->name;

        $exists = DB::table('states')->where('propertyid', $this->propertyid)->whereNot('state_code', $state_code)->where('name', $request->input('state_name'))->first();
        if ($exists) {
            return back()->with('error', 'State Name Already Exists');
        }
        $data = [
            'country' => $request->input('country_select'),
            'name' => $request->input('state_name'),
            'u_name' => $username,
        ];

        $update = CompanyLog::update_state($state_code, $data);
        if ($update == true) {
            return back()->with('success', 'State Updated Successfully');
        } else {
            return back()->with('error', 'Unable to Update State');
        }
    }

    public function updatecity(Request $request)
    {
        $permission = revokeopen(122017);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $city_code = base64_decode($request->input('city_code'));
        $data['country'] = DB::table('countries')->get();

        $city_data = DB::table('cities')
            ->select('cities.*', 'states.name as statename')
            ->leftJoin('states', 'states.state_code', '=', 'cities.state')
            ->where('cities.propertyid', $this->propertyid)
            ->where('cities.city_code', $city_code)
            ->first();

        return view('property.updatecityform', ['city_data' => $city_data] + $data);
    }

    public function citystoreupdate(Request $request)
    {
        $request->validate(
            [
                'cityname' => 'required',
                'country' => 'required',
                'state' => 'required',
            ]
        );

        $city_code = $request->input('city_code');
        $username = Auth::user()->name;

        $exists = DB::table('cities')->where('propertyid', $this->propertyid)->whereNot('city_code', $city_code)->where('cityname', $request->input('cityname'))->first();
        if ($exists) {
            return back()->with('error', 'City Name Already Exists');
        }
        $data = [
            'cityname' => $request->input('cityname'),
            'country' => $request->input('country'),
            'state' => $request->input('state'),
            'zipcode' => $request->input('zipcode'),
            'activeyn' => $request->input('activeyn'),
            'u_name' => $username,
            'updated_at' => $this->currenttime,
        ];

        $update = Cities::where('propertyid', $this->propertyid)->where('city_code', $city_code)->update($data);

        // $update = CompanyLog::update_city($city_code, $data);
        if ($update == true) {
            return back()->with('success', 'City Updated Successfully');
        } else {
            return back()->with('error', 'Unable to Update City');
        }
    }

    public function submitusermaster(Request $request)
    {
        $permission = revokeopen(122011);

        if (is_null($permission) || $permission->ins == 0) {
            return back()->with('error', 'You have no permission to execute this functionality!');
        }

        $request->validate([
            'fullname' => 'required|string|max:255',
            'designation' => 'required',
            'password' => 'required|min:4',
        ]);

        $propertyId = $this->propertyid;
        $fullName = trim($request->fullname);
        $email = Auth::user()->email;

        $exists = User::on('main')
            ->where('propertyid', $propertyId)
            ->where('u_name', $fullName)
            ->exists();

        if ($exists) {
            return back()->with('error', 'Username already exists!');
        }

        $password = Hash::make($request->password);

        DB::connection('main')->beginTransaction();

        try {

            $mainUser = new User;
            $mainUser->setConnection('main');
            $mainUser->u_name = $fullName;
            $mainUser->name = $fullName;
            $mainUser->propertyid = $propertyId;
            $mainUser->email = $email;
            $mainUser->role = 2;
            $mainUser->superwiser = $request->designation;
            $mainUser->backdate = $request->backdate;
            $mainUser->useroradmin = 'user';
            $mainUser->department = $request->department ?? '';
            $mainUser->designation = $request->user_designation ?? '';
            $mainUser->password = $password;
            $mainUser->addedby = Auth::user()->name;
            $mainUser->save();

            $newUserId = $mainUser->id;

            TenantDatabase::connect($propertyId);

            DB::connection('tenant')->beginTransaction();

            $tenantUser = new User;
            $tenantUser->setConnection('tenant');
            $tenantUser->id = $newUserId;
            $tenantUser->u_name = $fullName;
            $tenantUser->name = $fullName;
            $tenantUser->propertyid = $propertyId;
            $tenantUser->email = $email;
            $tenantUser->role = 2;
            $tenantUser->useroradmin = 'user';
            $tenantUser->superwiser = $request->designation;
            $tenantUser->backdate = $request->backdate;
            $tenantUser->department = $request->department ?? '';
            $tenantUser->designation = $request->user_designation ?? '';
            $tenantUser->password = $password;
            $tenantUser->addedby = Auth::user()->name;
            $tenantUser->save();

            $permission = new UserPermission;
            $permission->setConnection('tenant');
            $permission->username = $fullName;
            $permission->propertyid = $propertyId;
            $permission->created_at = $this->currenttime;
            $permission->u_ae = 'a';
            $permission->save();

            DB::connection('tenant')->commit();
            DB::connection('main')->commit();

            return back()->with('success', 'User inserted successfully!');
        } catch (\Throwable $e) {

            DB::connection('tenant')->rollBack();
            DB::connection('main')->rollBack();

            return back()->with('error', $e->getMessage());
        }
    }

    public function disableusermaster(Request $request)
    {
        $userId = (int) base64_decode($request->userId);
        $propertyId = $this->propertyid;

        DB::connection('main')->beginTransaction();

        try {
            $mainUser = User::on('main')
                ->where('id', $userId)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $mainUser) {
                DB::connection('main')->rollBack();

                return back()->with('error', 'Unable to find User ID');
            }

            $mainUser->status = 0;
            $mainUser->save();

            TenantDatabase::connect($propertyId);

            DB::connection('tenant')->beginTransaction();

            $tenantUser = User::on('tenant')
                ->where('u_name', $mainUser->u_name)
                ->where('propertyid', $propertyId)
                ->first();

            if ($tenantUser) {
                $tenantUser->status = 0;
                $tenantUser->save();
            }

            DB::connection('tenant')->commit();
            DB::connection('main')->commit();

            return back()->with('success', 'User InActive Successfully');
        } catch (\Throwable $e) {
            DB::connection('tenant')->rollBack();
            DB::connection('main')->rollBack();

            return back()->with('error', $e->getMessage());
        }
    }

    public function enableusermaster(Request $request)
    {
        $userId = (int) base64_decode($request->userId);
        $propertyId = $this->propertyid;

        DB::connection('main')->beginTransaction();

        try {
            $mainUser = User::on('main')
                ->where('id', $userId)
                ->where('propertyid', $propertyId)
                ->first();

            if (! $mainUser) {
                DB::connection('main')->rollBack();

                return back()->with('error', 'Unable to find User ID');
            }

            $mainUser->status = 1;
            $mainUser->save();

            TenantDatabase::connect($propertyId);

            DB::connection('tenant')->beginTransaction();

            $tenantUser = User::on('tenant')
                ->where('id', $userId)
                ->where('propertyid', $propertyId)
                ->first();

            if ($tenantUser) {
                $tenantUser->status = 1;
                $tenantUser->save();
            }

            DB::connection('tenant')->commit();
            DB::connection('main')->commit();

            return back()->with('success', 'User Active Successfully');
        } catch (\Throwable $e) {
            DB::connection('tenant')->rollBack();
            DB::connection('main')->rollBack();

            return back()->with('error', $e->getMessage());
        }
    }

    public function updateusermaster(Request $request)
    {
        $permission = revokeopen(122011);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $userid = base64_decode($request->input('u_name'));
        $userdata = DB::table('users')
            ->select('users.*', 'company.role as roleman', 'userpermission.system_name')
            ->leftjoin('company', 'company.u_name', '=', 'users.u_name')
            ->leftJoin('userpermission', function ($join) {
                $join->on('userpermission.username', '=', 'users.u_name')
                    ->where('userpermission.propertyid', '=', $this->propertyid);
            })
            ->where('users.propertyid', $this->propertyid)
            ->where('users.u_name', $userid)->first();
        $path = storage_path('app/public/menu.json');
        $jsonData = file_get_contents($path);
        $menuItems = json_decode($jsonData, true);

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        $designations = DB::table('desig')
            ->select('name', 'code')
            ->where('propertyid', $this->propertyid)
            ->whereIn('Activ', ['Y'])
            ->orderBy('name', 'asc')
            ->get();

        // $permdata = DB::table('userpermission')->where('u_name', $userid)->where('propertyid', $this->propertyid)->first();
        return view('property.updateusermaster', ['userdata' => $userdata, 'menuItems' => $menuItems, 'departments' => $departments, 'designations' => $designations]);
    }

    // $upcompdata = [
    //     'comp_code' => $compdata->comp_code,
    //     'comp_name' => $compdata->comp_name,
    //     'sn_num' => $compdata->sn_num,
    //     'start_dt' => $compdata->start_dt,
    //     'end_dt' => $compdata->end_dt,
    //     'address1' => $compdata->address1,
    //     'address2' => $compdata->address2,
    //     'country' => $compdata->country,
    //     'state' => $compdata->state,
    //     'city' => $compdata->city,
    //     'state_code' => $compdata->state_code,
    //     'mobile' => $compdata->mobile,
    //     'cfyear' => $compdata->cfyear,
    //     'pfyear' => $compdata->pfyear,
    //     'pin' => $compdata->pin,
    //     'pan_no' => $compdata->pan_no,
    //     'nationality' => $compdata->nationality,
    //     'gstin' => $compdata->gstin,
    //     'division_code' => $compdata->division_code,
    //     'trade_name' => $compdata->trade_name,
    //     'logo' => $compdata->logo,
    //     'status' => 1,
    //     'u_name' => $request->input('fullname'),
    //     'propertyid' => $this->propertyid,
    //     'legal_name' => $request->input('fullname'),
    //     'email' => strtolower($request->input('email')),
    //     'updated_at' => $this->currenttime,
    //     'u_ae' => 'e',
    // ];

    public function update_usermasterstore(Request $request)
    {
        $request->validate([
            'fullname' => 'required',
            'email' => 'required|email',
            'designation' => 'required',
        ]);

        $userId = (int) $request->userid;
        $propertyId = $this->propertyid;
        $password = $request->password;

        if (! empty($password) && $password !== $request->password_confirmation) {
            return back()->with('error', 'Password and Confirm Password do not match!');
        }

        DB::connection('main')->beginTransaction();

        try {

            $mainUser = User::on('main')
                ->where('id', $userId)
                ->where('propertyid', $propertyId)
                ->firstOrFail();

            $oldUsername = $mainUser->u_name;

            $mainUser->u_name = $request->fullname;
            $mainUser->name = $request->fullname;
            $mainUser->email = strtolower($request->email);
            $mainUser->role = 2;
            $mainUser->superwiser = $request->designation;
            $mainUser->backdate = $request->backdate;
            $mainUser->department = $request->department ?? '';
            $mainUser->designation = $request->user_designation ?? '';
            $mainUser->u_ae = 'e';

            if (! empty($password)) {
                $mainUser->password = Hash::make($password);
            }

            $mainUser->save();

            TenantDatabase::connect($propertyId);

            DB::connection('tenant')->beginTransaction();

            $tenantUser = User::on('tenant')
                ->where('id', $userId)
                ->where('propertyid', $propertyId)
                ->firstOrFail();

            $tenantUser->u_name = $request->fullname;
            $tenantUser->name = $request->fullname;
            $tenantUser->email = strtolower($request->email);
            $tenantUser->role = 2;
            $tenantUser->superwiser = $request->designation;
            $tenantUser->backdate = $request->backdate;
            $tenantUser->department = $request->department ?? '';
            $tenantUser->designation = $request->user_designation ?? '';
            $tenantUser->u_ae = 'e';

            if (! empty($password)) {
                $tenantUser->password = Hash::make($password);
            }

            $tenantUser->save();

            UserPermission::on('tenant')
                ->where('propertyid', $propertyId)
                ->where('username', $oldUsername)
                ->update([
                    'username' => $request->fullname,
                    'system_name' => $request->system_name,
                ]);

            DB::connection('tenant')->commit();
            DB::connection('main')->commit();

            return redirect('usermaster')->with('success', 'User Updated Successfully!');
        } catch (\Throwable $e) {

            DB::connection('tenant')->rollBack();
            DB::connection('main')->rollBack();

            return back()->with('error', $e->getMessage());
        }
    }

    public function changecompanydetails(Request $request)
    {

        $request->validate([
            'legal_name' => 'required',
            'mobile' => ['required', 'regex:/^[0-9]{10}$/'],
            'email' => ['required', 'email'],
        ]);

        $data = [
            'legal_name' => $request->input('legal_name'),
            'mobile' => $request->input('mobile'),
            'email' => $request->input('email'),
            'u_name' => $this->username,
        ];

        $update = CompanyLog::UpdateCompanyDetail($this->propertyid, $data);

        if ($update == true) {
            return back()->with('success', 'Record Updated Successfully');
        } else {
            return back()->with('error', 'Unable to Update Record');
        }
    }

    public function Utilityoepn()
    {
        return view('property.utility');
    }

    public function opengroupaccountentry()
    {
        // $permission = revokeopen(122014);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        return view('property.groupaccountentry');
    }

    public function savegroupaccountentry(Request $request)
    {
        try {
            $request->validate([
                'groupname' => 'required',
                'nature' => 'required',
                'undergroup' => 'required',
                'undergroupyn' => 'required',
            ]);

            $chkexistingname = ACGroup::where('propertyid', $this->propertyid)
                ->where('group_name', $request->input('groupname'))
                ->first();

            if ($chkexistingname) {
                return response()->json(['message' => 'Group Name already exists'], 500);
            }

            // $groupcode = DB::table('acgroup')->where('propertyid', $this->propertyid)->max('group_code');
            // $groupcode = substr($groupcode, 0, -$this->ptlngth);
            // if (empty($groupcode)) {
            //     $groupcode = 1 . $this->propertyid;
            // } else {
            //     $groupcode = $groupcode + 1 . $this->propertyid;
            // }

            $groupcode = DB::table('acgroup')
                ->where('propertyid', $this->propertyid)
                ->selectRaw('MAX(CAST(group_code AS UNSIGNED)) as max_code')
                ->value('max_code');

            $groupcode = $groupcode ? $groupcode + 1 : 1;

            $acgroup = new ACGroup;
            $acgroup->propertyid = $this->propertyid;
            $acgroup->group_code = $groupcode;
            $acgroup->u_name = $this->username;
            $acgroup->group_name = $request->input('groupname');
            $acgroup->maingroupcode = $request->input('undergroup') ?? '';
            $acgroup->maingroupname = $request->input('undergroupname') ?? '';
            $acgroup->nature = $request->input('nature');
            $acgroup->undergroup = $request->input('undergroupyn') ?? '';
            $acgroup->save();

            return response()->json(['message' => 'Group Account Entry Saved Successfully']);
        } catch (Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function updategroupaccountentry(Request $request)
    {
        try {
            $request->validate([
                'groupname' => 'required',
                'nature' => 'required',
                'undergroup' => 'required',
            ]);

            $groupcode = $request->input('group_code');

            $data = [
                'group_name' => $request->input('groupname'),
                'maingroupcode' => $request->input('undergroup') ?? '',
                'maingroupname' => $request->input('undergroupname') ?? '',
                'nature' => $request->input('nature'),
                'undergroup' => $request->input('undergroupyn') ?? '',
                'u_name' => $this->username,
            ];

            $update = ACGroup::where('propertyid', $this->propertyid)
                ->where('group_code', $groupcode)
                ->update($data);

            if ($update) {
                return response()->json(['message' => 'Group Account Entry Updated Successfully']);
            } else {
                return response()->json(['message' => 'No changes made or Group not found'], 500);
            }
        } catch (Exception $e) {
            return response()->json(['message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function deletegroupentry($group_code)
    {
        try {
            // Get actual subgroup names where this group is used
            $usedIn = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('group_code', $group_code)
                ->pluck('name') // ✅ correct column from your table
                ->toArray();

            if (! empty($usedIn)) {
                $names = implode(', ', $usedIn);

                return back()->with(
                    'error',
                    "This Group is used in: $names. So it cannot be deleted."
                );
            }

            // Delete if not used
            $deleted = ACGroup::where('propertyid', $this->propertyid)
                ->where('group_code', $group_code)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Group Account Entry Deleted Successfully');
            } else {
                return back()->with('error', 'Group Account Entry Not Found');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Error: ' . $e->getMessage());
        }
    }

    public function opengroupupdateentry($groupcode)
    {
        $groupdata = ACGroup::where('propertyid', $this->propertyid)->where('group_code', $groupcode)->first();

        return view('property.groupaccountentryupdate', ['groupdata' => $groupdata]);
    }

    public function inconsistency()
    {
        $permission = revokeopen(122014);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        return view('property.inconsistency');
    }

    public function accountupdate()
    {
        $path = storage_path('app/public/groupac.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::Insertacgroup($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Group Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Group already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function subgroupupdate()
    {
        $checkaccount = DB::table('acgroup')->where('propertyid', $this->propertyid)->first();
        if (! $checkaccount) {
            return response()->json(['message' => 'Please add Account Group First'], 500);
        }
        $count = DB::table('acgroup')->where('propertyid', $this->propertyid)->count();
        if ($count < 30) {
            return response()->json(['message' => 'Account Group should be equal to or greater than 30'], 500);
        }

        $path = storage_path('app/public/subgroupac.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::Insertsubgroup($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Sub Group Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Sub Group already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function sundrymasterloadupdate()
    {
        $path = storage_path('app/public/sundrymaster.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertSundryMaster($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Sundry Master Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Sundry Master already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function sundrytypeloadupdate()
    {
        $checkCountries = DB::table('sundrymast')->where('propertyid', $this->propertyid)->first();
        if (! $checkCountries) {
            return response()->json(['message' => 'Please add Sundry Master First'], 500);
        }
        $count = DB::table('sundrymast')->where('propertyid', $this->propertyid)->count();
        if ($count < 17) {
            return response()->json(['message' => 'Sundry Master should be equal to or greater than 17'], 500);
        }

        $path = storage_path('app/public/sundrytype.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertSundryType($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Sundry Type Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Sundry Type already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function unitmasterloadupdate()
    {
        $path = storage_path('app/public/unitmaster.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertUnitMaster($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Unit Master Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Unit Master already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function housekeepingloadup()
    {
        $path = storage_path('app/public/housekeeping.json');
        $path2 = storage_path('app/public/depart.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            $jsonData2 = json_decode(file_get_contents($path2), true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertHousekeep($propertyid, $u_name, $jsonData);
                    $inserts2 = CompanyLog::InsertHousekeep2($propertyid, $u_name, $jsonData2);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' House Keeping Inserted Successfully!']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'House Keeping already exists!'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    public function storeloadup()
    {
        $path = storage_path('app/public/housekeeping3.json');
        $path2 = storage_path('app/public/depart3.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            $jsonData2 = json_decode(file_get_contents($path2), true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertStore($propertyid, $u_name, $jsonData);
                    $inserts2 = CompanyLog::InsertStore2($propertyid, $u_name, $jsonData2);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Store Inserted Successfully!']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Store already exists!'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    public function banquetload()
    {
        $path = storage_path('app/public/depart5.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertHall($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Hall Inserted Successfully!']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Hall already exists!'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    public function loadroomservice()
    {

        $checks = [
            'acgroup' => 'Please add Account Group First',
            'subgroup' => 'Please add Sub Group First',
            'voucher_prefix' => 'Please add Voucher Prefix First',
            'voucher_type' => 'Please add Voucher Type First',
            'revmast' => 'Please add Tax Master First',
        ];

        foreach ($checks as $table => $message) {
            $check = DB::table($table)->where('propertyid', $this->propertyid)->first();
            if (! $check) {
                return response()->json(['message' => $message], 500);
            }
        }

        $path = storage_path('app/public/revmast2.json');
        $path2 = storage_path('app/public/depart4.json');
        $path3 = storage_path('app/public/subgroupac2.json');
        $path4 = storage_path('app/public/voucherprefix2.json');
        $path5 = storage_path('app/public/vouchertype2.json');
        $path6 = storage_path('app/public/itemcatmast.json');
        $path7 = storage_path('app/public/usermodule.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            $jsonData2 = json_decode(file_get_contents($path2), true);
            $jsonData3 = json_decode(file_get_contents($path3), true);
            $jsonData4 = json_decode(file_get_contents($path4), true);
            $jsonData5 = json_decode(file_get_contents($path5), true);
            $jsonData6 = json_decode(file_get_contents($path6), true);
            $jsonData7 = json_decode(file_get_contents($path7), true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                $compcode = Companyreg::where('propertyid', Auth::user()->propertyid)->value('comp_code');
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertRoomS1($propertyid, $u_name, $jsonData);
                    $inserts2 = CompanyLog::InsertRoomS2($propertyid, $u_name, $jsonData2);
                    $inserts3 = CompanyLog::InsertRoomS3($propertyid, $u_name, $jsonData3);
                    $inserts4 = CompanyLog::InsertRoomS4($propertyid, $u_name, $jsonData4);
                    $inserts5 = CompanyLog::InsertRoomS5($propertyid, $u_name, $jsonData5);
                    $inserts6 = CompanyLog::InsertRoomS6($propertyid, $u_name, $jsonData6);
                    $inserts7 = CompanyLog::InsertRoomS7($propertyid, $u_name, $jsonData7);
                    $inserts8 = CompanyLog::InsertRoomS8($propertyid, $compcode, $u_name, $jsonData7);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Room Service Inserted Successfully!']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Room Service already exists!'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => "File not found: $path"], 500);
        }
    }

    public function taxloadupdate()
    {
        $accountGroupCount = DB::table('acgroup')->where('propertyid', $this->propertyid)->count();
        $subGroupCount = DB::table('subgroup')->where('propertyid', $this->propertyid)->count();

        if (! $accountGroupCount) {
            return response()->json(['message' => 'Please add Account Group First'], 500);
        } elseif (! $subGroupCount) {
            return response()->json(['message' => 'Please add Sub Group First'], 500);
        } elseif ($accountGroupCount < 30) {
            return response()->json(['message' => 'Account Group should be equal to or greater than 30'], 500);
        } elseif ($subGroupCount < 19) {
            return response()->json(['message' => 'Sub Group should be equal to or greater than 19'], 500);
        }

        $path = storage_path('app/public/revmast.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertTaxLoad($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Tax Inserted Successfully']);
                    } else {
                        return response()->json(['message' => 'Tax already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function taxloadstructureupdate()
    {
        $accountGroupCount = DB::table('acgroup')->where('propertyid', $this->propertyid)->count();
        $subGroupCount = DB::table('subgroup')->where('propertyid', $this->propertyid)->count();
        $taxCount = DB::table('revmast')->where('propertyid', $this->propertyid)->count();

        if (! $accountGroupCount) {
            return response()->json(['message' => 'Please add Account Group First'], 500);
        } elseif (! $subGroupCount) {
            return response()->json(['message' => 'Please add Sub Group First'], 500);
        } elseif ($accountGroupCount < 30) {
            return response()->json(['message' => 'Account Group should be equal to or greater than 30'], 500);
        } elseif ($subGroupCount < 19) {
            return response()->json(['message' => 'Sub Group should be equal to or greater than 19'], 500);
        } elseif (! $taxCount) {
            return response()->json(['message' => 'Please add Tax First'], 500);
        } elseif ($taxCount < 7) {
            return response()->json(['message' => 'Taxes should be equal to or greater than 7'], 500);
        }

        $path = storage_path('app/public/taxstructure.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertTaxLoad2($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Tax Structure Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Tax Structure already exists'], 500);
                    } else {
                        return response()->json(['message' => 'Tax Structure already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function submittax(Request $request)
    {
        $permission = revokeopen(121111);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $username = Auth::user()->name;
        $property_id = $this->propertyid;

        $validatedData = $request->validate([
            'taxname' => 'required',
            'sundryname' => 'required',
            'ledgeraccount' => 'required',
            'activeyn' => 'required',
        ]);
        $taxname = $request->input('taxname');

        try {
            $existingName = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('name', $taxname)
                ->first();
            if ($existingName) {
                return back()->with('error', 'Tax Name already exists!');
            }

            $shortname = $request->input('taxname');
            $firstCharacter = substr($shortname, 0, 2);
            $lastchar = substr($shortname, -2);
            $rev_code = $this->propertyid . $firstCharacter . $lastchar;

            $data = [
                'rev_code' => $rev_code,
                'u_name' => Auth::user()->name,
                'propertyid' => $this->propertyid,
                'name' => $request->input('taxname'),
                'sundry' => $request->sundryname,
                'ac_code' => $request->ledgeraccount,
                'payable_ac' => $request->payableaccount,
                'unregistered_ac' => $request->unregaccount,
                'field_type' => 'T',
                'active' => $request->input('activeyn'),
                'created_at' => $this->currenttime,
            ];

            Revmast::insert($data);

            return back()->with('success', 'Tax Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to insert Tax!');
        }
    }

    public function deletetax(Request $request)
    {
        $permission = revokeopen(121111);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $ac_code = base64_decode($request->input('ac_code'));
            $rev_code = base64_decode($request->input('rev_code'));
            $id = base64_decode($request->input('id'));

            $usage = [];

            // Only check taxstru.tax_code
            if (DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->where('tax_code', $rev_code)
                ->exists()
            ) {
                $usage[] = 'Tax Structure';
            }

            // Block delete if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Tax Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // Delete from revmast
            $deleted = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $rev_code)
                ->where('id', $id)
                ->delete();

            if ($deleted > 0) {
                return back()->with('success', 'Tax Deleted Successfully');
            } else {
                return back()->with('error', 'Tax Not Found Or Already Deleted');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    // testing
    public function openupdatetax(Request $request)
    {
        $permission = revokeopen(121111);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $id = base64_decode($request->input('id'));
        $taxdata = DB::table('revmast')->where('id', $id)->first();
        $subgroup = SubGroup::where('propertyid', $this->propertyid)->orderBy('name')->get();
        $sundrymast = SundryMast::where('propertyid', $this->propertyid)->orderBy('name')->get();

        return view('property.updatetaxform', [
            'taxdata' => $taxdata,
            'subgroup' => $subgroup,
            'sundrymast' => $sundrymast,
        ]);
    }

    public function namelistfetch(Request $request)
    {
        $docid = $request->input('docid');
        $namelists = RoomOcc::select(
            'roomocc.name',
            'roomocc.roomno',
            'paycharge.taxper',
            'paycharge.amtdr',
            'paycharge.amtdr',
            'paycharge.amtcr'
        )
            ->leftJoin('paycharge', 'paycharge.folionodocid', '=', 'roomocc.docid')
            ->where('roomocc.docid', $docid)
            ->first();

        return json_encode($namelists);
    }

    public function taxstoreupdate(Request $request)
    {

        $validatedData = $request->validate([
            'taxname' => 'required',
            'activeyn' => 'required',
        ]);

        try {
            $taxname = $request->input('taxname');
            $existingName = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->whereNot('id', $request->input('sn'))
                ->where('name', $taxname)
                ->first();
            if ($existingName) {
                return back()->with('error', 'Tax Name already exists!');
            }

            $data = [
                'u_name' => Auth::user()->name,
                'propertyid' => $this->propertyid,
                'name' => $request->input('taxname'),
                'sundry' => $request->sundryname,
                'ac_code' => $request->ledgeraccount,
                'payable_ac' => $request->payableaccount,
                'unregistered_ac' => $request->unregaccount,
                'active' => $request->input('activeyn'),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];

            Revmast::where('propertyid', $this->propertyid)->where('id', $request->sn)->update($data);

            return redirect('taxmaster')->with('success', 'Tax Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Tax!');
            // echo $e->getMessage();
        }
    }

    public function submittaxstructure(Request $request)
    {
        $permission = revokeopen(121112);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'stru_name' => 'required',
            'tax_code1' => 'required',
        ]);

        $existingName = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('stru_name'))
            ->first();
        if ($existingName) {
            // return back()->with('error', 'Tax Structure Name already exists!');
            return response()->json(['success' => false, 'message' => 'Tax Structure Name already exists!']);
        }

        $insertData = [
            'name' => $request->input('stru_name'),
            'tax_code' => null,
            'rate' => null,
            'nature' => null,
            'limits' => null,
            'comp_operator' => null,
            'condapp' => null,
            'limit1' => null,
        ];
        // Don't ask why this works. It just does. 🤷‍️
        foreach ($request->input() as $key => $value) {
            if (preg_match('/^tax_code(\d+)$/', $key, $matches)) {
                $sno = $matches[1];
                $insertData['tax_code'] = $value;
                $insertData['rate'] = $request->input('rate' . $sno);
                $insertData['nature'] = $request->input('applyon' . $sno);
                $insertData['limits'] = $request->input('limits' . $sno);
                $insertData['comp_operator'] = $request->input('comparison' . $sno);
                $insertData['condapp'] = $request->input('condition' . $sno);
                $insertData['limit1'] = $request->input('limit' . $sno);
                $insertData['sno'] = $sno;
                $inserts = CompanyLog::InsertTaxStructure($insertData, $this->propertyid, Auth::user()->name);
            }
        }

        if ($inserts == 'success') {
            return back()->with('success', 'Tax Structure Inserted successfully!');
        } else {
            return back()->with('error', 'Unable to insert Tax Structure!' . $inserts);
        }
    }

    public function openupdatetaxstru(Request $request)
    {
        $permission = revokeopen(121112);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $taxdata = DB::table('taxstru')
            ->join('revmast', 'taxstru.tax_code', '=', 'revmast.rev_code')
            ->select('revmast.rev_code', 'revmast.name as revname', 'taxstru.*')
            ->where('taxstru.str_code', base64_decode($request->input('str_code')))
            ->where('taxstru.propertyid', $this->propertyid)
            ->get();

        $taxname = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', base64_decode($request->input('tax_code')))
            ->pluck('name')
            ->first();

        $taxdatamain = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->get();

        return view('property.updatetaxstructure', [
            'taxdata' => $taxdata,
            'taxname' => $taxname,
            'taxdatamain' => $taxdatamain,
        ]);
    }

    public function taxstructurestoreupdate(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
        ]);

        $existingName = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->whereNot('name', $request->input('oldtaxstruname'))
            ->first();

        if ($existingName) {
            return back()->with('error', 'Tax Structure Name already exists!');
        }

        $snolist = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('oldtaxstruname'))
            ->get();
        $maxSn = $snolist->max('sno');

        $sno = 0;
        foreach ($request->input() as $key => $value) {
            if (preg_match('/^tax_code(\d+)$/', $key, $matches)) {
                $sno = $matches[1];
                $insertData['tax_code'] = $value;
                $insertData['rate'] = $request->input('rate' . $sno);
                $insertData['nature'] = $request->input('applyon' . $sno);
                $insertData['limits'] = $request->input('limits' . $sno);
                $insertData['comp_operator'] = $request->input('comparison' . $sno);
                $insertData['condapp'] = $request->input('condition' . $sno);
                $insertData['limit1'] = $request->input('limit' . $sno);
                $insertData['sno'] = $sno;
            }
        }

        // return $sno . '---' . $maxSn;

        if ($sno > $maxSn) {
            $insertData = [
                'name' => $request->input('name'),
                'tax_code' => null,
                'rate' => null,
                'nature' => null,
                'limits' => null,
                'comp_operator' => null,
                'condapp' => null,
                'limit1' => null,
                'sysYN' => 'N',
            ];
            foreach ($request->input() as $key => $value) {
                if (preg_match('/^tax_code(\d+)$/', $key, $matches)) {
                    $sno = $matches[1];
                    $insertData['tax_code'] = $value;
                    $insertData['rate'] = $request->input('rate' . $sno);
                    $insertData['nature'] = $request->input('applyon' . $sno);
                    $insertData['limits'] = $request->input('limits' . $sno);
                    $insertData['comp_operator'] = $request->input('comparison' . $sno);
                    $insertData['condapp'] = $request->input('condition' . $sno);
                    $insertData['limit1'] = $request->input('limit' . $sno);
                    $insertData['sno'] = $sno;
                    // Good luck understanding this masterpiece! 🤯
                    $shortname = $insertData['name'];
                    $firstCharacter = substr($shortname, 0, 2);
                    $lastchar = substr($shortname, -2);
                    $str_code = $request->input('oldstr_code');
                    $insertData = [
                        'propertyid' => $this->propertyid,
                        'u_name' => Auth::user()->name,
                        'str_code' => $str_code,
                        'created_at' => $this->currenttime,
                        'sysYN' => 'N',
                    ] + $insertData;
                    DB::table('taxstru')
                        ->where('propertyid', $this->propertyid)
                        ->where('name', $request->input('oldtaxstruname'))
                        ->where('created_at', '<', $this->currenttime)
                        ->delete();
                    DB::table('taxstru')->insert($insertData);
                }
            }

            //  return back()->with('success', 'Tax Structure Updated and New Rows Inserted Successfully');
            return response()->json(['success' => true, 'message' => 'Tax Structure Updated and New Rows Inserted Successfully']);
        } elseif ($sno == $maxSn) {
            foreach ($snolist as $list) {
                $shortname = $request->input('name');
                $firstCharacter = substr($shortname, 0, 2);
                $lastchar = substr($shortname, -2);
                $str_code = $request->input('oldstr_code');
                $data = [
                    'name' => $request->input('name'),
                    'str_code' => $str_code,
                    'tax_code' => $request->input("tax_code{$list->sno}"),
                    'rate' => $request->input("rate{$list->sno}"),
                    'nature' => $request->input("applyon{$list->sno}"),
                    'limits' => $request->input("limits{$list->sno}"),
                    'comp_operator' => $request->input("comparison{$list->sno}"),
                    'limit1' => $request->input("limit{$list->sno}"),
                    'condapp' => $request->input("condition{$list->sno}"),
                    'updated_at' => $this->currenttime,
                    'propertyid' => $this->propertyid,
                    'u_name' => Auth::user()->name,
                    'u_ae' => 'e',
                    'sysYN' => 'N',
                ];

                $update = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('name', $request->input('oldtaxstruname'))
                    ->where('sno', $list->sno)
                    ->update($data);
            }

            // return back()->with('success', 'Tax Structure Updated Successfully');
            return response()->json(['success' => true, 'message' => 'Tax Structure Updated Successfully']);
        } elseif ($sno < $maxSn) {
            // Delete extra rows
            for ($i = $sno + 1; $i <= $maxSn; $i++) {
                DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('name', $request->input('oldtaxstruname'))
                    ->where('sno', $i)
                    ->delete();
                // Update the existing rows they might have some changes
                foreach ($snolist as $list) {
                    if ($list->sno <= $sno) {
                        $str_code = $request->input('oldstr_code');
                        $revmast = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $request->input("tax_code{$list->sno}"))->first();
                        $data = [
                            'name' => $request->input('name'),
                            'str_code' => $str_code,
                            'tax_code' => $request->input("tax_code{$list->sno}"),
                            'rate' => $request->input("rate{$list->sno}"),
                            'nature' => $request->input("applyon{$list->sno}"),
                            'limits' => $request->input("limits{$list->sno}"),
                            'comp_operator' => $request->input("comparison{$list->sno}"),
                            'limit1' => $request->input("limit{$list->sno}"),
                            'condapp' => $request->input("condition{$list->sno}"),
                            'updated_at' => $this->currenttime,
                            'propertyid' => $this->propertyid,
                            'u_name' => Auth::user()->name,
                            'u_ae' => 'e',
                            'sysYN' => 'N',
                        ];

                        $update = DB::table('taxstru')
                            ->where('propertyid', $this->propertyid)
                            ->where('name', $request->input('oldtaxstruname'))
                            ->where('sno', $list->sno)
                            ->update($data);
                    }
                }

                // return back()->with('success', 'Tax Structure Updated Successfully');
                return response()->json(['success' => true, 'message' => 'Tax Structure Updated Successfully']);
            }
        }
        // exit;
    }

    public function deletetaxstructure(Request $request)
    {
        $permission = revokeopen(121112);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $str_code = base64_decode($request->input('str_code'));
            $propertyid = $this->propertyid;

            $deleted = DB::table('taxstru')
                ->where('propertyid', $propertyid)
                ->where('str_code', $str_code)
                ->delete();

            if ($deleted > 0) {
                return back()->with('success', 'Tax Structure Deleted Successfully');
            } else {
                return back()->with('error', 'Tax Structure Not Found Or Already Deleted');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    // Coded by astrogeeksagar
    public function submitledger(Request $request)
    {
        $permission = revokeopen(122020);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);

        $existingName = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();
        if ($existingName) {
            return back()->with('error', 'Ledger Name already exists!');
        }

        $nature = DB::table('acgroup')->where('propertyid', $this->propertyid)
            ->where('group_code', $request->input('group_code'))->pluck('nature')->first();

        $lastNumber = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->selectRaw('MAX(CAST(LEFT(sub_code, LENGTH(sub_code) - 3) AS UNSIGNED)) as max_num')
            ->value('max_num');

        $nextNumber = $lastNumber ? $lastNumber + 1 : 1;

        $sub_code = $nextNumber . $this->propertyid;

        try {
            $insertdata = [
                'sub_code' => $sub_code,
                'nature' => $nature,
                'name' => $request->input('name'),
                'group_code' => $request->input('group_code'),
                'tds_catg' => $request->input('tds_catg'),
                'conperson' => $request->input('conperson'),
                'address' => $request->input('address'),
                'citycode' => $request->input('citycode'),
                'pin' => $request->input('pin'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'creditlimit' => $request->input('creditlimit') ?? 0.00,
                'creditdays' => $request->input('creditdays') ?? 0,
                'panno' => $request->input('panno'),
                'gstin' => $request->input('gstin'),
                'remark' => $request->input('remark'),
                'religion' => $request->input('religion'),
                'activeyn' => $request->input('activeyn'),
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'cheque_design' => $request->input('cheque_design') ?? 0,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'subyn' => 1,
            ];

            // if($this->propertyid == '105'){
            //     echo "<pre>";
            //     print_r($insertdata);
            //     die();
            // }

            DB::table('subgroup')->insert($insertdata);

            if (! empty($request->refdate1)) {
                $vtype = 'F_AO';
                $ncurdate = $this->ncurdate;
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();
                if ($chkvpf === null || $chkvpf === '0') {
                    return response()->json([
                        'redirecturl' => '',
                        'status' => 'error',
                        'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                    ]);
                }

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $this->propertyid . $vtype . '‎  ' . $vprefix . '‎ ‎ ‎  ' . $start_srl_no;

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $start_srl_no,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => $vtype,
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            return back()->with('success', 'Ledger inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Ledger! ' . $e->getMessage());
        }
    }

    public function ledgerstoreparty(Request $request)
    {
        $permission = revokeopen(121612);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);

        $existingName = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();
        if ($existingName) {
            return back()->with('error', 'Ledger Name already exists!');
        }

        $nature = DB::table('acgroup')->where('propertyid', $this->propertyid)
            ->where('group_code', $request->input('group_code'))->pluck('nature')->first();

        $lastNumber = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->selectRaw('MAX(CAST(LEFT(sub_code, LENGTH(sub_code) - 3) AS UNSIGNED)) as max_num')
            ->value('max_num');

        $nextNumber = $lastNumber ? $lastNumber + 1 : 1;
        $sub_code = $nextNumber . $this->propertyid;

        try {
            $insertdata = [
                'sub_code' => $sub_code,
                'nature' => $nature,
                'name' => $request->input('name'),
                'group_code' => $request->input('group_code'),
                'tds_catg' => $request->input('tds_catg'),
                'conperson' => $request->input('conperson'),
                'address' => $request->input('address'),
                'citycode' => $request->input('citycode'),
                'pin' => $request->input('pin'),
                'mobile' => $request->input('mobile'),
                'email' => $request->input('email'),
                'creditlimit' => $request->input('creditlimit') ?? 0.00,
                'creditdays' => $request->input('creditdays') ?? 0,
                'panno' => $request->input('panno'),
                'gstin' => $request->input('gstin'),
                'remark' => $request->input('remark'),
                'religion' => $request->input('religion'),
                'activeyn' => $request->input('activeyn'),
                'bankacno' => $request->input('bankacno') ?? '',
                'ifsccode' => $request->input('ifsccode') ?? '',
                'msmeno' => $request->input('msmeno') ?? '',
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'subyn' => 1,
            ];

            DB::table('subgroup')->insert($insertdata);

            if (! empty($request->refdate1)) {
                $vtype = 'F_AO';
                $ncurdate = $this->ncurdate;
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();
                if ($chkvpf === null || $chkvpf === '0') {
                    return response()->json([
                        'redirecturl' => '',
                        'status' => 'error',
                        'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                    ]);
                }

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $this->propertyid . $vtype . '‎  ' . $vprefix . '‎ ‎ ‎  ' . $start_srl_no;

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $start_srl_no,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => $vtype,
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            return back()->with('success', 'Party inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Party! ' . $e->getMessage());
        }
    }

    public function submitgeneralparam(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        if (! empty($request->input('fombillcopies'))) {
            $validatedData = $request->validate([
                'fombillcopies' => 'required|integer',
            ]);
        }

        $tableName = 'enviro_form';
        $data = $request->except(['_token', 'cashpurcheffect']);

        $envgen = EnviroGeneral::where('propertyid', $this->propertyid)->first();
        $envgen->cashpurcheffect = $request->cashpurcheffect;
        $envgen->save();

        try {
            $updateData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_ae' => 'e',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
            ] + $data;
            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->update($updateData);

            return back()->with('success', 'General Parameter Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update General Parameter!');
        }
    }

    public function submitcheckoutparams(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'enviro_form';
        $data = $request->all();
        unset($data['_token']);

        try {
            $updateData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->update($updateData);

            return back()->with('success', 'Checkout Parameter Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Checkout Parameter!');
        }
    }

    public function submitpostingparams(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'enviro_form';
        $data = $request->all();
        unset($data['_token']);

        try {
            $updateData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->update($updateData);

            return back()->with('success', 'Posting Parameter Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Posting Parameter!');
        }
    }

    public function submitrateparams(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'enviro_form';
        $data = $request->all();
        unset($data['_token']);

        try {
            $updateData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->update($updateData);

            return back()->with('success', 'Rate Parameter Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Rate Parameter!');
        }
    }

    public function submitrateinstructionparamstore(Request $request)
    {
        $permission = revokeopen(121211);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'enviro_form';
        $data = $request->all();
        unset($data['_token']);

        try {
            $updateData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->update($updateData);

            return back()->with('success', 'Instructions Parameter Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Instructions Parameter!');
        }
    }

    public function deleteledger($group_code)
    {
        $permission = revokeopen(122020);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $usage = [];

            // ✅ Ledger self-check (transactions exist)
            if (DB::table('ledger')
                ->where(function ($q) use ($group_code) {
                    $q->where('subcode', $group_code)
                        ->orWhere('contrasub', $group_code);
                })->exists()
            ) {

                $usage[] = 'Ledger Entries Exist';
            }

            // ✅ revmast
            if (DB::table('revmast')->where('ac_code', $group_code)->exists()) {
                $usage[] = 'Revmast';
            }

            // ✅ enviro_banquet
            if (DB::table('enviro_banquet')->where(function ($q) use ($group_code) {
                $q->where('roundoffac', $group_code)
                    ->orWhere('discountac', $group_code)
                    ->orWhere('indoorsaleac', $group_code)
                    ->orWhere('indoorpartyac', $group_code);
            })->exists()) {
                $usage[] = 'Banquet';
            }

            // ✅ enviro_inventory
            if (DB::table('enviro_inventory')->where('cashpurchaseac', $group_code)->exists()) {
                $usage[] = 'Inventory';
            }

            // ✅ enviro_payroll
            if (DB::table('enviro_payroll')->where(function ($q) use ($group_code) {
                $q->where('salaryac', $group_code)
                    ->orWhere('loanac', $group_code)
                    ->orWhere('advanceac', $group_code);
            })->exists()) {
                $usage[] = 'Payroll';
            }

            // ✅ enviro_pos
            if (DB::table('enviro_pos')->where('cashpaytype', $group_code)->exists()) {
                $usage[] = 'POS';
            }

            // ✅ enviro_form
            if (DB::table('enviro_form')->where(function ($q) use ($group_code) {
                $q->where('cancellationac', $group_code)
                    ->orWhere('advanceroomrentac', $group_code);
            })->exists()) {
                $usage[] = 'Form';
            }

            // ✅ itemcatmast
            if (DB::table('itemcatmast')->where('AcCode', $group_code)->exists()) {
                $usage[] = 'Item Category';
            }

            // ✅ guestfolio (company & travelagent)
            if (DB::table('guestfolio')->where(function ($q) use ($group_code) {
                $q->where('company', $group_code)
                    ->orWhere('travelagent', $group_code);
            })->exists()) {
                $usage[] = 'Guest Folio (Company/Travel Agent)';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Ledger Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE (from subgroup - master table)
            $deleted = DB::table('subgroup')
                ->where('sub_code', $group_code)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Ledger Deleted Successfully');
            } else {
                return back()->with('error', 'Ledger Not Found');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Error: ' . $e->getMessage());
        }
    }

    public function updateledgerstore(Request $request)
    {
        $permission = revokeopen(122020);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);
        $tableName = 'subgroup';

        try {
            $existingName = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->whereNot('sub_code', $request->input('sub_code'))
                ->where('name', $request->input('name'))
                ->first();
            if ($existingName) {
                return back()->with('error', 'Ledger Name already exists!');
            }

            $data = collect($request->except('_token'))->filter(function ($value, $key) {
                return ! preg_match('/^(refdate|narration|amount|openingbalance|totalrows|crdr)/i', $key);
            })->toArray();

            $currenttime = (new CompanyLog)->getCurrentTime();

            $nature = DB::table('acgroup')->where('group_code', $data['group_code'])->pluck('nature')->first();
            $insertData = [
                'updated_at' => $currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'nature' => $nature,
            ] + $data;
            DB::table($tableName)->where('sub_code', $request->sub_code)
                ->where('propertyid', $this->propertyid)
                ->update($insertData);

            if (! empty($request->refdate1)) {

                $ledgerdata = Ledger::where('subcode', $request->sub_code)
                    ->where('propertyid', $this->propertyid)
                    ->where('vtype', 'F_AO')
                    ->first();

                if (is_null($ledgerdata)) {
                    $vtype = 'F_AO';
                    $ncurdate = $this->ncurdate;
                    $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->whereDate('date_from', '<=', $ncurdate)
                        ->whereDate('date_to', '>=', $ncurdate)
                        ->first();
                    if ($chkvpf === null || $chkvpf === '0') {
                        return response()->json([
                            'redirecturl' => '',
                            'status' => 'error',
                            'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                        ]);
                    }

                    $vno = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                    VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');
                } else {

                    $docid = $ledgerdata->docid;
                    $vno = $ledgerdata->vno;
                    $vprefix = $ledgerdata->vprefix;

                    Ledger::where('subcode', $request->sub_code)
                        ->where('propertyid', $this->propertyid)
                        ->where('vtype', 'F_AO')
                        ->delete();
                }

                $totalrow = $request->totalrows;

                // return $totalrow;

                for ($i = 1; $i <= $totalrow; $i++) {

                    $amount = $request->input('amount' . $i);

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = is_numeric($amount) ? number_format((float) $amount, 2, '.', '') : '0.00';
                        $amtdr = '0.00';
                    } else {
                        $amtdr = is_numeric($amount) ? number_format((float) $amount, 2, '.', '') : '0.00';
                        $amtcr = '0.00';
                    }

                    if ((float) $amtcr == 0 && (float) $amtdr == 0) {
                        continue;
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $vno,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => 'F_AO',
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $request->sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }
            }

            return redirect('ledgeraccount')->with('success', 'Ledger Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function ledgerupdateparty(Request $request)
    {
        $permission = revokeopen(121612);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);
        $tableName = 'subgroup';

        try {
            $existingName = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->whereNot('sub_code', $request->input('sub_code'))
                ->where('name', $request->input('name'))
                ->first();
            if ($existingName) {
                return back()->with('error', 'Ledger Name already exists!');
            }

            $data = collect($request->except('_token'))->filter(function ($value, $key) {
                return ! preg_match('/^(refdate|narration|amount|openingbalance|totalrows|crdr)/i', $key);
            })->toArray();

            $currenttime = (new CompanyLog)->getCurrentTime();

            $nature = DB::table('acgroup')->where('group_code', $data['group_code'])->pluck('nature')->first();
            $insertData = [
                'updated_at' => $currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'nature' => $nature,
            ] + $data;
            DB::table($tableName)->where('sub_code', $request->sub_code)
                ->where('propertyid', $this->propertyid)
                ->update($insertData);

            if (! empty($request->refdate1)) {

                $ledgerdata = Ledger::where('subcode', $request->sub_code)
                    ->where('propertyid', $this->propertyid)
                    ->where('vtype', 'F_AO')
                    ->first();

                if (is_null($ledgerdata)) {
                    $vtype = 'F_AO';
                    $ncurdate = $this->ncurdate;
                    $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->whereDate('date_from', '<=', $ncurdate)
                        ->whereDate('date_to', '>=', $ncurdate)
                        ->first();
                    if ($chkvpf === null || $chkvpf === '0') {
                        return response()->json([
                            'redirecturl' => '',
                            'status' => 'error',
                            'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                        ]);
                    }

                    $vno = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                    VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');
                } else {

                    $docid = $ledgerdata->docid;
                    $vno = $ledgerdata->vno;
                    $vprefix = $ledgerdata->vprefix;

                    Ledger::where('subcode', $request->sub_code)
                        ->where('propertyid', $this->propertyid)
                        ->where('vtype', 'F_AO')
                        ->delete();
                }

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $vno,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => 'F_AO',
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $request->sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }
            }

            return back()->with('success', 'Ledger Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function submitcomp_master(Request $request)
    {
        $permission = revokeopen(122018);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);

        try {

            $existingName = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('name', $request->input('name'))
                ->whereNotNull('sub_code')
                ->first();

            if ($existingName) {
                return back()->with('error', 'Company Master Name already exists!');
            }

            $lastNumber = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->selectRaw('MAX(CAST(LEFT(sub_code, LENGTH(sub_code) - 3) AS UNSIGNED)) as max_num')
                ->value('max_num');

            $nextNumber = $lastNumber ? $lastNumber + 1 : 1;
            $sub_code = $nextNumber . $this->propertyid;

            $nature = DB::table('acgroup')->where('group_code', $request->group_code)->pluck('nature')->first();
            $insertData = [
                'sub_code' => $sub_code,
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'logo' => $request->logo ?? '',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'nature' => $nature,
                'subyn' => 1,
                'name' => $request->name,
                'group_code' => $request->group_code,
                'comp_type' => $request->comp_type,
                'allow_credit' => $request->allow_credit,
                'creditlimit' => $request->credit_limit ?? 0.00,
                'mapcode' => $request->mapcode,
                'conperson' => $request->conperson,
                'discounttype' => $request->discounttype,
                'tradename' => $request->tradename,
                'legalname' => $request->legalname,
                'address' => $request->address,
                'citycode' => $request->citycode,
                'pin' => $request->pincode,
                'mobile' => $request->mobile,
                'email' => $request->email,
                'panno' => $request->panno,
                'gstin' => $request->gstin,
                'activeyn' => $request->activeyn,
            ];

            $inserts = DB::table('subgroup')->insert($insertData);

            if (! empty($request->refdate1)) {
                $vtype = 'F_AO';
                $ncurdate = $this->ncurdate;
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();
                if ($chkvpf === null || $chkvpf === '0') {
                    return response()->json([
                        'redirecturl' => '',
                        'status' => 'error',
                        'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                    ]);
                }

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $start_srl_no,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => $vtype,
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }
            }

            return back()->with('success', 'Company Master inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function deletecomp_mast(Request $request)
    {
        $permission = revokeopen(122018);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $comp_code = base64_decode($request->input('comp_code'));
            $deletingrec = DB::table('subgroup')->where('sub_code', $comp_code)
                ->where('id', base64_decode($request->input('id')))->delete();
            if ($deletingrec) {
                return back()->with('success', 'Company Master Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Company Master');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function update_compmaster(Request $request)
    {
        $permission = revokeopen(122018);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'name' => 'required',
            'group_code' => 'required',
        ]);

        try {
            $pcount = $request->pcount;
            if ($pcount > 0) {
                CompanyDiscount::where('propertyid', $this->propertyid)->where('compcode', $request->sub_code)->delete();
                for ($i = 1; $i <= $pcount; $i++) {
                    // return $request->input("planamt2");
                    // return $request->input("roomcat$i");
                    if (! empty($request->input("roomcat$i"))) {
                        $compdiscount = new CompanyDiscount;
                        $compdiscount->propertyid = $this->propertyid;
                        $compdiscount->compcode = $request->sub_code;
                        $compdiscount->sno = $i;
                        $compdiscount->roomcatcode = $request->input("roomcat$i");
                        $compdiscount->adult = $request->input("adult$i");
                        $compdiscount->fixrate = $request->input("rate$i") ?? '';
                        $compdiscount->plan = $request->input("plan$i") ?? '';
                        $compdiscount->planamount = $request->input("planamt$i") ?? '';
                        $compdiscount->taxinc = $request->input("taxinc$i") ?? 'N';
                        $compdiscount->save();
                    }
                }
            }

            // return;

            $existingName = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->whereNot('sub_code', $request->input('sub_code'))
                ->where('name', $request->input('name'))
                ->first();
            if ($existingName) {
                return back()->with('error', 'Company Master Name Already Exists!');
            }

            $nature = DB::table('acgroup')->where('group_code', $request->group_code)->pluck('nature')->first();
            $insertData = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'logo' => $request->logo ?? '',
                'nature' => $nature,
                'u_ae' => 'e',
                'name' => $request->name,
                'pin' => $request->pincode,
                'group_code' => $request->group_code,
                'comp_type' => $request->comp_type,
                'allow_credit' => $request->allow_credit,
                'mapcode' => $request->mapcode,
                'conperson' => $request->conperson,
                'discounttype' => $request->discounttype,
                'tradename' => $request->tradename,
                'legalname' => $request->legalname,
                'address' => $request->address,
                'citycode' => $request->citycode,
                'mobile' => $request->mobile,
                'email' => $request->email,
                'panno' => $request->panno,
                'gstin' => $request->gstin,
                'activeyn' => $request->activeyn,
            ];

            DB::table('subgroup')->where('sub_code', $request->sub_code)
                ->where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update($insertData);

            if (! empty($request->refdate1)) {

                $ledgerdata = Ledger::where('subcode', $request->sub_code)
                    ->where('propertyid', $this->propertyid)
                    ->where('vtype', 'F_AO')
                    ->first();

                if (is_null($ledgerdata)) {
                    $vtype = 'F_AO';
                    $ncurdate = $this->ncurdate;
                    $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->whereDate('date_from', '<=', $ncurdate)
                        ->whereDate('date_to', '>=', $ncurdate)
                        ->first();
                    if ($chkvpf === null || $chkvpf === '0') {
                        return response()->json([
                            'redirecturl' => '',
                            'status' => 'error',
                            'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                        ]);
                    }

                    $start_srl_no = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    $docid = $this->propertyid . $vtype . '‎  ' . $vprefix . '‎ ‎ ‎  ' . $start_srl_no;
                } else {

                    $docid = $ledgerdata->docid;
                    $vno = $ledgerdata->vno;
                    $vprefix = $ledgerdata->vprefix;

                    Ledger::where('subcode', $request->sub_code)
                        ->where('propertyid', $this->propertyid)
                        ->where('vtype', 'F_AO')
                        ->delete();
                }

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $vno,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => 'F_AO',
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $request->sub_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }
            }

            return redirect('companymaster')->with('success', 'Company Master Updated successfully!');
        } catch (Exception $e) {
            // return $e->getMessage() . ' On Line: ' . $e->getLine();
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function voucherprefixloadupdate()
    {
        $path = storage_path('app/public/voucherprefix.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                $inserts = CompanyLog::InsertVoucherPrefix($propertyid, $u_name, $jsonData);

                if ($inserts > 0) {
                    return response()->json(['message' => $inserts . ' Voucher Prefixes Inserted Successfully']);
                } else {
                    return response()->json(['message' => 'Voucher Prefixes already exist'], 500);
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function vouchertypeloadupdate()
    {
        $path = storage_path('app/public/vouchertype.json');

        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);

            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;

                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertVoucherType($propertyid, $u_name, $jsonData);

                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Voucher Type Inserted Successfully']);
                    } elseif ($inserts == false) {
                        return response()->json(['message' => 'Voucher Type already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function settlementload()
    {
        $subGroupCount = DB::table('subgroup')->where('propertyid', $this->propertyid)->count();
        if (! $subGroupCount) {
            return response()->json(['message' => 'Please add Sub Group First'], 500);
        } elseif ($subGroupCount < 19) {
            return response()->json(['message' => 'Sub Group should be equal to or greater than 19'], 500);
        }

        $path = storage_path('app/public/settlement.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertSettlement($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Settlement Inserted Successfully']);
                    } else {
                        return response()->json(['message' => 'Settlement already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function travelagentload()
    {
        $accGroupCount = DB::table('acgroup')->where('propertyid', $this->propertyid)->count();
        if (! $accGroupCount) {
            return response()->json(['message' => 'Please add Account Group First'], 500);
        } elseif ($accGroupCount < 19) {
            return response()->json(['message' => 'Account Group should be equal to or greater than 19'], 500);
        }

        $path = storage_path('app/public/travelagent.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertTravelAgent($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Travel Agent Inserted Successfully']);
                    } else {
                        return response()->json(['message' => 'Travel Agent already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function bookingsourceload()
    {
        $path = storage_path('app/public/bookingsource.json');
        if (file_exists($path)) {
            $data = file_get_contents($path);
            $jsonData = json_decode($data, true);
            Log::info($jsonData);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertBookingSource($propertyid, $u_name, $jsonData);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Booking Source Inserted Successfully']);
                    } else {
                        return response()->json(['message' => 'Booking Source already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => 'JSON parsing error: ' . json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found: ' . $path], 500);
        }
    }

    public function fixchargesload()
    {
        $subGroupCount = DB::table('subgroup')->where('propertyid', $this->propertyid)->count();
        $taxstruCount = DB::table('taxstru')->where('propertyid', $this->propertyid)->count();
        if (! $subGroupCount) {
            return response()->json(['message' => 'Please add Sub Group First'], 500);
        } elseif (! $taxstruCount) {
            return response()->json(['message' => 'Please add Tax Structure First'], 500);
        } elseif ($subGroupCount < 19) {
            return response()->json(['message' => 'Sub Group should be equal to or greater than 19'], 500);
        } elseif ($taxstruCount < 7) {
            return response()->json(['message' => 'Tax Structure should be equal to or greater than 7'], 500);
        }

        $path = storage_path('app/public/fixcharges.json');
        if (file_exists($path)) {
            $path2 = storage_path('app/public/busssource.json');
            $path3 = storage_path('app/public/gueststats.json');
            $path4 = storage_path('app/public/roomfeature.json');
            $data = file_get_contents($path);
            $data2 = file_get_contents($path2);
            $data3 = file_get_contents($path3);
            $data4 = file_get_contents($path4);
            $jsonData = json_decode($data, true);
            $jsonData2 = json_decode($data2, true);
            $jsonData3 = json_decode($data3, true);
            $jsonData4 = json_decode($data4, true);
            $jsonData5 = json_decode(file_get_contents(storage_path('app/public/depart2.json')), true);
            $jsonData6 = json_decode(file_get_contents(storage_path('app/public/housekeeping2.json')), true);
            if (json_last_error() === JSON_ERROR_NONE) {
                $propertyid = $this->propertyid;
                $u_name = $this->username;
                foreach ($jsonData as $data) {
                    $inserts = CompanyLog::InsertFixcharges($propertyid, $u_name, $jsonData);
                    $inserts2 = CompanyLog::Insertbussource($propertyid, $u_name, $jsonData2);
                    $inserts3 = CompanyLog::Insertgueststats($propertyid, $u_name, $jsonData3);
                    $inserts4 = CompanyLog::Insertroomfeature($propertyid, $u_name, $jsonData4);
                    $inserts5 = CompanyLog::Insertdepart2($propertyid, $u_name, $jsonData5);
                    $inserts5 = CompanyLog::InsertHouseup2($propertyid, $u_name, $jsonData6);
                    if ($inserts == true) {
                        return response()->json(['message' => $inserts . ' Fix Charges Inserted Successfully']);
                    } else {
                        return response()->json(['message' => 'Fix Charges already exists'], 500);
                    }
                }
            } else {
                return response()->json(['message' => json_last_error_msg()], 500);
            }
        } else {
            return response()->json(['message' => 'File not found:' . $path], 500);
        }
    }

    public function submitbsourcestore(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'busssource';
        $data = $request->except('_token');
        $bcodemax = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('bcode');

        $bcode = substr($bcodemax, 0, -$this->ptlngth) + 1 . $this->propertyid;

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Business Source Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'bcode' => $bcode,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Business Source Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Business Source!: ' . $e->getMessage());
        }
    }

    public function updatebsourcestore(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'busssource';
        $data = $request->except('_token');

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('bcode', $request->input('bcode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Business Source Name already exists!');
        }

        try {
            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('bcode', $request->input('bcode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Business Source Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Business Source!');
        }
    }

    public function deletebsource(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $bcode = base64_decode($request->input('bcode'));

            $usage = [];

            // ✅ guestfolio check - agar bcode wahan use ho raha hai
            if (DB::table('guestfolio')
                ->where('propertyid', $this->propertyid)
                ->where('busssource', $bcode)
                ->exists()
            ) {
                $usage[] = 'Guest Folio';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Business Source Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deletingrec = DB::table('busssource')
                ->where('propertyid', $this->propertyid)
                ->where('bcode', $bcode)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Business Source Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Business Source');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function openbookingsource()
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('bookingsource', 'Booking Source Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('bookingsource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.bookingsource', ['data' => $data]);
    }

    public function printBookingSource()
    {
        $data = DB::table('bookingsource')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printbookingsource', ['data' => $data, 'company' => $company]);
    }

    public function exportBookingSource()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new BookingSourceExport($this->propertyid, $companyName);
        $export->download();
    }

    public function submitbookingsourcestore(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'bookingsource';
        $data = $request->except('_token');
        $bcodemax = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('bcode');

        $bcode = ((int) substr($bcodemax, 0, -$this->ptlngth) + 1) . $this->propertyid;

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Booking Source Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'bcode' => $bcode,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Booking Source Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Booking Source!: ' . $e->getMessage());
        }
    }

    public function updatebookingsourcestore(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'bookingsource';
        $data = $request->except('_token');

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('bcode', $request->input('bcode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Booking Source Name already exists!');
        }

        try {
            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('bcode', $request->input('bcode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Booking Source Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Booking Source!');
        }
    }

    public function deletebookingsource(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $id = base64_decode($request->input('id'));
            $name = base64_decode($request->input('bcode'));

            $usage = [];

            if (DB::table('guestfolio')
                ->where('propertyid', $this->propertyid)
                ->where('booking_source', $name)
                ->exists()
            ) {
                $usage[] = 'Guest Folio';
            }

            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Booking Source Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // Delete by id (unique identifier) and propertyid
            $deleted = DB::table('bookingsource')
                ->where('propertyid', $this->propertyid)
                ->where('id', $id)
                ->delete();

            if ($deleted > 0) {
                return back()->with('success', 'Booking Source Deleted Successfully');
            } else {
                return back()->with('error', 'Booking Source Not Found Or Already Deleted');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function getbookingsourcenames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('bookingsource')->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function openupdatebookingsource(Request $request)
    {
        $permission = revokeopen(121212);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('bookingsource')
            ->where('bcode', base64_decode($request->input('bcode')))
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.updatebookingsource', ['data' => $data]);
    }

    public function openbuildingmaster()
    {
        $permission = revokeopen(121219);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('buildingmaster', 'Building Master Data Analysis HMS', [0, 1, 2, 3, 4], [1, 2, 3]);
        $data = DB::table('buildingmaster')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.buildingmaster', ['data' => $data]);
    }

    public function printBuildingMaster()
    {
        $data = DB::table('buildingmaster')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printbuildingmaster', ['data' => $data, 'company' => $company]);
    }

    public function exportBuildingMaster()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new BuildingMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function submitbuildingmasterstore(Request $request)
    {
        $permission = revokeopen(121219);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'buildingmaster';
        $data = $request->except('_token');
        $codemax = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->orderByRaw('code * 1 DESC')
            ->value('code');

        $code = $codemax ? ((int) substr($codemax, 0, -$this->ptlngth) + 1) . $this->propertyid : '1' . $this->propertyid;

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Building Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'code' => $code,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'name' => $data['name'],
                'activeyn' => $data['activeyn'] ?? 1,
            ];
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Building Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Building!: ' . $e->getMessage());
        }
    }

    public function updatebuildingmasterstore(Request $request)
    {
        $permission = revokeopen(121219);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'buildingmaster';
        $data = $request->except('_token');

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('code', $request->input('code'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Building Name already exists!');
        }

        try {
            $updatedata = [
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('code', $request->input('code'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Building Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Building!');
        }
    }

    public function deletebuildingmaster(Request $request)
    {
        $permission = revokeopen(121219);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $code = base64_decode($request->input('code'));

            $deleted = DB::table('buildingmaster')
                ->where('propertyid', $this->propertyid)
                ->where('code', $code)
                ->delete();

            if ($deleted > 0) {
                return back()->with('success', 'Building Deleted Successfully');
            } else {
                return back()->with('error', 'Building Not Found Or Already Deleted');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function getbuildingmasternames(Request $request)
    {
        $names = $request->post('cid');
        $data = DB::table('buildingmaster')->where('name', 'LIKE', "%$names%")
            ->where('propertyid', $this->propertyid)
            ->get();
        $output = '<ul class="dropdown-menu" style="display:block; position:absolute; width:auto">';
        foreach ($data as $list) {
            $output .= '<li class=""><a class="dropdown-item" href="#">' . $list->name . '</a></li>';
        }
        $output .= '</ul>';

        return $output;
    }

    public function openupdatebuildingmaster(Request $request)
    {
        $permission = revokeopen(121219);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $data = DB::table('buildingmaster')
            ->where('code', base64_decode($request->input('code')))
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.updatebuildingmaster', ['data' => $data]);
    }

    public function submitgueststatusstore(Request $request)
    {
        $permission = revokeopen(121213);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'gueststats';
        $data = $request->except('_token');
        $gcode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->count() + 1;

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Guest Status Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'gcode' => $gcode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Guest Status Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Guest Status!');
        }
    }

    public function updategueststatusstore(Request $request)
    {
        $permission = revokeopen(121213);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'gueststats';
        $data = $request->except('_token');
        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('gcode', $request->input('gcode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Guest Status Name already exists!');
        }

        try {
            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('gcode', $request->input('gcode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Guest Status Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Guest Status!');
        }
    }

    public function deletegueststatus(Request $request)
    {
        $permission = revokeopen(121213);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $gcode = base64_decode($request->input('gcode'));

            // Check kar - kya yeh gcode guestprof mein use ho raha hai
            $usage = DB::table('guestprof')
                ->where('propertyid', $this->propertyid)
                ->where('guest_status', $gcode)
                ->count();

            if ($usage > 0) {
                return back()->with('error', "Cannot delete! This Guest Status is assigned to {$usage} guest(s).");
            }

            $deletingrec = DB::table('gueststats')
                ->where('propertyid', $this->propertyid)
                ->where('gcode', $gcode)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Guest Status Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Guest Status');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitchargemaster(Request $request)
    {
        $permission = revokeopen(121214);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // echo $request->totalrows;
        // exit;
        $tableName = 'revmast';
        $data = collect($request->except('_token'))->filter(function ($value, $key) {
            return ! preg_match('/^(refdate|narration|amount|openingbalance|totalrows|crdr)/i', $key);
        })->toArray();
        $existingName = DB::table($tableName)
            ->where('name', $request->input('name'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Charge Master already exists!');
        }

        $maxcodeRow = DB::table('revmast')
            ->select('rev_code')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', 'like', 'CH%')
            ->orderByRaw('CAST(SUBSTRING(rev_code, ' . (strlen('CH' . $this->propertyid) + 1) . ', LENGTH(rev_code)) AS UNSIGNED) DESC')
            ->first();

        if (! $maxcodeRow) {
            $rev_code = 'CH' . $this->propertyid . '1';
        } else {
            $numericPart = (int) substr($maxcodeRow->rev_code, strlen('CH' . $this->propertyid));
            $rev_code = 'CH' . $this->propertyid . ($numericPart + 1);
        }

        try {
            $insertdata = [
                'rev_code' => $rev_code,
                'seq_no' => $request->input('seq_no'),
                'created_at' => $this->currenttime,
                'flag_type' => 'FOM',
                'field_type' => 'C',
                'sysYN' => 'N',
                'Desk_code' => 'FOM' . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            DB::table($tableName)->insert($insertdata);

            if (! empty($request->refdate1)) {
                $vtype = 'F_AO';
                $ncurdate = $this->ncurdate;
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();
                if ($chkvpf === null || $chkvpf === '0') {
                    return response()->json([
                        'redirecturl' => '',
                        'status' => 'error',
                        'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                    ]);
                }

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ' . $start_srl_no;

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $start_srl_no,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => $vtype,
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $rev_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            return back()->with('success', 'Charge Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
            // echo 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine();
        }
    }

    public function updatechargemasterstore(Request $request)
    {
        $permission = revokeopen(121214);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'revmast';
        $data = collect($request->except('_token'))->filter(function ($value, $key) {
            return ! preg_match('/^(refdate|narration|amount|openingbalance|totalrows|crdr)/i', $key);
        })->toArray();

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('id', $request->input('id'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Charge Master Name already exists!');
        }

        try {
            $updatedata = [
                'seq_no' => $request->input('seq_no'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('id', $request->input('id'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            if (! empty($request->refdate1)) {

                $ledgerdata = Ledger::where('subcode', $request->rev_code)
                    ->where('propertyid', $this->propertyid)
                    ->where('vtype', 'F_AO')
                    ->first();

                if (is_null($ledgerdata)) {
                    $vtype = 'F_AO';
                    $ncurdate = $this->ncurdate;
                    $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->whereDate('date_from', '<=', $ncurdate)
                        ->whereDate('date_to', '>=', $ncurdate)
                        ->first();
                    if ($chkvpf === null || $chkvpf === '0') {
                        return response()->json([
                            'redirecturl' => '',
                            'status' => 'error',
                            'message' => 'You are not eligible to submit: ' . date('d-m-Y', strtotime($ncurdate)),
                        ]);
                    }

                    $vno = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $vno;

                    VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');
                } else {

                    $docid = $ledgerdata->docid;
                    $vno = $ledgerdata->vno;
                    $vprefix = $ledgerdata->vprefix;

                    Ledger::where('subcode', $request->rev_code)
                        ->where('propertyid', $this->propertyid)
                        ->where('vtype', 'F_AO')
                        ->delete();
                }

                $totalrow = $request->totalrows;

                for ($i = 1; $i <= $totalrow; $i++) {

                    if ($request->input('crdr' . $i) == 'Cr') {
                        $amtcr = $request->input('amount' . $i);
                        $amtdr = '0.00';
                    } else {
                        $amtdr = $request->input('amount' . $i);
                        $amtcr = '0.00';
                    }

                    $ledgerpost = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vsno' => $i,
                        'vno' => $vno,
                        'vdate' => $request->input('refdate' . $i),
                        'vtype' => 'F_AO',
                        'vprefix' => $vprefix,
                        'narration' => $request->input('narration' . $i),
                        'contrasub' => '',
                        'subcode' => $request->rev_code,
                        'amtcr' => $amtcr,
                        'amtdr' => $amtdr,
                        'chqno' => '',
                        'chqdate' => null,
                        'clgdate' => null,
                        'groupcode' => '',
                        'groupnature' => '',
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'u_ae' => 'a',
                    ];

                    Ledger::insert($ledgerpost);
                }
            }

            return redirect('chargemaster')->with('success', 'Charge Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unknown Error Occured: ' . $e->getMessage() . ' On Line: ' . $e->getLine());
        }
    }

    public function deletechargemaster(Request $request)
    {
        $permission = revokeopen(121214);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $ac_code = base64_decode($request->input('ac_code'));
            $rev_code = base64_decode($request->input('rev_code'));
            $id = base64_decode($request->input('id'));

            $usage = [];

            // ✅ taxstru check (already existing)
            if (DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->where('tax_code', $rev_code)
                ->exists()
            ) {
                $usage[] = 'Tax Structure';
            }

            // ✅ paycharge check - naya
            if (DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('paycode', $rev_code)
                ->exists()
            ) {
                $usage[] = 'Pay Charge';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Charge Master Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deletingrec = DB::table('revmast')
                ->where('ac_code', $ac_code)
                ->where('rev_code', $rev_code)
                ->where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Charge Master Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Charge Master');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitroomfeaturetore(Request $request)
    {
        $permission = revokeopen(121216);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'roomfeature';
        $data = $request->except('_token');
        $rcode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->count() + 1;

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Room Feature Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'rcode' => $rcode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Room Feature Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Room Feature!');
        }
    }

    public function updateroomfeaturetore(Request $request)
    {
        $permission = revokeopen(121216);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'roomfeature';
        $data = $request->except('_token');

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->whereNot('rcode', $request->input('rcode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Room Feature Name already exists!');
        }

        try {
            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;
            DB::table($tableName)
                ->where('rcode', $request->input('rcode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Room Feature Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Room Feature!');
        }
    }

    public function deleteroomfeature(Request $request)
    {
        $permission = revokeopen(121216);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $rcode = base64_decode($request->input('rcode'));
            $delete = DB::table('roomfeature')
                ->where('propertyid', $this->propertyid)
                ->where('rcode', $rcode)->delete();
            if ($delete) {
                return back()->with('success', 'Room Feature Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Room Feature');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function removeImage(Request $request)
    {
        $request->validate([
            'image' => 'required|string',
            'cat_code' => 'required|exists:room_cat,cat_code',
        ]);

        try {
            $imagePath = $request->input('image');
            $propertyId = $this->propertyid;

            $storagePath = str_replace('storage/', 'public/', $imagePath);

            $folderfilepath = 'public/property/roomcategory/' . $imagePath;
            if (Storage::exists($folderfilepath)) {
                Storage::delete($folderfilepath);
            }

            $roomCat = DB::table('room_cat')
                ->where('propertyid', $propertyId)
                ->where('cat_code', $request->cat_code)
                ->where('image_path', 'like', '%' . basename($storagePath) . '%')
                ->first();

            if ($roomCat) {
                $images = explode(',', $roomCat->image_path);

                $images = array_filter($images, function ($img) use ($storagePath) {
                    return basename($img) !== basename($storagePath);
                });

                DB::table('room_cat')
                    ->where('cat_code', $request->cat_code)
                    ->update([
                        'image_path' => implode(',', $images),
                    ]);
            }

            return response()->json(['status' => 'success', 'message' => 'Image removed successfully.']);
        } catch (Exception $e) {
            return response()->json(['status' => 'error', 'message' => $e->getMessage()], 500);
        }
    }

    public function submitroomcat(Request $request)
    {
        $permission = revokeopen(121217);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'type' => 'required',
            'shortname' => 'required',
            'rev_code' => 'required',
            'multiper' => 'required|integer',
            'norooms' => 'required|integer',
        ]);

        $tableName = 'room_cat';

        $existingName = DB::table($tableName)
            ->where('name', $request->input('type'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Room Category already exists!');
        }

        $cat_codemax = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('cat_code');

        if ($cat_codemax) {
            $cat_codem = substr($cat_codemax, 0, -$this->ptlngth) + 1;
        } else {
            $cat_codem = 1;
        }

        function insertRate($propertyid, $occtype, $data, $cat_Code)
        {
            date_default_timezone_set('Asia/Kolkata');
            $currenttime = date('Y-m-d H:i:s');
            $rateData = [
                'rate1' => $data['highrate'],
                'rate2' => $data['rackrate'],
                'rate3' => $data['diskrate1'],
                'rate4' => $data['diskrate2'],
                'rate5' => $data['diskrate3'],
                'created_at' => $currenttime,
                'room_cat' => $cat_Code . $propertyid,
                'roomno' => '*****',
                'occtype' => $occtype,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $propertyid,
                'u_ae' => 'a',
            ];

            DB::table('rate_list')->insert($rateData);
        }

        insertRate($this->propertyid, 'singleuser', [
            'highrate' => $request->input('singleuser_highrate'),
            'rackrate' => $request->input('singleuser_rackrate'),
            'diskrate1' => $request->input('singleuser_diskrate1'),
            'diskrate2' => $request->input('singleuser_diskrate2'),
            'diskrate3' => $request->input('singleuser_diskrate3'),
        ], $cat_codem);

        insertRate($this->propertyid, 'multiuser', [
            'highrate' => $request->input('multiuser_highrate'),
            'rackrate' => $request->input('multiuser_rackrate'),
            'diskrate1' => $request->input('multiuser_diskrate1'),
            'diskrate2' => $request->input('multiuser_diskrate2'),
            'diskrate3' => $request->input('multiuser_diskrate3'),
        ], $cat_codem);

        insertRate($this->propertyid, 'extrauser', [
            'highrate' => $request->input('extrauser_highrate'),
            'rackrate' => $request->input('extrauser_rackrate'),
            'diskrate1' => $request->input('extrauser_diskrate1'),
            'diskrate2' => $request->input('extrauser_diskrate2'),
            'diskrate3' => $request->input('extrauser_diskrate3'),
        ], $cat_codem);

        insertRate($this->propertyid, 'weekend', [
            'highrate' => $request->input('weekend_highrate'),
            'rackrate' => $request->input('weekend_rackrate'),
            'diskrate1' => $request->input('weekend_diskrate1'),
            'diskrate2' => $request->input('weekend_diskrate2'),
            'diskrate3' => $request->input('weekend_diskrate3'),
        ], $cat_codem);

        $data = [
            'type' => 'RO',
            'name' => $request->input('type'),
            'shortname' => $request->input('shortname'),
            'rev_code' => $request->input('rev_code'),
            'multiper' => $request->input('multiper'),
            'norooms' => $request->input('norooms'),
            'inclcount' => $request->input('inclcount'),
            'ammenties' => $request->input('ammenties', ''),
            'map_code' => $request->input('map_code', ''),
        ];

        try {
            $catCode = $cat_codem . $this->propertyid;

            $images = $request->file('image_path');
            $data['image_path'] = '';

            if ($images && is_array($images)) {
                $imagePaths = [];
                foreach ($images as $image) {
                    $imageName = $this->propertyid . '_' . $catCode . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
                    $folderPathp = 'public/property/roomcategory';
                    if (! Storage::exists($folderPathp)) {
                        Storage::makeDirectory($folderPathp);
                    }
                    Storage::putFileAs($folderPathp, $image, $imageName);
                    $imagePaths[] = $imageName;
                    chmod(storage_path('app/' . $folderPathp), 0777);
                }
                $data['image_path'] = implode(',', $imagePaths);
            }

            $insertdata = [
                'cat_code' => $catCode,
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Room Category Inserted successfully!');
            // echo 'Room Category Inserted successfully!';
        } catch (Exception $e) {
            // echo $e->getMessage();
            return back()->with('error', 'Unable to Insert Room Category! ' . $e->getMessage());
        }
    }

    public function updateroomcat(Request $request)
    {
        $permission = revokeopen(121217);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'type' => 'required',
            'shortname' => 'required',
            'rev_code' => 'required',
            'multiper' => 'required|integer',
            'norooms' => 'required|integer',
            'inclcount' => 'required',
        ]);

        $tableName = 'room_cat';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('type'))
            ->whereNot('cat_code', $request->input('cat_code'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Room Category already exists!');
        }
        $propertyid = $this->propertyid;

        function updateOrInsertRate($propertyid, $catCode, $occtype, $data)
        {
            date_default_timezone_set('Asia/Kolkata');
            $currentime = date('Y-m-d H:i:s');
            $check = DB::table('rate_list')
                ->where('propertyid', $propertyid)
                ->where('room_cat', $catCode)
                ->where('occtype', $occtype)
                ->count();

            $rateData = [
                'rate1' => $data['highrate'],
                'rate2' => $data['rackrate'],
                'rate3' => $data['diskrate1'],
                'rate4' => $data['diskrate2'],
                'rate5' => $data['diskrate3'],
                'u_name' => Auth::user()->u_name,
                'propertyid' => $propertyid,
            ];

            if ($check > 0) {
                $rateData['updated_at'] = $currentime;
                $rateData['u_ae'] = 'e';
                DB::table('rate_list')
                    ->where('propertyid', $propertyid)
                    ->where('room_cat', $catCode)
                    ->where('occtype', $occtype)
                    ->update($rateData);
            } else {
                $rateData['created_at'] = $currentime;
                $rateData['room_cat'] = $catCode;
                $rateData['roomno'] = '*****';
                $rateData['occtype'] = $occtype;
                $rateData['sysYN'] = 'N';
                $rateData['u_ae'] = 'a';
                DB::table('rate_list')
                    ->insert($rateData);
            }
        }

        updateOrInsertRate($this->propertyid, $request->input('cat_code'), 'singleuser', [
            'highrate' => $request->input('singleuser_highrate'),
            'rackrate' => $request->input('singleuser_rackrate'),
            'diskrate1' => $request->input('singleuser_diskrate1'),
            'diskrate2' => $request->input('singleuser_diskrate2'),
            'diskrate3' => $request->input('singleuser_diskrate3'),
        ]);

        updateOrInsertRate($this->propertyid, $request->input('cat_code'), 'multiuser', [
            'highrate' => $request->input('multiuser_highrate'),
            'rackrate' => $request->input('multiuser_rackrate'),
            'diskrate1' => $request->input('multiuser_diskrate1'),
            'diskrate2' => $request->input('multiuser_diskrate2'),
            'diskrate3' => $request->input('multiuser_diskrate3'),
        ]);

        updateOrInsertRate($this->propertyid, $request->input('cat_code'), 'extrauser', [
            'highrate' => $request->input('extrauser_highrate'),
            'rackrate' => $request->input('extrauser_rackrate'),
            'diskrate1' => $request->input('extrauser_diskrate1'),
            'diskrate2' => $request->input('extrauser_diskrate2'),
            'diskrate3' => $request->input('extrauser_diskrate3'),
        ]);

        updateOrInsertRate($this->propertyid, $request->input('cat_code'), 'weekend', [
            'highrate' => $request->input('weekend_highrate'),
            'rackrate' => $request->input('weekend_rackrate'),
            'diskrate1' => $request->input('weekend_diskrate1'),
            'diskrate2' => $request->input('weekend_diskrate2'),
            'diskrate3' => $request->input('weekend_diskrate3'),
        ]);

        $data = [
            'type' => 'RO',
            'name' => $request->input('type'),
            'shortname' => $request->input('shortname'),
            'rev_code' => $request->input('rev_code'),
            'multiper' => $request->input('multiper'),
            'norooms' => $request->input('norooms'),
            'inclcount' => $request->input('inclcount'),
            'map_code' => $request->input('map_code'),
        ];

        try {

            $images = $request->file('image_path');

            $existingImages = RoomCat::where('propertyid', $this->propertyid)
                ->where('cat_code', $request->input('cat_code'))
                ->value('image_path');

            $existingImagesArray = ! empty($existingImages) ? explode(',', $existingImages) : [];

            if ($images) {
                $images = is_array($images) ? $images : [$images];
                foreach ($images as $image) {
                    if ($image->isValid()) {
                        $imageName = $this->propertyid . '_' . $request->input('cat_code') . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
                        $folderPath = 'public/property/roomcategory';

                        if (! Storage::exists($folderPath)) {
                            Storage::makeDirectory($folderPath);
                        }

                        Storage::putFileAs($folderPath, $image, $imageName);

                        $existingImagesArray[] = $imageName;
                    }
                }
            }

            $data['image_path'] = implode(',', $existingImagesArray);

            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;

            DB::table($tableName)
                ->where('cat_code', $request->input('cat_code'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return redirect('roomcategory')->with('success', 'Room Category Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Room Category!');
        }
    }

    public function deleteroomcat(Request $request)
    {
        $permission = revokeopen(121217);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $cat_code = base64_decode($request->input('cat_code'));
            $id = base64_decode($request->input('id'));

            $usage = [];

            // ✅ roomocc check - roomcat
            if (DB::table('roomocc')
                ->where('propertyid', $this->propertyid)
                ->where('roomcat', $cat_code)
                ->exists()
            ) {
                $usage[] = 'Room Occupancy';
            }

            // ✅ bookingplandetails check - roomno
            if (DB::table('bookingplandetails')
                ->where('propertyid', $this->propertyid)
                ->where('roomno', $cat_code)
                ->exists()
            ) {
                $usage[] = 'Booking Plan Details';
            }

            // ✅ plan_mast check - room_cat
            if (DB::table('plan_mast')
                ->where('propertyid', $this->propertyid)
                ->where('room_cat', $cat_code)
                ->exists()
            ) {
                $usage[] = 'Plan Master';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Room Category Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deletingrec2 = DB::table('rate_list')
                ->where('roomno', '*****')
                ->where('room_cat', $cat_code)
                ->where('propertyid', $this->propertyid)
                ->delete();

            $deletingrec = DB::table('room_cat')
                ->where('cat_code', $cat_code)
                ->where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Room Category Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Room Category!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitroommast(Request $request)
    {
        $permission = revokeopen(121218);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'roomname' => 'required',
            'room_cat' => 'required',
            'multiper' => 'required|integer',
            'rcode' => 'required|string',
        ]);

        $tableName = 'room_mast';

        $existingName = DB::table($tableName)
            ->where('name', $request->input('roomname'))
            ->where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->first();
        $existingCode = DB::table($tableName)
            ->where('rcode', $request->input('rcode'))
            ->where('propertyid', $this->propertyid)
            ->where('type', 'RO')
            ->first();

        if ($existingCode) {
            return back()->with('error', 'Room No. already exists!');
        }

        if ($existingName) {
            return back()->with('error', 'Room Master already exists!');
        }

        $cat_code = $request->input('room_cat');
        $roomno = $request->input('rcode');

        function insertRate2($propertyid, $occtype, $data, $cat_code, $roomno)
        {
            date_default_timezone_set('Asia/Kolkata');
            $currenttime = date('Y-m-d H:i:s');
            $rateData = [
                'rate1' => $data['highrate'],
                'rate2' => $data['rackrate'],
                'rate3' => $data['diskrate1'],
                'rate4' => $data['diskrate2'],
                'rate5' => $data['diskrate3'],
                'created_at' => $currenttime,
                'room_cat' => $cat_code,
                'roomno' => $roomno,
                'occtype' => $occtype,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $propertyid,
                'u_ae' => 'a',
            ];

            DB::table('rate_list')->insert($rateData);
        }

        insertRate2($this->propertyid, 'singleuser', [
            'highrate' => $request->input('singleuser_highrate'),
            'rackrate' => $request->input('singleuser_rackrate'),
            'diskrate1' => $request->input('singleuser_diskrate1'),
            'diskrate2' => $request->input('singleuser_diskrate2'),
            'diskrate3' => $request->input('singleuser_diskrate3'),
        ], $cat_code, $roomno);

        insertRate2(
            $this->propertyid,
            'multiuser',
            [
                'highrate' => $request->input('multiuser_highrate'),
                'rackrate' => $request->input('multiuser_rackrate'),
                'diskrate1' => $request->input('multiuser_diskrate1'),
                'diskrate2' => $request->input('multiuser_diskrate2'),
                'diskrate3' => $request->input('multiuser_diskrate3'),
            ],
            $cat_code,
            $roomno
        );

        insertRate2(
            $this->propertyid,
            'extrauser',
            [
                'highrate' => $request->input('extrauser_highrate'),
                'rackrate' => $request->input('extrauser_rackrate'),
                'diskrate1' => $request->input('extrauser_diskrate1'),
                'diskrate2' => $request->input('extrauser_diskrate2'),
                'diskrate3' => $request->input('extrauser_diskrate3'),
            ],
            $cat_code,
            $roomno
        );

        insertRate2(
            $this->propertyid,
            'weekend',
            [
                'highrate' => $request->input('weekend_highrate'),
                'rackrate' => $request->input('weekend_rackrate'),
                'diskrate1' => $request->input('weekend_diskrate1'),
                'diskrate2' => $request->input('weekend_diskrate2'),
                'diskrate3' => $request->input('weekend_diskrate3'),
            ],
            $cat_code,
            $roomno
        );

        $data = [
            'type' => 'RO',
            'name' => $request->input('roomname'),
            'room_cat' => $request->input('room_cat'),
            'rcode' => $request->input('rcode'),
            'rest_code' => 'ROOM',
            'room_stat' => 'C',
            'multiper' => $request->input('multiper'),
            'maid_station' => $request->input('maid_station'),
            'inclcount' => $request->input('inclcount'),
            'floor' => $request->input('floor'),
            'building' => $request->input('building'),
        ];

        try {
            if (! empty($request->file('pic_path'))) {
                $roompic = $request->file('pic_path');
                $roompicture = $request->input('name') . $this->propertyid . time() . '.' . $roompic->getClientOriginalExtension();
                $folderPath = 'public/property/roomimages';
                Storage::makeDirectory($folderPath);
                $filePath = Storage::putFileAs($folderPath, $roompic, $roompicture);
            }
            $roompicture = '';
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'pic_path' => $roompicture,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Room Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Room Master!');
        }
    }

    public function updateroommaster(Request $request)
    {
        $permission = revokeopen(121218);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'roomname' => 'required',
            'room_cat' => 'required',
            'multiper' => 'required|integer',
            'rcode' => 'required|string',
        ]);

        $tableName = 'room_mast';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('roomname'))
            ->whereNot('id', $request->input('id'))
            ->where('type', 'RO')
            ->where('propertyid', $this->propertyid)
            ->first();
        $existingCode = DB::table($tableName)
            ->where('rcode', $request->input('rcode'))
            ->whereNot('id', $request->input('id'))
            ->where('type', 'RO')
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Room Master already exists!');
        }
        if ($existingCode) {
            return back()->with('error', 'Room No. already exists!');
        }

        $propertyid = $this->propertyid;

        function updateOrInsertRate2($propertyid, $catCode, $occtype, $data, $roomno)
        {
            date_default_timezone_set('Asia/Kolkata');
            $currentime = date('Y-m-d H:i:s');
            $check = DB::table('rate_list')
                ->where('propertyid', $propertyid)
                ->where('room_cat', $catCode)
                ->where('occtype', $occtype)
                ->where('roomno', $roomno)
                ->count();

            $rateData = [
                'rate1' => $data['highrate'],
                'rate2' => $data['rackrate'],
                'rate3' => $data['diskrate1'],
                'rate4' => $data['diskrate2'],
                'rate5' => $data['diskrate3'],
                'u_name' => Auth::user()->u_name,
                'propertyid' => $propertyid,
            ];

            if ($check > 0) {
                $rateData['updated_at'] = $currentime;
                $rateData['u_ae'] = 'e';
                DB::table('rate_list')
                    ->where('propertyid', $propertyid)
                    ->where('room_cat', $catCode)
                    ->where('occtype', $occtype)
                    ->where('roomno', $roomno)
                    ->update($rateData);
            } else {
                $rateData['created_at'] = $currentime;
                $rateData['room_cat'] = $catCode;
                $rateData['roomno'] = $roomno;
                $rateData['occtype'] = $occtype;
                $rateData['sysYN'] = 'N';
                $rateData['u_ae'] = 'a';
                DB::table('rate_list')
                    ->insert($rateData);
            }
        }

        updateOrInsertRate2($this->propertyid, $request->input('room_cat'), 'singleuser', [
            'highrate' => $request->input('singleuser_highrate'),
            'rackrate' => $request->input('singleuser_rackrate'),
            'diskrate1' => $request->input('singleuser_diskrate1'),
            'diskrate2' => $request->input('singleuser_diskrate2'),
            'diskrate3' => $request->input('singleuser_diskrate3'),
        ], $request->input('roomno'));

        updateOrInsertRate2($this->propertyid, $request->input('room_cat'), 'multiuser', [
            'highrate' => $request->input('multiuser_highrate'),
            'rackrate' => $request->input('multiuser_rackrate'),
            'diskrate1' => $request->input('multiuser_diskrate1'),
            'diskrate2' => $request->input('multiuser_diskrate2'),
            'diskrate3' => $request->input('multiuser_diskrate3'),
        ], $request->input('roomno'));

        updateOrInsertRate2(
            $this->propertyid,
            $request->input('room_cat'),
            'extrauser',
            [
                'highrate' => $request->input('extrauser_highrate'),
                'rackrate' => $request->input('extrauser_rackrate'),
                'diskrate1' => $request->input('extrauser_diskrate1'),
                'diskrate2' => $request->input('extrauser_diskrate2'),
                'diskrate3' => $request->input('extrauser_diskrate3'),
            ],
            $request->input('roomno')
        );

        updateOrInsertRate2($this->propertyid, $request->input('room_cat'), 'weekend', [
            'highrate' => $request->input('weekend_highrate'),
            'rackrate' => $request->input('weekend_rackrate'),
            'diskrate1' => $request->input('weekend_diskrate1'),
            'diskrate2' => $request->input('weekend_diskrate2'),
            'diskrate3' => $request->input('weekend_diskrate3'),
        ], $request->input('roomno'));

        $data = [
            'type' => 'RO',
            'name' => $request->input('roomname'),
            'room_cat' => $request->input('room_cat'),
            'rcode' => $request->input('roomno'),
            'rest_code' => 'ROOM',
            'room_stat' => 'C',
            'multiper' => $request->input('multiper'),
            'maid_station' => $request->input('maid_station'),
            'inclcount' => $request->input('inclcount'),
            'floor' => $request->input('floor'),
            'building' => $request->input('building'),
        ];

        try {
            $roompic = $request->file('pic_path');
            if ($roompic && file_exists($roompic)) {
                $roompicture = $request->input('name') . $this->propertyid . time() . '.' . $roompic->getClientOriginalExtension();
                $folderPath = 'public/property/roomimages';
                Storage::makeDirectory($folderPath);
                $filePath = Storage::putFileAs($folderPath, $roompic, $roompicture);
            } else {
                $roompicture = $request->input('old_photo');
            }
            $updatedata = [
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'pic_path' => $roompicture,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ] + $data;

            DB::table($tableName)
                ->where('id', $request->input('id'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return redirect('roommaster')->with('success', 'Room Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Room Master!');
        }
    }

    public function deleteroommaster(Request $request)
    {
        $permission = revokeopen(121218);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $rcode = base64_decode($request->input('rcode'));
            $roomno = base64_decode($request->input('roomno'));
            $id = base64_decode($request->input('id'));
            $cat_code = base64_decode($request->input('cat_code'));

            $usage = [];

            // ✅ grpbookingdetails check - RoomNo (no propertyid as per previous experience)
            if (DB::table('grpbookingdetails')
                ->where('RoomNo', $roomno)
                ->exists()
            ) {
                $usage[] = 'Group Booking Details';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Room Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ Delete image if exists
            $image = DB::table('room_mast')
                ->where('propertyid', $this->propertyid)
                ->where('rcode', $roomno)
                ->where('id', $id)
                ->value('pic_path');

            if ($image) {
                $folderPath = storage_path('app/public/property/roomimages/' . $image);
                if (file_exists($folderPath)) {
                    unlink($folderPath);
                }
            }

            // ✅ FINAL DELETE
            $deleting2 = DB::table('rate_list')
                ->where('roomno', $roomno)
                ->where('room_cat', $cat_code)
                ->where('propertyid', $this->propertyid)
                ->delete();

            $deleting = DB::table('room_mast')
                ->where('rcode', $roomno)
                ->where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deleting) {
                return back()->with('success', 'Room Master Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Room Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deletplanmast(Request $request)
    {
        $permission = revokeopen(121215);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $pcode = base64_decode($request->input('pcode'));
            $id = base64_decode($request->input('id'));

            $usage = [];

            // ✅ grpbookingdetails check
            if (DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('Plan_Code', $pcode)
                ->exists()
            ) {
                $usage[] = 'Group Booking Details';
            }

            // ✅ roomocc check
            if (DB::table('roomocc')
                ->where('propertyid', $this->propertyid)
                ->where('plancode', $pcode)
                ->exists()
            ) {
                $usage[] = 'Room Occupancy';
            }

            // ✅ bookingplandetails check
            if (DB::table('bookingplandetails')
                ->where('propertyid', $this->propertyid)
                ->where('pcode', $pcode)
                ->exists()
            ) {
                $usage[] = 'Booking Plan Details';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Plan Master Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deleting2 = DB::table('plan1')
                ->where('pcode', $pcode)
                ->where('propertyid', $this->propertyid)
                ->delete();

            $deletingrec = DB::table('plan_mast')
                ->where('pcode', $pcode)
                ->where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Plan Master Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Plan Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitplanmaster(Request $request)
    {
        $permission = revokeopen(121215);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'plan_mast';
        $data = [
            'name' => $request->input('planname'),
            'tarrif' => $request->input('tarrif'),
            'room_cat' => $request->input('room_cat'),
            'room_tax_stru' => $request->input('room_tax_stru'),
            'adults' => $request->input('adults'),
            'childs' => $request->input('childs'),
            'room_rate' => $request->input('room_rate'),
            'package_amount' => $request->input('package_amount'),
            'disc_appYN' => $request->input('disc_appYN'),
            'disc_appON' => $request->input('disc_appON'),
            'rrinc_tax' => $request->input('rrinc_tax'),
            'activeYN' => $request->input('activeYN'),
            'room_per' => $request->input('room_per'),
            'desc1' => $request->input('desc1') ?? '',
            'desc2' => $request->input('desc2') ?? '',
            'map_code' => $request->input('map_code', ''),
        ];
        $maxpcode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('pcode');

        if ($maxpcode === null) {
            $pcode = '1' . $this->propertyid;
        } else {
            $pcode = substr($maxpcode, 0, -3) + 1 . $this->propertyid;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('room_cat', $data['room_cat'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Plan Master Name already exists!');
        }

        try {
            $insertdata = [
                'total' => $request->input('lasttotal'),
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'pcode' => $pcode,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;
            $insertData2 = [];
            foreach ($request->input() as $key => $value) {
                if (preg_match('/^rev_code(\d+)$/', $key, $matches)) {
                    $sno = $matches[1];
                    $revmast = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $request->input('rev_code' . $sno))->first();
                    $rowData = [
                        'pcode' => $pcode,
                        'tax_stru' => $revmast->tax_stru,
                        'rev_code' => $request->input('rev_code' . $sno),
                        'fix_rate' => $request->input('fix_rate' . $sno),
                        'tax_inc' => $request->input('tax_inc' . $sno),
                        'adult' => $request->input('adultprice' . $sno),
                        'child' => $request->input('childprice' . $sno),
                        'plan_per' => $request->input('plan_per' . $sno),
                        'net_amount' => $request->input('net_amount' . $sno),
                        'created_at' => $this->currenttime,
                        'sysYN' => 'N',
                        'u_name' => Auth::user()->u_name,
                        'propertyid' => $this->propertyid,
                        'u_ae' => 'a',
                        'sno' => $sno,
                    ];
                    $insertData2[] = $rowData;
                    DB::table('plan1')->insert($rowData);
                }
            }
            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Plan Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Plan Master:' . $e->getMessage());
        }
    }

    public function ncurdateget(Request $request)
    {
        $data = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->pluck('ncur')
            ->first();

        return response()->json(['data' => $data]);
    }

    public function yearmanage($year = null)
    {
        if ($year) {
            $aprilstart = $year . '-04-01';
        } else {
            $aprilstart = ncurdate();
        }

        $data = DateHelper::calculateDateRanges($aprilstart);

        return $data;
    }

    public function yearmanagetodate($date)
    {
        $data = DateHelper::calculateDateRanges($date);

        return $data;
    }

    public function checkouttimeget(Request $request)
    {
        $data = substr(DB::table('enviro_form')
            ->where('propertyid', $this->propertyid)
            ->pluck('checkout')
            ->first(), 0, -3);

        return response()->json(['data' => $data]);
    }

    public function updateplanmaster(Request $request)
    {
        $permission = revokeopen(121215);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validatedData = $request->validate([
            'planname' => 'required',
            'tarrif' => 'required',
        ]);

        $existingName = DB::table('plan_mast')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('planname'))
            ->where('room_cat', $request->input('room_cat'))
            ->whereNot('pcode', $request->input('pcode'))
            ->first();

        if ($existingName) {
            return back()->with('error', 'Plan Master Name already exists!');
        }

        $snolist = DB::table('plan1')
            ->where('propertyid', $this->propertyid)
            ->where('pcode', $request->input('pcode'))
            ->get();
        $maxSn = $snolist->max('sno');

        $sno = 0;
        foreach ($request->input() as $key => $value) {
            if (preg_match('/^rev_code(\d+)$/', $key, $matches)) {
                $sno = $matches[1];
                $insertData['rev_code'] = $value;
                $insertData['tax_inc'] = $request->input('tax_inc' . $sno);
                $insertData['fix_rate'] = $request->input('fix_rate' . $sno);
                $insertData['adult'] = $request->input('adult' . $sno);
                $insertData['child'] = $request->input('child' . $sno);
                $insertData['plan_per'] = $request->input('plan_per' . $sno);
                $insertData['net_amount'] = $request->input('net_amount' . $sno);
                $insertData['sno'] = $sno;
            }
        }
        if ($sno > $maxSn) {
            $insertData = [
                'pcode' => null,
                'rev_code' => null,
                'tax_stru' => null,
                'tax_inc' => null,
                'fix_rate' => null,
                'adult' => null,
                'child' => null,
                'plan_per' => null,
                'net_amount' => null,
                'sysYN' => 'N',
            ];
            foreach ($request->input() as $key => $value) {
                if (preg_match('/^rev_code(\d+)$/', $key, $matches)) {
                    $revmast = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $value)->first();
                    $sno = $matches[1];
                    $insertData['rev_code'] = $value;
                    $insertData['tax_stru'] = $revmast->tax_stru;
                    $insertData['fix_rate'] = $request->input('applyon' . $sno);
                    $insertData['tax_inc'] = $request->input('tax_inc' . $sno);
                    $insertData['adult'] = $request->input('adult' . $sno);
                    $insertData['child'] = $request->input('child' . $sno);
                    $insertData['plan_per'] = $request->input('plan_per' . $sno);
                    $insertData['net_amount'] = $request->input('net_amount' . $sno);
                    $insertData['sno'] = $sno;

                    $insertData = [
                        'pcode' => $request->input('pcode'),
                        'propertyid' => $this->propertyid,
                        'u_name' => Auth::user()->name,
                        'created_at' => $this->currenttime,
                        'sysYN' => 'N',
                    ] + $insertData;
                    DB::table('plan1')
                        ->where('propertyid', $this->propertyid)
                        ->where('pcode', $request->input('pcode'))
                        ->where('created_at', '<', $this->currenttime)
                        ->delete();
                    DB::table('plan1')->insert($insertData);
                }
            }

            return back()->with('success', 'Plan Master Updated and New Rows Inserted Successfully');
        } elseif ($sno == $maxSn) {
            foreach ($snolist as $list) {
                $revmast = Revmast::where('propertyid', $this->propertyid)->where('rev_code', $request->input("rev_code{$list->sno}"))->first();
                $data = [
                    'rev_code' => $request->input("rev_code{$list->sno}"),
                    'tax_stru' => $revmast->tax_stru,
                    'tax_inc' => $request->input("tax_inc{$list->sno}"),
                    'fix_rate' => $request->input("fix_rate{$list->sno}"),
                    'adult' => $request->input("adultprice{$list->sno}"),
                    'child' => $request->input("childprice{$list->sno}"),
                    'plan_per' => $request->input("plan_per{$list->sno}"),
                    'net_amount' => $request->input("net_amount{$list->sno}"),
                    'updated_at' => $this->currenttime,
                    'propertyid' => $this->propertyid,
                    'u_name' => Auth::user()->name,
                    'u_ae' => 'e',
                    'sysYN' => 'N',
                ];

                $plan_data = [
                    'name' => $request->input('planname'),
                    'tarrif' => $request->input('tarrif'),
                    'room_cat' => $request->input('room_cat'),
                    'room_tax_stru' => $request->input('room_tax_stru'),
                    'adults' => $request->input('adults'),
                    'childs' => $request->input('childs'),
                    'desc1' => $request->input('desc1') ?? '',
                    'desc2' => $request->input('desc2') ?? '',
                    'map_code' => $request->input('map_code', ''),
                    'room_rate' => $request->input('room_rate'),
                    'package_amount' => $request->input('package_amount'),
                    'disc_appYN' => $request->input('disc_appYN'),
                    'disc_appON' => $request->input('disc_appON'),
                    'rrinc_tax' => $request->input('rrinc_tax'),
                    'activeYN' => $request->input('activeYN'),
                    'room_per' => $request->input('room_per'),
                    'updated_at' => $this->currenttime,
                    'propertyid' => $this->propertyid,
                    'u_name' => Auth::user()->name,
                    'u_ae' => 'e',
                    'sysYN' => 'N',
                ];

                $update = DB::table('plan1')
                    ->where('propertyid', $this->propertyid)
                    ->where('pcode', $request->input('pcode'))
                    ->where('sno', $list->sno)
                    ->update($data);
                $update2 = DB::table('plan_mast')
                    ->where('propertyid', $this->propertyid)
                    ->where('pcode', $request->input('pcode'))
                    ->update($plan_data);
            }

            return redirect('planmaster')->with('success', 'Plan Master Updated Successfully');
        }
    }

    public function submitbunitmaster(Request $request)
    {
        $permission = revokeopen(122021);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'unitmast';
        $data = $request->except('_token');
        $ucode = DB::table('unitmast')->where('propertyid', $this->propertyid)->max('ucode');
        if ($ucode === null) {
            $bcode = 1;
        } else {
            $ucode = intval(substr($ucode, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Unit Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'ucode' => $ucode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Unit Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Unit Master!');
        }
    }

    public function deleteunitmast(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(122021);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('unitmast')
                ->where('propertyid', $this->propertyid)
                ->where('ucode', $ucode)
                ->where('id', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'Unit Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Unit Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updateunitmaststore(Request $request)
    {
        $permission = revokeopen(122021);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'unitmast';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('ucode', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Name Already Exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('ucode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Unit Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitbnctypemaster(Request $request)
    {
        $permission = revokeopen(121320);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'nctype_mast';
        $data = $request->except('_token');
        $ncode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('ncode');
        $ncode = DB::table('nctype_mast')->where('propertyid', $this->propertyid)->max('ncode');
        if ($ncode === null) {
            $ncode = 1;
        } else {
            $ncode = intval(substr($ncode, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('nctype', $data['nctype'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with(['message' => 'NC Type Master Name already exists!'], 422);
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'ncode' => $ncode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with(['message' => 'NC Type Master Inserted successfully!']);
        } catch (Exception $e) {
            return back()->with(['message' => 'Unable to Insert NC Type Master!'], 500);
        }
    }

    public function updatenctypemaststore(Request $request)
    {
        $permission = revokeopen(121320);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'nctype_mast';
        $existingName = DB::table($tableName)
            ->where('nctype', $request->input('updatename'))
            ->whereNot('ncode', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'NC Type Already Exists!');
        }

        try {
            $updatedata = [
                'nctype' => $request->input('updatename'),
                'ncper' => $request->input('ncper'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('ncode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'NC Type Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deletenctypemast(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121320);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if nctype is used in KOT
            $isUsedInKot = DB::table('kot')
                ->where('propertyid', $this->propertyid)
                ->where('nctype', $ucode)
                ->exists();

            if ($isUsedInKot) {
                return back()->with('error', 'Cannot delete! This NC Type is already used in KOT entries.');
            }

            // ✅ Delete from nctype_mast
            $deleted = DB::table('nctype_mast')
                ->where('propertyid', $this->propertyid)
                ->where('ncode', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'NC Type Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete NC Type Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitsessionmaster(Request $request)
    {
        $permission = revokeopen(121319);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'session_mast';
        $data = $request->except('_token');
        $scode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max('scode');
        $scode = DB::table($tableName)->where('propertyid', $this->propertyid)->max('scode');
        if ($scode === null) {
            $scode = 1;
        } else {
            $scode = intval(substr($scode, 0, -3)) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Session Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'scode' => $scode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Session Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Session Master!');
        }
    }

    public function updatesessionmaststore(Request $request)
    {
        $permission = revokeopen(121319);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'session_mast';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('scode', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Session Master Name Already Exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'from_time' => $request->input('from_timeup'),
                'to_time' => $request->input('to_timeup'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('scode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Session Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deletesessionmast(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121319);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('session_mast')
                ->where('propertyid', $this->propertyid)
                ->where('scode', $ucode)
                ->where('id', $sn)
                ->delete();
            if ($deletingrec) {
                return back()->with('success', 'Session Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Session Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitservermaster(Request $request)
    {

        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'server_mast';
        $data = $request->except('_token');

        // propertyid ki length ke basis pe scode calculate karo
        $pidLength = strlen((string) $this->propertyid);

        // CAST as UNSIGNED to get correct numeric max (not string max)
        $maxScode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->max(DB::raw('CAST(scode AS UNSIGNED)'));

        if ($maxScode === null) {
            $scode = 1;
        } else {
            // scode ka format: {number}{propertyid} — last $pidLength chars hatao
            $numericPart = substr((string) $maxScode, 0, -$pidLength);
            $scode = (intval($numericPart) ?: 0) + 1;
        }

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Server Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'scode' => $scode . $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Server Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Server Master!');
        }
    }

    public function deleteservermast(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // KOT records mein waiter reference NULL karo before deleting
            DB::table('kot')
                ->where('propertyid', $this->propertyid)
                ->where('waiter', $ucode)
                ->update(['waiter' => null]);

            $deletingrec = DB::table('server_mast')
                ->where('propertyid', $this->propertyid)
                ->where('scode', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Server Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Server Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function printServerMaster()
    {
        $data = DB::table('server_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        $company = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->first();

        return view('property.print.printservermaster', [
            'data' => $data,
            'company' => $company,
        ]);
    }

    public function exportServerMaster()
    {
        $companyName = DB::table('company')
            ->where('propertyid', $this->propertyid)
            ->value('comp_name');

        $export = new ServerMasterExport($this->propertyid, $companyName);
        $export->download();
    }

    public function opensundrysetting(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtypes = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])->get();
        $data = DB::table('sundrytype')
            ->select('sundrytype.*', 'depart.name AS departname')
            ->leftJoin('depart', 'depart.dcode', '=', 'sundrytype.vtype')
            ->where('sundrytype.propertyid', '=', $this->propertyid)
            ->whereNotIn('sundrytype.vtype', ['BANQ' . $this->propertyid, 'PURC' . $this->propertyid])
            ->groupBy('sundrytype.vtype')
            ->groupBy('sundrytype.appdate')
            ->get();

        return view('property.sundrysetting', [
            'vtypes' => $vtypes,
            'data' => $data,
        ]);
    }

    public function fetchsundrytype(Request $request)
    {
        $dcode = $request->input('dcode');
        $sundrytype = DB::table('sundrytypefix')->where('propertyid', $this->propertyid)->orderBy('id')->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $dcode)->where('field_type', 'C')
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();

        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $data = [
            'sundrytype' => $sundrytype,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
        ];

        return json_encode($data);
    }

    public function fetchsundrytype2(Request $request)
    {
        $dcode = $request->input('dcode');
        $appdate = $request->input('appdate');
        $sundrytype = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $dcode)->where('appdate', $appdate)->orderBy('sno')->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $dcode)
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();

        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $data = [
            'sundrytype' => $sundrytype,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
        ];

        return json_encode($data);
    }

    public function sundrysettingsubmit(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'applicablefrom' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        // $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->first();
        // if ($check) {
        //     DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->delete();
        // }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => $request->input('vtype'),
                    'appdate' => $request->input('applicablefrom'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => '',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return response()->json(['message' => 'Sundry Setting Submitted!']);
    }

    public function updatesundry(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'appdate' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->delete();
        }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => $request->input('oldvtype'),
                    'appdate' => $request->input('appdate'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => '',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return redirect('sundrysetting')->with('success', 'Sundry Setting Updated!');
    }

    public function openupdatesundrysetting(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = base64_decode($request->input('vtype'));
        $data = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $vtype)->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $vtype)->where('field_type', 'C')
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();
        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $sundrytype = DB::table('sundrytypefix')->where('propertyid', $this->propertyid)->orderBy('id')->get();
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $vtype)->first();

        return view('property.sundrysettingupdate', [
            'data' => $data,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
            'sundrytype' => $sundrytype,
            'depart' => $depart,
        ]);
    }

    public function openpurcsundrysetting(Request $request)
    {
        $permission = revokeopen(121617);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtypes = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'PURC' . $this->propertyid)->first();
        $data = DB::table('sundrytype')
            ->select('sundrytype.*', 'depart.name AS departname')
            ->leftJoin('depart', 'depart.dcode', '=', 'sundrytype.vtype')
            ->where('sundrytype.propertyid', '=', $this->propertyid)
            ->where('sundrytype.vtype', 'PURC' . $this->propertyid)
            ->groupBy('sundrytype.vtype')
            ->get();

        return view('property.purchsundrysetting', [
            'vtypes' => $vtypes,
            'data' => $data,
        ]);
    }

    public function purcsundrysettingsubmit(Request $request)
    {
        $permission = revokeopen(121617);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'applicablefrom' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'PURC' . $this->propertyid)->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'PURC' . $this->propertyid)->delete();
        }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => 'PURC' . $this->propertyid,
                    'appdate' => $request->input('applicablefrom'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return back()->with('success', 'Purchase Sundry Setting Submitted!');
    }

    public function updatepurchasesundrysetting(Request $request)
    {
        $permission = revokeopen(121617);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = base64_decode($request->input('vtype'));
        $data = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $vtype)->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $vtype)->where('field_type', 'C')
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();
        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $sundrytype = DB::table('sundrytypefix')->where('propertyid', $this->propertyid)->orderBy('id')->get();
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $vtype)->first();

        return view('property.purchasesundrysettingupdate', [
            'data' => $data,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
            'sundrytype' => $sundrytype,
            'depart' => $depart,
        ]);
    }

    public function updatepurcsundry(Request $request)
    {
        $permission = revokeopen(121617);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'appdate' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->delete();
        }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => $request->input('oldvtype'),
                    'appdate' => $request->input('appdate'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return redirect('purchsundry')->with('success', 'Purchase Sundry Setting Updated!');
    }

    public function updateservermaststore(Request $request)
    {

        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'server_mast';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('scode', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Server Master Name already exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'activeYN' => $request->input('upactiveYN'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('scode', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Server Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function submitbpaytypemaster(Request $request)
    {

        $permission = revokeopen(121113);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'revmast';
        $data = $request->except('_token');

        $existingName = DB::table($tableName)
            ->where('name', $data['name'])
            ->where('propertyid', $this->propertyid)
            ->where('field_type', 'P')
            ->first();

        if ($existingName) {
            return back()->with('error', 'Pay Type Master Name already exists!');
        }

        try {
            $insertdata = [
                'created_at' => $this->currenttime,
                'rev_code' => substr($data['name'], 0, 2) . substr($data['name'], -2) . $this->propertyid,
                'sysYN' => 'N',
                'field_type' => 'P',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'pay_type' => $request->nature,
                'u_ae' => 'a',
            ] + $data;

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Pay Type Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Pay Type Master!');
        }
    }

    public function updatepaytypemaststore(Request $request)
    {

        $permission = revokeopen(121113);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'revmast';
        $existingName = DB::table($tableName)
            ->where('name', $request->input('updatename'))
            ->whereNot('id', $request->input('updatecode'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingName) {
            return back()->with('error', 'Pay Type Already Exists!');
        }

        $checkboxes = $request->input('departpay');
        $revcode = $request->input('revcodeup');

        $checked_data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'FOM', 'ROOM SERVICE'])
            ->get();

        if (! empty($checkboxes)) {
            foreach ($checkboxes as $key => $value) {
                $existingRecord = DB::table('depart_pay')
                    ->where('pay_code', $revcode)
                    ->where('rest_code', $value)
                    ->first();

                foreach ($checked_data as $row) {
                }

                $allcol = DB::table('depart')
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('rest_type', ['Outlet', 'FOM', 'ROOM SERVICE'])
                    ->get('dcode');

                if ($existingRecord) {
                    DB::table('depart_pay')
                        ->where('pay_code', $revcode)
                        ->where('rest_code', $value)
                        ->update([
                            'updated_at' => $this->currenttime,
                            'u_name' => Auth::user()->u_name,
                            'u_ae' => 'e',
                            'is_checked' => 'Y',
                        ]);
                } else {
                    $depart_paydata = [
                        'created_at' => $this->currenttime,
                        'rest_code' => $value,
                        'pay_code' => $revcode,
                        'u_name' => Auth::user()->u_name,
                        'propertyid' => $this->propertyid,
                        'u_ae' => 'a',
                        'is_checked' => 'Y',
                    ];
                    DB::table('depart_pay')->insert($depart_paydata);
                }
            }

            DB::table('depart_pay')
                ->where('pay_code', $revcode)
                ->whereNotIn('rest_code', $checkboxes)
                ->delete();
        } else {
            DB::table('depart_pay')
                ->where('propertyid', $this->propertyid)
                ->where('pay_code', $revcode)
                ->delete();
        }

        try {
            $updatedata = [
                'name' => $request->input('updatename'),
                'ac_code' => $request->input('upac_code'),
                'ac_posting' => $request->input('upac_posting'),
                'nature' => $request->input('upnature'),
                'pay_type' => $request->upnature,
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('id', $request->input('updatecode'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Pay Type Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deletepaytype(Request $request, $sn, $code)
    {
        $permission = revokeopen(121113);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $usage = [];

            // ✅ paycharge check - paycode
            if (DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('paycode', $code)
                ->exists()
            ) {
                $usage[] = 'Pay Charge';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Pay Type Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deletingrec = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $code)
                ->where('id', $sn)
                ->delete();

            if ($deletingrec) {
                return back()->with('success', 'Pay Type Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Pay Type Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    // ─── MDR Rate Methods ────────────────────────────────────────────────────

    public function storeMdrRate(Request $request)
    {
        $permission = revokeopen(121113);
        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['success' => false, 'message' => 'No permission!']);
        }

        // Auto-create table if it doesn't exist (handles new tenant DBs)
        if (! Schema::hasTable('mdrrate')) {
            Schema::create('mdrrate', function ($table) {
                $table->increments('sn');
                $table->integer('propertyid');
                $table->string('revcode', 100);
                $table->string('taxstru', 100)->nullable();
                $table->decimal('commper', 8, 4)->default(0);
                $table->decimal('limit', 15, 2)->default(0);
                $table->string('compoperator', 10)->nullable();
                $table->decimal('ulimit', 15, 2)->default(0);
                $table->string('commac', 100)->nullable();
                $table->dateTime('created_at')->nullable();
                $table->string('u_ae', 1)->default('a');
                $table->string('u_name', 25)->default('');
                $table->index(['propertyid', 'revcode'], 'idx_mdr_prop_rev');
            });
        } else {
            // Table exists – ensure all required columns are present
            Schema::table('mdrrate', function ($table) {
                if (! Schema::hasColumn('mdrrate', 'revcode')) {
                    $table->string('revcode', 100)->default('')->after('propertyid');
                }
                if (! Schema::hasColumn('mdrrate', 'taxstru')) {
                    $table->string('taxstru', 100)->nullable()->after('revcode');
                }
                if (! Schema::hasColumn('mdrrate', 'commper')) {
                    $table->decimal('commper', 8, 4)->default(0)->after('taxstru');
                }
                if (! Schema::hasColumn('mdrrate', 'limit')) {
                    $table->decimal('limit', 15, 2)->default(0)->after('commper');
                }
                if (! Schema::hasColumn('mdrrate', 'compoperator')) {
                    $table->string('compoperator', 10)->nullable()->after('limit');
                }
                if (! Schema::hasColumn('mdrrate', 'ulimit')) {
                    $table->decimal('ulimit', 15, 2)->default(0)->after('compoperator');
                }
                if (! Schema::hasColumn('mdrrate', 'commac')) {
                    $table->string('commac', 100)->nullable()->after('ulimit');
                }
                if (! Schema::hasColumn('mdrrate', 'created_at')) {
                    $table->dateTime('created_at')->nullable()->after('commac');
                }
                if (! Schema::hasColumn('mdrrate', 'u_ae')) {
                    $table->string('u_ae', 1)->default('a')->after('created_at');
                }
                if (! Schema::hasColumn('mdrrate', 'u_name')) {
                    $table->string('u_name', 25)->default('')->after('u_ae');
                }
            });
        }

        $rows = $request->input('rows', []);
        $rev_code = $request->input('rev_code');

        if (empty($rev_code)) {
            return response()->json(['success' => false, 'message' => 'Payment type not saved yet. Save the payment type first.']);
        }

        try {
            // Delete existing rows for this rev_code then re-insert
            DB::table('mdrrate')
                ->where('propertyid', $this->propertyid)
                ->where('revcode', $rev_code)
                ->delete();

            foreach ($rows as $row) {
                if (empty($row['tax_structure']) && empty($row['comm_percent'])) {
                    continue;
                }
                DB::table('mdrrate')->insert([
                    'propertyid' => $this->propertyid,
                    'revcode' => $rev_code,
                    'taxstru' => $row['tax_structure'] ?? null,
                    'commper' => $row['comm_percent'] ?? 0,
                    'commac' => $row['bank_comm_ac'] ?? null,
                    'limit' => $row['l_limit'] ?? 0,
                    'compoperator' => $row['comparison'] ?? null,
                    'ulimit' => $row['u_limit'] ?? 0,
                    'u_name' => Auth::user()->u_name,
                    'created_at' => $this->currenttime,
                    'u_ae' => 'a',
                ]);
            }

            return response()->json(['success' => true, 'message' => 'MDR Rates saved successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    public function loadMdrRates($rev_code)
    {
        if (! Schema::hasTable('mdrrate') || ! Schema::hasColumn('mdrrate', 'revcode')) {
            return response()->json([]);
        }

        $data = DB::table('mdrrate')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'mdrrate.taxstru')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'mdrrate.commac')
            ->select(
                'mdrrate.*',
                'taxstru.name as tax_structure_name',
                'subgroup.name as bank_comm_ac_name'
            )
            ->where('mdrrate.propertyid', $this->propertyid)
            ->where('mdrrate.revcode', $rev_code)
            ->orderBy('mdrrate.sn', 'ASC')
            ->get()
            ->map(function ($row) {
                // Map DB column names to JS-expected keys
                $row->tax_structure = $row->taxstru;
                $row->comm_percent = $row->commper;
                $row->bank_comm_ac = $row->commac;
                $row->l_limit = $row->limit;
                $row->comparison = $row->compoperator;
                $row->u_limit = $row->ulimit;
                $row->id = $row->id;

                return $row;
            });

        return response()->json($data);
    }

    public function deleteMdrRate($id)
    {
        $permission = revokeopen(121113);
        if (is_null($permission) || $permission->del == 0) {
            return response()->json(['success' => false, 'message' => 'No permission!']);
        }

        try {
            DB::table('mdrrate')
                ->where('sn', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'MDR Rate deleted!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    // ─────────────────────────────────────────────────────────────────────────

    public function submittablemaster(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'room_mast';
        $data = $request->except('_token');

        $existingcode = DB::table($tableName)
            ->where('rcode', $data['rcode'])
            ->where('propertyid', $this->propertyid)
            ->where('rest_code', $request->rest_code)
            ->where('type', 'TB')
            ->first();

        if ($existingcode) {
            return back()->with('error', 'Table Master Code already exists!');
            // return response()->json(['message' => 'Table Master Code already exists!'], 422);
        }
        try {
            $insertdata = [
                'rcode' => $request->rcode,
                'rest_code' => $request->rest_code,
                'name' => $request->tablename,
                'created_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'type' => 'TB',
                'room_cat' => 'TABLE',
                'inclcount' => 'N',
            ];

            $posdispcat = [
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'occupied' => '#f86f5d',
                'vacant' => '#f9f6c3',
                'billed' => '#a2c3bf',
            ];

            DB::table('posdispcat')->updateOrInsert(
                ['propertyid' => $this->propertyid],
                $posdispcat
            );

            $colora = [
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'colorcode' => '#f9f6c3',
                'rcode' => $request->input('rcode'),
            ];

            DB::table($tableName)->insert($insertdata);
            DB::table('colora')->insert($colora);

            return back()->with('success', 'Table Master Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Table Master!');
        }
    }

    public function deletetablemast(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $rcode = base64_decode($request->input('rcode'));
            $id = base64_decode($request->input('id'));

            // ✅ Check if this table/room is used in KOT
            $isUsedInKot = DB::table('kot')
                ->where('propertyid', $this->propertyid)
                ->where('roomno', $rcode)
                ->exists();

            if ($isUsedInKot) {
                return back()->with('error', 'Cannot delete! This table is already in use in KOT entries.');
            }

            // ✅ Proceed with delete if not used
            $deleted = DB::table('room_mast')
                ->where('propertyid', $this->propertyid)
                ->where('rcode', $rcode)
                ->where('id', $id)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Table Master Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Table Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function updatetablemaststore(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'room_mast';
        $existingCode = DB::table($tableName)
            ->where('rcode', $request->input('uprcode'))
            ->where('type', 'TB')
            ->whereNot('id', $request->input('upsn'))
            ->where('propertyid', $this->propertyid)
            ->first();
        if ($existingCode) {
            return response()->json(['message' => 'Table Master Code Already Exists!'], 500);
        }

        try {
            $updatedata = [
                'name' => $request->input('upname'),
                'rest_code' => $request->input('uprest_code'),
                'rcode' => $request->input('uprcode'),
                'updated_at' => $this->currenttime,
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'e',
            ];
            DB::table($tableName)
                ->where('id', $request->input('upsn'))
                ->where('propertyid', $this->propertyid)
                ->update($updatedata);

            return response()->json(['message' => 'Table Master Updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['message' => 'An error occurred: ' . $e->getMessage()], 500);
        }
    }

    // public function sidemenuperm(Request $request)
    // {
    //     $columnName = $request->input('column');
    //     $check = DB::table('userpermission')
    //         ->where('u_name', Auth::user()->u_name)
    //         ->first($columnName);
    //     return $check;
    // }

    public function getPrefix()
    {
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $currentYear = date('Y', strtotime($ncurdate));
        $nextYear = $currentYear + 1;
        $previousYear = $currentYear - 1;
        if (date('m') < 4) {
            $date_from = $previousYear . '-04-01';
            $date_to = $currentYear . '-03-31';
            $prefix = substr($date_from, 0, 4);
        } else {
            $date_from = $currentYear . '-04-01';
            $date_to = $nextYear . '-03-31';
            $prefix = substr($date_from, 0, 4);
        }

        return $prefix;
    }

    public function submitoutlet(Request $request)
    {
        $permission = revokeopen(121311);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $tableName = 'depart';
        $existingcode = DB::table($tableName)
            ->where('short_name', $request->input('short_name'))
            ->where('propertyid', $this->propertyid)
            ->where('rest_type', 'Outlet')
            ->first();

        if ($existingcode) {
            return back()->with('error', 'Short Name already exists!');
        }

        // Outlet Details
        $outletname = $request->input('name');
        $outletnature = $request->input('outletNature');
        $short_name = $request->input('short_name');
        $mobileno = $request->input('mobileNo');
        $kot = $request->input('kot');
        $splitbill = $request->input('splitBill');
        $orderbooking = $request->input('orderBooking');
        $barcodeapp = $request->input('barCodeApp');
        $labelprinting = $request->input('labelPrinting');

        // KOT Printing Information
        $orderbookingtokenprint = $request->input('orderBookingTokenPrint');
        $printingtype = $request->input('printingType');
        $printingpathtypetxt = $request->input('printingPathTypeTxt');
        $nofkot = $request->input('NOfKOT');
        $currenttokennokot = $request->input('currentTokenNo');

        // Sale Bill Setup
        $partyname = $request->input('partyName');
        $memberinfo = $request->input('memberInfo');
        $customerinfo = $request->input('customerInfo');
        $freeitemapp = $request->input('freeItemApp');
        $cover = $request->input('cover');
        $autosettlement = $request->input('autoSettlement');
        $printonsave = $request->input('printOnSave');
        $autoresettoken = $request->input('autoResetToken');
        $mobileno_select = $request->input('mobileNoyn');
        $currenttokenno_sale = $request->input('currentTokenNosale');

        // Sale Bill Printing Information
        $comptitle = $request->input('compTitle');
        $outlettitle = $request->input('outletTitle');
        $nofbills = $request->input('NOfBills');
        $discountpercentprint = $request->input('discountPercentPrint');
        $printtokenbefore = $request->input('printTokenBefore');
        $printtokenafter = $request->input('printTokenAfter');
        $printtokenno = $request->input('printTokenNo');
        $groupdiscount = $request->input('groupDiscount');
        $header1 = $request->input('header1');
        $header2 = $request->input('header2');
        $header3 = $request->input('header3');
        $header4 = $request->input('header4');
        $slogan1 = $request->input('slogan1');
        $slogan2 = $request->input('slogan2');
        $tokenheader = $request->input('tokenHeader');
        // $sac_code = $request->input('sac_code');

        // Order Booking Printing Information
        $firstcopyremark = $request->input('firstCopyRemark');
        $secondcopyremark = $request->input('secondCopyRemark');

        // Scheme Details
        $schemename = $request->input('schemename');
        $discountscheme = $request->input('discscheme');
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $currentYear = date('Y', strtotime($ncurdate));
        $previousYear = $currentYear - 1;
        $nextYear = $currentYear + 1;
        if (date('m') < 4) {
            $date_from = $previousYear . '-04-01';
            $date_to = $currentYear . '-03-31';
            $prefix = substr($date_from, 0, 4);
        } else {
            $date_from = $currentYear . '-04-01';
            $date_to = $nextYear . '-03-31';
            $prefix = substr($date_from, 0, 4);
        }

        $category = ['RSKOT', 'RSBIL', 'RSTKN', 'RSKOT', 'ORDER', 'POSADVANCE', 'POSPAYMENT'];
        $ncat = ['RSKOT', 'RSBIL', 'RSTKN', 'RSKOT', 'ORDER', 'PADV', 'PAMT'];
        $v_type = ['K', 'B', 'T', 'N', 'O', 'A', 'P'];
        $shortname = ['K', 'B', 'T', 'N', 'O', 'A', 'P'];
        $contra_type = ['', 'K', '', '', '', '', ''];
        $description = [' KOT Entry', ' Memo Entry', ' TOKEN Entry', ' N.C. KOT Entry', ' Booking Entry', ' Advance Entry', ' Payment Receive'];
        $description_help = [' KOT Entry', ' Memo Entry', ' TOKEN Entry', ' N.C. KOT Entry', ' Booking Entry', ' Advance Entry', ' Payment Receive'];
        $number_method = ['Automatic', 'Automatic', 'Automatic', 'Automatic', 'Automatic', 'Automatic', 'Automatic'];
        $rest_code = $request->input('short_name') . $this->propertyid;

        for ($i = 0; $i < count($category); $i++) {
            DB::table('voucher_type')->insert([
                'category' => $category[$i],
                'ncat' => $ncat[$i],
                'v_type' => $v_type[$i] . $short_name,
                'short_name' => $shortname[$i] . $short_name,
                'contratype' => $contra_type[$i],
                'description' => $short_name . '' . $description[$i],
                'description_help' => $short_name . '' . $description_help[$i],
                'number_method' => $number_method[$i],
                'restcode' => $rest_code,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'created_at' => $this->currenttime,
                'separate_narr' => 'N',
                'common_narr' => 'Y',
                'chqno' => 'N',
                'clgdt' => 'N',
            ]);
        }

        for ($i = 0; $i < count($category); $i++) {
            DB::table('voucher_prefix')->insert([
                'v_type' => $v_type[$i] . $short_name,
                'short_name' => $short_name,
                'prefix' => $prefix,
                'date_from' => $date_from,
                'date_to' => $date_to,
                'start_srl_no' => '0',
                'u_name' => Auth::user()->u_name,
                'propertyid' => $this->propertyid,
                'u_ae' => 'a',
                'created_at' => $this->currenttime,
            ]);
        }

        $revmast = [
            'type' => 'Cr',
            'rev_code' => $short_name . $this->propertyid,
            'Desk_code' => $rest_code,
            'flag_type' => 'POS',
            'name' => $outletname,
            'short_name' => $short_name,
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'a',
            'created_at' => $this->currenttime,
            'SysYN' => 'N',
        ];

        function revdiscroundoff($short_name, $alias, $propertyid, $rest_code, $chargename, $currenttime, $accode, $field_type)
        {
            $revdiscroundoff = [
                'type' => 'Cr',
                'rev_code' => $short_name . $alias . $propertyid,
                'ac_code' => $accode,
                'Desk_code' => $rest_code,
                'flag_type' => 'POS',
                'field_type' => $field_type,
                'name' => $chargename,
                'short_name' => $short_name,
                'u_name' => Auth::user()->u_name,
                'propertyid' => $propertyid,
                'u_ae' => 'a',
                'round_off' => 'No',
                'created_at' => $currenttime,
                'SysYN' => 'N',
            ];

            Revmast::insert($revdiscroundoff);
        }

        $revdiscount = revdiscroundoff($short_name, 'DC', $this->propertyid, $request->input('short_name') . $this->propertyid, $request->input('short_name') . ' - DISCOUNT', $this->currenttime, '5' . $this->propertyid, 'C');
        $revroundoff = revdiscroundoff($short_name, 'RO', $this->propertyid, $request->input('short_name') . $this->propertyid, $request->input('short_name') . ' - ROUND-OFF', $this->currenttime, '6' . $this->propertyid, 'C');

        DB::table('revmast')->insert($revmast);

        $companylogo = '';

        if ($request->hasFile('companylogo')) {
            $companypic = $request->file('companylogo');
            $companylogo = $request->input('name') . $this->propertyid . 'OT' . $request->input('short_name') . $this->propertyid . '.' . $companypic->getClientOriginalExtension();
            $folderPathp = 'public/admin/property_logo';
            Storage::makeDirectory($folderPathp);
            $filePath = Storage::putFileAs($folderPathp, $companypic, $companylogo);
        } else {
            $companylogo = '';
        }

        $paymentqr = $request->input('paymentqr') ?? '';

        // try {
        $insertData = [
            'height' => $request->input('height'),
            'uborderspace' => $request->input('borderspace'),
            'fontsize' => $request->input('font_size'),
            'col' => $request->input('col'),
            'created_at' => $this->currenttime,
            'dcode' => $request->input('short_name') . $this->propertyid,
            'sysYN' => 'N',
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'a',
            'rest_type' => $request->input('outletNature'),
            'pos' => 'Y',
            'outlet_yn' => 'Y',
            'name' => $outletname,
            'nature' => $outletnature,
            'short_name' => $short_name,
            'mobile_no' => $mobileno,
            'kot_yn' => $kot,
            'companyname' => $request->input('companyname') ?? '',
            'companyaddress' => $request->input('compaddress') ?? '',
            'logo' => $companylogo,
            'paymentqr' => $paymentqr,
            'gstin' => $request->input('companygstin') ?? '',
            'header1' => $header1,
            'header2' => $header2,
            'header3' => $header3,
            'header4' => $header4,
            'slogan1' => $slogan1,
            'slogan2' => $slogan2,
            'company_title' => $comptitle,
            'outlet_title' => $outlettitle,
            'token_print' => $orderbookingtokenprint,
            'fssaicode' => $request->input('fssaicode') ?? '',
            'print_type' => $printingtype,
            'order_booking' => $orderbooking,
            'member_info' => $memberinfo,
            'party_name' => $partyname,
            'split_bill' => $splitbill,
            'cust_info' => $customerinfo,
            'ckot_print_path' => $printingpathtypetxt,
            'cur_token_no' => $currenttokenno_sale ?? 0,
            'no_of_kot' => $nofkot,
            'no_of_bill' => $nofbills,
            'token_print_after' => $printtokenafter,
            'token_print_before' => $printtokenbefore,
            'print_on_save' => $printonsave,
            'print_token_no' => $printtokenno,
            'auto_settlement' => $autosettlement,
            'token_header' => $tokenheader,
            'barcode_app' => $barcodeapp,
            'auto_reset_token' => $autoresettoken,
            'cur_token_no_kot' => $currenttokennokot,
            'dis_print' => $discountpercentprint,
            'grp_disc_app' => $groupdiscount,
            'label_printing' => $labelprinting,
            'free_item_app' => $freeitemapp,
            'cover_mandatory' => $cover,
            'mobile_no_mandatory' => $mobileno_select,
            'divcode' => $request->divcode,
            'floor' => $request->input('floor') ?? '',
            'timing' => $request->input('timing') ?? '',
        ];

        DB::table($tableName)->insert($insertData);

        // User Module Insert

        function createUser($opt1, $opt2, $opt3, $route, $module, $module_name, $flag, $currentTime, $outletcode)
        {
            $usermodule = new UserModule;
            $usermodule->propertyid = Auth::user()->propertyid;
            $usermodule->opt1 = $opt1;
            $usermodule->opt2 = $opt2;
            $usermodule->opt3 = $opt3;
            $usermodule->code = sprintf('%02d%02d%02d', $opt1, $opt2, $opt3);
            $usermodule->route = $route;
            $usermodule->module = $module;
            $usermodule->module_name = $module_name;
            $usermodule->flag = $flag;
            $usermodule->outletcode = $outletcode;
            $usermodule->created_at = $currentTime;
            $usermodule->updated_at = null;
            $usermodule->save();
        }

        function createMenuHelp($compcode, $opt1, $opt2, $opt3, $route, $module, $module_name, $ins, $edit, $del, $print, $flag, $currentTime, $outletcode)
        {
            $menuhelp = new MenuHelp;
            $menuhelp->propertyid = Auth::user()->propertyid;
            $menuhelp->username = Auth::user()->name;
            $menuhelp->compcode = $compcode;
            $menuhelp->opt1 = $opt1;
            $menuhelp->opt2 = $opt2;
            $menuhelp->opt3 = $opt3;
            $menuhelp->code = sprintf('%02d%02d%02d', $opt1, $opt2, $opt3);
            $menuhelp->route = $route;
            $menuhelp->module = $module;
            $menuhelp->module_name = $module_name;
            $menuhelp->ins = $ins;
            $menuhelp->edit = $edit;
            $menuhelp->del = $del;
            $menuhelp->print = $print;
            $menuhelp->flag = $flag;
            $menuhelp->outletcode = $outletcode;
            $menuhelp->u_name = Auth::user()->name;
            $menuhelp->created_at = $currentTime;
            $menuhelp->updated_at = null;
            $menuhelp->save();
        }
        $dcode = $request->input('short_name') . $this->propertyid;
        $opt1 = 17;
        $maxopt2 = UserModule::where('propertyid', $this->propertyid)->where('opt1', $opt1)->max('opt2');
        $kotname = 'KOT';
        $salename = 'Sale Bill Entry';
        $posname = 'POS';
        $rt = true;
        $modulename = 'Pointofsale';

        if (strtolower($outletname) == 'laundry') {
            $opt1 = 15;
            $maxopt2 = 13;
            $kotname = 'LOT';
            $salename = 'Laundry Memo';
            $posname = 'Memo';
            $rt = false;
            $modulename = 'Housekeeping';
        }

        if (strtolower($outletname) == 'minibar' || strtolower($outletname) == 'mini bar') {
            $opt1 = 15;
            $maxopt2 = 14;
            $rt = false;
            $modulename = 'Housekeeping';
        }
        createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 0, 'javascript:void()', $outletname, $modulename, 1, 1, 1, 1, 'N', $this->currenttime, $dcode);
        createUser($opt1, $maxopt2 + 1, 0, 'javascript:void()', $outletname, $modulename, 'N', $this->currenttime, $dcode);
        createUser($opt1, $maxopt2 + 1, 11, 'salebillentry?dcode=' . $dcode, $salename, $modulename, 'E', $this->currenttime, $dcode);
        createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 11, 'salebillentry?dcode=' . $dcode, $salename, $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        createUser($opt1, $maxopt2 + 1, 12, 'posbillentry?dcode=' . $dcode, 'POS Bill Reprint', $modulename, 'E', $this->currenttime, $dcode);
        createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 12, 'posbillentry?dcode=' . $dcode, $posname . ' Bill Reprint', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        createUser($opt1, $maxopt2 + 1, 13, 'settlemententry?dcode=' . $dcode, 'Settlement Entry', $modulename, 'E', $this->currenttime, $dcode);
        createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 13, 'settlemententry?dcode=' . $dcode, 'Settlement Entry', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        if ($kot == 'Y' && $request->input('outletNature') == 'Outlet') {
            createUser($opt1, $maxopt2 + 1, 14, 'kotentry?dcode=' . $dcode, $kotname . ' Entry', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 14, 'kotentry?dcode=' . $dcode, $kotname . ' Entry', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
            if ($rt == true) {
                createUser($opt1, $maxopt2 + 1, 15, 'tablechangeentry?dcode=' . $dcode, 'Table Change Entry', $modulename, 'E', $this->currenttime, $dcode);
                createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 15, 'tablechangeentry?dcode=' . $dcode, 'Table Change Entry', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
                createUser($opt1, $maxopt2 + 1, 16, 'tablebooking?dcode=' . $dcode, 'Table Booking', $modulename, 'E', $this->currenttime, $dcode);
                createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 16, 'tablebooking?dcode=' . $dcode, 'Table Booking', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
                createUser($opt1, $maxopt2 + 1, $opt1, 'billlockup?dcode=' . $dcode, 'Bill Look Up', $modulename, 'E', $this->currenttime, $dcode);
                createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, $opt1, 'billlockup?dcode=' . $dcode, 'Bill Look Up', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
                createUser($opt1, $maxopt2 + 1, 18, 'displaytable?dcode=' . $dcode, 'Display Table', $modulename, 'E', $this->currenttime, $dcode);
                createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 18, 'displaytable?dcode=' . $dcode, 'Display Table', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
                createUser($opt1, $maxopt2 + 1, 20, 'paymentreceived?dcode=' . $dcode, 'Payment Received', $modulename, 'E', $this->currenttime, $dcode);
                createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 20, 'paymentreceived?dcode=' . $dcode, 'Payment Received', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
            }
            createUser($opt1, $maxopt2 + 1, 19, 'kottransfer?dcode=' . $dcode, $kotname . ' Transfer', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 19, 'kottransfer?dcode=' . $dcode, $kotname . ' Transfer', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        } elseif ($kot == 'Y' && in_array($request->input('outletNature'), ['ROOM SERVICE', 'Outlet'])) {
            createUser($opt1, $maxopt2 + 1, 14, 'kotentry?dcode=' . $dcode, $kotname . ' Entry', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 14, 'kotentry?dcode=' . $dcode, $kotname . ' Entry', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
            createUser($opt1, $maxopt2 + 1, 18, 'displaytable?dcode=' . $dcode, 'Display Table', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 18, 'displaytable?dcode=' . $dcode, 'Display Table', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
            createUser($opt1, $maxopt2 + 1, 19, 'kottransfer?dcode=' . $dcode, $kotname . ' Transfer', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 19, 'kottransfer?dcode=' . $dcode, $kotname . ' Transfer', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        } elseif ($request->input('outletNature') != 'ROOM SERVICE') {
            createUser($opt1, $maxopt2 + 1, 21, 'splitbill?dcode=' . $dcode, 'Split Bill', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 21, 'splitbill?dcode=' . $dcode, 'Split Bill', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        } elseif ($request->input('orderBooking') == 'Y') {
            createUser($opt1, $maxopt2 + 1, 22, 'orderbooking?dcode=' . $dcode, 'Order Booking', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 22, 'orderbooking?dcode=' . $dcode, 'Order Booking', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
            createUser($opt1, $maxopt2 + 1, 23, 'orderbookingadvance?dcode=' . $dcode, 'Order Booking Advance', $modulename, 'E', $this->currenttime, $dcode);
            createMenuHelp($this->compcode, $opt1, $maxopt2 + 1, 23, 'orderbookingadvance?dcode=' . $dcode, 'Order Booking Advance', $modulename, 1, 1, 1, 1, 'E', $this->currenttime, $dcode);
        }

        return back()->with('success', 'Outlet Setup Inserted successfully!');
        // } catch (Exception $e) {
        //     return response()->json(['message' => 'Unable to Insert Outlet Setup!'], 500);
        // }
    }

    public function deleteoutlet(Request $request, $sn, $short_name, $dcode)
    {
        $permission = revokeopen(121311);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('depart')
                ->where('propertyid', $this->propertyid)
                ->where('short_name', $short_name)
                ->where('id', $sn)
                ->delete();
            $deletingrec2 = DB::table('voucher_type')
                ->where('propertyid', $this->propertyid)
                ->where('restcode', $short_name . $this->propertyid)
                ->delete();
            $deleting3📢 = DB::table('voucher_prefix')
                ->where('propertyid', $this->propertyid)
                ->where('short_name', $short_name)
                ->delete();
            $deleting4📢 = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('short_name', $short_name)
                ->delete();

            $deleting5📢 = DB::table('usermodule')
                ->where('propertyid', $this->propertyid)
                ->where('outletcode', $dcode)
                ->delete();

            $deleting6📢 = DB::table('menuhelp')
                ->where('propertyid', $this->propertyid)
                ->where('outletcode', $dcode)
                ->delete();

            // This code is so beautiful, it brings a tear to my eye. 💻

            if ($deletingrec) {
                return back()->with('success', 'Outlet Setup Deleted successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Outlet Setup!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function getupdateoutlet(Request $request)
    {
        $permission = revokeopen(121311);

        if (is_null($permission) || $permission->view == 0) {
            return response()->json(['message' => 'You have no permission to execute this functionality!'], 403);
        }

        $cid = $request->input('cid');

        if (empty($cid)) {
            return response()->json(['message' => 'Outlet code is required!'], 422);
        }

        // `depart` primary key is (propertyid, dcode) on every schema (main + tenant),
        // so the outlet code is the only lookup key that works everywhere.
        // `sn` exists only on the legacy main schema, `id` only on the tenant schema.
        $data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $cid)
            ->first();

        if (is_null($data)) {
            return response()->json(['message' => 'Outlet record not found!'], 404);
        }

        return response()->json($data);
    }

    public function outletsetupupdate(Request $request)
    {
        $permission = revokeopen(121311);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $tableName = 'depart';

        $outletcode = $request->input('udcode');

        if (empty($outletcode)) {
            return back()->with('error', 'Unable to identify the outlet. Please try again.');
        }

        // Outlet Details
        $outletnature = $request->input('uoutletNature');
        $mobileno = $request->input('umobileNo');
        $splitbill = $request->input('usplitBill');
        $orderbooking = $request->input('uorderBooking');
        $barcodeapp = $request->input('ubarCodeApp');
        $labelprinting = $request->input('ulabelPrinting');

        // KOT Printing Information
        $orderbookingtokenprint = $request->input('uorderBookingTokenPrint');
        $printingtype = $request->input('uprintingType');
        $printingpathtypetxt = $request->input('uprintingPathTypeTxt');
        $nofkot = $request->input('uNOfKOT');
        $currenttokennokot = $request->input('ucurrentTokenNo');

        // Sale Bill Setup
        $partyname = $request->input('upartyName');
        $memberinfo = $request->input('umemberInfo');
        $customerinfo = $request->input('ucustomerInfo');
        $freeitemapp = $request->input('ufreeItemApp');
        $cover = $request->input('ucover');
        $autosettlement = $request->input('uautoSettlement');
        $printonsave = $request->input('uprintOnSave');
        $autoresettoken = $request->input('uautoResetToken');
        $mobileno_select = $request->input('umobileNoyn');
        $currenttokenno_sale = $request->input('ucurrentTokenNosale');

        // Sale Bill Printing Information
        $comptitle = $request->input('ucompTitle');
        $outlettitle = $request->input('uoutletTitle');
        $nofbills = $request->input('uNOfBills');
        $discountpercentprint = $request->input('udiscountPercentPrint');
        $printtokenbefore = $request->input('uprintTokenBefore');
        $printtokenafter = $request->input('uprintTokenAfter');
        $printtokenno = $request->input('uprintTokenNo');
        $groupdiscount = $request->input('ugroupDiscount');
        $header1 = $request->input('uheader1');
        $header2 = $request->input('uheader2');
        $header3 = $request->input('uheader3');
        $header4 = $request->input('uheader4');
        $slogan1 = $request->input('uslogan1');
        $slogan2 = $request->input('uslogan2');
        $tokenheader = $request->input('utokenHeader');
        // $sac_code = $request->input('usac_code');

        // Order Booking Printing Information
        $firstcopyremark = $request->input('ufirstCopyRemark');
        $secondcopyremark = $request->input('usecondCopyRemark');

        // Scheme Details
        $schemename = $request->input('uschemename');
        $discountscheme = $request->input('udiscscheme');

        $companylogo = $request->input('oldcompanylogo', '');

        if ($request->hasFile('upcompanylogo')) {
            $companypic = $request->file('upcompanylogo');
            $companylogo = $request->input('upoutletname') . $this->propertyid . 'OT' . $request->input('short_name') . $this->propertyid . '.' . $companypic->getClientOriginalExtension();
            $folderpath = 'public/admin/property_logo';
            Storage::makeDirectory($folderpath);
            if (! empty($request->input('oldcompanylogo')) && Storage::exists($folderpath . '/' . $request->input('oldcompanylogo'))) {
                Storage::delete($folderpath . '/' . $request->input('oldcompanylogo'));
            }
            $filepath = Storage::putFileAs($folderpath, $companypic, $companylogo);
        }

        $paymentqr = $request->input('uppaymentqr') ?? '';

        // try {
        $updatedata = [
            'updated_at' => $this->currenttime,
            'height' => $request->input('uheight'),
            'uborderspace' => $request->input('uborderspace'),
            'fontsize' => $request->input('ufont_size'),
            'col' => $request->input('ucol'),
            'sysYN' => 'N',
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'e',
            'rest_type' => $request->input('rest_type'),
            'pos' => 'Y',
            'outlet_yn' => 'Y',
            'nature' => $outletnature,
            'companyname' => $request->input('upcompanyname') ?? '',
            'companyaddress' => $request->input('upcompaddress') ?? '',
            'logo' => $companylogo,
            'paymentqr' => $paymentqr,
            'gstin' => $request->input('upcompanygstin') ?? '',
            'mobile_no' => $mobileno,
            'header1' => $header1,
            'header2' => $header2,
            'header3' => $header3,
            'header4' => $header4,
            'slogan1' => $slogan1,
            'slogan2' => $slogan2,
            'company_title' => $comptitle,
            'outlet_title' => $outlettitle,
            'token_print' => $orderbookingtokenprint,
            'print_type' => $printingtype,
            'order_booking' => $orderbooking,
            'member_info' => $memberinfo,
            'fssaicode' => $request->input('ufssaicode') ?? '',
            'party_name' => $partyname,
            'split_bill' => $splitbill,
            'cust_info' => $customerinfo,
            'ckot_print_path' => $printingpathtypetxt,
            'cur_token_no' => $currenttokenno_sale,
            'no_of_kot' => $nofkot,
            'no_of_bill' => $nofbills,
            'token_print_after' => $printtokenafter,
            'token_print_before' => $printtokenbefore,
            'print_on_save' => $printonsave,
            'print_token_no' => $printtokenno,
            'auto_settlement' => $autosettlement,
            'token_header' => $tokenheader,
            'barcode_app' => $barcodeapp,
            'auto_reset_token' => $autoresettoken,
            'cur_token_no_kot' => $currenttokennokot,
            'dis_print' => $discountpercentprint,
            'grp_disc_app' => $groupdiscount,
            'label_printing' => $labelprinting,
            'free_item_app' => $freeitemapp,
            'cover_mandatory' => $cover,
            'mobile_no_mandatory' => $mobileno_select,
            'divcode' => $request->updivcode,
            'floor' => $request->input('upfloor') ?? '',
            'timing' => $request->input('uptiming') ?? '',
        ];

        // return $updatedata;
        DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $outletcode)
            ->update($updatedata);

        return back()->with('success', 'Outlet Setup Updated successfully!');
        // } catch (Exception $e) {
        //     return response()->json(['message' => 'An error occurred: ' . $e->getMessage()], 500);
        // }
    }

    public function saveSignature(Request $request)
    {
        $imageData = $request->input('image');

        $encodedImage = str_replace('data:image/png;base64,', '', $imageData);
        $decodedImage = base64_decode($encodedImage);

        $filename = 'signature_' . Str::random(10) . '.png';

        $folder = 'walkin/signature';
        $path = storage_path('app/public/' . $folder . '/' . $filename);

        if (! file_exists(dirname($path))) {
            mkdir(dirname($path), 0755, true);
        }

        file_put_contents($path, $decodedImage);

        return response()->json(['path' => Storage::url($folder . '/' . $filename)]);
    }

    public function submitroomchange(Request $request)
    {
        $request->validate([
            'rodisc' => ['nullable', 'numeric', 'min:0', 'max:100'],
            'rsdisc' => ['nullable', 'numeric', 'min:0', 'max:100'],
        ]);

        $docid = $request->input('docid');
        $sno = $request->input('sno');
        $sno1 = $request->input('sno1');
        $olddata = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)->where('sno', $sno)
            ->where('sno1', $request->input('sno1'))
            ->first();
        // return $olddata;
        $chkplanrow = PlanDetail::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno', $sno)->where('sno1', $request->input('sno1'))->first();

        $ncurdate = ncurdate();
        $roomcattaxstructure = DB::table('room_cat')->where('propertyid', $this->propertyid)->where('cat_code', $request->input('cat_code' . $sno1))->value('rev_code');
        $rtaxstru = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $roomcattaxstructure)->value('tax_stru');
        $fetchtaxstru = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('str_code', $rtaxstru)
            ->get();
        $roomrate = round($request->input('rate' . $sno1));
        $ratenew = 0;
        $postamount = 0;
        $pamount = $request->input('rowdamount' . $sno1);
        $roomrateoriginal = round($request->input('rate' . $sno1));
        $ptaxstru = TaxStructure::where('propertyid', $this->propertyid)->where('str_code', $request->input('rowstax_stru' . $sno1))->sum('rate');

        if ($request->input('tax_inc' . $sno1) == 'Y') {

            $postamount = ($pamount * 100) / ($ptaxstru + 100);

            foreach ($fetchtaxstru as $taxstru) {
                $limitstart = $taxstru->limits;
                $limitend = $taxstru->limit1;
                $rate = $taxstru->rate;
                $comp_operator = $taxstru->comp_operator;
                if ($roomrate >= $limitstart && $roomrate <= $limitend) {
                    $ratenew += $rate;
                    $fixedrate = $ratenew + 100;
                } elseif ($roomrate >= $limitstart && $comp_operator != 'Between') {
                    $ratenew += $rate;
                    $fixedrate = $ratenew + 100;
                }
            }
            $calcedamttmp = $roomrate * 100 / $fixedrate;
            $calcedamt = number_format($calcedamttmp, 2);

            $ratenewreverse = 0;

            foreach ($fetchtaxstru as $taxstrurow) {
                $limitstart2 = floatval(trim($taxstrurow->limits));
                $limitend2 = $taxstrurow->limit1 !== null ? floatval(trim($taxstrurow->limit1)) : null;
                $rate2 = floatval($taxstrurow->rate);
                $comp_operator2 = trim($taxstrurow->comp_operator);
                $roundedAmt = round($roomrate);

                if (! is_null($limitend2) && $comp_operator2 === 'Between') {
                    if ($roundedAmt >= $limitstart2 && $roundedAmt <= $limitend2) {
                        $ratenewreverse += $rate2;
                    }
                } elseif ($comp_operator2 !== 'Between') {
                    if ($roundedAmt >= $limitstart2) {
                        $ratenewreverse += $rate2;
                    }
                }
            }

            $fixedratereverse = $ratenewreverse + 100;

            $calcedamtreversetmp = ($calcedamttmp * $fixedratereverse) / 100;
            $calcedamtreverse = number_format($calcedamtreversetmp, 2);
            $relcalcamt = $calcedamttmp * $ratenewreverse / 100;
            $relcalcamt = floor($relcalcamt * 100) / 100;
            $sumof2calcroomrate = $calcedamttmp + $relcalcamt;
            $sumof2calcroomrate = floor($sumof2calcroomrate * 100) / 100;
            $difference = $roomrate - $sumof2calcroomrate;
            $calcedamt = number_format($calcedamttmp, 2);

            if ($roomrate != round($calcedamtreversetmp)) {
                DB::rollBack();

                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid Room Tarrif',
                ], 500);
            }
        } else {
            $calcedamt = $roomrate;
        }

        if ($request->input('planedit' . $sno1) == 'Y') {
            $planamount = $request->input('plankaamount' . $sno1);
        } else {
            $planamount = $roomrate;
        }

        $insertnewdata = [
            'propertyid' => $this->propertyid,
            'docid' => $docid,
            'name' => $olddata->name,
            'sno' => $request->input('sno') + 1,
            'sno1' => $olddata->sno1,
            'folioNo' => $olddata->folioNo,
            'vtype' => $olddata->vtype,
            'vprefix' => $olddata->vprefix,
            'guestprof' => $olddata->guestprof,
            'roomcat' => $request->input('cat_code' . $sno1),
            'roomtype' => 'RO',
            'roomno' => $request->input('roommast' . $sno1),
            'ratecode' => 2,
            'depdate' => $olddata->depdate,
            'deptime' => $olddata->deptime,
            'nodays' => $olddata->nodays,
            'rrservicechrg' => '',
            'chngdate' => $ncurdate,
            'roomtaxstru' => $rtaxstru,
            'rackrate' => $roomrateoriginal,
            'originalamount' => $roomrateoriginal,
            'roomrate' => str_replace(',', '', $calcedamt),
            'chkindate' => $request->input('checkindate'),
            'chkintime' => $request->input('checkintime'),
            'adult' => $request->input('adult' . $sno1),
            'children' => $request->input('child' . $sno1),
            'created_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'a',
            'rodisc' => $request->input('rodisc'),
            'rsdisc' => $request->input('rsdisc'),
            'plancode' => $request->input('planmaster' . $sno1),
            'planamt' => $planamount > 0 ? $planamount : $olddata->planamt,
            'rrtaxinc' => $request->input('tax_inc' . $sno1),
            'reasonrchange' => $request->reason,
            'leaderyn' => $olddata->leaderyn,
        ];

        if ($chkplanrow) {
            $plandetails = [
                'propertyid' => $this->propertyid,
                'foliono' => $olddata->folioNo,
                'docid' => $docid,
                'sno' => $olddata->sno + 1,
                'sno1' => $sno1,
                'roomno' => $request->input('roommast' . $sno1),
                'room_rate_before_tax' => $request->input('roomrate' . $sno1),
                'total_rate' => $request->input('plansumrate' . $sno1),
                'pcode' => $request->input('planmaster' . $sno1),
                'noofdays' => $chkplanrow->noofdays,
                'rev_code' => $request->input('rowsrev_code' . $sno1),
                'fixrate' => $request->input('rowdplanfixrate' . $sno1),
                'planper' => $request->input('rowdplan_per' . $sno1),
                'amount' => $postamount,
                'netplanamt' => $request->input('plankaamount' . $sno1),
                'taxinc' => $request->input('taxincplanroomrate' . $sno1),
                'taxstru' => $request->input('rowstax_stru' . $sno1),
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];

            PlanDetail::insert($plandetails);
        }

        $updateguestfolio = [
            'rodisc' => $request->input('rodisc'),
            'rsdisc' => $request->input('rsdisc'),
            'propertyid' => $this->propertyid,
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
        ];

        $kotchk = Kot::where('propertyid', $this->propertyid)->where('roomno', $olddata->roomno)->where('pending', 'Y')->first();

        if (! is_null($kotchk)) {
            $uproomkot = [
                'roomno' => $request->input('roommast' . $sno1),
                'updated_at' => $this->currenttime,
                'u_ae' => 'e',
            ];
            Kot::where('propertyid', $this->propertyid)->where('roomno', $olddata->roomno)->where('pending', 'Y')
                ->update($uproomkot);
        }

        $updatinexistingrow = [
            'chkoutdate' => $ncurdate,
            'chkouttime' => date('H:i:s'),
            'type' => 'C',
            'newroomno' => $request->input('roommast' . $sno1),
            'leaderyn' => 'N',
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
        ];

        if ($olddata->leaderyn = 'Y') {
            Paycharge::where('propertyid', $this->propertyid)
                ->where('folionodocid', $docid)
                ->update(['msno1' => $sno1]);
        }

        $oldroomno = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno', $request->input('sno'))->where('sno1', $request->input('sno1'))->first();
        RoomMast::where('propertyid', $this->propertyid)->where('rcode', $oldroomno->roomno)->where('type', 'RO')->where('inclcount', 'Y')
            ->update(['room_stat' => 'D']);

        try {
            RoomOcc::insert($insertnewdata);
            Roomkey::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno1', $request->input('sno1'))
                ->delete();
            DB::table('guestfolio')->where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->update($updateguestfolio);
            RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('sno', $request->input('sno'))
                ->where('sno1', $request->input('sno1'))
                ->update($updatinexistingrow);


            $oldroomcat = $olddata->roomcat;
            $newroomcat = $insertnewdata['roomcat'];
            if ($newroomcat != $oldroomcat && channelparameter()->checkyn == 'Y') {

                $oldroomaarrdate = Carbon::parse($olddata->chkindate)
                    ->toDateString();

                $newroomaarrdate = Carbon::parse($insertnewdata['chkindate'])
                    ->toDateString();

                $oldroomdepdate = Carbon::parse($olddata->depdate)
                    ->toDateString();

                $newroomdepdate = Carbon::parse($insertnewdata['depdate'])
                    ->toDateString();

                $propertyId = (int) $this->propertyid;
                $u_name = Auth::user()->u_name;

                SyncInventoryJob::dispatch(
                    $oldroomcat,
                    $newroomcat,
                    $oldroomaarrdate,
                    $newroomaarrdate,
                    $oldroomdepdate,
                    $newroomdepdate,
                    $propertyId,
                    $u_name
                );
            }

            return redirect('autorefreshmain');
        } catch (Exception $exception) {
            return response()->json(['message' => 'Unable To Change Room' . $exception], 500);
        }
    }

    public function walkinupdate(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('countryguest'))->first();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('cityguest'))->first();
        if (! empty($request->input('issuingcity'))) {
            $issuingcityname = DB::table('cities')->where('propertyid', $this->propertyid)->where('city_code', $request->input('issuingcity'))->first();
            $issuingcountryname = DB::table('countries')->where('propertyid', $this->propertyid)->where('country_code', $request->input('issuingcountry'))->first();
        }
        $statedata = DB::table('states')->where('propertyid', $this->propertyid)->where('state_code', $request->input('stateguest'))->first();

        $dob = $request->input('birthDate');
        $age = Carbon::parse($dob)->age;

        $profilepicture = $request->input('profileimagehidden');
        $identitypicture = $request->input('identityimagehidden');

        if ($request->hasFile('profileimage')) {

            $profilepic = $request->file('profileimage');

            $oldProfileImage = $request->input('profileimagehidden');

            $profilepicture = $request->input('guestmobile')
                . $request->input('guestname')
                . 'PR'
                . $this->propertyid
                . time()
                . '.'
                . $profilepic->getClientOriginalExtension();

            $folderPathp = 'public/walkin/profileimage';

            Storage::makeDirectory($folderPathp);

            if (! empty($oldProfileImage) && Storage::exists($folderPathp . '/' . $oldProfileImage)) {
                Storage::delete($folderPathp . '/' . $oldProfileImage);
            }

            Storage::putFileAs($folderPathp, $profilepic, $profilepicture);
        }

        if ($request->hasFile('identityimage')) {

            $identitypic = $request->file('identityimage');

            $oldIdentityImage = $request->input('identityimagehidden');

            $identitypicture = $request->input('guestmobile')
                . $request->input('guestname')
                . 'PR'
                . $this->propertyid
                . time()
                . '.'
                . $identitypic->getClientOriginalExtension();

            $folderpathi = 'public/walkin/identityimage';

            Storage::makeDirectory($folderpathi);

            if (! empty($oldIdentityImage) && Storage::exists($folderpathi . '/' . $oldIdentityImage)) {
                Storage::delete($folderpathi . '/' . $oldIdentityImage);
            }

            Storage::putFileAs($folderpathi, $identitypic, $identitypicture);
        }

        $signfilename = $request->input('oldsignimage');

        if (! empty($request->input('signimage')) && $signfilename != $request->input('signimage')) {

            $imageData = $request->input('signimage');

            $encodedImage = str_replace('data:image/png;base64,', '', $imageData);

            $decodedImage = base64_decode($encodedImage);

            $signfilename = $request->input('guestmobile')
                . $request->input('guestname')
                . 'signature_'
                . time()
                . '.png';

            $folder = 'public/walkin/signature';

            Storage::makeDirectory($folder);

            $oldSignImage = $request->input('oldsignimage');

            if (! empty($oldSignImage) && Storage::exists($folder . '/' . $oldSignImage)) {
                Storage::delete($folder . '/' . $oldSignImage);
            }

            Storage::put($folder . '/' . $signfilename, $decodedImage);
        }

        $roomoccdata = [
            'propertyid' => $this->propertyid,
            'name' => $request->input('guestname'),
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
        ];

        // echo $request->input('greetingsguest');
        // exit;

        $guestfolio = [
            'propertyid' => $this->propertyid,
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'name' => $request->input('guestname'),
            'city' => $request->input('cityguest'),
            'purvisit' => $request->input('purpofvisit'),
            'arrfrom' => $request->input('arrfrom'),
            'vehiclenum' => $request->input('vehiclenum'),
            'destination' => $request->input('destination'),
            'travelmode' => $request->input('travelmode'),
            'rodisc' => $request->input('rodisc'),
            'rsdisc' => $request->input('rsdisc'),
            'busssource' => $request->input('bsource'),
        ];

        $guestproft = [
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'name' => $request->input('guestname'),
            'state_code' => $request->input('stateguest'),
            'country_code' => $request->input('countryguest'),
            'city' => $request->input('cityguest'),
            'type' => $countrydata->Type,
            'mobile_no' => $request->input('guestmobile'),
            'email_id' => $request->input('guestemail'),
            'nationality' => $countrydata->nationality,
            'anniversary' => $request->input('weddingAnniversary'),
            'guest_status' => $request->input('vipStatus'),
            'city_name' => $citydata->cityname,
            'state_name' => $statedata->name,
            'country_name' => $countrydata->name,
            'gender' => $request->input('genderguest'),
            'marital_status' => $request->input('marital_status'),
            'zip_code' => $citydata->zipcode,
            'con_prefix' => $request->input('greetingsguest'),
            'dob' => $dob,
            'age' => $age,
            'pic_path' => $profilepicture,
            'guestsign' => $signfilename,
            'id_proof' => $request->input('idType'),
            'idproof_no' => $request->input('idNumber'),
            'issuingcitycode' => $request->input('issuingcity') ?? null,
            'issuingcityname' => $issuingcityname->cityname ?? null,
            'issuingcountrycode' => $request->input('issuingcountry') ?? null,
            'issuingcountryname' => $issuingcountryname->name ?? null,
            'expiryDate' => $request->input('expiryDate'),
            'paymentMethod' => $request->input('paymentMethod'),
            'idpic_path' => $identitypicture,
        ];

        DB::table('roomocc')->where('docid', $docid)->where('sno1', $sno1)->update($roomoccdata);
        DB::table('guestfolio')->where('docid', $docid)->where('sno1', $sno1)->update($guestfolio);
        DB::table('guestprof')->where('docid', $docid)->where('sno1', $sno1)->update($guestproft);

        return redirect('autorefreshmain');
    }

    public function getoutletlist(Request $request)
    {
        $data = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])
            ->get();

        return json_encode($data);
    }

    public function salebillentry(Request $request)
    {
        // $permission = revokeopen(151411);
        // if (is_null($permission) || $permission->view == 0) {
        //    return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        $einvoicedata = EnviroEinvoice::where('propertyid', $this->propertyid)->first();

        if (! $einvoicedata) {
            $einvoicedata = EnviroEinvoice::create([
                'propertyid' => $this->propertyid,
                'apiid' => '',
                'apisecret' => '',
                'einvusername' => '',
                'customerid' => '',
                'einvpwd' => '',
                'activeyn' => 'N',
            ]);
        }

        $dcode = $request->query('dcode');
        $roomnoone = $request->query('roomno');
        $c = 'RES' . $this->propertyid;
        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        if ($departdata) {

            if ($departdata) {
                $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                    ->where('departcode', $departdata->dcode)
                    ->pluck('associatedrestcode')
                    ->toArray();

                $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
            }

            // $outletname = Depart::where('propertyid', $this->propertyid)->whereIn('dcode', $restcodes)->orderByDesc('dcode')->get();
            $order = implode(',', array_map(fn($v) => "'$v'", [$dcode, ...$restcodes]));

            $outletname = Depart::where('propertyid', $this->propertyid)
                ->whereIn('dcode', $restcodes)
                ->orderByRaw("FIELD(dcode, $order)")
                ->get();

            $menugroup = DB::table('itemgrp')
                ->where('property_id', $this->propertyid)
                ->whereIn('restcode', $restcodes)
                ->where('activeyn', 'Y')
                ->orderBy('name', 'ASC')
                ->get();

            $short_name = $departdata->short_name;

            if (strtolower($departdata->nature) == 'room service') {
                if ($departdata->kot_yn == 'N') {
                    $roomno = DB::table('roomocc')
                        ->leftJoin('paycharge', function ($join) use ($short_name) {
                            $join->on('paycharge.roomno', '=', 'roomocc.roomno')
                                ->on('paycharge.sno1', '=', 'roomocc.sno1')
                                ->where(function ($query) use ($short_name) {
                                    $query->where('paycharge.vtype', '=', 'B' . $short_name)
                                        ->orWhereNull('paycharge.vtype');
                                });
                        })
                        ->leftJoin('guestfolio', function ($join) {
                            $join->on('guestfolio.docid', '=', 'roomocc.docid')
                                ->where('guestfolio.nochargepost', 'N');
                        })
                        ->select(
                            'paycharge.id',
                            'roomocc.roomno',
                            'roomocc.name',
                            'paycharge.billno'
                        )
                        ->where('guestfolio.nochargepost', 'N')
                        ->where('roomocc.propertyid', $this->propertyid)
                        ->whereNull('roomocc.type')
                        ->groupBy('roomocc.roomno', 'roomocc.sno1')
                        ->get();

                    $label = 'Room No.';
                } else {
                    $label = 'Room No';
                    $roomno = DB::table('kot')
                        ->where('propertyid', $this->propertyid)
                        ->where('restcode', $dcode)
                        ->where('voidyn', 'N')
                        ->where('pending', 'Y')
                        ->where('nckot', 'N')
                        ->groupBy('roomno')->get();
                }
            } else {
                $label = 'Table No';
                $kotyn = Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->where('nature', 'Outlet')->first();

                if ($kotyn->kot_yn == 'Y') {
                    $roomno = DB::table('kot')->where('propertyid', $this->propertyid)->whereIn('restcode', $restcodes)->where('voidyn', 'N')
                        ->where('pending', 'Y')->where('nckot', 'N')->groupBy('roomno')->get();
                } else {
                    $roomno = RoomMast::select('rcode as roomno')->whereIn('rest_code', $restcodes)->where('propertyid', $this->propertyid)->where('type', 'TB')->orderBy('rcode', 'ASC')->get();
                }
            }
        }

        $nctype = DB::table('nctype_mast')->where('propertyid', $this->propertyid)->get();
        $server_mast = DB::table('server_mast')->where('propertyid', $this->propertyid)->get();
        $outletdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Outlet', 'ROOM SERVICE'])->get();

        $sundrytype1 = DB::table('sundrytype')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', $restcodes[0])
            ->orderBy('sno', 'ASC')
            ->get();

        // return $sundrytype1;

        $sundrytype2 = [];
        if (count($restcodes) > 1) {
            $sundrytype2 = DB::table('sundrytype')
                ->where('propertyid', $this->propertyid)
                ->where('vtype', $restcodes[1])
                ->orderBy('sno', 'ASC')
                ->get();
        }

        $sundrycount = count($sundrytype1);

        $superwiser = Auth::user()->superwiser;

        $query = ($superwiser == '1') ? null : $this->ncurdate;

        $oldroomno = Sale1::select('sale1.waiter', 'stock.*', 'itemmast.Name as itemname', 'server_mast.name as waitername')
            ->leftJoin('stock', 'stock.docid', '=', 'sale1.docid')
            ->leftJoin('itemmast', 'itemmast.Code', '=', 'stock.item')
            ->leftJoin('server_mast', 'server_mast.scode', '=', 'sale1.waiter')
            ->where('stock.propertyid', $this->propertyid)
            ->where('stock.restcode', $dcode)
            ->when($query, function ($queryBuilder) use ($query) {
                return $queryBuilder->where('sale1.vdate', $query);
            })
            ->groupBy('stock.vno', 'stock.vdate')
            ->orderBy('stock.vdate', 'DESC')
            ->orderBy('stock.vno', 'DESC')
            ->get();

        // return $dcode;

        $company = SubGroup::where('propertyid', $this->propertyid)->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name')->groupBy('sub_code')->get();
        $envpos = EnviroPos::where('propertyid', $this->propertyid)->first();
        $curusername = $this->username;
        $adminuname = Companyreg::where('propertyid', $this->propertyid)->orderBy('id', 'ASC')->first();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)
            ->orderBy('cityname', 'ASC')->get();

        $printsetup = PrintingSetup::where('propertyid', $this->propertyid)->where('restcode', $departdata->dcode)->where('module', 'POS')->first();

        if (! isset($printsetup)) {
            return back()->with('error', 'Please Fill Printing Setup First');
        }

        // return $roomno;

        return view('property.salebillentry', [
            'outletname' => $outletname,
            'menudata' => $menugroup,
            'roomno' => $roomno,
            'oldroomno' => $oldroomno,
            'sundrycount' => $sundrycount,
            'depart' => $departdata,
            'nctype' => $nctype,
            'servermast' => $server_mast,
            'outletdata' => $outletdata,
            'label' => $label,
            'sundrytype1' => $sundrytype1,
            'sundrytype2' => $sundrytype2,
            'company' => $company,
            'roomnoone' => $roomnoone,
            'envpos' => $envpos,
            'curusername' => $curusername,
            'adminuname' => $adminuname,
            'citydata' => $citydata,
            'printsetup' => $printsetup,
            'visiblebell' => true,
        ]);
    }

    public function tablebooking(Request $request)
    {
        $dcode = $request->query('dcode');
        $roomno = $request->query('roomno');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        if (! $departdata) {
            return redirect()->back()->with('error', 'Outlet not found!');
        }

        // vtype = 'R' + short_name (e.g. RRES)
        $vtype = 'R' . $departdata->short_name;

        // Auto vno — max existing + 1 for this outlet/vtype
        $maxvno = Tablebooking::where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->max('vno') ?? 0;
        $nextvno = $maxvno + 1;

        // Tables for this outlet (type='TB' in room_mast) — numeric sort first, then alpha
        $tables = RoomMast::select('rcode', 'name')
            ->where('propertyid', $this->propertyid)
            ->where('rest_code', $dcode)
            ->where('type', 'TB')
            ->orderByRaw('CAST(rcode AS UNSIGNED) ASC, rcode ASC')
            ->get();

        $adminuname = Companyreg::where('propertyid', $this->propertyid)
            ->orderBy('id', 'ASC')
            ->first();

        $curusername = $this->username;

        return view('property.tablebooking', [
            'depart' => $departdata,
            'vtype' => $vtype,
            'nextvno' => $nextvno,
            'tables' => $tables,
            'curusername' => $curusername,
            'adminuname' => $adminuname,
            'visiblebell' => true,
            'roomno' => $roomno ?? '',
        ]);
    }

    public function gettablebookingvno(Request $request)
    {
        $dcode = $request->input('dcode');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $vtype = 'R' . ($departdata->short_name ?? '');
        $maxvno = Tablebooking::where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->max('vno') ?? 0;

        return response()->json(['vno' => $maxvno + 1, 'vtype' => $vtype]);
    }

    public function tablebookingsubmit(Request $request)
    {
        $request->validate([
            'guestname' => 'required|string|max:35',
            'mobileno' => 'required|string|max:10',
            'pax' => 'required|numeric|min:1',
            'bookindate' => 'required|date',
            'fromtime' => 'required',
            'totime' => 'required|different:fromtime',
            'tableno' => 'required|string|max:20',
            'dcode' => 'required|string',
        ]);

        $dcode = $request->input('dcode');
        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        if (! $departdata) {
            return response()->json(['success' => false, 'message' => 'Outlet not found!']);
        }

        $vtype = 'R' . $departdata->short_name;
        $tableno = $request->input('tableno');
        $bookindate = $request->input('bookindate');
        $fromtime = $request->input('fromtime');
        $totime = $request->input('totime');

        // ── Duplicate / Overlap check ─────────────────────────────────────
        // Same table, same date, overlapping time, not cancelled
        $overlap = Tablebooking::where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->where('tabaleno', $tableno)          // tabaleno = table number
            ->where('bookindate', $bookindate)
            ->where('cancelyn', 'N')
            ->where(function ($q) use ($fromtime, $totime) {
                // Overlap: existing.fromtime < new.totime AND existing.totime > new.fromtime
                $q->where('fromtime', '<', $totime)
                    ->where('totime', '>', $fromtime);
            })
            ->exists();

        if ($overlap) {
            return response()->json([
                'success' => false,
                'message' => 'Table ' . $tableno . ' is already booked for this date & time slot!',
            ]);
        }

        // Thread-safe vno
        $maxvno = Tablebooking::where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->max('vno') ?? 0;
        $vno = $maxvno + 1;

        $contradocid = '';
        // contradocid varchar(17) — empty for now

        Tablebooking::create([
            'propertyid' => $this->propertyid,
            'vno' => $vno,
            'vtype' => $vtype,
            'vprefix' => date('Y'),           // year e.g. 2026
            'tabaleno' => $tableno,            // table number stored here
            'vdate' => ncurdate(),
            'vtime' => date('H:i:s'),
            'guestname' => strtoupper(trim($request->input('guestname'))),
            'mobileno' => $request->input('mobileno'),
            'pax' => $request->input('pax'),
            'bookindate' => $bookindate,
            'fromtime' => $fromtime,
            'totime' => $totime,
            'remark' => trim($request->input('remark') ?? ''),
            'cancelyn' => 'N',
            'canceluser' => '',
            'contradocid' => $contradocid,
            'restcode' => $departdata->dcode,
            'u_name' => $this->username,
            'created_at' => now(),
            'u_ae' => 'A',
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Table Booking No. ' . $vno . ' saved successfully!',
            'vno' => $vno,
        ]);
    }

    public function gettablebookinglist(Request $request)
    {
        $dcode = $request->input('dcode');
        $fromdate = $request->input('fromdate', ncurdate());
        $todate = $request->input('todate', ncurdate());

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $vtype = 'R' . ($departdata->short_name ?? '');
        $advvtype = 'A' . ($departdata->short_name ?? '');

        $data = DB::table('tablebooking')
            ->leftJoin('paycharge', function ($join) use ($advvtype) {
                $join->on('paycharge.sno1', '=', 'tablebooking.id')
                    ->where('paycharge.vtype', $advvtype)
                    ->where('paycharge.propertyid', $this->propertyid);
            })
            ->select(
                'tablebooking.id',
                'tablebooking.vno',
                'tablebooking.bookindate',
                'tablebooking.guestname',
                'tablebooking.mobileno',
                'tablebooking.tabaleno',
                'tablebooking.pax',
                'tablebooking.fromtime',
                'tablebooking.totime',
                'tablebooking.remark',
                'tablebooking.cancelyn',
                DB::raw('COALESCE(SUM(paycharge.amtcr), 0) AS advance_amt')
            )
            ->where('tablebooking.propertyid', $this->propertyid)
            ->where('tablebooking.vtype', $vtype)
            ->whereBetween('tablebooking.bookindate', [$fromdate, $todate])
            ->groupBy(
                'tablebooking.id',
                'tablebooking.vno',
                'tablebooking.bookindate',
                'tablebooking.guestname',
                'tablebooking.mobileno',
                'tablebooking.tabaleno',
                'tablebooking.pax',
                'tablebooking.fromtime',
                'tablebooking.totime',
                'tablebooking.remark',
                'tablebooking.cancelyn'
            )
            ->orderBy('tablebooking.bookindate', 'ASC')
            ->orderBy('tablebooking.fromtime', 'ASC')
            ->get();

        return response()->json(['success' => true, 'data' => $data]);
    }

    public function tablebookingcancel(Request $request)
    {
        $sn = $request->input('sn');

        $booking = Tablebooking::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->first();

        if (! $booking) {
            return response()->json(['success' => false, 'message' => 'Booking not found!']);
        }

        if ($booking->cancelyn === 'Y') {
            return response()->json(['success' => false, 'message' => 'Booking already cancelled!']);
        }

        $booking->update([
            'cancelyn' => 'Y',
            'canceluser' => $this->username,
            'canceldate' => now(),
        ]);

        return response()->json(['success' => true, 'message' => 'Booking cancelled successfully!']);
    }

    // ── Fetch single booking row for Edit (AJAX) ──────────────────────
    public function gettablebookingrow(Request $request)
    {
        $sn = $request->input('sn');

        $booking = Tablebooking::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->first([
                'id',
                'vno',
                'guestname',
                'mobileno',
                'pax',
                'tabaleno',
                'bookindate',
                'fromtime',
                'totime',
                'remark',
                'vtype',
            ]);

        if (! $booking) {
            return response()->json(['success' => false, 'message' => 'Booking not found!']);
        }

        return response()->json(['success' => true, 'data' => $booking]);
    }

    // ── Update booking ────────────────────────────────────────────────
    public function tablebookingupdate(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer',
            'guestname' => 'required|string|max:35',
            'mobileno' => 'required|string|max:10',
            'pax' => 'required|numeric|min:1',
            'bookindate' => 'required|date',
            'fromtime' => 'required',
            'totime' => 'required',
            'tableno' => 'required|string',
            'dcode' => 'required|string',
        ]);

        $sn = $request->input('sn');
        $dcode = $request->input('dcode');

        $booking = Tablebooking::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->first();

        if (! $booking) {
            return response()->json(['success' => false, 'message' => 'Booking not found!']);
        }

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $vtype = 'R' . $departdata->short_name;
        $tableno = $request->input('tableno');
        $bookindate = $request->input('bookindate');
        $fromtime = $request->input('fromtime');
        $totime = $request->input('totime');

        // Overlap check — current record exclude karo
        $overlap = Tablebooking::where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->where('tabaleno', $tableno)
            ->where('bookindate', $bookindate)
            ->where('cancelyn', 'N')
            ->where('id', '!=', $sn)
            ->where(function ($q) use ($fromtime, $totime) {
                $q->where('fromtime', '<', $totime)
                    ->where('totime', '>', $fromtime);
            })
            ->exists();

        if ($overlap) {
            return response()->json([
                'success' => false,
                'message' => 'Table ' . $tableno . ' is already booked for this date & time slot!',
            ]);
        }

        $booking->update([
            'guestname' => strtoupper(trim($request->input('guestname'))),
            'mobileno' => $request->input('mobileno'),
            'pax' => $request->input('pax'),
            'tabaleno' => $tableno,
            'bookindate' => $bookindate,
            'fromtime' => $fromtime,
            'totime' => $totime,
            'remark' => trim($request->input('remark') ?? ''),
            'restcode' => $dcode,
            'u_name' => $this->username,
            'u_ae' => 'E',
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Booking No. ' . $booking->vno . ' updated successfully!',
        ]);
    }

    // ── Table Booking Receipt PDF ─────────────────────────────────────
    public function tablebookingReceiptPdf(Request $request)
    {
        $amount = (float) $request->query('amount', 0);
        $receiptType = $amount < 0 ? 'Refund' : 'Received';
        $advanceType = $amount < 0 ? 'As Refund' : 'As Advance';
        $absoluteAmt = abs($amount);
        $companyLogo = $request->query('logo', '');
        $logoPath = '';

        if ($companyLogo !== '') {
            $possiblePath = public_path('storage/admin/property_logo/' . basename($companyLogo));
            if (file_exists($possiblePath)) {
                $logoPath = 'file:///' . str_replace('\\', '/', $possiblePath);
            }
        }

        $receipt = [
            'receiptNo' => $request->query('rectno', ''),
            'companyName' => $request->query('compname', ''),
            'address' => $request->query('address', ''),
            'email' => $request->query('email', ''),
            'phone' => $request->query('phone', ''),
            'tableNo' => $request->query('tableno', ''),
            'guestName' => $request->query('name', ''),
            'date' => $request->query('date', date('d-m-Y')),
            'amount' => number_format($absoluteAmt, 2),
            'amountWords' => $this->amountInIndianWords((int) round($absoluteAmt)),
            'nature' => $request->query('nature', ''),
            'userName' => $request->query('user', Auth::user()->u_name ?? ''),
            'logoPath' => $logoPath,
            'receiptType' => $receiptType,
            'advanceType' => $advanceType,
        ];

        $pdf = Pdf::loadView('property.tablebookingreceipt', compact('receipt'))
            ->setPaper('a4', 'portrait')
            ->setOption('isHtml5ParserEnabled', true)
            ->setOption('isRemoteEnabled', true)
            ->setOption('defaultFont', 'DejaVu Sans')
            ->setOption('dpi', 96);

        return $pdf->stream('tablebooking-receipt-' . ($receipt['receiptNo'] ?: date('YmdHis')) . '.pdf');
    }

    // ── Table Booking Advance page ────────────────────────────────────
    public function tablebookingadvance(Request $request)
    {
        $sn = $request->query('sn');
        $dcode = $request->query('dcode');

        $booking = Tablebooking::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->first();

        if (! $booking) {
            return redirect()->back()->with('error', 'Booking not found!');
        }

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $vtype = 'A' . $departdata->short_name;

        $maxvno = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('vtype', $vtype)
            ->max('vno') ?? 0;
        $nextvno = $maxvno + 1;

        $paytypes = DB::table('revmast')
            ->select('name', 'rev_code', 'nature', 'field_type', 'pay_type')
            ->where('field_type', 'P')
            ->whereIn('nature', ['Cash', 'Cheque', 'UPI', 'Credit Card'])
            ->where('propertyid', $this->propertyid)
            ->get();

        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->groupBy('name')
            ->get(['str_code', 'name']);

        $adminuname = Companyreg::where('propertyid', $this->propertyid)
            ->orderBy('id', 'ASC')
            ->first();

        return view('property.tablebookingadvance', [
            'booking' => $booking,
            'depart' => $departdata,
            'vtype' => $vtype,
            'nextvno' => $nextvno,
            'paytypes' => $paytypes,
            'taxstrudata' => $taxstrudata,
            'adminuname' => $adminuname,
            'visiblebell' => true,
        ]);
    }

    // ── Table Booking Advance Submit ──────────────────────────────────
    public function tablebookingadvancesubmit(Request $request)
    {
        $request->validate([
            'sn' => 'required',
            'dcode' => 'required',
            'advtype' => 'required',
            'paytype' => 'required',
            'amount' => 'required|numeric|min:1',
            'narration' => 'required|string|max:100',
        ]);

        $sn = $request->input('sn');
        $dcode = $request->input('dcode');

        $booking = Tablebooking::where('propertyid', $this->propertyid)
            ->where('id', $sn)
            ->first();

        if (! $booking) {
            return response()->json(['success' => false, 'message' => 'Booking not found!']);
        }

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        $vtype = 'A' . $departdata->short_name;
        $amount = $request->input('amount');
        $advtype = $request->input('advtype');
        $amtdr = ($advtype === 'Refund') ? $amount : 0.00;
        $amtcr = ($advtype === 'Refund') ? 0.00 : $amount;
        $taxStru = $request->input('tax_stru') ?? '';

        // VoucherPrefix se vno + vprefix
        $voucherPrefix = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', ncurdate())
            ->whereDate('date_to', '>=', ncurdate())
            ->first();

        if ($voucherPrefix) {
            $vno = $voucherPrefix->start_srl_no + 1;
            $vprefix = $voucherPrefix->prefix;
        } else {
            $vno = (DB::table('paycharge')->where('propertyid', $this->propertyid)->where('vtype', $vtype)->max('vno') ?? 0) + 1;
            $vprefix = $departdata->short_name;
        }

        $docid = $this->propertyid . $vtype . ' ' . $vprefix . ' ' . $vno;

        $paytype = Revmast::where('propertyid', $this->propertyid)
            ->where('rev_code', $request->input('paytype'))
            ->first();

        if (! $paytype) {
            return response()->json(['success' => false, 'message' => 'Payment type not found!']);
        }

        $adminuname = Companyreg::where('propertyid', $this->propertyid)
            ->orderBy('id', 'ASC')
            ->first();

        DB::beginTransaction();
        try {
            DB::table('paycharge')->insert([
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $vno,
                'vtype' => $vtype,
                'sno' => 1,
                'sno1' => $booking->sn,
                'vdate' => ncurdate(),
                'vtime' => date('H:i:s'),
                'vprefix' => $vprefix,
                'paycode' => $request->input('paytype'),
                'paytype' => $paytype->pay_type ?? '',
                'comments' => $request->input('narration'),
                'guestprof' => '',
                'comp_code' => '',
                'travel_agent' => '',
                'roomno' => $booking->vprefix,
                'amtdr' => $amtdr,
                'amtcr' => $amtcr,
                'restcode' => $dcode,
                'billamount' => $amount,
                'taxper' => 0,
                'onamt' => $amount,
                'refdocid' => $booking->contradocid,
                'foliono' => 0,
                'split' => 0,
                'taxstru' => $taxStru,
                'taxcondamt' => 0,
                'created_at' => now(),
                'u_name' => $this->username,
                'u_ae' => 'a',
            ]);

            // Tax entries
            if (! empty($taxStru)) {
                $taxStructures = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $taxStru)
                    ->get();

                $taxSno = 2;
                foreach ($taxStructures as $tax) {
                    if (empty($tax->rate)) {
                        continue;
                    }
                    $taxAmount = $amount * $tax->rate / 100;
                    $taxName = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $tax->tax_code)->value('name');
                    DB::table('paycharge')->insert([
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $vno,
                        'vtype' => $vtype,
                        'sno' => $taxSno,
                        'sno1' => $booking->sn,
                        'vdate' => ncurdate(),
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'paycode' => $tax->tax_code,
                        'paytype' => '',
                        'comments' => ($taxName ?? '') . ', Table: ' . $booking->vprefix,
                        'guestprof' => '',
                        'roomno' => $booking->vprefix,
                        'amtdr' => ($advtype === 'Refund') ? $taxAmount : 0.00,
                        'amtcr' => ($advtype === 'Refund') ? 0.00 : $taxAmount,
                        'restcode' => $dcode,
                        'billamount' => 0.00,
                        'taxper' => $tax->rate,
                        'onamt' => $amount,
                        'refdocid' => $booking->contradocid,
                        'foliono' => 0,
                        'split' => 0,
                        'taxstru' => $taxStru,
                        'taxcondamt' => 0.00,
                        'created_at' => now(),
                        'u_name' => $this->username,
                        'u_ae' => 'a',
                    ]);
                    $taxSno++;
                }
            }

            if ($voucherPrefix) {
                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            DB::commit();
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }

        return response()->json([
            'success' => true,
            'message' => 'Advance of Rs. ' . number_format($amount, 2) . ' saved! Receipt No. ' . $vno,
            'vno' => $vno,
            'vprefix' => $vprefix,
            'amount' => $amount,
            'guestname' => $booking->guestname,
            'tableno' => $booking->vprefix,
            'bookingvno' => $booking->vno,
            'vdate' => ncurdate(),
            'paymode' => $paytype->nature ?? '',
            'compname' => $adminuname->comp_name ?? '',
            'address' => $adminuname->address1 ?? '',
            'email' => $adminuname->email ?? '',
            'phone' => $adminuname->mobile ?? '',
            'logo' => $adminuname->logo ?? '',
            'uname' => $this->username,
        ]);
    }

    public function paymentreceived(Request $request)
    {
        echo "<h1 style='text-align:center;color:red;'>" . $request->query('dcode') . '</h1>';
    }

    public function splitbill(Request $request)
    {
        $permission = revokeopen(151421);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        echo "<h1 style='text-align:center;color:red;'>" . $request->query('dcode') . '</h1>';
    }

    public function orderbooking(Request $request)
    {
        echo "<h1 style='text-align:center;color:red;'>" . $request->query('dcode') . '</h1>';
    }

    public function orderbookingadvance(Request $request)
    {
        echo "<h1 style='text-align:center;color:red;'>" . $request->query('dcode') . '</h1>';
    }

    public function posdiplayhandle(Request $request)
    {
        //  $permission = revokeopen(172014);
        // if (is_null($permission) || $permission->ins == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $posdispcatdata = [
            'occupied' => $request->input('occupied'),
            'vacant' => $request->input('vacant'),
            'billed' => $request->input('billed'),
            'booked' => $request->input('booked'),
        ];

        $updata = [
            'occupied' => $request->input('occupied'),
            'vacant' => $request->input('vacant'),
            'billed' => $request->input('billed'),
            'booked' => $request->input('booked'),
        ];
        $dcode = $request->input('dcode');

        Depart::where('propertyid', $this->propertyid)->where('dcode', $dcode)->update($updata);

        DB::table('posdispcat')->where('propertyid', $this->propertyid)->update($posdispcatdata);

        return 'success';
    }

    public function fetchitemnames(Request $request)
    {
        $grpid = $request->input('grpid');

        $nameinput = $request->input('name');
        $barcodeinput = $request->input('barcodeinput');
        $dcode = $request->input('dcode');

        $departdata = DB::table('depart')
            ->where('propertyid', $this->propertyid)
            ->where('dcode', $dcode)
            ->first();

        if ($departdata) {
            $associatedrestcode = Depart1::where('propertyid', $this->propertyid)
                ->where('departcode', $departdata->dcode)
                ->pluck('associatedrestcode')
                ->toArray();

            $restcodes = array_merge([$departdata->dcode], $associatedrestcode);
        }

        // $ncurdate = ncurdate();
        // $query = ItemMast::select('itemmast.*', 'itemrate.Rate as rateofitem')
        //     ->leftJoin('itemrate', function ($join) use ($restcodes) {
        //         $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
        //         ->on('itemrate.RestCode', '=', 'itemmast.RestCode')
        //             ->where('itemrate.Property_ID', '=', $this->propertyid)
        //             ->where('itemrate.AppDate', '<=', $ncurdate)
        //             ->whereIn('itemrate.restcode', $restcodes);
        //     })
        //     ->where('itemmast.Property_ID', $this->propertyid)
        //     ->where('itemmast.ActiveYN', 'Y')
        //     ->whereIn('itemmast.RestCode', $restcodes)
        //     ->orderBy('itemmast.Name', 'ASC');

        $ncurdate = ncurdate();

        $latestRateSub = DB::table('itemrate')
            ->selectRaw('ItemCode, RestCode, MAX(AppDate) as max_app_date')
            ->where('Property_ID', $this->propertyid)
            ->where('AppDate', '<=', $ncurdate)
            ->whereIn('RestCode', $restcodes)
            ->groupBy('ItemCode', 'RestCode');
        $query = ItemMast::select(
            'itemmast.*',
            'itemrate.Rate as rateofitem',
            'latest_rates.max_app_date',
            DB::raw('COALESCE(taxstru.tax_code, "") AS tax_code'),
            DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate')
        )
            ->leftJoinSub($latestRateSub, 'latest_rates', function ($join) {
                $join->on('latest_rates.ItemCode', '=', 'itemmast.Code')
                    ->on('latest_rates.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'latest_rates.ItemCode')
                    ->on('itemrate.RestCode', '=', 'latest_rates.RestCode')
                    ->on('itemrate.AppDate', '=', 'latest_rates.max_app_date');
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin(
                DB::raw('(SELECT str_code, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'),
                'taxstru.str_code',
                '=',
                'itemcatmast.TaxStru'
            )
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.ActiveYN', 'Y')
            ->whereIn('itemmast.RestCode', $restcodes)
            ->orderByDesc('latest_rates.max_app_date')
            ->orderBy('itemmast.Name', 'ASC');

        if ($grpid != 'favourite' && ! empty($grpid)) {
            $query->where('itemmast.ItemGroup', $grpid);
        } elseif ($grpid == 'favourite') {
            $query->where('itemmast.favourite', '1');
        } elseif (! empty($nameinput)) {
            $query->where('itemmast.Name', 'like', "%$nameinput%");
        } elseif (! empty($barcodeinput)) {
            $query->where('itemmast.DispCode', $barcodeinput);
        }

        $data = $query->get();

        return response()->json($data);
    }

    public function fetchmenunames(Request $request)
    {
        $dcode = $request->input('dcode');
        $data = DB::table('itemgrp')->where('property_id', $this->propertyid)->where('restcode', $dcode)->orderBy('name', 'ASC')->get();

        return json_encode($data);
    }

    public function departnamefetch(Request $request)
    {
        $dcode = $request->input('dcode');
        $data = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $dcode)->first();

        return json_encode($data);
    }

    public function guestdtfetch(Request $request)
    {
        $roomno = $request->input('roomno');
        $addeddocid = $request->input('addeddocid') ?? '';
        $sale1docid = request()->sale1docid;
        // $rdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('roomno', $roomno)->whereNull('type')->first();
        $rdata = RoomOcc::select(
            'roomocc.roomno',
            'roomocc.docid',
            'roomocc.name',
            'guestfolio.city AS guestcitycode',
            'guestcities.cityname AS guestcityname',
            'guestfolio.add1',
            DB::raw("COALESCE(guestfolio.add2, '') AS add2"),
            'guestprof.mobile_no AS guestmobile',
            'roomocc.adult',
            'guestfolio.company',
            'sgrp.name as companyname',
            'sgrp.gstin',
            'sgrp.citycode AS compcitycode',
            'sgrpcities.cityname AS compcityname',
            'sgrpcities.state AS compstatecode',
            'states.name AS compstatename',
            'roomocc.plancode'
        )
            ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('subgroup AS sgrp', 'sgrp.sub_code', '=', 'guestfolio.company')
            ->leftJoin('cities AS sgrpcities', 'sgrpcities.city_code', '=', 'sgrp.citycode')
            ->leftJoin('cities AS guestcities', 'guestcities.city_code', '=', 'guestfolio.city')
            ->leftJoin('states', 'states.state_code', '=', 'sgrpcities.state')
            ->where('roomocc.roomno', $roomno)
            ->where('roomocc.docid', $addeddocid)
            ->where('roomocc.propertyid', $this->propertyid)
            // ->whereNull('roomocc.type')
            ->first();

        $pax = 1;
        if ($rdata) {
            $planname = 'EP';
            $pax = $rdata->adult;
            if (! empty($rdata->plancode)) {
                $planname = DB::table('plan_mast')->where('propertyid', $this->propertyid)->where('pcode', $rdata->plancode)->value('name');
            }
            $concat = 'Name: ' . $rdata->name . ', Plan: ' . $planname;
        } else {
            $concat = '';
        }

        $sale1 = Sale1::where('propertyid', $this->propertyid)
            ->where('docid', $sale1docid)
            ->where('delflag', 'N')
            ->first();

        if ($sale1->roomtype == 'TB') {
            $paychargeroom = Paycharge::where('propertyid', $this->propertyid)
                ->where('docid', $sale1docid)
                ->where('paycode', "TOUT$this->propertyid")
                ->first();

            $roomstring = ! empty($paychargeroom?->roomno) ? "<strong>Room No. :</strong> {$paychargeroom->roomno}" : '';
        }

        $data = [
            'concat' => $concat,
            'pax' => $pax,
            'guestdetails' => $rdata,
            'roomstring' => $roomstring ?? '',
        ];

        return response()->json($data);
    }

    public function guestdtfetchkot(Request $request)
    {
        $roomno = $request->input('roomno');
        $rdata = RoomOcc::select(
            'roomocc.roomno',
            'roomocc.docid',
            'roomocc.name',
            'guestfolio.city AS guestcitycode',
            'guestcities.cityname AS guestcityname',
            'guestfolio.add1',
            DB::raw("COALESCE(guestfolio.add2, '') AS add2"),
            'guestprof.mobile_no AS guestmobile',
            'guestprof.complimentry',
            'roomocc.adult',
            'guestfolio.company',
            'sgrp.name as companyname',
            'sgrp.gstin',
            'sgrp.citycode AS compcitycode',
            'sgrpcities.cityname AS compcityname',
            'sgrpcities.state AS compstatecode',
            'states.name AS compstatename',
            'roomocc.plancode',
            'guestfolio.remarks',
            'guestfolio.pickupdrop'
        )
            ->leftJoin('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('guestprof', 'guestprof.docid', '=', 'roomocc.docid')
            ->leftJoin('subgroup AS sgrp', 'sgrp.sub_code', '=', 'guestfolio.company')
            ->leftJoin('cities AS sgrpcities', 'sgrpcities.city_code', '=', 'sgrp.citycode')
            ->leftJoin('cities AS guestcities', 'guestcities.city_code', '=', 'guestfolio.city')
            ->leftJoin('states', 'states.state_code', '=', 'sgrpcities.state')
            ->where('roomocc.roomno', $roomno)
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereNull('roomocc.type')
            ->first();

        $pax = 1;
        if ($rdata) {
            $planname = 'EP';
            $pax = $rdata->adult;
            if (! empty($rdata->plancode)) {
                $planname = DB::table('plan_mast')->where('propertyid', $this->propertyid)->where('pcode', $rdata->plancode)->value('name');
            }
            $concat = 'Name: ' . $rdata->name . ', Plan: ' . $planname . ($rdata->remarks != '' ? ', Remarks: ' . $rdata->remarks : '') . ($rdata->complimentry == 'Y' ? ' - Complimentry' : '');
        } else {
            $concat = '';
        }

        $data = [
            'concat' => $concat,
            'pax' => $pax,
            'guestdetails' => $rdata,
        ];

        return response()->json($data);
    }

    public function fetchitemdetails(Request $request)
    {
        $itemcode = $request->input('itemcode');
        $itemrestcode = $request->input('itemrestcode');
        $itemdetails = DB::table('itemmast')
            ->select(
                'itemmast.*',
                'itemrate.Rate',
                'unitmast.name as unitname',
                DB::raw('COALESCE(taxstru.tax_code, "") AS tax_code'),
                DB::raw('COALESCE(taxstru.tax_name, "") AS tax_name'),
                DB::raw('COALESCE(taxstru.tax_rate, 0) AS tax_rate'),
                'itemcatmast.TaxStru'
            )
            ->join('itemrate', 'itemrate.ItemCode', '=', 'itemmast.Code')
            ->join('unitmast', 'unitmast.ucode', '=', 'itemmast.Unit')
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin(DB::raw('(SELECT str_code, GROUP_CONCAT(name) AS tax_name, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'), 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->where('itemmast.Property_ID', $this->propertyid)
            ->where('itemmast.Code', $itemcode)
            ->where('itemmast.RestCode', $itemrestcode)
            ->first();

        // ->leftJoin('itemmast', function ($join) {
        //         $join->on('kot.item', '=', 'itemmast.Code')
        //             ->on('kot.restcode', '=', 'itemmast.RestCode');
        //     })
        //     ->leftJoin('itemcatmast', function ($join) {
        //         $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
        //             ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
        //     })
        //     ->leftJoin(DB::raw('(SELECT str_code, GROUP_CONCAT(name) AS tax_name, GROUP_CONCAT(tax_code) AS tax_code, SUM(rate) AS tax_rate FROM taxstru GROUP BY str_code) AS taxstru'), function ($join) {
        //         $join->on('taxstru.str_code', '=', 'itemcatmast.TaxStru');
        //     })
        //     ->leftJoin('itemgrp',  function ($join) {
        //         $join->on('itemgrp.property_id', '=', 'itemmast.Property_ID')
        //             ->on('itemgrp.restcode', '=', 'itemmast.RestCode')
        //             ->on('itemgrp.Code', '=', 'itemmast.ItemGroup');
        //     })

        $ncurdate = ncurdate();

        $chkhappyhour = Happyhour::select('schememast.*', 'itemmast.name as freeitemname')
            ->leftJoin('itemmast', function ($join) {
                $join->on('itemmast.Property_ID', '=', 'schememast.propertyid')
                    ->on('itemmast.RestCode', '=', 'schememast.restcode')
                    ->on('itemmast.Code', '=', 'schememast.freeitem');
            })
            ->where('schememast.propertyid', $this->propertyid)
            ->where('schememast.itemcode', $itemcode)
            ->where('schememast.restcode', $itemrestcode)
            ->where('schememast.activeyn', 'Y')
            ->whereDate('schememast.startdate', '<=', $ncurdate)
            ->whereDate('schememast.enddate', '>=', $ncurdate)
            ->whereTime('schememast.fromtime', '<=', date('H:i:s'))
            ->whereTime('schememast.totime', '>=', date('H:i:s'))
            ->first();

        return response()->json([
            'itemdetails' => $itemdetails,
            'happyhour' => $chkhappyhour,
        ]);
    }

    public function fetchitempreviousnc(Request $request)
    {
        $docid = $request->docid;
        $chkmerged = KotModal::where('docid', $docid)->where('propertyid', $this->propertyid)->value('mergedwith');
        $short_name = Depart::where('propertyid', $this->propertyid)->where('dcode', $request->dcode)->value('short_name');

        $datatmp = DB::table('itemmast')
            // ->leftJoin('kot', 'kot.item', '=', 'itemmast.Code')
            ->join('kot', function ($join) {
                $join->on('itemmast.Code', '=', 'kot.item')
                    ->on('itemmast.RestCode', '=', 'kot.restcode');
            })
            ->select(
                'itemmast.Name',
                'kot.description',
                'kot.qty',
                'kot.rate',
                'kot.voidyn',
                'kot.item',
                'kot.vno',
                'kot.sno',
                'kot.roomno',
                'kot.waiter',
                'kot.remarks',
                'kot.pax',
                'kot.docid',
                'kot.vtype',
                'kot.nctype',
                'kot.restcode',
            )
            ->where('kot.propertyid', $this->propertyid)
            // ->where('vtype', 'N' . $short_name)
            ->orderBy('kot.sno');

        if (! empty($chkmerged)) {
            $mergedocid = $chkmerged;
            $data = $datatmp->whereIn('kot.docid', explode(',', $mergedocid))->get();
        } else {
            $data = $datatmp->where('kot.docid', $docid)->get();
        }

        return json_encode($data);
    }

    public function fetchtaxstruitem(Request $request)
    {
        $taxcode = $request->input('taxcode');
        $data = DB::table('taxstru')->where('propertyid', $this->propertyid)->where('str_code', $taxcode)->orderBy('sno', 'ASC')->get();

        return json_encode($data);
    }

    public function openroomstatus(Request $request)
    {
        $permission = revokeopen(141114);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $roomcategorydata = DB::table('room_cat')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $housekeepingdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'HOUSE KEEPING')->orderBy('name', 'ASC')->get();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $buildingmast = BuildingMaster::where('propertyid', $this->propertyid)->where('activeyn', 1)->get();

        // Log::info('roomstatus');
        return view('property.roomstatus', [
            'roomcategorydata' => $roomcategorydata,
            'housekeepingdata' => $housekeepingdata,
            'ncurdate' => $ncurdate,
            'buildingmast' => $buildingmast,
        ]);
    }

    public function openlookuproom(Request $request)
    {
        $permission = revokeopen(131113);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $roomcategorydata = DB::table('room_cat')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $housekeepingdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'HOUSE KEEPING')->orderBy('name', 'ASC')->get();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

        return view('property.lookuprooms', ['roomcategorydata' => $roomcategorydata, 'housekeepingdata' => $housekeepingdata, 'ncurdate' => $ncurdate]);
    }

    public function housekeepget(Request $request)
    {
        $housekeepingdata = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'HOUSE KEEPING')->orderBy('name', 'ASC')->get();

        return json_encode($housekeepingdata);
    }

    public function roomcategoryget(Request $request)
    {
        $roomcategorydata = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();

        return json_encode($roomcategorydata);
    }

    public function allroomcountget()
    {
        try {
            $roomCounts = RoomMast::select('room_cat', DB::raw('COUNT(rcode) as rcode_count'))
                ->groupBy('room_cat')
                ->pluck('rcode_count', 'room_cat');

            return response()->json($roomCounts, 200);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function roomget(Request $request)
    {
        $room_cat = $request->input('categoryCode');
        $selectedBuildings = $request->input('buildings');

        $query = DB::table('room_mast')
            ->select(
                'room_mast.rcode',
                'room_mast.room_cat',
                'room_mast.room_stat',
                'room_mast.building',
                'buildingmaster.name',
                'hkroomassigns.cleaningstatus',
                'hkroomassigns.esttime',
                'hkroomassigns.vtime'
            )
            ->leftJoin('hkroomassigns', function ($join) {
                $join->on('hkroomassigns.roomno', '=', 'room_mast.rcode')
                    ->where('hkroomassigns.vdate', ncurdate())
                    ->where('hkroomassigns.cleaningstatus', 'In Progress')
                    ->where('hkroomassigns.propertyid', $this->propertyid);
            })
            ->leftJoin('buildingmaster', 'buildingmaster.code', '=', 'room_mast.building')
            ->where('room_mast.type', 'RO')
            ->where('room_mast.propertyid', $this->propertyid)
            ->where('room_mast.room_cat', $room_cat);

        if (fomparameter()->blockwisedisp == 1 && is_array($selectedBuildings)) {
            $query->where(function ($q) use ($selectedBuildings) {
                $q->whereIn('room_mast.building', $selectedBuildings);
                $q->orWhereNull('room_mast.building')
                    ->orWhere('room_mast.building', '');
            });
        }

        $roomdata = $query->orderBy('room_mast.rcode', 'ASC')->get();

        return json_encode($roomdata);
    }

    public function roomcountget(Request $request)
    {
        $roomcount = DB::table('room_cat')->where('cat_code', $request->input('categoryCode'))->where('propertyid', $this->propertyid)->value('norooms');
        $checkbookedrooms = DB::table('grpbookingdetails')
            ->where('RoomCat', $request->input('categoryCode'))
            ->where('ArrDate', '=', $request->input('checkindate'))
            ->where('Property_ID', $this->propertyid)
            ->where('Cancel', 'N')
            ->count();
        $totalbookedroom = DB::table('grpbookingdetails')->where('RoomCat', $request->input('categoryCode'))->where('Property_ID', $this->propertyid)->where('Cancel', 'N')->count();
        $checkindate = DB::table('grpbookingdetails')
            ->where('RoomCat', $request->input('categoryCode'))
            ->where('Property_ID', $this->propertyid)->value('ArrDate');
        $totalroomcount = $roomcount - $checkbookedrooms;

        return json_encode($totalroomcount);
    }

    public function backendroomcategory(Request $request)
    {
        $roomdata = DB::table('room_cat')->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->get();

        return response()->json($roomdata);
    }

    public function backend_reservations(Request $request)
    {
        $start = $request->input('start');
        echo $start;
        // $end = $request->input('end');
        // $reservationdata = DB::table('reservations')
        //     ->whereNot('end', '<=', $start)
        //     ->orWhereNot('start', '>=', $end)
        //     ->get();
        // return response()->json($reservationdata);
    }

    public function backendreservationcreate(Request $request)
    {
        $roomData = $request->all();
        // var_dump($roomData);
        $roomnum = $roomData['resource'];
        $start = $roomData['start'];
        $end = $roomData['end'];
        $title = $roomData['text'];
        $roomdata = [
            'name' => $title,
            'start' => $start,
            'end' => $end,
            'room_id' => $roomnum,
            'status' => 'new',
        ];
        DB::table('reservations')->insert($roomdata);

        return response()->json($roomdata);
    }

    public function openchargeposting()
    {
        $permission = revokeopen(191111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

        return view('property.chargesposting', ['ncurdate' => $ncurdate]);
    }

    public function chargesposting(Request $request, RoomInclusivePosting $roominclusiveposting)
    {
        $permission = revokeopen(191111);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $checkdatec = VoucherPrefix::where('propertyid', $this->propertyid)
            ->whereDate('date_from', '<=', $request->input('charge_date'))
            ->whereDate('date_to', '>=', $request->input('charge_date'))
            ->first();

        if ($checkdatec === null || $checkdatec === '0') {
            return back()->with('error', 'You are not eligible to post charges for this date: ' . date('d-m-Y', strtotime($request->input('charge_date'))));
        }

        $resultric = $roominclusiveposting->roominclusiveposting($request->input('charge_date'), $request->input('charge_date'), null);

        // return 'sagar';

        Paycharge::where('vdate', $request->input('charge_date'))->whereIn('vtype', ['PPOS', 'IPOS'])->where('propertyid', $this->propertyid)->delete();
        $roomchrgdueac = EnviroFom::where('propertyid', $this->propertyid)->first();
        if ($roomchrgdueac->roomchrgdueac == '') {
            return back()->with('error', 'First Fill Enviro Setting Related to Daily Posting');
        }
        $ppostpost = Suntran::select([
            DB::raw('SUM(suntran.amount) AS RevAmt'),
            'suntran.revcode',
            'suntran.restcode',
            'suntran.vdate',
            DB::raw('MAX(depart.name) AS Outlet'),
            DB::raw('MAX(depart.short_name) AS DShortName'),
            DB::raw('MAX(revmast.name) AS Revenue'),
            DB::raw('MAX(suntran.suncode) AS SundryCode'),
        ])
            ->leftJoin('revmast', 'suntran.revcode', '=', 'revmast.rev_code')
            ->leftJoin('depart', 'suntran.restcode', '=', 'depart.dcode')
            ->where('suntran.propertyid', $this->propertyid)
            ->where('suntran.vdate', $request->input('charge_date'))
            ->whereNotNull('suntran.revcode')
            ->where('suntran.revcode', '!=', '')
            ->where('suntran.suncode', '!=', $this->propertyid . '101')
            ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
            ->where('suntran.delflag', '!=', 'Y')
            ->groupBy('suntran.restcode', 'suntran.revcode', 'suntran.vdate')
            ->orderBy('suntran.restcode')
            ->get();

        foreach ($ppostpost as $row) {
            $vtypeac = 'PPOS';

            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtypeac)
                ->whereDate('date_from', '<=', $request->input('charge_date'))
                ->whereDate('date_to', '>=', $request->input('charge_date'))
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefix = $chkvpf->prefix;

            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtypeac)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');

            $docid = $this->propertyid . $vtypeac . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

            $indata = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'vno' => $start_srl_no,
                'vdate' => $request->input('charge_date'),
                'sno' => '1',
                'sno1' => '1',
                'vtype' => $vtypeac,
                'vtime' => date('H:i:s'),
                'vprefix' => $vprefix,
                'comments' => $row->revenue . 'Bill No: ' . $start_srl_no,
                'paycode' => $row->revcode,
                'amtcr' => '0.00',
                'amtdr' => $row->RevAmt,
                'restcode' => $row->restcode,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->name,
                'u_ae' => 'a',
            ];
            Paycharge::insert($indata);
        }

        $ipospost = Stock::selectRaw('
                SUM(stock.amount) - SUM(stock.discamt) AS ItemAmt,
                GROUP_CONCAT(DISTINCT stock.vno ORDER BY stock.vno ASC) AS vno_group,
                itemcatmast.RevCode,
                stock.restcode,
                stock.vdate,
                itemcatmast.AcCode,
                MAX(depart.short_name) AS DShortName
            ')
            ->leftJoin('itemmast', function ($join) {
                $join->on('stock.item', '=', 'itemmast.Code')
                    ->where('itemmast.Property_ID', $this->propertyid)
                    ->on('stock.itemrestcode', '=', 'itemmast.RestCode');
            })
            ->leftJoin('itemcatmast', function ($query) {
                $query->on('itemmast.ItemCatCode', '=', 'itemcatmast.Code')
                    ->where('itemcatmast.propertyid', $this->propertyid)
                    ->on('itemcatmast.RestCode', '=', 'itemmast.RestCode');
            })
            ->leftJoin('depart', function ($query) {
                $query->on('stock.restcode', '=', 'depart.dcode')
                    ->where('depart.propertyid', $this->propertyid);
            })
            ->where('stock.vdate', $request->input('charge_date'))
            ->where('stock.propertyid', $this->propertyid)
            ->where('stock.delflag', '<>', 'Y')
            ->whereRaw("stock.vtype = CONCAT('B', COALESCE(depart.short_name, ''))")
            ->whereIn('depart.rest_type', ['Outlet', 'Room Service'])
            ->groupBy('stock.restcode', 'stock.vdate', 'itemcatmast.RevCode', 'itemcatmast.AcCode')
            ->get();

        // echo '<pre>';
        // print_r($ipospost);
        // echo '</pre>';
        // exit;

        if ($ipospost->isNotEmpty()) {
            foreach ($ipospost as $row) {
                $vnos = explode(',', $row->vno_group);
                $billNoRange = DateHelper::generateBillNoRange($vnos);

                $comment = $row->DShortName . ' Bill No: ' . $billNoRange;
                $vtypeipos = 'IPOS';

                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtypeipos)
                    ->whereDate('date_from', '<=', $request->input('charge_date'))
                    ->whereDate('date_to', '>=', $request->input('charge_date'))
                    ->first();

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtypeipos)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');

                $docid = $this->propertyid . $vtypeipos . '‎ ‎ ' . $vprefix . '‎  ‎ ‎ ' . $start_srl_no;

                $iposin = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'vno' => $start_srl_no,
                    'vdate' => $request->input('charge_date'),
                    'sno' => '1',
                    'sno1' => '1',
                    'vtype' => $vtypeipos,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $vprefix,
                    'comments' => $comment,
                    'paycode' => $row->RevCode,
                    'amtcr' => '0.00',
                    'amtdr' => $row->ItemAmt,
                    'restcode' => $row->restcode,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->name,
                    'u_ae' => 'a',
                ];
                Paycharge::insert($iposin);
            }
        }

        // exit;

        $tablename = 'paycharge';
        $ncurdate = $request->input('charge_date');
        $envirofom = EnviroFom::where('propertyid', $this->propertyid)->first();

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->whereDate('date_from', '<=', $request->input('charge_date'))
            ->whereDate('date_to', '>=', $request->input('charge_date'))
            ->first();

        $start_srl_no = $chkvpf->start_srl_no;
        $vprefix = $chkvpf->prefix;

        $nullroomocc = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->whereNull('type')
            ->pluck('docid');

        $searchpay = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->whereIn('folionodocid', $nullroomocc)
            ->whereNot('billno', '0')
            ->whereNull('settledate')
            ->groupBy('folionodocid')
            ->get(['roomno']);

        // if ($searchpay->isNotEmpty()) {
        //     $totalroom = $searchpay->pluck('roomno')->implode(', ');
        //     return back()->with('error', 'There are some unsettled guest bill, First Settle them Rooms: ' . $totalroom);

        // }

        if ($envirofom->plancalc == 'Y') {
            $vtype = 'REV';
            $results = PlanDetail::select(
                'plandetails.*',
                'roomocc.name',
                'roomocc.roomtype',
                'roomocc.roomcat',
                'guestfolio.company as Comp_Code',
                'guestfolio.guestprof',
                'guestfolio.travelagent',
                'revmast.name as chargename',
                'revmast.pay_type'
            )->leftJoin('paycharge', function ($join) use ($ncurdate, $vtype) {
                $join->on('paycharge.plancode', '=', 'plandetails.pcode')
                    ->on('paycharge.paycode', '=', 'plandetails.rev_code')
                    ->on('paycharge.folionodocid', '=', 'plandetails.docid')
                    ->on('paycharge.sno1', '=', 'plandetails.sno1')
                    ->where('paycharge.vdate', '=', $ncurdate)
                    ->where('paycharge.vtype', '=', $vtype);
            })
                ->leftJoin('roomocc', function ($join) {
                    $join->on('roomocc.docid', '=', 'plandetails.docid')
                        ->on('roomocc.sno1', '=', 'plandetails.sno1');
                })
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'plandetails.docid')
                        ->on('plandetails.sno1', '=', 'guestfolio.sno1');
                })
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'plandetails.rev_code')
                ->whereNull('paycharge.plancode')
                ->where('plandetails.propertyid', $this->propertyid)
                ->where('roomocc.chkindate', '<=', $ncurdate)
                ->whereNull('roomocc.type')
                ->where('roomocc.propertyid', $this->propertyid)
                ->get();

            foreach ($results as $result) {
                $planchargeamount = $result->amount;
                if ($planchargeamount != 0) {
                    $checktaxstru = TaxStructure::where('propertyid', $this->propertyid)
                        ->where('str_code', $result->taxstru)
                        ->get();
                    $getdocroomoc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();
                    if ($getdocroomoc) {
                        $msno1 = $getdocroomoc->sno1;
                    } else {
                        $msno1 = 0;
                    }

                    $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->whereDate('date_from', '<=', $request->input('charge_date'))
                        ->whereDate('date_to', '>=', $request->input('charge_date'))
                        ->first();

                    $start_srl_no = $chkvpf->start_srl_no + 1;
                    $vprefix = $chkvpf->prefix;

                    VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', $vtype)
                        ->where('prefix', $vprefix)
                        ->increment('start_srl_no');
                    $docid = $this->propertyid . $vtype . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $start_srl_no;
                    $chargeamt = $result->amount;
                    $insertdefaultdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $start_srl_no,
                        'vtype' => $vtype,
                        'sno' => 1,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'paycode' => $result->rev_code,
                        'paytype' => $result->pay_type,
                        'comments' => $result->chargename . ' For Room No. :' . $result->roomno,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travelagent,
                        'roomno' => $result->roomno,
                        'amtdr' => $result->amount,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->foliono,
                        'restcode' => 'FOM' . $this->propertyid,
                        'billamount' => $result->netplanamt,
                        'taxper' => 0,
                        'onamt' => $result->netplanamt,
                        'folionodocid' => $result->docid,
                        'plancode' => $result->pcode,
                        'fixedchargecode' => $result->rev_code,
                        'plancharge' => $result->netplanamt,
                        'taxstru' => $result->taxstru,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    Paycharge::insert($insertdefaultdata);

                    foreach ($checktaxstru as $taxstru) {
                        $rates = $taxstru->rate;
                        $lowerlimit = $taxstru->limits;
                        $upperlimit = $taxstru->limit1;
                        $comp_operator = $taxstru->comp_operator;

                        if ($comp_operator == 'Between') {
                            if ($planchargeamount >= $lowerlimit && $planchargeamount <= $upperlimit) {
                                $taxamt = $planchargeamount * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travelagent,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->foliono,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $planchargeamount,
                                    'taxper' => $rates,
                                    'taxstru' => $result->taxstru,
                                    'onamt' => $planchargeamount,
                                    'folionodocid' => $result->docid,
                                    'plancode' => $result->pcode,
                                    'fixedchargecode' => $result->rev_code,
                                    'plancharge' => $result->netplanamt,
                                    'taxcondamt' => $planchargeamount,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } else {
                            if ($comp_operator == '<=') {
                                if ($planchargeamount >= $lowerlimit) {
                                    $taxamt = $planchargeamount * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travelagent,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->foliono,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $planchargeamount,
                                        'taxper' => $rates,
                                        'taxstru' => $result->taxstru,
                                        'onamt' => $planchargeamount,
                                        'folionodocid' => $result->docid,
                                        'plancode' => $result->pcode,
                                        'fixedchargecode' => $result->rev_code,
                                        'plancharge' => $result->netplanamt,
                                        'taxcondamt' => $planchargeamount,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>=') {
                                if ($planchargeamount <= $lowerlimit) {
                                    $taxamt = $planchargeamount * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travelagent,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->foliono,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $planchargeamount,
                                        'taxper' => $rates,
                                        'taxstru' => $result->taxstru,
                                        'onamt' => $planchargeamount,
                                        'folionodocid' => $result->docid,
                                        'plancode' => $result->pcode,
                                        'fixedchargecode' => $result->rev_code,
                                        'plancharge' => $result->netplanamt,
                                        'taxcondamt' => $planchargeamount,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '=') {
                                if ($planchargeamount == $lowerlimit) {
                                    $taxamt = $planchargeamount * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travelagent,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->foliono,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $planchargeamount,
                                        'taxper' => $rates,
                                        'taxstru' => $result->taxstru,
                                        'onamt' => $planchargeamount,
                                        'folionodocid' => $result->docid,
                                        'plancode' => $result->pcode,
                                        'fixedchargecode' => $result->rev_code,
                                        'plancharge' => $result->netplanamt,
                                        'taxcondamt' => $planchargeamount,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>') {
                                if ($planchargeamount > $lowerlimit) {
                                    $taxamt = $planchargeamount * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travelagent,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->foliono,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $planchargeamount,
                                        'taxper' => $rates,
                                        'taxstru' => $result->taxstru,
                                        'onamt' => $planchargeamount,
                                        'folionodocid' => $result->docid,
                                        'plancode' => $result->pcode,
                                        'fixedchargecode' => $result->rev_code,
                                        'plancharge' => $result->netplanamt,
                                        'taxcondamt' => $planchargeamount,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '<') {
                                if ($planchargeamount < $lowerlimit) {
                                    $taxamt = $planchargeamount * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travelagent,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->foliono,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $planchargeamount,
                                        'taxper' => $rates,
                                        'taxstru' => $result->taxstru,
                                        'onamt' => $planchargeamount,
                                        'folionodocid' => $result->docid,
                                        'plancode' => $result->pcode,
                                        'fixedchargecode' => $result->rev_code,
                                        'plancharge' => $result->netplanamt,
                                        'taxcondamt' => $planchargeamount,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } else {
                                $taxamt = $planchargeamount * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travelagent,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->foliono,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $planchargeamount,
                                    'taxper' => $rates,
                                    'taxstru' => $result->taxstru,
                                    'onamt' => $planchargeamount,
                                    'folionodocid' => $result->docid,
                                    'plancode' => $result->pcode,
                                    'fixedchargecode' => $result->rev_code,
                                    'plancharge' => $result->netplanamt,
                                    'taxcondamt' => $planchargeamount,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        }
                    }
                }
            }
        }

        // exit;

        $results = DB::table('roomocc')
            ->select(
                'roomocc.*',
                'revmast.ac_code AS RoomChargeAc',
                'revmast.rev_code AS PayCode',
                'revmast.tax_stru AS TaxStru',
                'g2.company as Comp_Code',
                'g2.travelagent as travel_code',
                'g2.rodisc',
                'g2.company',
                'g2.mfoliono',
                'g2.mfolionodocid'
            )
            ->leftJoin('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('revmast', 'room_cat.rev_code', '=', 'revmast.rev_code')
            ->leftJoinSub(
                DB::table('guestfolio')
                    ->select('docid', 'sno1', 'id', 'company', 'travelagent', 'rodisc', 'mfoliono', 'mfolionodocid')
                    ->whereRaw('id = (
                SELECT MIN(gf2.id)
                FROM guestfolio gf2
                WHERE gf2.docid = guestfolio.docid
            )'),
                'g2',
                function ($join) {
                    $join->on('roomocc.docid', '=', 'g2.docid');
                    // ->on('roomocc.sno1', '=', 'g2.sno1');
                }
            )
            ->whereNull('roomocc.chkoutdate')
            ->where('roomocc.chkindate', '<=', $ncurdate)
            ->whereNull('roomocc.type')
            ->where('roomocc.propertyid', $this->propertyid)
            ->whereNotIn('roomocc.docid', function ($query) use ($ncurdate) {
                $query->select(DB::raw('DISTINCT folionodocid'))
                    ->from('paycharge')
                    ->where('vdate', $ncurdate)
                    ->whereColumn('paycharge.sno1', 'roomocc.sno1')
                    ->where('vtype', 'RC');
            })
            ->get();

        $paycode = DB::table('revmast')->where('propertyid', $this->propertyid)->where('name', 'ROOM CHARGE')->value('rev_code');

        foreach ($results as $result) {

            $getdocroomoc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();

            if ($getdocroomoc) {
                $msno1 = $getdocroomoc->sno1;
            } else {
                $msno1 = 0;
            }
            $vtype = 'RC';
            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $request->input('charge_date'))
                ->whereDate('date_to', '>=', $request->input('charge_date'))
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefix = $chkvpf->prefix;

            $docid = $this->propertyid . 'RC' . ' ‎ ‎' . $vprefix . ' ‎  ‎ ' . $start_srl_no;
            $roombookamt = $result->roomrate;
            if ($roombookamt != 0) {

                $checktaxstru = DB::table('taxstru')
                    ->where('propertyid', $this->propertyid)
                    ->where('str_code', $result->TaxStru)
                    ->get();

                $comment1 = 'ROOM CHARGE, ROOM No: ' . $result->roomno;
                $insertdefaultdata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'vno' => $start_srl_no,
                    'vtype' => $vtype,
                    'sno' => 1,
                    'sno1' => $result->sno1,
                    'msno1' => $msno1,
                    'vdate' => $ncurdate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $vprefix,
                    'paycode' => $paycode,
                    'comments' => $comment1,
                    'guestprof' => $result->guestprof,
                    'comp_code' => $result->Comp_Code,
                    'travel_agent' => $result->travel_code,
                    'roomno' => $result->roomno,
                    'amtdr' => $result->roomrate,
                    'roomtype' => $result->roomtype,
                    'roomcat' => $result->roomcat,
                    'foliono' => $result->folioNo,
                    'restcode' => 'FOM' . $this->propertyid,
                    'billamount' => $result->roomrate,
                    'taxper' => 0,
                    'onamt' => $result->roomrate,
                    'folionodocid' => $result->docid,
                    'taxcondamt' => 0,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];

                DB::table($tablename)->insert($insertdefaultdata);

                foreach ($checktaxstru as $taxstru) {
                    $rates = $taxstru->rate;
                    $lowerlimit = $taxstru->limits;
                    $upperlimit = $taxstru->limit1;
                    $comp_operator = $taxstru->comp_operator;

                    if ($comp_operator == 'Between') {
                        if ($roombookamt >= $lowerlimit && $roombookamt <= $upperlimit) {
                            $taxamt = $roombookamt * $rates / 100;

                            $taxname = DB::table('revmast')
                                ->where('propertyid', $this->propertyid)
                                ->where('rev_code', $taxstru->tax_code)
                                ->value('name');

                            $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                            $insertdata = [
                                'propertyid' => $this->propertyid,
                                'docid' => $docid,
                                'vno' => $start_srl_no,
                                'vtype' => $vtype,
                                'sno' => $taxstru->sno + 1,
                                'sno1' => $result->sno1,
                                'msno1' => $msno1,
                                'vdate' => $ncurdate,
                                'vtime' => date('H:i:s'),
                                'vprefix' => $vprefix,
                                'paycode' => $taxstru->tax_code,
                                'comments' => $comments,
                                'guestprof' => $result->guestprof,
                                'comp_code' => $result->Comp_Code,
                                'travel_agent' => $result->travel_code,
                                'roomno' => $result->roomno,
                                'amtdr' => $taxamt,
                                'roomtype' => $result->roomtype,
                                'roomcat' => $result->roomcat,
                                'foliono' => $result->folioNo,
                                'restcode' => 'FOM' . $this->propertyid,
                                'billamount' => $roombookamt,
                                'taxper' => $rates,
                                'taxstru' => $result->TaxStru,
                                'onamt' => $roombookamt,
                                'folionodocid' => $result->docid,
                                'taxcondamt' => $roombookamt,
                                'created_at' => $this->currenttime,
                                'u_name' => Auth::user()->u_name,
                                'u_ae' => 'a',
                            ];

                            DB::table($tablename)->insert($insertdata);
                        }
                    } else {
                        if ($comp_operator == '<=') {
                            if ($roombookamt >= $lowerlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } elseif ($comp_operator == '>=') {
                            if ($roombookamt <= $lowerlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } elseif ($comp_operator == '=') {
                            if ($roombookamt == $lowerlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } elseif ($comp_operator == '>') {
                            if ($roombookamt > $lowerlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } elseif ($comp_operator == '<') {
                            if ($roombookamt < $lowerlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        }
                    }
                }
            }
            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');
        }

        return back()->with('success', 'Room Charge Posted Successfully!');
    }

    public function submitadvcahrge(Request $request)
    {
        $validate = $request->validate([
            'charge' => 'required',
            'amount' => 'required',
        ]);

        $ncurdate = $this->ncurdate;
        // return $request->charge;
        // echo $request->docid;
        // exit;
        if ($request->charge == 'RMCH' . $this->propertyid) {
            $results = DB::table('roomocc')
                ->select(
                    'roomocc.*',
                    'revmast.ac_code AS RoomChargeAc',
                    'revmast.rev_code AS PayCode',
                    'revmast.tax_stru AS TaxStru',
                    'guestfolio.company as Comp_Code',
                    'guestfolio.travelagent as travel_code',
                    'guestfolio.rodisc',
                    'guestfolio.company',
                    'guestfolio.mfoliono',
                    'guestfolio.mfolionodocid'
                )
                ->leftJoin('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
                ->leftJoin('revmast', 'room_cat.rev_code', '=', 'revmast.rev_code')
                ->leftJoin('guestfolio', 'roomocc.docid', '=', 'guestfolio.docid')
                ->whereNull('roomocc.chkoutdate')
                ->where('roomocc.chkindate', '<=', $this->ncurdate)
                ->whereNull('roomocc.type')
                ->where('roomocc.docid', $request->docid)
                ->where('roomocc.sno1', $request->sno1)
                ->where('roomocc.sno', $request->sno)
                ->where('roomocc.propertyid', $this->propertyid)
                // ->whereNotIn('roomocc.docid', function ($query) use ($ncurdate) {
                //     $query->select(DB::raw('DISTINCT folionodocid'))
                //         ->from('paycharge')
                //         ->where('vdate', $ncurdate)
                //         ->whereColumn('paycharge.sno1', 'roomocc.sno1')
                //         ->where('vtype', 'RC');
                // })
                ->get();

            // var_dump($results);

            $paycode = DB::table('revmast')->where('propertyid', $this->propertyid)->where('name', 'ROOM CHARGE')->value('rev_code');
            $tablename = 'paycharge';

            foreach ($results as $result) {

                $getdocroomoc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $result->docid)->where('leaderyn', 'Y')->first();

                if ($getdocroomoc) {
                    $msno1 = $getdocroomoc->sno1;
                } else {
                    $msno1 = 0;
                }

                $vtype = 'RC';
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $ncurdate)
                    ->whereDate('date_to', '>=', $ncurdate)
                    ->first();

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $docid = $this->propertyid . 'RC' . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $start_srl_no;
                // $roombookamt = $result->roomrate;
                $roombookamt = $request->input('amount');
                if ($roombookamt != 0) {

                    $checktaxstru = DB::table('taxstru')
                        ->where('propertyid', $this->propertyid)
                        ->where('str_code', $result->TaxStru)
                        ->get();

                    $comment1 = 'ROOM CHARGE, ROOM No: ' . $result->roomno;
                    $insertdefaultdata = [
                        'propertyid' => $this->propertyid,
                        'docid' => $docid,
                        'vno' => $start_srl_no,
                        'vtype' => $vtype,
                        'sno' => 1,
                        'sno1' => $result->sno1,
                        'msno1' => $msno1,
                        'vdate' => $ncurdate,
                        'vtime' => date('H:i:s'),
                        'vprefix' => $vprefix,
                        'paycode' => $paycode,
                        'comments' => $comment1,
                        'guestprof' => $result->guestprof,
                        'comp_code' => $result->Comp_Code,
                        'travel_agent' => $result->travel_code,
                        'roomno' => $result->roomno,
                        'amtdr' => $roombookamt,
                        'roomtype' => $result->roomtype,
                        'roomcat' => $result->roomcat,
                        'foliono' => $result->folioNo,
                        'restcode' => 'FOM' . $this->propertyid,
                        'billamount' => $roombookamt,
                        'taxper' => 0,
                        'onamt' => $roombookamt,
                        'folionodocid' => $result->docid,
                        'taxcondamt' => 0,
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'u_ae' => 'a',
                    ];

                    DB::table($tablename)->insert($insertdefaultdata);

                    foreach ($checktaxstru as $taxstru) {
                        $rates = $taxstru->rate;
                        $lowerlimit = $taxstru->limits;
                        $upperlimit = $taxstru->limit1;
                        $comp_operator = $taxstru->comp_operator;

                        if ($comp_operator == 'Between') {
                            if ($roombookamt >= $lowerlimit && $roombookamt <= $upperlimit) {
                                $taxamt = $roombookamt * $rates / 100;

                                $taxname = DB::table('revmast')
                                    ->where('propertyid', $this->propertyid)
                                    ->where('rev_code', $taxstru->tax_code)
                                    ->value('name');

                                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                $insertdata = [
                                    'propertyid' => $this->propertyid,
                                    'docid' => $docid,
                                    'vno' => $start_srl_no,
                                    'vtype' => $vtype,
                                    'sno' => $taxstru->sno + 1,
                                    'sno1' => $result->sno1,
                                    'msno1' => $msno1,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'vprefix' => $vprefix,
                                    'paycode' => $taxstru->tax_code,
                                    'comments' => $comments,
                                    'guestprof' => $result->guestprof,
                                    'comp_code' => $result->Comp_Code,
                                    'travel_agent' => $result->travel_code,
                                    'roomno' => $result->roomno,
                                    'amtdr' => $taxamt,
                                    'roomtype' => $result->roomtype,
                                    'roomcat' => $result->roomcat,
                                    'foliono' => $result->folioNo,
                                    'restcode' => 'FOM' . $this->propertyid,
                                    'billamount' => $roombookamt,
                                    'taxper' => $rates,
                                    'taxstru' => $result->TaxStru,
                                    'onamt' => $roombookamt,
                                    'folionodocid' => $result->docid,
                                    'taxcondamt' => $roombookamt,
                                    'created_at' => $this->currenttime,
                                    'u_name' => Auth::user()->u_name,
                                    'u_ae' => 'a',
                                ];

                                DB::table($tablename)->insert($insertdata);
                            }
                        } else {
                            if ($comp_operator == '<=') {
                                if ($roombookamt >= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>=') {
                                if ($roombookamt <= $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '=') {
                                if ($roombookamt == $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '>') {
                                if ($roombookamt > $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            } elseif ($comp_operator == '<') {
                                if ($roombookamt < $lowerlimit) {
                                    $taxamt = $roombookamt * $rates / 100;

                                    $taxname = DB::table('revmast')
                                        ->where('propertyid', $this->propertyid)
                                        ->where('rev_code', $taxstru->tax_code)
                                        ->value('name');

                                    $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;

                                    $insertdata = [
                                        'propertyid' => $this->propertyid,
                                        'docid' => $docid,
                                        'vno' => $start_srl_no,
                                        'vtype' => $vtype,
                                        'sno' => $taxstru->sno + 1,
                                        'sno1' => $result->sno1,
                                        'msno1' => $msno1,
                                        'vdate' => $ncurdate,
                                        'vtime' => date('H:i:s'),
                                        'vprefix' => $vprefix,
                                        'paycode' => $taxstru->tax_code,
                                        'comments' => $comments,
                                        'guestprof' => $result->guestprof,
                                        'comp_code' => $result->Comp_Code,
                                        'travel_agent' => $result->travel_code,
                                        'roomno' => $result->roomno,
                                        'amtdr' => $taxamt,
                                        'roomtype' => $result->roomtype,
                                        'roomcat' => $result->roomcat,
                                        'foliono' => $result->folioNo,
                                        'restcode' => 'FOM' . $this->propertyid,
                                        'billamount' => $roombookamt,
                                        'taxper' => $rates,
                                        'taxstru' => $result->TaxStru,
                                        'onamt' => $roombookamt,
                                        'folionodocid' => $result->docid,
                                        'taxcondamt' => $roombookamt,
                                        'created_at' => $this->currenttime,
                                        'u_name' => Auth::user()->u_name,
                                        'u_ae' => 'a',
                                    ];

                                    DB::table($tablename)->insert($insertdata);
                                }
                            }
                        }
                    }
                }
                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            return redirect('autorefreshmain');
        }

        // exit;

        $guestfolio = Guestfolio::where('propertyid', $this->propertyid)->where('docid', $request->input('docid'))->first();

        $compcodetmp = $request->input('company') ?? '';
        if (! is_null($guestfolio)) {
            $compcodetmp = $compcodetmp ?: ($guestfolio->company ?? '');
        }

        $revdata = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $request->input('charge'))->first();
        $roombookamt = $request->input('amount');

        $checktaxstru = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->where('str_code', $revdata->tax_stru)
            ->get();

        $taxrates = 0;
        if ($revdata->tax_inc == 'Y') {
            $taxrates = 0;
            foreach ($checktaxstru as $tax) {
                $taxrates += $tax->rate;
            }
            if ($taxrates > 0 && ! is_null($taxrates)) {
                $valuenew = str_replace(',', '', number_format(($roombookamt * 100) / (100 + $taxrates), 2));
                $roombookamt = $valuenew;
            }
        }

        if (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'dr') {
            $amtdr = null;
            $amtcr = $roombookamt;
            $vtype = 'REV';
            $compcode = $compcodetmp;
        } elseif (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'cr') {
            $amtdr = $roombookamt;
            $amtcr = null;
            $vtype = 'REV';
            $compcode = $compcodetmp;
        }

        if (strtolower($revdata->field_type) == 'p' && $roombookamt < 0) {
            $amtdr = abs($roombookamt);
            $amtcr = null;
            $vtype = 'REV';
            $compcode = '';
        } elseif (strtolower($revdata->field_type) == 'p' && $roombookamt > 0) {
            $amtdr = null;
            $amtcr = $roombookamt;
            $vtype = 'REC';
            $compcode = '';
        }

        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;
        $vprefix = $chkvpf->prefix;

        $vno = $start_srl_no;

        $result = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $request->input('docid'))->where('sno1', $request->input('sno1'))->first();
        $docid = $this->propertyid . $vtype . ' ‎ ‎' . $vprefix . ' ‎ ‎ ‎ ' . $vno;

        $rtaxstru = $revdata->tax_stru;

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $request->input('docid'))->where('leaderyn', 'Y')->first();
        // return $result;
        $insertdata = [
            'propertyid' => $this->propertyid,
            'docid' => $docid,
            'comp_code' => $compcode,
            'vno' => $vno,
            'vtype' => $vtype,
            'sno' => 1,
            'sno1' => $request->input('sno1'),
            'msno1' => $rocc->sno1 ?? 0,
            'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
            'cardno' => $request->input('crnumber'),
            'cardholder' => $request->input('holdername'),
            'expdate' => $request->input('expdatecr'),
            'bookno' => $request->input('batchno'),
            'vdate' => $this->ncurdate,
            'vtime' => date('H:i:s'),
            'vprefix' => $vprefix,
            'paycode' => $request->input('charge'),
            'paytype' => $revdata->pay_type ?? '',
            'comments' => $request->input('narration'),
            'guestprof' => $result->guestprof,
            'roomno' => $result->roomno,
            'amtdr' => $amtdr ?? '0.00',
            'amtcr' => $amtcr ?? '0.00',
            'roomtype' => $result->roomtype,
            'roomcat' => $result->roomcat,
            'foliono' => $result->folioNo,
            'restcode' => 'FOM' . $this->propertyid,
            'billamount' => $result->rackrate,
            'taxper' => $taxrates,
            'onamt' => $result->rackrate,
            'folionodocid' => $result->docid,
            'taxcondamt' => 0,
            'taxstru' => $rtaxstru,
            'created_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'a',
        ];

        DB::table('paycharge')->insert($insertdata);

        foreach ($checktaxstru as $taxstru) {
            $rates = $taxstru->rate;
            $lowerlimit = $taxstru->limits;
            $upperlimit = $taxstru->limit1;
            $comp_operator = $taxstru->comp_operator;

            $taxamt = $roombookamt * $rates / 100;

            if ($taxamt > 0) {
                // if (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'dr') {
                //     $amtcr = $taxamt;
                //     $amtdr = null;
                //     $vtype = 'REV';
                // }

                if (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'dr') {
                    $amtdr = null;
                    $amtcr = $taxamt;
                    $vtype = 'REV';
                    $compcode = $compcodetmp;
                } elseif (strtolower($revdata->field_type) == 'c' && strtolower($revdata->type) == 'cr') {
                    $amtdr = $taxamt;
                    $amtcr = null;
                    $vtype = 'REV';
                    $compcode = $compcodetmp;
                }

                if (strtolower($revdata->field_type) == 'p' && $taxamt < 0) {
                    $amtdr = abs($taxamt);
                    $amtcr = null;
                    $vtype = 'REV';
                    $compcode = '';
                } elseif (strtolower($revdata->field_type) == 'p' && $taxamt > 0) {
                    $amtdr = null;
                    $amtcr = $taxamt;
                    $vtype = 'REC';
                    $compcode = '';
                }

                $taxname = DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('rev_code', $taxstru->tax_code)
                    ->value('name');

                $comments = $taxname . ', ' . 'Room No: ' . $result->roomno;
                $insertdata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'vno' => $vno,
                    'vtype' => $vtype,
                    'sno' => $taxstru->sno + 1,
                    'sno1' => $request->input('sno1'),
                    'msno1' => $rocc->sno1 ?? 0,
                    'chqno' => $request->input('checkno') ? $request->input('checkno') : $request->input('referencenoupi'),
                    'vdate' => $this->ncurdate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $vprefix,
                    'paycode' => $taxstru->tax_code,
                    'comments' => $comments,
                    'guestprof' => $result->guestprof,
                    'roomno' => $result->roomno,
                    'amtdr' => abs($amtdr) ?? '0.00',
                    'amtcr' => abs($amtcr) ?? '0.00',
                    'roomtype' => $result->roomtype,
                    'roomcat' => $result->roomcat,
                    'foliono' => $result->folioNo,
                    'restcode' => 'FOM' . $this->propertyid,
                    'billamount' => $roombookamt,
                    'taxper' => $rates,
                    'taxstru' => $rtaxstru,
                    'onamt' => $roombookamt,
                    'folionodocid' => $result->docid,
                    'taxcondamt' => $roombookamt,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];

                DB::table('paycharge')->insert($insertdata);
            }
        }

        VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->where('prefix', $vprefix)
            ->increment('start_srl_no');

        return redirect('autorefreshmain');
    }

    public function openitemlist(Request $request)
    {
        // $permission = revokeopen(121615);
        // if (is_null($permission) || $permission->view == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        // $this->ExportTable();
        // $this->DownloadTable('itemlistmast', 'Item List Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $itemlistdata = DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $maxicode = DB::table('items')->where('propertyid', $this->propertyid)->max('icode');
        if (empty($maxicode)) {
            $maxicode = 0;
        }

        return view('property.itemlists', [
            'data' => $itemlistdata,
            'maxicode' => $maxicode,
            'idlength' => $this->ptlngth,
        ]);
    }

    public function printItemList()
    {
        $data = DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.print.printitemlist', ['data' => $data, 'company' => $company]);
    }

    public function printMenuItem()
    {
        $data = ItemMast::select(
            'itemmast.Name as itemname',
            'itemmast.Code',
            'itemmast.DispCode',
            'itemmast.HSNCode',
            'itemmast.ActiveYN',
            'itemmast.NType',
            'itemmast.RestCode',
            'unitmast.name as unitname',
            'itemgrp.Name as itemgrpname',
            'itemcatmast.Name as itemcatname',
            'depart_r.Name as Restaurant',
            'itemrate.Rate'
        )
            ->leftJoin('itemgrp', function ($join) {
                $join->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($join) {
                $join->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                    ->on('itemrate.RestCode', '=', 'itemmast.RestCode')
                    ->where('itemrate.Property_ID', '=', $this->propertyid);
            })
            ->where('itemmast.Property_ID', '=', $this->propertyid)
            ->whereNotIn('itemmast.RestCode', [
                'PURC' . $this->propertyid,
                'BANQ' . $this->propertyid,
            ])
            ->groupBy('itemmast.Code', 'itemmast.RestCode')
            ->orderBy('depart_r.Name')
            ->orderBy('itemmast.Name')
            ->get();

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.printmenuitem', [
            'data' => $data,
            'company' => $company,
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('menu-item-list.pdf');
    }

    public function exportItemList()
    {
        $companyName = DB::table('company')->where('propertyid', $this->propertyid)->value('comp_name');
        $export = new ItemListExport($this->propertyid, $companyName);
        $export->download();
    }

    public function submititemlist(Request $request)
    {
        // $permission = revokeopen(121615);

        // if (is_null($permission) || $permission->ins == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        DB::beginTransaction();
        try {
            $validate = [
                'barcode' => 'required',
                'name' => 'required',
            ];
            $tableName = 'items';

            $existingcode = DB::table($tableName)
                ->where('icode', $request->input('barcode') . $this->propertyid)
                ->where('propertyid', $this->propertyid)
                ->first();

            if ($existingcode) {
                return back()->with('error', 'Item Code already exists!');
            }

            $existingname = DB::table($tableName)
                ->where('name', $request->input('name'))
                ->where('propertyid', $this->propertyid)
                ->first();

            if ($existingname) {
                return back()->with('error', 'Item Name already exists!');
            }

            if (! empty($request->file('itempicture'))) {
                $itempic = $request->file('itempicture');
                $itempicture = $request->input('barcode') . '_' . $this->propertyid . '.' . $itempic->getClientOriginalExtension();
                $folderPathp = 'public/property/itempicture';
                Storage::makeDirectory($folderPathp);
                Storage::putFileAs($folderPathp, $itempic, $itempicture);
            } else {
                $itempicture = null;
            }

            $insertdata = [
                'propertyid' => $this->propertyid,
                'icode' => $request->input('barcode') . $this->propertyid,
                'barcode' => $request->input('barcode') . $this->propertyid,
                'name' => $request->input('name'),
                'itempic' => $itempicture,
                'hsncode' => $request->input('hsncode'),
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];

            DB::table($tableName)->insert($insertdata);

            DB::commit();

            return back()->with('success', 'Item Master Inserted successfully!');
        } catch (Exception $e) {
            DB::rollBack();

            return back()->with('error', 'Unable to Insert Item Master!' . $e->getMessage());
        }
    }

    public function updateitemlist(Request $request)
    {
        // $permission = revokeopen(121615);

        // if (is_null($permission) || $permission->edit == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }
        $tableName = 'items';

        $existingbarcode = DB::table($tableName)
            ->where('barcode', $request->input('upbarcode') . $this->propertyid)
            ->whereNot('id', $request->input('upsn'))
            ->where('propertyid', $this->propertyid)
            ->first();

        if ($existingbarcode) {
            return back()->with('error', 'Barcode already exists for item: ' . $request->input('upname'));
        }

        if (! empty($request->file('upitemimage'))) {
            $itempic = $request->file('upitemimage');
            $itempicture = $request->input('upbarcode') . '_' . $this->propertyid . '.' . $itempic->getClientOriginalExtension();
            $folderPathp = 'public/property/itempicture';
            Storage::makeDirectory($folderPathp);
            Storage::putFileAs($folderPathp, $itempic, $itempicture);
        } else {
            $itempicture = $request->input('olditemimage');
        }

        try {
            $updatedata = [
                'name' => $request->input('upname'),
                'itempic' => $itempicture,
                'hsncode' => $request->input('uphsncode'),
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];

            $checkitemmast = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('upicode'))->first();
            if ($checkitemmast) {
                $upitemmast = [
                    'Name' => $request->input('upname'),
                    'HSNCode' => $request->input('uphsncode'),
                    'iempic' => $itempicture,
                    'u_updaedt' => $this->currenttime,
                    'U_AE' => 'e',
                ];
                DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('Code', $request->input('upicode'))->update($upitemmast);
            }

            DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->where('id', $request->input('upsn'))
                ->update($updatedata);

            return back()->with('success', 'Item Master Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item Master!' . $e->getMessage());
        }
    }

    public function deleteitemlist(Request $request, $sn, $ucode)
    {
        // $permission = revokeopen(121615);

        // if (is_null($permission) || $permission->del == 0) {
        //     return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        // }

        try {
            // ✅ Check if item is used in itemmast
            $isUsed = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $ucode)
                ->exists();

            if ($isUsed) {
                return back()->with('error', 'Cannot delete! This item is already in use.');
            }

            // ✅ Delete image if exists
            $image = DB::table('items')
                ->where('propertyid', $this->propertyid)
                ->where('icode', $ucode)
                ->where('id', $sn)
                ->value('itempic');

            if ($image) {
                $folderPath = storage_path('app/public/property/itempicture/' . $image);
                if (file_exists($folderPath)) {
                    unlink($folderPath);
                }
            }

            // ✅ Delete the item
            $deleted = DB::table('items')
                ->where('icode', $ucode)
                ->where('id', $sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Item Master Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item Master! ' . $e->getMessage());
        }
    }

    public function opennightaudit()
    {
        // return 'maintaince break';
        $permission = revokeopen(191112);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = $this->ncurdate;
        $envpos = EnviroPos::where('propertyid', $this->propertyid)->first();

        return view('property.nightaudit', ['ncurdate' => $ncurdate, 'envpos' => $envpos]);
    }

    public function submitnightaudit(Request $request)
    {
        try {
            DB::begintransaction();
            $permission = revokeopen(191112);
            if (is_null($permission) || $permission->ins == 0) {
                return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
            }
            $ncurdate = Carbon::parse($request->input('ncurdate'))->addDays(1)->format('Y-m-d');
            $ncurdateorg = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

            $enviro_pos = EnviroPos::where('propertyid', $this->propertyid)->first();

            if ($enviro_pos->kotatnightaudit == 'Y') {
                $chkkotpending = Kot::where('propertyid', $this->propertyid)
                    ->where('pending', 'Y')
                    ->where('vdate', $ncurdateorg)
                    ->where('voidyn', 'N')
                    ->groupBy('vno')
                    ->get();

                $departmentBills = [];

                foreach ($chkkotpending as $item) {
                    $departname = Depart::where('propertyid', $this->propertyid)
                        ->where('dcode', $item->restcode)
                        ->first();

                    if (! isset($departmentBills[$departname->name])) {
                        $departmentBills[$departname->name] = [];
                    }

                    $departmentBills[$departname->name][] = $item->vno;
                }

                $msgParts = [];
                foreach ($departmentBills as $departName => $bills) {
                    $msgParts[] = $departName;
                }

                if (count($chkkotpending) > 0) {
                    $msg = 'You have some pending KOTs in: ' . implode(' and ', $msgParts);

                    return back()->with('nightinfo', ['message' => $msg, 'bills' => json_encode($bills), 'row' => 1]);
                }
            }

            if (fomparameter()->tentativedays > 0) {
                $tentativdays = fomparameter()->tentativedays;
                $bookings = Bookings::where('Property_ID', $this->propertyid)
                    ->where('Cancel', 'N')
                    ->where('ResStatus', 'Tentative')
                    ->get();

                foreach ($bookings as $booking) {
                    $submitdate = $booking->created_at;
                    $tentativedate = Carbon::parse($submitdate)->addDays($tentativdays)->format('Y-m-d');
                    if ($tentativedate == $ncurdateorg) {
                        $updateData = [
                            'Cancel' => 'Y',
                            'CancelUName' => Auth::user()->u_name,
                            'ResStatus' => 'Cancel',
                        ];
                        Bookings::where('Property_ID', $this->propertyid)
                            ->where('DocId', $booking->DocId)
                            ->update($updateData);

                        GrpBookinDetail::where('Property_ID', $this->propertyid)
                            ->where('BookingDocid', $booking->DocId)
                            ->update([
                                'Cancel' => 'Y',
                                'CancelUName' => Auth::user()->u_name,
                                'CancelDate' => $this->currenttime,
                            ]);

                        if (optional(channelparameter())->checkyn == 'Y') {
                            $updatecancel = ResHelper::UpdateCancel($booking->DocId, $booking->GuestProf);
                        }
                    }
                }
            }

            if ($enviro_pos->posbillatnightaudit == 'Y') {
                $pendingBills = [];
                $checksalepending = Sale1::select(
                    'sale1.docid',
                    'depart.name as departname',
                    'sale1.vno',
                    DB::raw("CASE WHEN paycharge.docid IS NULL THEN 'Bill Left' ELSE 'Billed' END AS status")
                )
                    ->leftJoin('paycharge', 'paycharge.docid', '=', 'sale1.docid')
                    ->leftJoin('depart', 'depart.dcode', '=', 'sale1.restcode')
                    ->where('sale1.propertyid', $this->propertyid)
                    ->where('sale1.vdate', $ncurdateorg)
                    ->whereNull('paycharge.docid')
                    ->where('sale1.delflag', 'N')
                    ->groupBy('sale1.vno')
                    ->get();

                if ($checksalepending) {
                    foreach ($checksalepending as $item) {
                        if ($item->status != 'Billed') {
                            if (! isset($pendingBills[$item->departname])) {
                                $pendingBills[$item->departname] = [];
                            }
                            $pendingBills[$item->departname][] = $item->vno;
                        }
                    }

                    $summaryString = '';
                    foreach ($pendingBills as $departname => $bills) {
                        $summaryString .= $departname . ', ';
                    }

                    $summaryString = rtrim($summaryString, '; ');

                    if (! empty($summaryString)) {
                        $msg = 'You have some unsettled Bills in: ' . $summaryString;

                        return back()->with('nightinfo', ['message' => $msg, 'bills' => json_encode($bills), 'row' => 2]);
                    }
                }
            }

            $chknotcharged = DB::table('roomocc')
                ->select('roomocc.*', 'guestfolio.mfoliono', 'guestfolio.comp')
                ->leftJoin('guestfolio', function ($join) {
                    $join->on('guestfolio.docid', '=', 'roomocc.docid')
                        ->on('guestfolio.sno1', '=', 'roomocc.sno1');
                })
                ->leftJoin('guestprof', function ($join) {
                    $join->on('guestprof.guestcode', '=', 'roomocc.guestprof')
                        ->where('guestprof.complimentry', 'N');
                })
                ->where('roomocc.propertyid', $this->propertyid)
                ->where('guestprof.complimentry', 'N')
                ->whereNull('roomocc.chkoutdate')
                ->where('roomocc.chkindate', '<=', $ncurdateorg)
                ->get();

            $roomsNotFound = [];

            foreach ($chknotcharged as $row) {
                $founduncharged = DB::table('paycharge')
                    ->where('propertyid', $this->propertyid)
                    ->where('vdate', $ncurdateorg)
                    ->where('vtype', 'RC')
                    ->where('folionodocid', $row->docid)
                    ->exists();

                if (! $founduncharged && ! empty($row->roomno)) {
                    $roomsNotFound[] = $row->roomno;
                }
            }

            if (! empty($roomsNotFound)) {
                return back()->with('error', 'Please Charge Posting For Rooms: ' . implode(', ', $roomsNotFound));
            }

            $nullroomocc = DB::table('roomocc')
                ->where('propertyid', $this->propertyid)
                ->whereNull('type')
                ->pluck('docid');

            $searchpay = DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->whereIn('folionodocid', $nullroomocc)
                ->whereNot('billno', '0')
                ->whereNull('settledate')
                ->groupBy('folionodocid')
                ->get(['roomno']);

            if ($searchpay->isNotEmpty()) {
                $totalroom = $searchpay->pluck('roomno')->implode(', ');

                return back()->with('error', 'Please Settle Bill For Rooms: ' . $totalroom);
            }

            $todayscheckout = DB::table('roomocc')
                ->select('roomocc.*', 'enviro_general.ncur')
                ->leftJoin('enviro_general', 'enviro_general.propertyid', '=', 'roomocc.propertyid')
                ->where('roomocc.depdate', DB::raw('enviro_general.ncur'))
                ->whereNull('roomocc.type')
                ->where('roomocc.propertyid', $this->propertyid)
                ->get();

            foreach ($todayscheckout as $row) {
                $updatedep = Carbon::parse($request->input('ncurdate'))->addDays(1)->format('Y-m-d');
                $uproomocc = [
                    'depdate' => $updatedep,
                ];
                DB::table('roomocc')->where('propertyid', $this->propertyid)
                    ->where('docid', $row->docid)
                    ->where('sno1', $row->sno1)
                    ->update($uproomocc);
            }

            if (fomparameter()->noshowatnightaudit == 'Y') {

                $updateData = [
                    'Cancel' => 'Y',
                    'Canceldate' => $ncurdateorg,
                    'U_Name' => 'NOSHOW',
                    'updated_at' => $this->currenttime,
                    'chkoutyn' => 'Y',
                ];

                $bookings = DB::table('grpbookingdetails')
                    ->where('Cancel', 'N')
                    ->where('ArrDate', $ncurdateorg)
                    ->where('ContraDocId', '')
                    ->where('Property_ID', $this->propertyid)
                    ->whereNotExists(function ($query) use ($ncurdateorg) {
                        $query->select(DB::raw(1))
                            ->from('guestfolio')
                            ->whereColumn('grpbookingdetails.BookingDocId', 'guestfolio.docid')
                            ->where('Vdate', $ncurdateorg);
                    })
                    ->get([
                        'Sno',
                        'BookingDocId',
                        'RoomCat',
                        'ArrDate',
                        'DepDate',
                    ]);

                $updateQuery = DB::table('grpbookingdetails')
                    ->where('Cancel', 'N')
                    ->where('ArrDate', $ncurdateorg)
                    ->where('ContraDocId', '')
                    ->where('Property_ID', $this->propertyid)
                    ->whereNotExists(function ($query) use ($ncurdateorg) {
                        $query->select(DB::raw(1))
                            ->from('guestfolio')
                            ->whereColumn('grpbookingdetails.BookingDocId', 'guestfolio.docid')
                            ->where('Vdate', $ncurdateorg);
                    });

                $updateQuery->update($updateData);

                if (channelparameter()->checkyn == 'Y') {

                    foreach ($bookings as $booking) {

                        $arrivalDate = Carbon::parse($booking->ArrDate)->toDateString();
                        $departureDate = Carbon::parse($booking->DepDate)->toDateString();

                        if ($departureDate > Carbon::parse($ncurdateorg)->toDateString()) {

                            SyncInventoryJob::dispatch(
                                $booking->RoomCat,
                                $booking->RoomCat,
                                $arrivalDate,
                                $arrivalDate,
                                $departureDate,
                                $departureDate,
                                (int) $this->propertyid,
                                Auth::user()->u_name,
                                true
                            );
                        }
                    }
                }
            }

            if (fomparameter()->autoroomassign === 1) {

                $housekeepers = HousekeeperMast::where('propertyid', $this->propertyid)
                    ->orderBy('scode')
                    ->get();

                $occupiedRooms = totaloccupiedroom();

                if ($occupiedRooms->count() > 0 && $housekeepers->count() > 0) {

                    $baseRooms = floor($occupiedRooms->count() / $housekeepers->count());
                    $remainingRooms = $occupiedRooms->count() % $housekeepers->count();

                    $roomIndex = 0;

                    foreach ($housekeepers as $index => $housekeeper) {

                        $roomsToAssign = $baseRooms;

                        if ($remainingRooms > 0) {
                            $roomsToAssign++;
                            $remainingRooms--;
                        }

                        for ($i = 0; $i < $roomsToAssign; $i++) {

                            if (! isset($occupiedRooms[$roomIndex])) {
                                break;
                            }

                            $exists = Hkroomassign::where('roomno', $occupiedRooms[$roomIndex]->roomno)
                                ->where('propertyid', $this->propertyid)
                                ->whereDate('vdate', $ncurdate)
                                ->exists();

                            $roomno = $occupiedRooms[$roomIndex]->roomno ?? null;

                            if ($roomno !== null && $roomno !== '' && ! $exists) {

                                Hkroomassign::create([
                                    'code' => $housekeeper->scode,
                                    'propertyid' => $this->propertyid,
                                    'vdate' => $ncurdate,
                                    'vtime' => date('H:i:s'),
                                    'roomno' => $roomno,
                                    'status' => 'dirty',
                                    'u_name' => Auth::user()->name,
                                ]);
                            }

                            $roomIndex++;
                        }
                    }
                }
            }

            $service = app(AccountPosting::class);
            $service->accountpoststore($ncurdateorg, $ncurdateorg);

            $checkedrooms = RoomOcc::where('propertyid', $this->propertyid)->whereNull('type')->get();
            if ($checkedrooms) {
                foreach ($checkedrooms as $row) {
                    RoomMast::where('propertyid', $this->propertyid)->where('rcode', $row->roomno)->where('type', 'RO')->where('inclcount', 'Y')
                        ->update(['room_stat' => 'D']);
                }
            }

            if (date('m-d', strtotime($this->ncurdate)) == '03-31') {
                DB::commit();

                return back()->with('success', 'Night Audit Completed');
            }

            $nlog = new NightAuditLog;
            $nlog->propertyid = $this->propertyid;
            $nlog->ncurdate = $this->ncurdate;
            $nlog->narration = 'Night Audit';
            $nlog->u_name = Auth::user()->u_name;
            $nlog->created_at = $this->currenttime;
            $nlog->save();

            DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->update([
                    'ncur' => $ncurdate,
                    'updated_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);
            DB::commit();

            return redirect()->route('logout');
        } catch (Exception $e) {
            DB::rollBack();
            // return back()->with('error', 'Unable to Update Night Audit!');
            echo 'error:' . $e->getMessage();
        }
    }

    public function opennightaudit2()
    {
        $permission = revokeopen(191113);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');

        return view('property.nightaudit2', ['ncurdate' => $ncurdate]);
    }

    public function submitnightaudit2(Request $request)
    {
        $permission = revokeopen(191113);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ncurdate = Carbon::parse($request->input('ncurdate'))->subDays(1)->format('Y-m-d');
        try {

            $nlog = new NightAuditLog;
            $nlog->propertyid = $this->propertyid;
            $nlog->ncurdate = $this->ncurdate;
            $nlog->narration = 'Reverse Night Audit';
            $nlog->u_name = Auth::user()->u_name;
            $nlog->created_at = $this->currenttime;
            $nlog->save();

            DB::table('enviro_general')
                ->where('propertyid', $this->propertyid)
                ->update([
                    'ncur' => $ncurdate,
                    'updated_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return redirect()->route('logout');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Night Audit!');
        }
    }

    public function openchangeprofile(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');

        $roomocc = RoomOcc::where('docid', $docid)->first();

        $guestprofdata = DB::table('guestprof')
            ->select('guestprof.*', 'guestprof.city as citycode', 'guestfolio.*')
            ->join('guestfolio', 'guestfolio.guestprof', '=', 'guestprof.guestcode')
            ->where('guestprof.guestcode', $roomocc->guestprof)
            ->where('guestfolio.guestprof', $roomocc->guestprof)
            ->where('guestprof.propertyid', $this->propertyid)
            ->first();

        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)
            ->orderBy('cityname', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();

        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $billingAccount = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('sub_code', $guestprofdata->billingAccount)->first();

        return view('property.changeprofile', [
            'data' => $guestprofdata,
            'citydata' => $citydata,
            'nationalitydata' => $nationalitydata,
            'countrydata' => $countrydata,
            'gueststatus' => $gueststatus,
            'company' => $company,
            'billingAccount' => $billingAccount,
        ]);
    }

    public function openammendstay(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');
        $roomoccdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)
            ->where('sno1', $sno1)->where('sno', $sno)
            ->first();
        $depdate = $roomoccdata->depdate;
        $nextdate = date('Y-m-d', strtotime($depdate . ' +1 day'));

        return view('property.ammendstay', [
            'data' => $roomoccdata,
            'nextdate' => $nextdate,
            'ncurdate' => $this->ncurdate,
        ]);
    }

    public function updateammendstay(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $sno = $request->input('sno');
        $newdepdate = $request->input('departuredate');

        $roomocc = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->where('sno', $sno)
            ->first();

        if (!$roomocc) {
            return response()->json([
                'message' => 'Room occupancy record not found.'
            ], 404);
        }


        $oldarrdate = $roomocc->chkindate;
        $olddepdate = $roomocc->depdate;
        $oldcategory = $roomocc->roomcat;

        if ($newdepdate <= $roomocc->chkindate) {
            return response()->json([
                'message' => 'Departure Date can not be earlier than checkin date!'
            ], 500);
        }

        DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->where('sno', $sno)
            ->update([
                'depdate' => $newdepdate,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'ammendstay' => 1,
            ]);

        if ($olddepdate != $newdepdate && channelparameter()->checkyn == 'Y') {
            SyncInventoryJob::dispatch(
                $oldcategory,
                $oldcategory,
                $oldarrdate,
                $roomocc->chkindate,
                $olddepdate,
                $newdepdate,
                (int) $this->propertyid,
                Auth::user()->u_name
            );
        }

        return redirect('autorefreshmain');
    }

    public function openguestledger(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        // return $request->input('sno');
        $guestname = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno1', $sno1)
            ->value('name');

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $paychargedata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)
                ->orderBy('vdate', 'ASC')->orderBy('vno', 'ASC')->orderBy('vtype', 'ASC')->orderBy('sno', 'ASC')->get();
        } else {
            $paychargedata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)
                ->orderBy('vdate', 'ASC')->orderBy('vno', 'ASC')->orderBy('vtype', 'ASC')->orderBy('sno', 'ASC')->get();
        }

        $roomdataparticular = RoomOcc::where('propertyid', $this->propertyid)
            ->where('docid', $docid)->where('sno1', $sno1)
            ->orderByDesc('sno')
            ->first();
        $advancePayOptions = DB::table('revmast')
            ->select('name', 'rev_code', 'nature', 'field_type')
            ->where('propertyid', $this->propertyid)
            ->where('active', 'Y')
            ->where(function ($query) {
                $query->where('field_type', 'P')
                    ->orWhere(function ($query) {
                        $query->where('field_type', 'C')
                            ->where('flag_type', 'FOM');
                    });
            })
            ->orderBy('name', 'ASC')
            ->get();
        $advanceCompanyOptions = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')
            ->get();

        return view('property.guestledger', [
            'data' => $paychargedata,
            'roomdataparticular' => $roomdataparticular,
            'advancePayOptions' => $advancePayOptions,
            'advanceCompanyOptions' => $advanceCompanyOptions,
        ]);
    }

    public function openguestcharge(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();

        $datatmp = DB::table('revmast')
            ->select('revmast.name as particular', 'revmast.rev_code')
            ->leftJoin('paycharge', 'paycharge.paycode', '=', 'revmast.rev_code')
            ->whereIn('revmast.field_type', ['C', 'T', 'P'])
            ->where('revmast.propertyid', $this->propertyid)
            ->where('paycharge.folionodocid', $docid)
            ->groupBy('revmast.rev_code', 'revmast.name');

        if (! $rocc) {
            $data = $datatmp->where('paycharge.sno1', $sno1)->get();
        } else {
            $data = $datatmp->where('paycharge.folionodocid', $docid)->get();
        }

        // return $data;

        return view('property.guestcharge', [
            'data' => $data,
            'docid' => $docid,
            'sno1' => $sno1,
        ]);
    }

    public function openbillprint(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');
        // echo $sno;
        // exit;

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();

        if ($rocc) {
            $paychargedata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)
                ->orderBy('vdate', 'ASC')->orderBy('vno', 'ASC')->orderBy('sno', 'ASC')->get();
        } else {
            $paychargedata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)
                ->orderBy('vdate', 'ASC')->orderBy('vno', 'ASC')->orderBy('sno', 'ASC')->get();
        }

        if ($paychargedata->isEmpty()) {
            return;
        }

        // return $docid;

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $roomoccdata = DB::table('roomocc')->where('propertyid', $this->propertyid)->where('docid', $docid)->where('sno1', $sno1)
            ->where('sno', $sno)->first();
        $guestprof = GuestProf::where('propertyid', $this->propertyid)->where('guestcode', $roomoccdata->guestprof)->first();

        $totaldebit = 0;
        $totalcredit = 0;
        foreach ($paychargedata as $data) {
            $totaldebit += $data->amtdr;
            $totalcredit += $data->amtcr;
        }
        $onamt = $paychargedata[0]->onamt;
        $billamt = str_replace(',', '', number_format($totaldebit - $totalcredit, 2));
        $enviro_form = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();

        return view('property.billprint', [
            'data' => $paychargedata,
            'docid' => $docid,
            'sno1' => $sno1,
            'sno' => $sno,
            'company' => $companydata,
            'roomoccdata' => $roomoccdata,
            'guestprof' => $guestprof,
            'billamt' => $billamt,
            'onamt' => $onamt,
            'enviro_form' => $enviro_form,
        ]);
    }

    public function openbillreprint(Request $request)
    {
        $permission = revokeopen(141115);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $einvoicedata = EnviroEinvoice::where('propertyid', $this->propertyid)->first();

        if (! $einvoicedata) {
            $einvoicedata = EnviroEinvoice::create([
                'propertyid' => $this->propertyid,
                'apiid' => '',
                'apisecret' => '',
                'einvusername' => '',
                'customerid' => '',
                'einvpwd' => '',
                'activeyn' => 'N',
            ]);
        }

        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->where('role', 'Property')->first();

        if ($request->billno != '') {
            $latestbillno = $request->billno;
        } else {
            $vtype = 'BCNT';
            $years = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', ncurdate())
                ->whereDate('date_to', '>=', ncurdate())
                ->first();
            $latestbillno = Paycharge::where('propertyid', $this->propertyid)
                ->where('vprefix', $years->prefix)
                ->whereNull('modeset')
                ->max('billno');
        }

        $enviro_form = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        // $years = DateHelper::Uniqueyears($this->propertyid);
        $printsetup = PrintingSetup::where('propertyid', $this->propertyid)
            ->where('restcode', "FOM$this->propertyid")
            ->where('module', 'FOM')
            ->first();

        if (! isset($printsetup)) {
            return back()->with('error', 'Please Fill Printing Setup First');
        }

        return view('property.billreprint', [
            'company' => $companydata,
            'latestbillno' => $latestbillno,
            'enviro_form' => $enviro_form,
            // 'years' => $years,
            'year' => $request->year ?? '',
            'printsetup' => $printsetup,
        ]);
    }

    public function submitbillprint(Request $request)
    {
        $validate = $request->validate([
            'sno1' => 'required',
            'docid' => 'required',
        ]);

        $sno1 = $request->input('sno1');
        $sno = $request->sno;
        $folionodocid = $request->input('folionodocid');
        $count = $request->input('rowcount');
        $totalbalance = 0.00;
        $totalroomcharge = 0.00;
        $billprintingsummerised = $request->input('billprintingsummerised');
        $taxsummary = $request->input('taxsummary');
        $invoiceno = $request->input('invoiceno');

        for ($i = 1; $i <= $count; $i++) {
            $roomcharge = $request->input('room_charge_' . $i);
            $paydocid = $request->input('paydocid' . $i);
            $paysno = $request->input('paysno' . $i);
            $paysnoone = $request->input('paysnoone' . $i);
            if ($roomcharge !== null) {
                $updata = [
                    'amtdr' => $request->input('room_charge_' . $i),
                    'onamt' => $request->input('payonamt' . $i),
                    'billamount' => $request->input('paybillamt' . $i),
                    'updated_at' => $this->currenttime,
                ];

                Paycharge::where('propertyid', $this->propertyid)->where('docid', $paydocid)->where('sno', $paysno)
                    ->where('sno1', $paysnoone)->update($updata);
            }
        }

        $company = Companyreg::where('propertyid', $this->propertyid)->where('role', 'Property')->first();

        $guest = RoomOcc::select('roomocc.*', 'guestprof.mobile_no', 'guestprof.guestsign')
            ->leftJoin('guestprof', function ($join) {
                $join->on('guestprof.docid', '=', 'roomocc.docid');
            })
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $folionodocid)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.sno', $sno)
            ->first();

        // $paycharger = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $folionodocid)->where('sno', $sno)
        //     ->where('sno1', $sno1)->first();

        $paycharger = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $folionodocid)
            ->where('sno1', $sno1)->first();

        $chargedt = Paycharge::where('propertyid', $this->propertyid)->where('folionodocid', $folionodocid)
            ->where('sno1', $sno1)->get();

        $paycode = ['RMCH' . $this->propertyid, 'MEGE' . $this->propertyid];
        foreach ($chargedt as $row) {
            $totalbalance += $row->amtdr;
        }

        // Insert fombilldetails and increment BCNT voucher prefix (only once, in submitbillprint)
        $chkvpfb = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', 'BCNT')
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->lockForUpdate()
            ->first();

        if ($chkvpfb) {
            $bcntno = $chkvpfb->start_srl_no + 1;
            $vprefixb = $chkvpfb->prefix;

            $existingFomBill = DB::table('fombilldetails')
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->where('status', 'settle')
                ->where('sno1', $sno1)
                ->first();
            $roomocc = RoomOcc::where('propertyid', $this->propertyid)
                ->where('sno1', $sno1)
                ->where('docid', $folionodocid)
                ->first();

            if (! $existingFomBill) {

                if ($roomocc) {
                    $insertdatafom = [
                        'created_at' => $this->currenttime,
                        'u_name' => Auth::user()->u_name,
                        'propertyid' => $this->propertyid,
                        'u_ae' => 'a',
                        'guestname' => $roomocc->name,
                        'foliono' => $roomocc->folioNo,
                        'folionodocid' => $folionodocid,
                        'billdate' => $this->ncurdate,
                        'billno' => $bcntno,
                        'sno1' => $sno1,
                        'billamt' => $totalbalance ?? '0.00',
                        'status' => 'settle',
                    ];
                    DB::table('fombilldetails')->insert($insertdatafom);
                    VoucherPrefix::where('propertyid', $this->propertyid)
                        ->where('v_type', 'BCNT')
                        ->where('prefix', $vprefixb)
                        ->increment('start_srl_no');
                }
            }

            // Update in paycharge By Deepak
            Paycharge::where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->where('sno1', $sno1)
                ->update([
                    'billno' => $bcntno,
                    'vprefix' => $vprefixb,
                ]);
        }

        $enviro = EnviroFom::where('propertyid', $this->propertyid)->first();
        $paycode = ['RMCH' . $this->propertyid, 'MEGE' . $this->propertyid];

        $igncode = [];
        $settlecodes = [];
        $revmasttax = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'T')->where('type', 'Cr')->get();
        $revmastpay = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'P')->where('type', 'Dr')->get();

        foreach ($revmasttax as $row) {
            $igncode[] = $row->rev_code;
        }

        foreach ($revmastpay as $row) {
            $settlecodes[] = $row->rev_code;
        }

        $charged = [];
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $folionodocid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $cond = ['paycharge.msno1' => $rocc->sno1];
        } else {
            $cond = ['paycharge.sno1' => $sno1];
        }
        if ($enviro->billprintingsummerised == 'Y') {
            $charged1 = Paycharge::select(
                'paycharge.vdate',
                'paycharge.vtype',
                'paycharge.vno',
                'paycharge.comments',
                'paycharge.roomno',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.amtcr) as amtcr'),
                'plan_mast.name as plankanaam',
                'paycharge.split',
                'paycharge.paycode'
            )
                ->leftJoin('roomocc', function ($join) {
                    $join->on('roomocc.docid', '=', 'paycharge.folionodocid')
                        ->on('roomocc.sno1', '=', 'paycharge.sno1')
                        ->whereNot('roomocc.type', 'O')
                        ->where('roomocc.propertyid', $this->propertyid);
                })
                ->leftJoin('plan_mast', function ($join) {
                    $join->on('roomocc.plancode', '=', 'plan_mast.pcode')
                        ->where('plan_mast.propertyid', $this->propertyid);
                })
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $folionodocid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->whereIn('paycharge.paycode', $paycode)
                ->groupBy('paycharge.roomno', 'paycharge.vdate')
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            foreach ($charged1 as $row) {
                $totalroomcharge += $row->amtdr;
                $charged[] = [
                    'vdate' => $row->vdate,
                    'vtype' => $row->vtype,
                    'vno' => $row->vno,
                    'comments' => $row->plankanaam . ' For Room ' . $row->roomno,
                    'amtdr' => $row->amtdr,
                    'amtcr' => $row->amtcr,
                    'split' => $row->split,
                    'paycode' => $row->paycode,
                ];
            }

            $charged2 = Paycharge::select(
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->where($cond)
                ->whereNotIn('paycharge.paycode', $paycode)
                ->whereNot('paycharge.paycode', 'ROFF' . $this->propertyid)
                ->whereNull('paycharge.modeset')
                ->whereNotIn('paycharge.paycode', $igncode)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();
            foreach ($charged2 as $row2) {
                $totalroomcharge += $row2->amtdr;
                $charged[] = [
                    'vdate' => $row2->vdate,
                    'vtype' => $row2->vtype,
                    'vno' => $row2->vno,
                    'comments' => $row2->comments,
                    'amtdr' => $row2->amtdr,
                    'amtcr' => $row2->amtcr,
                    'split' => $row2->split,
                    'paycode' => $row2->paycode,
                ];
            }
        } else {
            $charged = Paycharge::select(
                'vdate',
                'vtype',
                'vno',
                'comments',
                'amtdr',
                'amtcr',
                'split',
                'paycode'
            )
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $folionodocid)
                ->whereNot('paycode', 'ROFF' . $this->propertyid)
                ->whereNull('paycharge.modeset')
                ->where($cond)
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();

            $totalroomcharge = $charged->sum('amtdr');
        }

        return response()->json([
            'company' => $company,
            'guest' => $guest,
            'paycharger' => $paycharger,
            'totalbalance' => $totalbalance,
            'totalroomcharge' => $totalroomcharge,
            'billprintingsummerised' => $billprintingsummerised,
            'charged' => $charged,
            'taxsummary' => $taxsummary,
            'invoiceno' => $invoiceno,
            'igncode' => $igncode,
        ]);
    }

    // public function submitbillprint(Request $request)
    // {
    //     $validate = $request->validate([
    //         'sno1' => 'required',
    //         'docid' => 'required',
    //     ]);
    //     $count = 50;
    //     for ($i = 1; $i <= $count; $i++) {
    //         $roomcharge = $request->input('room_charge_' . $i);
    //         $paydocid = $request->input('paydocid' . $i);
    //         $paysno = $request->input('paysno' . $i);
    //         $paysnoone = $request->input('paysnoone' . $i);
    //         if ($roomcharge !== null) {
    //             $updata = [
    //                 'amtdr' => $request->input('room_charge_' . $i),
    //                 'onamt' => $request->input('payonamt' . $i),
    //                 'billamount' => $request->input('paybillamt' . $i),
    //                 'updated_at' => $this->currenttime,
    //             ];

    //             Paycharge::where('propertyid', $this->propertyid)->where('docid', $paydocid)->where('sno', $paysno)
    //                 ->where('sno1', $paysnoone)->update($updata);
    //         }
    //     }
    // }

    public function submitbillreprint(Request $request)
    {
        $validate = $request->validate([
            'sno1' => 'required',
            'docid' => 'required',
        ]);
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $billno = $request->input('billno');
        $updata = [
            'billno' => $billno,
            'split' => $request->input('split'),
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
        ];

        $updatedata = [
            'updated_at' => $this->currenttime,
            'u_name' => Auth::user()->u_name,
            'u_ae' => 'e',
            'guestname' => $request->input('name'),
            'foliono' => $request->input('folioNo'),
            'billdate' => $ncurdate,
            'billno' => $billno,
            'billamt' => $request->input('billamt'),
            'status' => 'Settle',
        ];
        try {
            $updateing = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $request->input('docid'))->where('sno1', $request->input('sno1'))->update($updata);
            DB::table('fombilldetails')->where('propertyid', $this->propertyid)->where('folionodocid', $request->input('docid'))->update($updatedata);

            return redirect('company')->with('success', 'Bill Reprint Successfully');
        } catch (Exception $e) {
            return response()->json(['message' => 'Unable To Update Bill Reprint!'], 500);
        }
    }

    public function billcancel(Request $request)
    {
        try {
            $isAjax = $request->ajax();

            $docid = $request->input('docid');
            $sno1 = $request->input('sno1');
            $reason = $request->input('cancelreason') ?? '';

            $rocc = RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('leaderyn', 'Y')
                ->first();

            // return $rocc;

            $fomupdata = [
                'cancelremark' => $reason,
                'status' => 'Cancel',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];

            $payupdatedata = [
                'billno' => '0',
                'split' => 1,
            ];

            $roundid = 'ROFF' . $this->propertyid;

            if ($rocc) {
                $fetchbillno = DB::table('paycharge')
                    ->where('propertyid', $this->propertyid)
                    ->where('folionodocid', $rocc->docid)
                    ->where('msno1', $rocc->sno1)
                    ->value('billno');

                DB::table('paycharge')->where('msno1', $rocc->sno1)
                    ->where('folionodocid', $rocc->docid)
                    ->where('paycode', $roundid)->delete();

                DB::table('fombilldetails')
                    ->where('propertyid', $this->propertyid)
                    ->where('folionodocid', $rocc->docid)
                    ->where('billno', $fetchbillno)
                    ->update($fomupdata);

                DB::table('paycharge')
                    ->where('propertyid', $this->propertyid)
                    ->where('folionodocid', $rocc->docid)
                    ->where('msno1', $rocc->sno1)
                    ->update($payupdatedata);

                return back()->with('success', 'Bill Cancel Successfully');
            } else {
                // $fetchbillno = DB::table('paycharge')
                //     ->where('propertyid', $this->propertyid)
                //     ->where('folionodocid', $request->input('docid'))
                //     ->where('sno1', $request->input('sno1'))
                //     ->value('billno');

                $fetchbillno = FomBillDetail::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $request->input('docid'))
                    ->where('sno1', $request->input('sno1'))
                    ->where('status', 'settle')
                    ->value('billno');

                $fomupdata = [
                    'cancelremark' => $request->input('cancelreason') ?? '',
                    'status' => 'Cancel',
                    'updated_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ];

                $payupdatedata = [
                    'billno' => '0',
                    'split' => 1,
                ];

                // return $fetchbillno;

                $roundid = 'ROFF' . $this->propertyid;
                $delpaychargeround = DB::table('paycharge')->where('sno1', $request->input('sno1'))->where('folionodocid', $request->input('docid'))->where('paycode', $roundid)->delete();
                $fombilldetailsupdate = DB::table('fombilldetails')
                    ->where('propertyid', $this->propertyid)
                    ->where('folionodocid', $request->input('docid'))
                    ->where('billno', $fetchbillno)
                    ->update($fomupdata);

                $updatepaycharge = DB::table('paycharge')
                    ->where('propertyid', $this->propertyid)
                    ->where('folionodocid', $request->input('docid'))
                    ->where('sno1', $request->input('sno1'))
                    ->update($payupdatedata);

                return back()->with('success', 'Bill Cancel Successfully');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred while cancelling the bill');
        }
    }

    public function getroomoccdata(Request $request)
    {
        $docid = $request->input('docid');
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        $sno1 = $request->input('sno1');

        if ($rocc) {
            $adult = RoomOcc::where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->sum('adult');
            $children = RoomOcc::where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->sum('children');
        } else {
            $adult = RoomOcc::where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->value('adult');
            $children = RoomOcc::where('docid', $docid)
                ->where('propertyid', $this->propertyid)
                ->value('children');
        }

        $roomocc = DB::table('roomocc')
            ->select(
                'roomocc.*',
                DB::raw('SUM(roomocc.adult) as adultsum'),
                'paycharge.*',
                'guestfolio.company as companycode',
                'guestfolio.travelagent as guesttravel',
                'guestfolio.remarks',
                'roomocc.roomno as roomkanam',
                'room_cat.name as categname',
                'guestprof.nationality',
                'guestprof.city_name',
                'guestprof.mobile_no',
                'guestprof.state_name',
                'plan_mast.name as plankanam',
                'guestfolio.add1',
                'guestfolio.add2'
            )
            ->join('paycharge', 'paycharge.folionodocid', '=', 'roomocc.docid')
            ->join('room_cat', 'room_cat.cat_code', '=', 'roomocc.roomcat')
            ->join('guestprof', 'guestprof.guestcode', '=', 'roomocc.guestprof')
            ->join('guestfolio', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('plan_mast', 'plan_mast.pcode', '=', 'roomocc.plancode')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'paycharge.comp_code')
            ->where(function ($myquery) {
                $myquery->whereNotNull('paycharge.comp_code')
                    ->orWhereNull('paycharge.comp_code');
            })
            ->where('roomocc.docid', $docid)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.propertyid', $this->propertyid)
            ->where(function ($query) {
                $query->whereNotNull('roomocc.plancode')
                    ->orWhereNull('roomocc.plancode');
            })->where(function ($querys) {
                $querys->whereNull('roomocc.type')
                    ->orWhere('roomocc.type', 'O');
            })
            ->first();

        $einvoicebill = EInvoiceBill::where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->first();

        $guestprof = GuestFolioProfDetail::where('doc_id', $docid)
            ->where('propertyid', $this->propertyid)
            ->get();

        $guestprofcount = $guestprof->count();

        $names = '';

        if ($guestprofcount > 1 && isset($guestprof[0]->mprof)) {

            $mainname = GuestProf::where('propertyid', $this->propertyid)
                ->where('guestcode', $guestprof[0]->mprof)
                ->value('name');

            $othernames = GuestProf::where('propertyid', $this->propertyid)
                ->whereIn(
                    'guestcode',
                    $guestprof->pluck('guest_prof')->filter(function ($code) use ($guestprof) {
                        return $code != $guestprof[0]->mprof;
                    })
                )
                ->pluck('name')
                ->implode(',');

            $names = $mainname . '/' . $othernames;
        } else {
            $names = $roomocc->name;
        }

        $data = [
            'roomocc' => $roomocc,
            'adult' => $adult,
            'children' => $children,
            'einvoicebill' => $einvoicebill,
            'names' => $names,
        ];

        return json_encode($data);
    }

    public function getsubgroupdata(Request $request)
    {
        $comp_code = $request->input('comp_code');
        $subgroupdata = DB::table('subgroup')
            ->select('subgroup.name as subname', 'subgroup.citycode', 'subgroup.address as subaddress', 'subgroup.gstin as subgstin', 'cities.cityname', 'cities.state as substatecode', 'states.name as substatename')
            ->leftJoin('cities', 'cities.city_code', '=', 'subgroup.citycode')
            ->leftJoin('states', 'states.state_code', '=', 'cities.state')
            ->where('subgroup.sub_code', $comp_code)
            ->where('subgroup.propertyid', $this->propertyid)
            ->first();

        return json_encode($subgroupdata);
    }

    public function gettraveldata(Request $request)
    {
        $travelcode = $request->input('travelcode');
        $subgroupdata = DB::table('subgroup')
            ->select('subgroup.name as travelname', 'subgroup.citycode', 'subgroup.address as traveladdress', 'subgroup.gstin as travelgstin', 'cities.cityname', 'cities.state as travelstatecode', 'states.name as travelstatename')
            ->leftJoin('cities', 'cities.city_code', '=', 'subgroup.citycode')
            ->leftJoin('states', 'states.state_code', '=', 'cities.state')
            ->where('subgroup.sub_code', $travelcode)
            ->where('subgroup.propertyid', $this->propertyid)
            ->first();

        return json_encode($subgroupdata);
    }

    public function getamountfetch(Request $request)
    {
        DB::beginTransaction();
        try {
            $docid = $request->input('docid');
            $sno1 = $request->input('sno1');
            $sno = $request->input('sno');
            $splitval = $request->input('splitval');
            $totalsumdebit = str_replace(',', '', $request->input('totalsumdebit'));
            $totalroomcharge = str_replace(',', '', $request->input('totalroomcharge'));
            $onamttotals = str_replace(',', '', $request->input('onamttotals'));
            $billamount = $request->input('billamount');

            $data = DB::table('paycharge')
                ->select(
                    'revmast.name',
                    DB::raw('SUM(paycharge.taxper) AS total_taxper'),
                    DB::raw('SUM(paycharge.amtcr) AS total_amtcr')
                )
                ->join('revmast', 'paycharge.paycode', '=', 'revmast.rev_code')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.sno1', $sno1)
                ->where('paycharge.taxcondamt', '!=', 0)
                ->groupBy('revmast.name')
                ->get();

            $paydata = DB::table('paycharge')
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->first();

            $chkvpfb = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', 'BCNT')
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->lockForUpdate()
                ->first();

            if (! $chkvpfb) {
                throw new Exception('No valid voucher prefix found');
            }

            $vprefixb = $chkvpfb->prefix;
            $bcntno = $chkvpfb->start_srl_no;

            $year = date('Y', strtotime($this->ncurdate));
            $nextyear = $year + 1;

            $divcode = DB::table('company')->where('propertyid', $this->propertyid)->value('division_code');
            $ranges = DateHelper::calculateDateRanges($this->ncurdate);
            if ($divcode == null) {
                $invoiceno = 'BCNT/' . $ranges['finyear']['current'] . '-' . substr($ranges['finyear']['nextyear'], 2) . '/' . $bcntno;
            } else {
                $invoiceno = $divcode . '/' . $ranges['finyear']['current'] . '-' . substr($ranges['finyear']['nextyear'], 2) . '/' . $bcntno;
            }

            $rocc = RoomOcc::where('propertyid', $this->propertyid)
                ->where('docid', $docid)
                ->where('leaderyn', 'Y')
                ->first();

            $updata = [
                'billno' => $bcntno,
                'split' => '1',
                'updated_at' => $this->currenttime,
            ];

            if ($rocc) {
                $rooms = RoomOcc::where('propertyid', $this->propertyid)
                    ->where('docid', $docid)
                    ->where('type', 'O')
                    ->groupBy('roomno')
                    ->get();

                Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $docid)
                    ->where('msno1', $rocc->sno1)
                    ->update($updata);

                $data2 = DB::table('paycharge')
                    ->select('revmast.name', DB::raw('SUM(paycharge.amtdr) as taxsum'))
                    ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('paycharge.folionodocid', $docid)
                    ->where('paycharge.msno1', $rocc->sno1)
                    ->where('paycharge.split', $splitval)
                    ->where('revmast.field_type', 'T')
                    ->groupBy('revmast.name')
                    ->get();
                $msno1 = $rocc->sno1;
            } else {
                $rooms = '';
                Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $docid)
                    ->where('sno1', $sno1)
                    ->update($updata);

                $data2 = DB::table('paycharge')
                    ->select('revmast.name', DB::raw('SUM(paycharge.amtdr) as taxsum'))
                    ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                    ->where('paycharge.folionodocid', $docid)
                    ->where('paycharge.sno1', $sno1)
                    ->where('paycharge.split', $splitval)
                    ->where('revmast.field_type', 'T')
                    ->groupBy('revmast.name')
                    ->get();
                $msno1 = 0;
            }

            DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->where('modeset', 'S')
                ->update(['billno' => 0]);

            $roomocc = RoomOcc::where('propertyid', $this->propertyid)
                ->where('sno1', $sno1)
                ->where('docid', $docid)
                ->first();

            $sumfieldc = DB::table('paycharge')
                ->join('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->where('revmast.field_type', 'C')
                ->whereNot('paycharge.paycode', 'RMCH' . $this->propertyid)
                ->whereNot('paycharge.paycode', 'ROFF' . $this->propertyid)
                ->sum('paycharge.amtdr');

            $creditsum = DB::table('paycharge')
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->whereNull('modeset')
                ->sum('amtcr');

            $taxnames = $data2->pluck('name')->toArray();
            $totaltax = $data2->pluck('taxsum')->toArray();

            $totalcredit = $data->sum('total_amtcr');
            $betotal = $onamttotals;
            $toalaftertaxadd = floatval($betotal) + array_sum($totaltax);
            $difference = $toalaftertaxadd - $creditsum;
            $differencenew = round($difference);
            // Log::info('Difference before round off: ' . $difference);
            $envfom = EnviroFom::where('propertyid', Auth::user()->propertyid)->first();
            $datacc = calculateRoundOff($differencenew, $envfom->roundofftype);

            $rev_codechk = 'ROFF' . $this->propertyid;
            $chkexistpay = DB::table('paycharge')
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->where('paycode', $rev_codechk)
                ->first();

            if (isset($datacc['roundoff']) && ! $chkexistpay && $datacc['roundoff'] > 0) {
                $vtype = 'REV';
                $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->whereDate('date_from', '<=', $this->ncurdate)
                    ->whereDate('date_to', '>=', $this->ncurdate)
                    ->lockForUpdate()
                    ->first();

                $start_srl_no = $chkvpf->start_srl_no + 1;
                $vprefix = $chkvpf->prefix;

                $sno = DB::table('paycharge')
                    ->where('folionodocid', $docid)
                    ->where('sno1', $sno1)
                    ->max('sno');

                $rev_code = 'ROFF' . $this->propertyid;
                $revmast = DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('rev_code', $rev_code)
                    ->first();

                $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;

                $insertpaydata = [
                    'propertyid' => $this->propertyid,
                    'docid' => $docid,
                    'sno' => $sno + 1,
                    'sno1' => $paydata->sno1,
                    'msno1' => $msno1,
                    'vtype' => $vtype,
                    'vno' => $start_srl_no,
                    'vprefix' => $vprefix,
                    'vdate' => $this->ncurdate,
                    'vtime' => date('H:i:s'),
                    'guestprof' => $paydata->guestprof,
                    'comp_code' => $paydata->comp_code,
                    'travel_agent' => $paydata->travel_agent,
                    'comments' => $revmast->name,
                    'paycode' => $revmast->rev_code,
                    'amtcr' => 0.00,
                    'amtdr' => $datacc['roundoff'],
                    'tipamt' => $paydata->tipamt,
                    'roomcat' => $paydata->roomcat,
                    'roomtype' => $paydata->roomtype,
                    'roomno' => $paydata->roomno,
                    'foliono' => $paydata->foliono,
                    'cardno' => $paydata->cardno,
                    'cardholder' => $paydata->cardholder,
                    'chqno' => $paydata->chqno,
                    'chqdate' => $paydata->chqdate,
                    'expdate' => $paydata->expdate,
                    'bookno' => $paydata->bookno,
                    'restcode' => $paydata->restcode,
                    'billamount' => $datacc['billamt'] ?? '0.00',
                    'contraid' => $paydata->contraid,
                    'dbtchkin' => $paydata->dbtchkin,
                    'taxper' => 0,
                    'onamt' => 0.00,
                    'split' => $paydata->split,
                    'modeset' => 'S',
                    'billno' => $paydata->billno,
                    'settledate' => $paydata->settledate,
                    'batchno' => $paydata->batchno,
                    'plancharge' => $paydata->plancharge,
                    'fixedchargecode' => $paydata->fixedchargecode,
                    'relatdfoliono' => $paydata->relatdfoliono,
                    'folionodocid' => $paydata->folionodocid,
                    'refno' => $paydata->refno,
                    'plancode' => $paydata->plancode,
                    'seqno' => $paydata->seqno,
                    'relatedfolionodocid' => $paydata->relatedfolionodocid,
                    'refdocid' => $paydata->refdocid,
                    'remarks' => $paydata->remarks,
                    'au_name' => $paydata->au_name,
                    'aupdated_at' => $paydata->aupdated_at,
                    'taxcondamt' => 0.00,
                    'taxstru' => $paydata->taxstru,
                    'agac' => $paydata->agac,
                    'txnno' => $paydata->txnno,
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                ];

                DB::table('paycharge')->insert($insertpaydata);
                VoucherPrefix::where('propertyid', $this->propertyid)
                    ->where('v_type', $vtype)
                    ->where('prefix', $vprefix)
                    ->increment('start_srl_no');
            }

            $retdata = [
                'sumfieldc' => $sumfieldc,
                'totalroomcharge' => $totalroomcharge,
                'taxname' => $taxnames,
                'taxedamount' => $totaltax,
                'toalaftertaxadd' => str_replace(',', '', number_format($toalaftertaxadd, 2)),
                // 'toalaftertaxadd' => $datacc['billamt'],
                'totalcredit' => str_replace(',', '', number_format($totalcredit, 2)),
                'netamount' => $datacc['billamt'],
                'betotal' => $betotal,
                'invoiceno' => $invoiceno,
                'roundoff' => $datacc['roundoff'],
                'creditsum' => $creditsum,
                'totalsumdebit' => $totalsumdebit,
                'rooms' => $rooms,
            ];

            DB::commit();

            return response()->json($retdata);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json([
                'error' => true,
                'message' => $e->getMessage(),
                'line' => $e->getLine(),
            ], 500);
        }
    }

    public function getamountfetch2(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $billno = $request->input('billno');
        $username = FomBillDetail::where('propertyid', $this->propertyid)
            ->where('status', 'settle')
            ->where('folionodocid', $docid)
            ->where('billno', $billno)->first();
        $splitval = $request->input('splitval');
        $totalsumdebit = str_replace(',', '', $request->input('totalsumdebit'));
        $totalbalance = str_replace(',', '', $request->input('totalbalance'));
        $totalroomcharge = str_replace(',', '', $request->input('totalroomcharge'));

        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        $paymentstmp = Paycharge::where('propertyid', $this->propertyid)
            ->where('modeset', 'S')
            ->whereNot('paycode', 'ROFF' . $this->propertyid);

        if ($rocc) {
            $payments = $paymentstmp->where('paycharge.folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->get();
        } else {
            $payments = $paymentstmp->where('paycharge.folionodocid', $docid)
                ->where('sno1', $sno1)
                ->get();
        }

        $pays = [];
        foreach ($payments as $pay) {
            if ($pay->paytype == 'Company') {
                $companyname = SubGroup::where('propertyid', $this->propertyid)->where('sub_code', $pay->comp_code)->value('name');
                $pays[] = [
                    'name' => $pay->paytype . ' (' . $companyname . ')  ',
                    'amt' => $pay->amtcr,
                ];
            } else {
                $pays[] = [
                    'name' => $pay->paytype,
                    'amt' => $pay->amtcr,
                ];
            }
        }

        $igncode = [];
        $revmasttax = Revmast::where('propertyid', $this->propertyid)->where('field_type', 'T')->where('type', 'Cr')->get();
        foreach ($revmasttax as $row) {
            $igncode[] = $row->rev_code;
        }

        if ($rocc) {
            $rooms = RoomOcc::where('propertyid', $this->propertyid)
                ->where('type', 'O')
                ->where('docid', $docid)->groupBy('roomno')->get();
            $taxes = Paycharge::select(
                'revmast.name',
                'paycharge.paycode',
                'paycharge.taxper',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.onamt) as onamt')
            )
                ->leftJoin('revmast', function ($join) {
                    $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                        ->where('revmast.propertyid', $this->propertyid);
                })
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.split', $splitval)
                ->where('paycharge.msno1', $rocc->sno1)
                ->whereIn('paycharge.paycode', $igncode)
                ->groupBy('paycharge.taxper')
                ->groupBy('paycharge.paycode')
                ->get();

            $data2 = DB::table('paycharge')
                ->select('revmast.name', DB::raw('SUM(paycharge.amtdr) as taxsum'))
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.msno1', $rocc->sno1)
                ->where('paycharge.split', $splitval)
                ->where('revmast.field_type', 'T')
                ->groupBy('revmast.name')
                ->get();

            $creditsum = DB::table('paycharge')
                ->where('folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->where('billno', $billno)
                ->sum('amtcr');
        } else {
            $rooms = '';
            $taxes = Paycharge::select(
                'revmast.name',
                'paycharge.paycode',
                'paycharge.taxper',
                DB::raw('SUM(paycharge.amtdr) as amtdr'),
                DB::raw('SUM(paycharge.onamt) as onamt')
            )
                ->leftJoin('revmast', function ($join) {
                    $join->on('revmast.rev_code', '=', 'paycharge.paycode')
                        ->where('revmast.propertyid', $this->propertyid);
                })
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.split', $splitval)
                ->where('paycharge.sno1', $sno1)
                ->whereIn('paycharge.paycode', $igncode)
                ->groupBy('paycharge.taxper')
                ->groupBy('paycharge.paycode')
                ->get();

            $data2 = DB::table('paycharge')
                ->select(
                    'revmast.name',
                    DB::raw('SUM(paycharge.amtdr) as taxsum'),
                    DB::raw('SUM(paycharge.taxper) as taxpersum')
                )
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->where('paycharge.split', $splitval)
                ->where('revmast.field_type', 'T')
                ->groupBy('revmast.name')
                ->get();

            $creditsum = DB::table('paycharge')
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->where('billno', $billno)
                ->where('split', $splitval)
                ->sum('amtcr');
            $msno1 = 0;
        }

        $betotal = $totalroomcharge;

        $taxnames = [];
        $totaltax = [];
        foreach ($data2 as $row) {
            $taxnames[] = $row->name;
            $totaltax[] = $row->taxsum;
        }

        // Log::info('totaltax: ' . json_encode($totaltax));

        $toalaftertaxadd = floatval($betotal) + array_sum($totaltax);
        $difference = $toalaftertaxadd - $creditsum;
        $formatted_difference = number_format($difference, 2);
        // $netamount = str_replace(',', '', $formatted_difference);
        // $fixnum = (substr($netamount, -2) == 00 ? '0.00' : 100 - substr($netamount, -2));
        // if (is_int($fixnum)) {
        //     $roundoff = '0.' . $fixnum;
        // } else {
        //     $roundoff = $fixnum;
        // }
        $differencenew = round($difference);
        // Log::info('Difference before round off: ' . $difference);
        $envfom = EnviroFom::where('propertyid', Auth::user()->propertyid)->first();
        $datacc = calculateRoundOff($differencenew, $envfom->roundofftype);
        // LOG::info('roundoff: ' . json_encode($datacc));
        // $netamount = str_replace(',', '', number_format($difference, 2));

        // $fixnum = (substr($netamount, -2) == 00 ? '0.00' : 100 - substr($netamount, -2));
        // $roundoff = is_int($fixnum) ? '0.' . sprintf('%02d', $fixnum) : $fixnum;
        $rofid = 'ROFF' . $this->propertyid;
        $fetchfombill = DB::table('fombilldetails')->where('propertyid', $this->propertyid)->where('billno', $billno)
            ->where('folionodocid', $docid)->where('status', 'settle')->first();
        $billamt = $fetchfombill->billamt;
        $fetchifexist = DB::table('paycharge')->where('folionodocid', $docid)->where('sno1', $rocc->sno1 ?? $sno1)->where('paycode', $rofid)->first();
        if ($fetchifexist) {
            $amtdrr = $fetchifexist->amtdr;
        }
        if ($totalbalance != $billamt && isset($datacc['roundoff']) && $datacc['roundoff'] > 0) {
            DB::table('paycharge')->where('folionodocid', $docid)->where('sno1', $rocc->sno1 ?? $sno1)->where('paycode', $rofid)->delete();
            $vtype = 'REV';
            $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->first();

            $start_srl_no = $chkvpf->start_srl_no + 1;
            $vprefix = $chkvpf->prefix;
            $paydata = DB::table('paycharge')->where('folionodocid', $docid)->where('sno1', $rocc->sno1 ?? $sno1)->first();
            $sno = DB::table('paycharge')->where('folionodocid', $docid)->where('sno1', $rocc->sno1 ?? $sno1)->max('sno');
            $rev_code = 'ROFF' . $this->propertyid;
            $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $rev_code)->first();
            $docid = $this->propertyid . $vtype . '‎ ‎ ' . $vprefix . '‎ ‎ ‎ ‎ ' . $start_srl_no;
            $insertpaydata = [
                'propertyid' => $this->propertyid,
                'docid' => $docid,
                'sno' => $sno + 1,
                'sno1' => $paydata->sno1,
                'msno1' => $rocc->sno1 ?? 0,
                'vtype' => $vtype,
                'vno' => $start_srl_no,
                'vprefix' => $vprefix,
                'vdate' => $this->ncurdate,
                'vtime' => date('H:i:s'),
                'guestprof' => $paydata->guestprof,
                'comp_code' => $paydata->comp_code,
                'travel_agent' => $paydata->travel_agent,
                'comments' => $revmast->name,
                'paycode' => $revmast->rev_code,
                'amtcr' => 0.00,
                'amtdr' => $datacc['roundoff'],
                'tipamt' => $paydata->tipamt,
                'roomcat' => $paydata->roomcat,
                'roomtype' => $paydata->roomtype,
                'roomno' => $paydata->roomno,
                'foliono' => $paydata->foliono,
                'cardno' => $paydata->cardno,
                'cardholder' => $paydata->cardholder,
                'chqno' => $paydata->chqno,
                'chqdate' => $paydata->chqdate,
                'expdate' => $paydata->expdate,
                'bookno' => $paydata->bookno,
                'restcode' => $paydata->restcode,
                'billno' => $billno,
                'billamount' => $datacc['billamt'],
                'modeset' => 'S',
                'contraid' => $paydata->contraid,
                'dbtchkin' => $paydata->dbtchkin,
                'taxper' => 0,
                'onamt' => 0.00,
                'split' => $paydata->split,
                'settledate' => $paydata->settledate,
                'batchno' => $paydata->batchno,
                'plancharge' => $paydata->plancharge,
                'fixedchargecode' => $paydata->fixedchargecode,
                'relatdfoliono' => $paydata->relatdfoliono,
                'folionodocid' => $paydata->folionodocid,
                'refno' => $paydata->refno,
                'plancode' => $paydata->plancode,
                'seqno' => $paydata->seqno,
                'relatedfolionodocid' => $paydata->relatedfolionodocid,
                'refdocid' => $paydata->refdocid,
                'remarks' => $paydata->remarks,
                'au_name' => $paydata->au_name,
                'aupdated_at' => $paydata->aupdated_at,
                'taxcondamt' => 0.00,
                'taxstru' => $paydata->taxstru,
                'agac' => $paydata->agac,
                'txnno' => $paydata->txnno,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ];
            DB::table('paycharge')->insert($insertpaydata);
            VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $vtype)
                ->where('prefix', $vprefix)
                ->increment('start_srl_no');
        }

        $retdata = [
            'taxname' => $taxnames,
            'taxedamount' => $totaltax,
            'toalaftertaxadd' => str_replace(',', '', number_format($toalaftertaxadd, 2)),
            // 'toalaftertaxadd' => $datacc['billamt'],
            'totalroomcharge' => $totalroomcharge,
            'netamount' => $datacc['billamt'],
            'roundoff' => $datacc['roundoff'],
            'creditsum' => $creditsum,
            'betotal' => $betotal,
            'u_name' => $username->u_name,
            'paymentname' => $result = collect($pays)->unique('name')->values()->toArray(),
            'rooms' => $rooms,
            'taxes' => $taxes,
            'igncode' => $igncode,
        ];

        return response()->json($retdata);
    }

    public function postsplit(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $sno = $request->input('sno');
        $split = $request->input('split');

        $updata = [
            'split' => $split,
            'updated_at' => $this->currenttime,
            'u_ae' => 'e',
        ];

        Paycharge::where('docid', $docid)->where('sno1', $sno1)->update($updata);

        return response()->json(['message' => 'Split Updated']);
    }

    public function fetchbilldataledger(Request $request)
    {
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $paychargedata = Paycharge::select('paycharge.*', 'revmast.field_type', 'revmast.nature as revnature')->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.msno1', $rocc->sno1)
                ->whereNull('paycharge.modeset')
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.vno', 'ASC')
                ->orderBy('paycharge.sno1', 'ASC')
                ->orderBy('paycharge.sno', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();
        } else {
            $paychargedata = Paycharge::select('paycharge.*', 'revmast.field_type', 'revmast.nature as revnature')->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $this->propertyid)
                ->where('paycharge.folionodocid', $docid)
                ->where('paycharge.sno1', $sno1)
                ->whereNull('paycharge.modeset')
                ->orderBy('paycharge.vdate', 'ASC')
                ->orderBy('paycharge.vno', 'ASC')
                ->orderBy('paycharge.sno1', 'ASC')
                ->orderBy('paycharge.sno', 'ASC')
                ->orderBy('paycharge.roomno', 'ASC')
                ->get();
        }

        return json_encode($paychargedata);
    }

    public function billprintview(Request $request)
    {
        $propertyid = $this->propertyid;
        $folionodocid = $request->query('folionodocid');
        $sno1 = $request->query('sno1');
        $json = $request->query('arrdata');
        $tbody = $request->query('tbody');
        $updatingstartsrl = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->where('v_type', 'BCNT')
            ->update(['start_srl_no' => DB::raw('start_srl_no + 1')]);
        $data = DB::table('voucher_prefix')->where('v_type', 'BCNT')->where('propertyid', $this->propertyid)->max('start_srl_no');
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $year = date('Y', strtotime($ncurdate));
        $nextyear = $year + 1;
        $invoiceno = 'BCNT/' . $year . '-' . substr($nextyear, -2) . '/' . $data;
        $sumfieldc = DB::table('paycharge')
            ->join('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.folionodocid', $folionodocid)
            ->where('revmast.field_type', 'C')
            ->where('paycharge.vtype', 'REV')
            ->sum('paycharge.amtdr');
        $arrdata = json_decode($json, true);
        $betotal = str_replace(',', '', number_format($arrdata['onamt'] + $sumfieldc, 2));
        $arrdata['betotal'] = $betotal;

        return view('property.billprintpdf', [
            'propertyid' => $propertyid,
            'invoiceno' => $invoiceno,
            'folionodocid' => $folionodocid,
            'sno1' => $sno1,
            'tbody' => $tbody,
            'arrdata' => $arrdata,
        ]);
    }

    public function billreprintview(Request $request)
    {
        $propertyid = $this->propertyid;
        $folionodocid = $request->query('folionodocid');
        $sno1 = $request->query('sno1');
        $tbody = $request->query('tbody');
        $json = $request->query('arrdata');
        $arrdata = json_decode($json, true);
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $year = date('Y', strtotime($ncurdate));
        $nextyear = $year + 1;
        $invoiceno = 'BCNT/' . $year . '-' . substr($nextyear, -2) . '/' . $arrdata['billno'];
        $sumfieldc = DB::table('paycharge')
            ->join('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
            ->where('paycharge.folionodocid', $folionodocid)
            ->where('revmast.field_type', 'C')
            ->where('paycharge.vtype', 'REV')
            ->sum('paycharge.amtdr');
        $betotal = str_replace(',', '', number_format($arrdata['onamt'] + $sumfieldc, 2));
        $arrdata['betotal'] = $betotal;

        return view('property.billprintpdf', [
            'propertyid' => $propertyid,
            'invoiceno' => $invoiceno,
            'folionodocid' => $folionodocid,
            'sno1' => $sno1,
            'tbody' => $tbody,
            'arrdata' => $arrdata,
        ]);
    }

    public function getcompdetails(Request $request)
    {
        $propertyid = $request->input('propertyid');
        $data = DB::table('company')
            ->select('company.*', 'enviro_form.logoyn', 'enviro_form.emailyn', 'enviro_form.websiteyn')
            ->leftJoin('enviro_form', 'enviro_form.propertyid', '=', 'company.propertyid')
            ->where('company.propertyid', $this->propertyid)->first();

        return json_encode($data);
    }

    public function getmaxvoucherbill(Request $request)
    {
        $updatingstartsrl = DB::table('voucher_prefix')
            ->where('propertyid', $this->propertyid)
            ->where('v_type', 'BCNT')
            ->update(['start_srl_no' => DB::raw('start_srl_no + 1')]);
        $data = DB::table('voucher_prefix')->where('v_type', 'BCNT')->where('propertyid', $this->propertyid)->max('start_srl_no');

        return json_encode($data);
    }

    public function getmaxvtype(Request $request)
    {
        $vtype = $request->input('vtype');
        $data = DB::table('voucher_prefix')->where('v_type', $vtype)->where('propertyid', $this->propertyid)->max('start_srl_no') + 1;

        return json_encode($data);
    }

    public function openchangeroom(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');

        // return $docid;
        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();

        $maxsno = DB::table('roomocc')
            ->where('propertyid', $this->propertyid)
            ->where('sno1', $sno1)
            ->where('docid', $docid)
            ->max('sno');

        $roomoccdata = DB::table('roomocc')->select(
            DB::raw("CASE 
            WHEN plandetails.rev_code IS NULL THEN 'N' 
            ELSE 'Y' 
            END AS planedit"),
            'plandetails.rev_code as brev_code',
            'plandetails.taxinc as btaxinc',
            'plandetails.taxstru as btaxstru',
            'plandetails.fixrate as bfixrate',
            'plandetails.planper as bplanper',
            'plandetails.amount as bamount',
            'plandetails.netplanamt as bnetplanamt',
            'plandetails.room_rate_before_tax as broom_rate_before_tax',
            'plandetails.total_rate as btotal_rate',
            'revmast.name as chargename',
            'roomocc.*',
            'roomocc.sno1 as roomoccsno1',
            'roomocc.docid as rodocid',
            'roomocc.name as clientname',
            'guestprof.*',
            'guestfolio.guestprof',
            'guestfolio.nodays',
            'guestfolio.roomcount',
            'guestfolio.company',
            'guestfolio.booking_source',
            'guestprof.complimentry',
            'guestfolio.busssource',
            'guestfolio.travelagent',
            'guestprof.pic_path',
            'plan_mast.pcode',
            'plan_mast.name as planname',
            'plan_mast.room_per as room_perplan',
            'room_mast.rcode',
            'room_mast.name as roomname',
            'guestprof.city',
            'guestprof.add1',
            'guestprof.add2',
            'cities.cityname as nameofcity',
            'cities.zipcode as cityzipcode',
            'guestprof.country_code',
            'guestprof.state_code',
            'states.name as nameofstate',
            'countries.name as nameofcountry',
            'countries.nationality as nameofnationality',
            'guestfolio.arrfrom',
            'guestfolio.destination',
            'guestfolio.travelmode',
            'guestfolio.purvisit',
            'guestfolio.rodisc',
            'guestfolio.rsdisc',
            'guestfolio.vehiclenum',
            'guestfolio.remarks',
            'guestfolio.pickupdrop'
        )
            ->leftJoin('plandetails', function ($join) {
                $join->on('plandetails.docid', '=', 'roomocc.docid')
                    ->on('plandetails.sno1', '=', 'roomocc.sno1');
            })
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'plandetails.rev_code')
            ->leftJoin('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->leftJoin('guestfolio', 'roomocc.docid', '=', 'guestfolio.docid')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('room_mast', 'roomocc.roomno', '=', 'room_mast.rcode')
            ->leftJoin('cities', 'guestprof.city', '=', 'cities.city_code')
            ->leftJoin('countries', 'guestprof.country_code', '=', 'countries.country_code')
            ->leftJoin('states', 'guestprof.state_code', '=', 'states.state_code')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $docid)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.sno', $sno)
            ->where('roomocc.sno', $maxsno)
            ->first();

        $checkindate = $roomoccdata->chkindate;
        $checkoutdate = $roomoccdata->depdate;
        $propertyid = $this->propertyid;
        $ncurdate = ncurdate();

        $cid = $roomoccdata->roomcat;
        $availrooms = DB::table('room_mast as rm')
            ->select('rm.rcode', 'rm.room_cat')
            ->where('rm.propertyid', $propertyid)
            ->where('rm.room_cat', $cid)
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $cid, $ncurdate, $checkoutdate) {
                $query->select('ro.roomno')
                    ->from('roomocc as ro')
                    ->where('ro.propertyid', $propertyid)
                    ->whereNull('ro.type')
                    ->where('ro.roomcat', $cid)
                    ->where('ro.chkindate', '<', $checkoutdate)
                    ->where('ro.depdate', '>=', $ncurdate);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $ncurdate, $checkoutdate) {
                $query->select('gb.RoomNo')
                    ->from('grpbookingdetails as gb')
                    ->where('gb.Property_ID', $propertyid)
                    ->where('gb.ArrDate', '<', $checkoutdate)
                    ->where('gb.DepDate', '>', $ncurdate)
                    ->where('gb.chkoutyn', 'N')
                    ->where('gb.Cancel', 'N')
                    ->where('gb.RoomNo', '!=', 0);
            })
            ->whereNotIn('rm.rcode', function ($query) use ($propertyid, $ncurdate, $checkoutdate) {
                $query->select('rb.roomcode')
                    ->from('roomblockout as rb')
                    ->where('rb.propertyid', $propertyid)
                    ->where('rb.fromdate', '<', $checkoutdate)
                    ->where('rb.todate', '>', $ncurdate)
                    ->where('rb.type', 'O');
            })
            ->get();

        $plans = PlanMast::where('room_cat', $roomoccdata->roomcat)
            ->where('propertyid', $this->propertyid)
            ->get();

        // return $roomoccdata;

        return view('property.changeroom', [
            'data' => $roomoccdata,
            'availrooms' => $availrooms,
            'roomcat' => $roomcat,
            'plans' => $plans,
        ]);
    }

    public function openadvancecharge(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');
        // echo $sno1 . ' - ' . $docid;
        // exit;
        $roomoccdata = DB::table('roomocc')
            ->select('roomocc.*', 'guestprof.con_prefix')
            ->join('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $docid)->where('roomocc.sno1', $sno1)->where('roomocc.sno', $sno)
            ->first();

        $records = DB::table('revmast')
            ->select('revmast.name', 'revmast.nature', 'revmast.rev_code', 'revmast.field_type', 'revmast.flag_type')
            ->selectRaw("CASE WHEN revmast.field_type = 'C' THEN NULL ELSE depart_pay.pay_code END AS pay_code")
            ->leftJoin('depart_pay', 'revmast.rev_code', '=', 'depart_pay.pay_code')
            ->where(function ($query) {
                $query->where('revmast.field_type', '=', 'P')
                    ->orWhere(function ($query) {
                        $query->where('revmast.field_type', '=', 'C')
                            ->where('revmast.flag_type', '=', 'FOM');
                    });
            })
            ->where('revmast.propertyid', '=', $this->propertyid)
            ->where('revmast.active', 'Y')
            ->distinct()
            ->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $restrooms = DB::table('roomocc')->where('propertyid', $this->propertyid)->whereNot('roomno', $roomoccdata->roomno)->where('type', null)->get();

        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.advancecharge', [
            'revdata' => $records,
            'data' => $roomoccdata,
            'restroooms' => $restrooms,
            'roomoccdata' => $roomoccdata,
            'ncurdate' => $ncurdate,
            'company' => $company,
            'companydata' => $companydata,
        ]);
    }

    public function fetchadvamt(Request $request)
    {
        $revcode = $request->input('rev_code');
        $amount = DB::table('revmast')->where('propertyid', $this->propertyid)->where('field_type', 'C')->where('rev_code', $revcode)->value('sales_rate');
        $narration = DB::table('revmast')->where('propertyid', $this->propertyid)->where('field_type', 'C')->where('rev_code', $revcode)->value('name');
        $data = [
            'amount' => $amount,
            'narration' => $narration,
        ];

        return json_encode($data);
    }

    public function fetchadvamtpay(Request $request)
    {
        $revcode = $request->input('rev_code');
        $docid = $request->input('docid');
        $sno1 = $request->input('sno1');

        $paydata = DB::table('paycharge')->where('propertyid', $this->propertyid)->where('folionodocid', $docid)->where('sno1', $sno1)->get();
        $debitamt = 0;
        $creditamt = 0;
        foreach ($paydata as $data) {
            $debitamt += $data->amtdr;
            $creditamt += $data->amtcr;
        }
        $fxdebitamt = str_replace(',', '', number_format($debitamt, 2));
        $fxcreditamt = str_replace(',', '', number_format($creditamt, 2));
        $sum = $fxdebitamt - $fxcreditamt;
        $data = [
            'sum' => round($sum, 2),
        ];

        return json_encode($data);
    }

    public function fetchrevnature(Request $request)
    {
        $revcode = $request->input('rev_code');
        $nature = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $revcode)->value('nature');
        $fieldtype = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $revcode)->value('field_type');
        $name = DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $revcode)->value('name');
        $data = [
            'nature' => $nature,
            'fieldtype' => $fieldtype,
            'name' => $name,
        ];

        return json_encode($data);
    }

    public function advanceReceiptPdf(Request $request)
    {
        $amount = (float) $request->query('amount', 0);
        $receiptType = $amount < 0 ? 'Refund' : 'Received';
        $advanceType = $amount < 0 ? 'As Refund' : 'As Advance';
        $absoluteAmount = abs($amount);
        $companyLogo = $request->query('logo', '');
        $logoPath = '';

        if ($companyLogo !== '') {
            $possibleLogoPath = public_path('storage/admin/property_logo/' . basename($companyLogo));

            if (file_exists($possibleLogoPath)) {
                $logoPath = 'file:///' . str_replace('\\', '/', $possibleLogoPath);
            }
        }

        $receiptNo = $request->query('rectno', '');

        if ($receiptNo === '') {
            $voucherType = $amount < 0 ? 'REV' : 'REC';
            $currentReceiptNo = VoucherPrefix::where('propertyid', $this->propertyid)
                ->where('v_type', $voucherType)
                ->whereDate('date_from', '<=', $this->ncurdate)
                ->whereDate('date_to', '>=', $this->ncurdate)
                ->value('start_srl_no');
            $receiptNo = $currentReceiptNo ? $currentReceiptNo + 1 : '';
        }

        $receipt = [
            'receiptNo' => $receiptNo,
            'companyName' => $request->query('compname', ''),
            'address' => $request->query('address', ''),
            'email' => $request->query('email', ''),
            'phone' => $request->query('phone', ''),
            'roomNo' => $request->query('roomno', ''),
            'guestName' => $request->query('name', ''),
            'date' => $request->query('date', date('d-m-Y')),
            'amount' => number_format($absoluteAmount, 2),
            'amountWords' => $this->amountInIndianWords((int) round($absoluteAmount)),
            'nature' => $request->query('nature', ''),
            'userName' => $request->query('user', Auth::user()->u_name ?? ''),
            'logoPath' => $logoPath,
            'receiptType' => $receiptType,
            'advanceType' => $advanceType,
        ];

        $pdf = Pdf::loadView('property.advancereceipt', compact('receipt'))
            ->setPaper('a4', 'portrait')
            ->setOption('isHtml5ParserEnabled', true)
            ->setOption('isRemoteEnabled', true)
            ->setOption('defaultFont', 'DejaVu Sans')
            ->setOption('dpi', 96)
            ->setOption('enable_php', false)
            ->setOption('enable_javascript', false);

        return $pdf->stream('advance-receipt-' . ($receipt['receiptNo'] ?: date('YmdHis')) . '.pdf');
    }

    public function guestLedgerAdvanceReceiptPdf(Request $request)
    {
        $row = $this->resolveGuestLedgerAdvanceRow(
            (string) $request->query('docid', ''),
            (int) $request->query('sno', 0)
        );

        if (! $row) {
            abort(404, 'Advance ledger row not found.');
        }

        return $this->streamAdvanceReceiptForPaycharge($row);
    }

    public function guestLedgerAdvanceEntry(Request $request)
    {
        $row = $this->resolveGuestLedgerAdvanceRow(
            (string) $request->query('docid', ''),
            (int) $request->query('sno', 0)
        );

        if (! $row) {
            return response()->json([
                'success' => false,
                'message' => 'Advance ledger row not found.',
            ], 404);
        }

        return response()->json([
            'success' => true,
            'row' => [
                'docid' => $row->docid,
                'sno' => $row->sno,
                'paycode' => $row->paycode,
                'amount' => ((float) $row->amtcr > 0 ? (float) $row->amtcr : -(float) $row->amtdr),
                'debit' => (float) $row->amtdr,
                'credit' => (float) $row->amtcr,
                'comments' => $row->comments,
                'vtype' => $row->vtype,
                'cardno' => $row->cardno,
                'cardholder' => $row->cardholder,
                'expdate' => $row->expdate,
                'bookno' => $row->bookno,
                'chqno' => $row->chqno,
                'comp_code' => $row->comp_code,
            ],
        ]);
    }

    public function updateGuestLedgerAdvanceEntry(Request $request)
    {
        $validated = $request->validate([
            'docid' => 'required|string',
            'sno' => 'required|integer',
            'paycode' => 'required|string',
            'amount' => 'required|numeric|not_in:0',
            'cardno' => 'nullable|string|max:16',
            'cardholder' => 'nullable|string|max:50',
            'expdate' => 'nullable|date',
            'bookno' => 'nullable|string|max:15',
            'chqno' => 'nullable|string|max:25',
            'upi_reference' => 'nullable|string|max:25',
            'comp_code' => 'nullable|string|max:10',
        ]);

        $row = $this->resolveGuestLedgerAdvanceRow($validated['docid'], (int) $validated['sno']);

        if (! $row) {
            return response()->json([
                'success' => false,
                'message' => 'Advance ledger row not found.',
            ], 404);
        }

        $revdata = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', $validated['paycode'])
            ->first();

        if (! $revdata) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid pay type selected.',
            ], 422);
        }

        DB::beginTransaction();

        try {
            $amount = (float) $validated['amount'];
            $postingAmount = abs($amount);
            $taxRows = DB::table('taxstru')
                ->where('propertyid', $this->propertyid)
                ->where('str_code', $revdata->tax_stru)
                ->get();
            $taxRateTotal = 0;

            if (($revdata->tax_inc ?? 'N') === 'Y') {
                foreach ($taxRows as $taxRow) {
                    $taxRateTotal += (float) $taxRow->rate;
                }

                if ($taxRateTotal > 0) {
                    $postingAmount = (float) str_replace(',', '', number_format(($postingAmount * 100) / (100 + $taxRateTotal), 2));
                }
            }

            [$amtdr, $amtcr, $vtype] = $this->resolveAdvancePostingAmounts($revdata, $amount, $postingAmount);
            $nature = strtolower($revdata->nature ?? '');
            $chargeName = strtolower($revdata->name ?? '');
            $isCreditCard = $nature === 'credit card';
            $isUpi = $nature === 'upi';
            $isCheque = $nature === 'cheque';
            $isBillToCompany = str_contains($chargeName, 'bill to company');

            DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $row->docid)
                ->where('sno1', $row->sno1)
                ->where('sno', $row->sno)
                ->update([
                    'paycode' => $revdata->rev_code,
                    'paytype' => $revdata->pay_type ?? '',
                    'comments' => $revdata->name,
                    'amtdr' => $amtdr,
                    'amtcr' => $amtcr,
                    'vtype' => $vtype,
                    'chqno' => $isCheque ? ($validated['chqno'] ?? '') : ($isUpi ? ($validated['upi_reference'] ?? '') : ''),
                    'cardno' => $isCreditCard ? ($validated['cardno'] ?? '') : '',
                    'cardholder' => $isCreditCard ? ($validated['cardholder'] ?? '') : '',
                    'expdate' => $isCreditCard ? ($validated['expdate'] ?? null) : null,
                    'bookno' => $isCreditCard ? ($validated['bookno'] ?? '') : '',
                    'comp_code' => $isBillToCompany ? ($validated['comp_code'] ?? '') : '',
                    'taxper' => $taxRateTotal,
                    'taxstru' => $revdata->tax_stru,
                    'taxcondamt' => 0,
                    'updated_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            $this->syncAdvanceTaxRows($row, $revdata, $taxRows, $postingAmount, $vtype);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Advance ledger row updated successfully.',
            ]);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Unable to update advance ledger row: ' . $e->getMessage(),
            ], 500);
        }
    }

    private function resolveGuestLedgerAdvanceRow(string $docid, int $sno)
    {
        if ($docid === '' || $sno <= 0) {
            return null;
        }

        $row = DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $docid)
            ->where('sno', $sno)
            ->first();

        if (! $row || ! $this->isAdvanceLedgerPaychargeRow($row)) {
            return null;
        }

        if ((float) $row->taxper > 0 && (int) $row->sno !== 1) {
            $mainRow = DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $row->docid)
                ->where('sno1', $row->sno1)
                ->where('sno', 1)
                ->first();

            if ($mainRow && $this->isAdvanceLedgerPaychargeRow($mainRow)) {
                return $mainRow;
            }
        }

        return $row;
    }

    private function isAdvanceLedgerPaychargeRow($row): bool
    {
        return (! empty($row->refdocid) && substr((string) $row->comments, 0, 7) === 'Advance')
            || in_array($row->vtype, ['REC', 'REV'], true);
    }

    private function streamAdvanceReceiptForPaycharge($row)
    {
        $company = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $roomOcc = DB::table('roomocc')
            ->select('roomocc.*', 'guestprof.con_prefix')
            ->leftJoin('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.docid', $row->folionodocid)
            ->where('roomocc.sno1', $row->sno1)
            ->first();
        $revNature = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', $row->paycode)
            ->value('nature');
        $amount = (float) $row->amtcr > 0 ? (float) $row->amtcr : -(float) $row->amtdr;
        $absoluteAmount = abs($amount);
        $logoPath = '';

        if (! empty($company->logo)) {
            $possibleLogoPath = public_path('storage/admin/property_logo/' . basename($company->logo));

            if (file_exists($possibleLogoPath)) {
                $logoPath = 'file:///' . str_replace('\\', '/', $possibleLogoPath);
            }
        }

        $receipt = [
            'receiptNo' => $row->vno,
            'companyName' => $company->comp_name ?? '',
            'address' => $company->address1 ?? '',
            'email' => $company->email ?? '',
            'phone' => $company->mobile ?? '',
            'roomNo' => $row->roomno,
            'guestName' => trim(($roomOcc->con_prefix ?? '') . ' ' . ($roomOcc->name ?? '')),
            'date' => date('d/m/Y', strtotime($row->vdate)),
            'amount' => number_format($absoluteAmount, 2),
            'amountWords' => $this->amountInIndianWords((int) round($absoluteAmount)),
            'nature' => $revNature ?? $row->comments,
            'userName' => $row->u_name,
            'logoPath' => $logoPath,
            'receiptType' => $amount < 0 ? 'Refund' : 'Received',
            'advanceType' => $amount < 0 ? 'As Refund' : 'As Advance',
        ];

        $pdf = Pdf::loadView('property.advancereceipt', compact('receipt'))
            ->setPaper('a4', 'portrait')
            ->setOption('isHtml5ParserEnabled', true)
            ->setOption('isRemoteEnabled', true)
            ->setOption('defaultFont', 'DejaVu Sans')
            ->setOption('dpi', 96)
            ->setOption('enable_php', false)
            ->setOption('enable_javascript', false);

        return $pdf->stream('advance-receipt-' . ($row->vno ?: date('YmdHis')) . '.pdf');
    }

    private function resolveAdvancePostingAmounts($revdata, float $inputAmount, float $postingAmount): array
    {
        $fieldType = strtolower($revdata->field_type ?? '');
        $type = strtolower($revdata->type ?? '');
        $amtdr = 0;
        $amtcr = 0;
        $vtype = 'REC';

        if ($fieldType === 'c' && $type === 'dr') {
            $amtcr = $postingAmount;
            $vtype = 'REV';
        } elseif ($fieldType === 'c' && $type === 'cr') {
            $amtdr = $postingAmount;
            $vtype = 'REV';
        } elseif ($fieldType === 'p' && $inputAmount < 0) {
            $amtdr = $postingAmount;
            $vtype = 'REV';
        } else {
            $amtcr = $postingAmount;
            $vtype = 'REC';
        }

        return [$amtdr, $amtcr, $vtype];
    }

    private function syncAdvanceTaxRows($row, $revdata, $taxRows, float $postingAmount, string $vtype): void
    {
        $fieldType = strtolower($revdata->field_type ?? '');
        $usedSnos = [$row->sno];

        if ($fieldType !== 'c') {
            DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $row->docid)
                ->where('sno1', $row->sno1)
                ->where('sno', '!=', $row->sno)
                ->delete();

            return;
        }

        foreach ($taxRows as $taxRow) {
            $taxAmount = round(($postingAmount * (float) $taxRow->rate) / 100, 2);

            if ($taxAmount <= 0) {
                continue;
            }

            $taxName = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $taxRow->tax_code)
                ->value('name');
            $taxSno = (int) $taxRow->sno + 1;
            $usedSnos[] = $taxSno;
            $taxPayload = [
                'paycode' => $taxRow->tax_code,
                'paytype' => null,
                'comments' => ($taxName ?: 'Tax') . ', Room No: ' . $row->roomno,
                'amtdr' => $taxAmount,
                'amtcr' => 0,
                'vtype' => $vtype,
                'taxper' => $taxRow->rate,
                'taxstru' => $revdata->tax_stru,
                'onamt' => $postingAmount,
                'taxcondamt' => $postingAmount,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
            ];

            $existingTaxRow = DB::table('paycharge')
                ->where('propertyid', $this->propertyid)
                ->where('docid', $row->docid)
                ->where('sno1', $row->sno1)
                ->where('sno', $taxSno)
                ->exists();

            if ($existingTaxRow) {
                DB::table('paycharge')
                    ->where('propertyid', $this->propertyid)
                    ->where('docid', $row->docid)
                    ->where('sno1', $row->sno1)
                    ->where('sno', $taxSno)
                    ->update($taxPayload);

                continue;
            }

            $insertPayload = (array) $row;
            unset($insertPayload['sn']);
            $insertPayload = array_merge($insertPayload, $taxPayload, [
                'sno' => $taxSno,
                'amtdr' => $taxAmount,
                'amtcr' => 0,
                'created_at' => $this->currenttime,
            ]);

            DB::table('paycharge')->insert($insertPayload);
        }

        DB::table('paycharge')
            ->where('propertyid', $this->propertyid)
            ->where('docid', $row->docid)
            ->where('sno1', $row->sno1)
            ->whereNotIn('sno', $usedSnos)
            ->delete();
    }

    private function amountInIndianWords(int $amount): string
    {
        if ($amount === 0) {
            return 'zero only';
        }

        if (strlen((string) $amount) > 9) {
            return 'amount too large';
        }

        $ones = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
        $tens = ['', '', 'twenty ', 'thirty ', 'forty ', 'fifty ', 'sixty ', 'seventy ', 'eighty ', 'ninety '];
        preg_match('/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/', str_pad((string) $amount, 9, '0', STR_PAD_LEFT), $matches);
        $parts = array_slice($matches, 1);
        $groups = ['crore ', 'lakh ', 'thousand ', 'hundred ', ''];
        $words = '';

        foreach ($parts as $index => $part) {
            $number = (int) $part;

            if ($number === 0) {
                continue;
            }

            if ($index === 3) {
                $words .= $ones[$number] . $groups[$index];

                continue;
            }

            $words .= ($number < 20 ? $ones[$number] : $tens[(int) ($number / 10)] . $ones[$number % 10]) . $groups[$index];
        }

        return trim($words) . ' only';
    }

    public function openroomsettlement(Request $request)
    {
        $docid = $request->query('docid');
        $sno1 = $request->query('sno1');
        $sno = $request->query('sno');
        $roomoccdata = DB::table('roomocc')
            ->select('roomocc.*', 'guestprof.con_prefix')
            ->join('guestprof', 'roomocc.guestprof', '=', 'guestprof.guestcode')
            ->where('roomocc.propertyid', $this->propertyid)
            ->where('roomocc.sno', $sno)
            ->where('roomocc.sno1', $sno1)
            ->where('roomocc.docid', $docid)->first();

        $rescode = 'FOM' . $this->propertyid;
        $records = DB::table('depart_pay')
            ->select('revmast.name', 'revmast.rev_code', 'depart_pay.pay_code', 'revmast.nature')
            ->leftJoin('revmast', 'revmast.rev_code', '=', 'depart_pay.pay_code')
            ->where('depart_pay.rest_code', '=', $rescode)
            ->where('depart_pay.propertyid', $this->propertyid)
            ->get();

        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $restrooms = DB::table('roomocc')->where('propertyid', $this->propertyid)->whereNot('roomno', $roomoccdata->roomno)->where('type', null)->get();

        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $rocc = RoomOcc::where('propertyid', $this->propertyid)->where('docid', $docid)->where('leaderyn', 'Y')->first();
        if ($rocc) {
            $tbl = DB::table('paycharge')
                ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                ->where('folionodocid', $docid)
                ->where('msno1', $rocc->sno1)
                ->first();
        } else {
            $tbl = DB::table('paycharge')
                ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                ->where('folionodocid', $docid)
                ->where('sno1', $sno1)
                ->first();
        }

        return view('property.roomsettlement', [
            'revdata' => $records,
            'data' => $roomoccdata,
            'restroooms' => $restrooms,
            'roomoccdata' => $roomoccdata,
            'ncurdate' => $ncurdate,
            'company' => $company,
            'companydata' => $companydata,
            'sno1' => $sno1,
            'tbl' => $tbl,
            'money' => '0',
        ]);
    }

    public function submitRoomSettle(Request $request)
    {
        // Validate incoming request
        $request->validate([
            'charge' => 'required',
            'amount' => 'required',
        ]);

        // Constants and frequently used values
        $propertyId = $this->propertyid;
        $docId = $request->input('docid');
        $sno = $request->input('sno');
        $sno1Main = $request->input('sno1main');
        $amount = $request->input('amount');
        $voucherType = 'REC';
        $currentDate = $this->ncurdate;
        $currentTime = $this->currenttime;
        $userName = Auth::user()->u_name;
        // $currentHour = date('H:i');
        $currentHour = $request->input('curtime');

        // Begin transaction to ensure data integrity
        DB::beginTransaction();

        try {
            // Get voucher prefix information
            $voucherPrefix = VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->whereDate('date_from', '<=', $currentDate)
                ->whereDate('date_to', '>=', $currentDate)
                ->first();

            if (! $voucherPrefix) {
                throw new Exception('Voucher prefix not found');
            }

            $voucherNumber = $voucherPrefix->start_srl_no + 1;
            $prefix = $voucherPrefix->prefix;
            $generatedDocId = $propertyId . $voucherType . ' ‎ ‎' . $prefix . ' ‎  ‎ ' . $voucherNumber;

            // Get room occupancy information
            $roomOccupancy = DB::table('roomocc')
                ->where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('sno', $sno)
                ->where('sno1', $sno1Main)
                ->first();

            if (! $roomOccupancy) {
                throw new Exception('Room occupancy record not found');
            }

            // Common update arrays
            $payChargeUpdate = [
                'settledate' => $currentDate,
                'updated_at' => $currentTime,
            ];

            $roomOccUpdate = [
                'userchkoutdate' => $currentDate,
                'chkoutuser' => $userName,
                'type' => 'O',
                'chkoutdate' => $currentDate,
                'u_ae' => 'e',
                'chkouttime' => $currentHour,
                'updated_at' => $currentTime,
            ];

            $grpBookingUpdate = [
                'chkoutyn' => 'Y',
                'U_AE' => 'e',
                'updated_at' => $currentTime,
            ];

            // Process leader room or individual room
            $leaderId = null;
            $billNumber = null;

            $leaderRoomOcc = RoomOcc::where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('leaderyn', 'Y')
                ->first();

            if ($leaderRoomOcc) {
                $leaderId = $leaderRoomOcc->sno1;
                // echo 'leader';
                // echo $propertyId . ' - ' . $leaderRoomOcc->docid . ' - ' . $leaderId;
                // exit;
                $chkrelatedgroup1 = Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->groupBy('relatedfolionodocid')
                    ->get();

                $chkrelatedgroup = Paycharge::where('propertyid', $this->propertyid)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->whereNotNull('relatedfolionodocid')
                    ->where('relatedfolionodocid', '!=', '')
                    ->groupBy('relatedfolionodocid')
                    ->first();
                $tbl = DB::table('paycharge')
                    ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                    ->where('folionodocid', $request->input('docid'))
                    ->where('msno1', $leaderRoomOcc->sno1)
                    ->first();
                // var_dump($chkrelatedgroup);
                // exit;

                if (is_null($chkrelatedgroup)) {
                    // echo 'leaderempty';
                    // exit;
                    RoomOcc::where('propertyid', $propertyId)
                        ->where('docid', $leaderRoomOcc->docid)
                        ->update($roomOccUpdate);

                    GrpBookinDetail::where('Property_ID', $propertyId)
                        ->where('ContraDocId', $leaderRoomOcc->docid)
                        ->update($grpBookingUpdate);
                } else {
                    // echo 'leadernotempty';
                    // exit;
                    $relatedDocIds = $chkrelatedgroup1->pluck('relatedfolionodocid');

                    RoomOcc::where('propertyid', $propertyId)
                        ->whereIn('docid', $relatedDocIds)
                        ->update($roomOccUpdate);

                    GrpBookinDetail::where('Property_ID', $propertyId)
                        ->whereIn('ContraDocId', $relatedDocIds)
                        ->update($grpBookingUpdate);
                }

                // exit;

                $billNumber = Paycharge::where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->value('billno');

                Paycharge::where('propertyid', $propertyId)
                    ->where('folionodocid', $leaderRoomOcc->docid)
                    ->where('msno1', $leaderId)
                    ->update($payChargeUpdate);

                $rooms = DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $leaderRoomOcc->docid)
                    ->get();

                foreach ($rooms as $row) {
                    RoomMast::where('propertyid', $this->propertyid)->where('rcode', $row->roomno)->where('type', 'RO')->where('inclcount', 'Y')
                        ->update(['room_stat' => 'D']);
                }
            } else {
                // echo 'nonleader';
                // exit;
                $tbl = DB::table('paycharge')
                    ->select(DB::raw('SUM(amtdr) as amtdr'), DB::raw('SUM(amtcr) as amtcr'), DB::raw('(SUM(amtdr) - SUM(amtcr)) as balance'))
                    ->where('folionodocid', $request->input('docid'))
                    ->where('sno1', $request->input('sno1main'))
                    ->first();
                $billNumber = DB::table('paycharge')
                    ->where('folionodocid', $docId)
                    ->where('sno1', $sno1Main)
                    ->value('billno');

                DB::table('paycharge')
                    ->where('propertyid', $propertyId)
                    ->where('folionodocid', $docId)
                    ->where('sno1', $sno1Main)
                    ->update($payChargeUpdate);

                DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $docId)
                    ->where('sno1', $sno1Main)
                    ->where('sno', $sno)
                    ->update($roomOccUpdate);

                GrpBookinDetail::where('Property_ID', $propertyId)
                    ->where('ContraDocId', $docId)
                    ->where('ContraSno', $sno1Main)
                    ->update($grpBookingUpdate);

                $rooms = DB::table('roomocc')
                    ->where('propertyid', $propertyId)
                    ->where('docid', $docId)
                    ->where('sno1', $sno1Main)
                    ->where('sno', $sno)
                    ->get();

                foreach ($rooms as $row) {
                    RoomMast::where('propertyid', $this->propertyid)->where('rcode', $row->roomno)->where('type', 'RO')->where('inclcount', 'Y')
                        ->update(['room_stat' => 'D']);
                }
            }

            // exit;

            // Update bill details
            DB::table('fombilldetails')
                ->where('folionodocid', $docId)
                ->where('billno', $billNumber)
                ->update(['settamt' => $amount]);

            // Process payment charges
            $chargeCount = 0;
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'chargecode') === 0) {
                    $chargeCount++;
                }
            }

            $serialNumber = 1;
            $chargeEntries = [];

            for ($i = 1; $i <= $chargeCount; $i++) {
                $chargeCode = $request->input('chargecode' . $i);
                $chargeAmount = $request->input('amtrow' . $i);

                // Skip empty rows
                if (empty($chargeCode) || empty($chargeAmount) || $chargeAmount == 0) {
                    continue;
                }

                $payCodeInfo = Revmast::where('propertyid', $propertyId)
                    ->where('rev_code', $chargeCode)
                    ->first();

                if (! $payCodeInfo) {
                    continue;
                }

                $chargeEntries[] = [
                    'propertyid' => $propertyId,
                    'docid' => $generatedDocId,
                    'vno' => $voucherNumber,
                    'vtype' => $voucherType,
                    'sno' => $serialNumber,
                    'sno1' => $sno1Main,
                    'msno1' => $leaderId ?? 0,
                    'chqno' => $request->input('checkno') ?: $request->input('referencenoupi'),
                    'cardno' => $request->input('crnumber'),
                    'cardholder' => $request->input('holdername'),
                    'expdate' => $request->input('expdatecr'),
                    'bookno' => $request->input('batchno'),
                    'vdate' => $currentDate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $prefix,
                    'comp_code' => $request->input('compcode' . $i) ?? '',
                    'paycode' => $chargeCode,
                    'paytype' => $payCodeInfo->pay_type ?? '',
                    'comments' => $request->input('chargenarration' . $i),
                    'guestprof' => $roomOccupancy->guestprof,
                    'roomno' => $request->input('rooomoccroomno') ?? $roomOccupancy->roomno,
                    'amtcr' => $chargeAmount,
                    'roomtype' => $roomOccupancy->roomtype,
                    'roomcat' => $roomOccupancy->roomcat,
                    'foliono' => $roomOccupancy->folioNo,
                    'restcode' => 'FOM' . $propertyId,
                    'billamount' => 0.00,
                    'taxper' => 0,
                    'onamt' => 0.00,
                    'folionodocid' => $roomOccupancy->docid,
                    'taxcondamt' => 0,
                    'taxstru' => '',
                    'created_at' => $currentTime,
                    'settledate' => $currentDate,
                    'u_name' => $userName,
                    'u_ae' => 'a',
                    'modeset' => 'S',
                ];

                $serialNumber++;
            }

            // Bulk insert charge entries for better performance
            if (! empty($chargeEntries)) {
                DB::table('paycharge')->insert($chargeEntries);
            }

            // Verify inserted records match expected count
            $expectedRows = $request->input('countrows');
            $actualRows = Paycharge::select('paycharge.*', 'revmast.name as revname')
                ->leftJoin('revmast', 'revmast.rev_code', '=', 'paycharge.paycode')
                ->where('paycharge.propertyid', $propertyId)
                ->where('paycharge.folionodocid', $roomOccupancy->docid)
                ->where('vtype', $voucherType)
                ->whereNotNull('paycharge.paycode')
                ->whereNotNull('paycharge.paytype')
                ->whereNotNull('paycharge.modeset')
                ->where('sno1', $sno1Main)
                ->whereNot('paycharge.amtcr', 0)
                ->count();

            // if ($expectedRows != $actualRows) {
            //     // Clean up incomplete records
            //     Paycharge::where('propertyid', $propertyId)
            //         ->where('vtype', $voucherType)
            //         ->whereNotNull('paycharge.paycode')
            //         ->whereNotNull('paycharge.paytype')
            //         ->whereNotNull('paycharge.modeset')
            //         ->where('folionodocid', $roomOccupancy->docid)
            //         ->where('billno', 0)
            //         ->where('sno1', $sno1Main)
            //         ->delete();

            //     throw new Exception('Row count mismatch');
            // }
            // return 'sagar2';

            // Update voucher prefix
            VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->where('prefix', $prefix)
                ->increment('start_srl_no');

            $guestprof = GuestProf::where('propertyid', $propertyId)
                ->where('docid', $docId)->first();

            // if ($wpenv != null) {
            //     if ($wpenv->checkyn == 'Y' && $wpenv->checkoutmsg != '' && $wpenv->checkouttemplate != '' && $guestprof->mobile_no != '') {
            //         $whatsapp = new WhatsappSend();
            //         $whatsapp->CheckoutSend($tbl->balance, $roomOccupancy->roomno, $roomOccupancy->name, $guestprof->mobile_no);
            //     }
            // }

            // exit;
            DB::commit();
            $wpenv = EnviroWhatsapp::where('propertyid', $this->propertyid)->first();

            if ($wpenv != null) {
                $mob = GuestProf::where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value('mobile_no');
                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkoutmsg != '' &&
                    $wpenv->checkoutmsgarray != '' &&
                    $wpenv->checkouttemplate != '' &&
                    $mob != ''
                ) {
                    $checkoutmsgarray = json_decode($wpenv->checkoutmsgarray, true);

                    $msgdata = [];
                    foreach ($checkoutmsgarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'billamount')) {
                            $value = $tbl->balance;
                        } else {
                            $value = DB::table($table)->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value($colname);
                        }
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend;
                    $whatsapp->MuzzTech($msgdata, $mob, 'Checkout', 'checkouttemplate');
                }

                if (
                    $wpenv->checkyn == 'Y' &&
                    $wpenv->checkoutmsgadmin != '' &&
                    $wpenv->checkoutmsgadminarray != '' &&
                    $wpenv->checkoutmsgadmintemplate != '' &&
                    $wpenv->managementmob != ''
                ) {
                    $checkoutmsgadminarray = json_decode($wpenv->checkoutmsgadminarray, true);

                    $msgdata = [];
                    foreach ($checkoutmsgadminarray as $row) {
                        [$colname, $table] = $row;
                        if (endsWith($colname, 'billamount')) {
                            $value = $tbl->balance;
                        } else {
                            if ($table == 'paycharge') {
                                $value = DB::table($table)->where('vtype', 'REC')->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('folionodocid', $roomOccupancy->docid)->value($colname);
                            } else {
                                $value = DB::table($table)->where('sno', $sno)->where('sno1', $sno1Main)->where('propertyid', $this->propertyid)->where('docid', $roomOccupancy->docid)->value($colname);
                            }
                        }
                        $msgdata[] = $value;
                    }

                    $whatsapp = new WhatsappSend;
                    $whatsapp->MuzzTech($msgdata, $wpenv->managementmob, 'Checkout Admin', 'checkoutmsgadmintemplate');
                }
            }

            return redirect('autorefreshmain');
        } catch (Exception $e) {
            DB::rollback();

            return back()->with('error', 'Unable To Submit Room Re Settlement: ' . $e->getMessage());
        }
    }

    public function openbillresettlement(Request $request)
    {
        $permission = revokeopen(141116);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        // $year = date('Y', strtotime($ncurdate));
        // $nextyear = $year + 1;
        // $latestbillno = Paycharge::where('propertyid', $this->propertyid)->where('vprefix', date('Y', strtotime($this->ncurdate)))
        //     ->whereNull('modeset')
        //     ->max('billno');
        $vtype = 'BCNT';
        $years = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', ncurdate())
            ->whereDate('date_to', '>=', ncurdate())
            ->first();
        $latestbillno = Paycharge::where('propertyid', $this->propertyid)->where('vprefix', $years->prefix)
            ->whereNull('modeset')
            ->max('billno');
        $enviro_form = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        // $years = DateHelper::Uniqueyears($this->propertyid);
        $records = DB::table('revmast')
            ->select('revmast.name', 'revmast.rev_code', 'revmast.nature', 'revmast.field_type', 'revmast.flag_type', 'depart_pay.pay_code')
            ->leftJoin('depart_pay', 'revmast.rev_code', '=', 'depart_pay.pay_code')
            ->where('revmast.field_type', '=', 'P')
            ->where('revmast.propertyid', $this->propertyid)
            ->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Corporate', 'Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();

        return view('property.roomresettlement', [
            'companydata' => $companydata,
            'latestbillno' => $latestbillno,
            'revdata' => $records,
            'enviro_form' => $enviro_form,
            'ncurdate' => $ncurdate,
            'subgroup' => $company,
            // 'years' => $years
        ]);
    }

    public function updateRoomSettle(Request $request)
    {
        $permission = revokeopen(141116);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $propertyId = $this->propertyid;
        $docId = $request->input('docid');
        $sno1 = $request->input('roomoccsno1');
        $roomoccsno = $request->input('roomoccsno');

        // return $sno1;
        $amount = $request->input('amount');
        $voucherType = 'REC';
        $currentDate = $this->ncurdate;
        $currentTime = $this->currenttime;
        $userName = Auth::user()->u_name;
        // $oldvdate = $request->oldvdate;

        // Begin transaction to ensure data integrity
        DB::beginTransaction();

        try {
            // Determine leader status and handle MSno1
            $leaderRoomOcc = RoomOcc::where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('leaderyn', 'Y')
                ->first();

            $msno1 = 0;

            // Delete existing settlement records based on leader status
            if ($leaderRoomOcc) {
                $msno1 = $leaderRoomOcc->sno1;
                Paycharge::where('propertyid', $propertyId)
                    ->where('msno1', $msno1)
                    ->where('folionodocid', $docId)
                    ->where('billno', 0)
                    ->where('modeset', 'S')
                    ->delete();

                $oldvdate = Paycharge::where('folionodocid', $docId)->where('msno1', $msno1)->whereNotNull('settledate')->value('settledate');
            } else {
                Paycharge::where('propertyid', $propertyId)
                    ->where('sno1', $sno1)
                    ->where('folionodocid', $docId)
                    ->where('billno', 0)
                    ->where('modeset', 'S')
                    ->delete();

                $oldvdate = Paycharge::where('folionodocid', $docId)->where('sno1', $sno1)->whereNotNull('settledate')->value('settledate');
            }

            // return $oldvdate;

            // Get voucher prefix information
            $voucherPrefix = VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->whereDate('date_from', '<=', $currentDate)
                ->whereDate('date_to', '>=', $currentDate)
                ->first();

            if (! $voucherPrefix) {
                throw new Exception('Voucher prefix not found');
            }

            $voucherNumber = $voucherPrefix->start_srl_no + 1;
            $prefix = $voucherPrefix->prefix;
            $generatedDocId = $propertyId . $voucherType . ' ‎ ' . $prefix . ' ‎ ‎ ‎ ' . $voucherNumber;

            // Get room occupancy details
            $roomOccupancy = DB::table('roomocc')
                ->where('propertyid', $propertyId)
                ->where('docid', $docId)
                ->where('sno', $request->input('roomoccsno'))
                ->where('sno1', $request->input('roomoccsno1'))
                ->first();

            if (! $roomOccupancy) {
                throw new Exception('Room occupancy record not found');
            }

            // Update folio bill details
            $billNumber = DB::table('paycharge')
                ->where('folionodocid', $docId)
                ->where('sno1', $sno1)
                ->value('billno');

            DB::table('fombilldetails')
                ->where('folionodocid', $docId)
                ->where('billno', $billNumber)
                ->update(['settamt' => $amount]);

            // Process payment charges
            $chargeCount = 0;
            foreach ($request->input() as $key => $value) {
                if (strpos($key, 'chargecode') === 0) {
                    $chargeCount++;
                }
            }

            // Batch prepare payment charge entries
            $serialNumber = 1;
            $chargeEntries = [];

            for ($i = 1; $i <= $chargeCount; $i++) {
                $chargeCode = $request->input('chargecode' . $i);
                $chargeAmount = $request->input('amtrow' . $i);

                // Skip empty or zero-amount rows
                if (empty($chargeCode) || empty($chargeAmount) || (float) $chargeAmount == 0) {
                    continue;
                }

                $payCodeInfo = Revmast::where('propertyid', $propertyId)
                    ->where('rev_code', $chargeCode)
                    ->first();

                if (! $payCodeInfo) {
                    continue;
                }

                // Prepare data for this charge entry
                $chargeEntries[] = [
                    'propertyid' => $propertyId,
                    'docid' => $generatedDocId,
                    'vno' => $voucherNumber,
                    'vtype' => $voucherType,
                    'sno' => $serialNumber,
                    'sno1' => $sno1,
                    'msno1' => $msno1,
                    'chqno' => $request->input('checkno') ?: $request->input('referencenoupi'),
                    'cardno' => $request->input('crnumber'),
                    'cardholder' => $request->input('holdername'),
                    'expdate' => $request->input('expdatecr'),
                    'bookno' => $request->input('batchno'),
                    'vdate' => $oldvdate,
                    'vtime' => date('H:i:s'),
                    'vprefix' => $prefix,
                    'comp_code' => $request->input('compcode' . $i) ?? '',
                    'paycode' => $chargeCode,
                    'paytype' => $payCodeInfo->pay_type ?? '',
                    'comments' => $request->input('chargenarration' . $i),
                    'guestprof' => $roomOccupancy->guestprof,
                    'roomno' => $request->input('roomoccroomno') ?? $roomOccupancy->roomno,
                    'amtcr' => $chargeAmount,
                    'roomtype' => $roomOccupancy->roomtype,
                    'roomcat' => $roomOccupancy->roomcat,
                    'foliono' => $roomOccupancy->folioNo,
                    'restcode' => 'FOM' . $propertyId,
                    'billamount' => 0.00,
                    'taxper' => 0,
                    'onamt' => 0.00,
                    'folionodocid' => $roomOccupancy->docid,
                    'taxcondamt' => 0,
                    'taxstru' => '',
                    'created_at' => $currentTime,
                    'settledate' => $oldvdate,
                    'u_name' => $userName,
                    'u_ae' => 'a',
                    'modeset' => 'S',
                ];

                $serialNumber++;
            }

            // Bulk insert all valid charge entries
            if (! empty($chargeEntries)) {
                DB::table('paycharge')->insert($chargeEntries);
            }

            // Update voucher prefix sequence number
            VoucherPrefix::where('propertyid', $propertyId)
                ->where('v_type', $voucherType)
                ->where('prefix', $prefix)
                ->increment('start_srl_no');

            DB::commit();

            return back()->with('success', 'Room Settlement Updated');
        } catch (Exception $e) {
            DB::rollback();

            return back()->with('error', 'Unable To Update Room Settlement: ' . $e->getMessage());
        }
    }

    /**
     * Quick Add City from Reservation Page
     */
    public function quickAddCity(Request $request)
    {
        $request->validate([
            'cityname' => 'required|string|max:100',
            'country' => 'required',
            'state' => 'required',
            'zipcode' => 'nullable|string|max:20',
        ]);

        // Duplicate check
        $existing = DB::table('cities')
            ->where('propertyid', $this->propertyid)
            ->where('cityname', $request->input('cityname'))
            ->first();

        if ($existing) {
            return response()->json(['success' => false, 'message' => 'City already exists!'], 422);
        }

        // Auto-generate city_code
        $maxcitycode = DB::table('cities')->where('propertyid', $this->propertyid)->max('city_code');
        $city_code = $maxcitycode ? $maxcitycode + 1 : 1;

        try {
            CompanyLog::InsertCity([
                'city_code' => $city_code,
                'cityname' => $request->input('cityname'),
                'propertyid' => $this->propertyid,
                'country' => $request->input('country'),
                'state' => $request->input('state'),
                'zipcode' => $request->input('zipcode') ?? '',
                'u_name' => Auth::user()->name,
            ]);

            $cities = DB::table('cities')
                ->where('propertyid', $this->propertyid)
                ->where('activeyn', '1')
                ->orderBy('cityname', 'ASC')
                ->get(['city_code', 'cityname']);

            return response()->json([
                'success' => true,
                'message' => 'City added successfully!',
                'city_code' => $city_code,
                'cities' => $cities,
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Quick Add Travel Agent from Reservation Page
     */
    public function quickAddTravelAgent(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'gstin' => 'nullable|string|max:100',
        ]);

        // GST length validation
        if ($request->filled('gstin') && strlen($request->input('gstin')) < 15) {
            return response()->json(['success' => false, 'message' => 'GSTIN length should be equal to 15!'], 422);
        }

        // GST format validation — Indian GSTIN regex
        if ($request->filled('gstin') && ! preg_match('/^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/', strtoupper($request->input('gstin')))) {
            return response()->json(['success' => false, 'message' => 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5'], 422);
        }

        // Duplicate name check
        $existingName = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();

        if ($existingName) {
            return response()->json(['success' => false, 'message' => 'Travel Agent name already exists!'], 422);
        }

        // group_code = "28" + propertyid
        $group_code = '28' . $this->propertyid;

        // Auto-generate sub_code
        $lastNumber = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->selectRaw('MAX(CAST(LEFT(sub_code, LENGTH(sub_code) - ' . strlen((string) $this->propertyid) . ') AS UNSIGNED)) as max_num')
            ->value('max_num');

        $nextNumber = $lastNumber ? $lastNumber + 1 : 1;
        $sub_code = $nextNumber . $this->propertyid;

        try {
            DB::table('subgroup')->insert([
                'sub_code' => $sub_code,
                'propertyid' => $this->propertyid,
                'name' => $request->input('name'),
                'group_code' => $group_code,
                'nature' => 'Customer',
                'comp_type' => 'Travel Agency',
                'allow_credit' => 'Yes',
                'activeyn' => 'Y',
                'sysYN' => 'N',
                'u_name' => Auth::user()->u_name,
                'gstin' => $request->input('gstin'),
                'subyn' => 1,
                'created_at' => now(),
                'u_ae' => 'a',
            ]);

            $agents = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
                ->orderBy('name', 'ASC')
                ->get(['sub_code', 'name', 'gstin']);

            return response()->json([
                'success' => true,
                'message' => 'Travel Agent added successfully!',
                'sub_code' => $sub_code,
                'agents' => $agents,
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Quick Add Corporate Company from Reservation Page
     * Inserts into subgroup table and returns updated company list
     */
    public function quickAddCompany(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'gstin' => 'nullable|string|max:100',
        ]);

        // GST length validation (same as company master — must be exactly 15 if provided)
        if ($request->filled('gstin') && strlen($request->input('gstin')) < 15) {
            return response()->json(['success' => false, 'message' => 'GSTIN length should be equal to 15!'], 422);
        }

        // GST format validation — Indian GSTIN regex
        if ($request->filled('gstin') && ! preg_match('/^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/', strtoupper($request->input('gstin')))) {
            return response()->json(['success' => false, 'message' => 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5'], 422);
        }

        // Check duplicate name
        $existingName = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();

        if ($existingName) {
            return response()->json(['success' => false, 'message' => 'Company name already exists!'], 422);
        }

        // group_code = "28" + propertyid  (e.g. property 103 -> 28103)
        $group_code = '28' . $this->propertyid;

        // Generate next sub_code (same pattern as existing subgroup inserts)
        $lastNumber = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->selectRaw('MAX(CAST(LEFT(sub_code, LENGTH(sub_code) - ' . strlen((string) $this->propertyid) . ') AS UNSIGNED)) as max_num')
            ->value('max_num');

        $nextNumber = $lastNumber ? $lastNumber + 1 : 1;
        $sub_code = $nextNumber . $this->propertyid;

        try {
            DB::table('subgroup')->insert([
                'sub_code' => $sub_code,
                'propertyid' => $this->propertyid,
                'name' => $request->input('name'),   // form se aaya company name
                'group_code' => $group_code,                // 28 + propertyid
                'nature' => 'Customer',                 // fix value
                'comp_type' => 'Corporate',                // fix value
                'allow_credit' => 'Yes',                      // fix value
                'activeyn' => 'Y',                        // fix value
                'sysYN' => 'N',                        // fix value
                'u_name' => Auth::user()->u_name,       // logged-in user
                'gstin' => $request->input('gstin'),   // form se aaya GST
                'subyn' => 1,                          // fix value
                'created_at' => now(),
                'u_ae' => 'a',
            ]);

            // Return updated company list for dropdown refresh
            $companies = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('comp_type', 'Corporate')
                ->orderBy('name', 'ASC')
                ->get(['sub_code', 'name', 'gstin']);

            return response()->json([
                'success' => true,
                'message' => 'Company added successfully!',
                'sub_code' => $sub_code,
                'companies' => $companies,
            ]);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()], 500);
        }
    }

    public function openreservations(Request $request)
    {
        $permission = revokeopen(131111);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        if (! empty($request->query('selected'))) {
            $selectedrooms = app(RoomStatusSelectionService::class)
                ->convert($request->query('selected'));
        }

        $roomcat = DB::table('room_cat')
            ->where('propertyid', $this->propertyid)
            ->where('inclcount', 'Y')
            ->orderBy('name', 'ASC')->get();
        $planmaster = DB::table('plan_mast')
            ->select('name', 'pcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')
            ->distinct()
            ->get();
        $roommast = DB::table('room_mast')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $totalroom = 0;
        foreach ($roommast as $row) {
            if ($row->type == 'RO') {
                $totalroom++;
            }
        }
        $checkoutdate = DB::table('enviro_general')
            ->where('propertyid', $this->propertyid)
            ->value('ncur');
        $chkoutdate = date('Y-m-d', strtotime($checkoutdate . ' +1 day'));
        $bsource = DB::table('busssource')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->get();
        $company = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('comp_type', 'Corporate')
            ->orderBy('name', 'ASC')->get();
        $travelagent = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->whereIn('comp_type', ['Travel Agency', 'Travel Agency (OTA)'])
            ->orderBy('name', 'ASC')->get();
        $citydata = DB::table('cities')->where('propertyid', $this->propertyid)->where('activeyn', '1')
            ->orderBy('cityname', 'ASC')->get();
        $countrydata = DB::table('countries')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $gueststatus = DB::table('gueststats')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $nationalitydata = DB::table('countries')->where('propertyid', $this->propertyid)
            ->orderBy('nationality', 'ASC')->get();

        $enviro_formdata = DB::table('enviro_form')->where('propertyid', $this->propertyid)->first();
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $channelenviro = ChannelEnviro::where('propertyid', $this->propertyid)->first() ?? '';
        $revmast = Revmast::where('propertyid', $this->propertyid)->where('flag_type', 'FOM')
            ->whereNotIn('rev_code', [
                "DISC{$this->propertyid}",
                "ROFF{$this->propertyid}",
                "TOUT{$this->propertyid}",
                "RMCH{$this->propertyid}",
            ])->where('field_type', 'C')->orderBy('name', 'ASC')->get();

        return view('property.reservation', [
            'selectedrooms' => $selectedrooms ?? [],
            'totalroom' => $totalroom,
            'roomcat' => $roomcat,
            'channelenviro' => $channelenviro,
            'planmaster' => $planmaster,
            'roommast' => $roommast,
            'checkoutdate' => $chkoutdate,
            'bsource' => $bsource,
            'company' => $company,
            'travel_agent' => $travelagent,
            'citydata' => $citydata,
            'countrydata' => $countrydata,
            'nationalitydata' => $nationalitydata,
            'gueststatus' => $gueststatus,
            'enviro_formdata' => $enviro_formdata,
            'ncurdate' => $ncurdate,
            'revmast' => $revmast,
            'canAddCompany' => optional(revokeopen(122018))->ins == 1,
            'canAddTravelAgent' => optional(revokeopen(122018))->ins == 1,
            'canAddCity' => optional(revokeopen(122017))->ins == 1,
        ]);
    }

    public function openadvancedeposit(Request $request)
    {
        $docid = base64_decode($request->query('docid'));

        if (empty($docid)) {
            $docid = base64_decode($request->input('DocId'));
        }

        $sno = base64_decode($request->input('Sno'));

        if ($sno == '') {
            $sno = GrpBookinDetail::where('Property_ID', $this->propertyid)->where('BookingDocid', $docid)->max('Sno');
        }

        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $data = DB::table('booking')
            ->select(
                'booking.*',
                'grpbookingdetails.GuestName',
                'grpbookingdetails.BookNo',
                'grpbookingdetails.BookingDocid',
                'grpbookingdetails.Sno',
                'grpbookingdetails.ArrDate',
                'grpbookingdetails.DepDate',
                'grpbookingdetails.RoomNo'
            )
            ->leftJoin('grpbookingdetails', 'grpbookingdetails.BookingDocid', '=', 'booking.DocId')
            ->where('booking.DocId', $docid)
            ->where('grpbookingdetails.Sno', $sno)
            ->where('booking.Property_ID', $this->propertyid)
            ->first();

        $guestnamedata = DB::table('grpbookingdetails')->select(
            'grpbookingdetails.GuestName',
            'grpbookingdetails.BookNo',
            'grpbookingdetails.BookingDocid'
        )
            ->where('Property_ID', $this->propertyid)
            ->groupBy('BookingDocid')->get();

        // return $guestnamedata;

        $revdata = DB::table('revmast')
            ->select('revmast.name', 'revmast.rev_code', 'revmast.nature', 'revmast.field_type', 'revmast.flag_type', 'depart_pay.pay_code')
            ->leftJoin('depart_pay', 'revmast.rev_code', '=', 'depart_pay.pay_code')
            ->where('revmast.field_type', '=', 'P')
            ->whereIn('nature', ['Cash', 'Cheque', 'UPI', 'Credit Card'])
            ->where('revmast.propertyid', $this->propertyid)
            ->get();

        $taxstrudata = DB::table('taxstru')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'ASC')->groupBy('name')->get();
        $companydata = DB::table('company')->where('propertyid', $this->propertyid)->first();

        return view('property.advancedeposit', [
            'data' => $data,
            'ncurdate' => $ncurdate,
            'names' => $guestnamedata,
            'revdata' => $revdata,
            'taxstrudata' => $taxstrudata,
            'companydata' => $companydata,
        ]);
    }

    public function getmaxadresno(Request $request)
    {
        $vtype = $request->input('vtype');
        $chkvpf = VoucherPrefix::where('propertyid', $this->propertyid)
            ->where('v_type', $vtype)
            ->whereDate('date_from', '<=', $this->ncurdate)
            ->whereDate('date_to', '>=', $this->ncurdate)
            ->first();

        $start_srl_no = $chkvpf->start_srl_no + 1;

        return json_encode($start_srl_no);
    }

    public function deleteadvancedeposit($docid, $vno)
    {
        $chk = Paycharge::where('docid', $docid)->where('vno', $vno)->first();

        if (is_null($chk)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Vno',
            ]);
        }

        Paycharge::where('docid', $docid)->where('vno', $vno)->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Advance Deleted successfully',
        ]);
    }

    public function revcancel(Request $request)
    {
        $DocId = base64_decode($request->input('DocId'));

        try {
            $bookings = DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $DocId)
                ->where('Cancel', 'Y')
                ->get(['RoomCat', 'ArrDate', 'DepDate']);

            $updatebooking = DB::table('booking')
                ->where('Property_ID', $this->propertyid)
                ->where('DocId', $DocId)
                ->update([
                    'Cancel' => 'N',
                    'CancelUName' => '',
                    'ResStatus' => 'Confirm',
                ]);

            $updategrpbookingdetails = DB::table('grpbookingdetails')
                ->where('Property_ID', $this->propertyid)
                ->where('BookingDocid', $DocId)
                ->update([
                    'Cancel' => 'N',
                    'CancelUName' => '',
                    'CancelDate' => null,
                ]);

            if (channelparameter()->checkyn == 'Y') {
                $ncurdate = Carbon::parse(ncurdate())->toDateString();

                foreach ($bookings as $booking) {
                    $arrivalDate = Carbon::parse($booking->ArrDate)->toDateString();
                    $departureDate = Carbon::parse($booking->DepDate)->toDateString();

                    if ($departureDate > $ncurdate || $arrivalDate >= $ncurdate) {
                        SyncInventoryJob::dispatch(
                            $booking->RoomCat,
                            $booking->RoomCat,
                            $arrivalDate,
                            $arrivalDate,
                            $departureDate,
                            $departureDate,
                            (int) $this->propertyid,
                            Auth::user()->u_name,
                            true
                        );
                    }
                }
            }

            return back()->with('success', 'Reservation Cancellation Reversed successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to reverse reservation cancellation!');
        }
    }

    public function openmenugroup(Request $request)
    {
        $permission = revokeopen(121316);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $menugroupdata = DB::table('itemgrp')
            ->select(
                'itemgrp.*',
                'depart.name as departname',
                'depart.dcode'
            )
            ->join('depart', 'depart.dcode', '=', 'itemgrp.restcode')
            ->where('itemgrp.property_id', $this->propertyid)
            ->where('depart.dcode', '!=', 'BANQ' . $this->propertyid)
            ->where('itemgrp.restcode', '<>', 'PURC' . $this->propertyid)
            ->orderBy('itemgrp.name', 'ASC')
            ->get();

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();

        return view('property.menugroup', ['data' => $menugroupdata, 'departdata' => $departdata]);
    }

    public function submittsundrymast(Request $request)
    {
        $permission = revokeopen(122013);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'sundryname' => 'required',
            'nature' => 'required',
        ]);
        $tablename = 'sundrymast';
        $existingname = DB::table($tablename)->where('propertyid', $this->propertyid)->where('name', $request->input('sundryname'))->first();
        if ($existingname) {
            return response()->json(['message' => 'Sundry Name already exists!'], 500);
        }
        $maxid = DB::table($tablename)->where('propertyid', $this->propertyid)->max('sundry_code');
        $code = ($maxid == null) ? '1' . $this->propertyid : substr($maxid, 0, -$this->ptlngth) + 1 . $this->propertyid;
        $data = [
            'name' => $request->input('sundryname'),
            'nature' => $request->input('nature'),
            'calcsign' => $request->input('calcsign'),
            'created_at' => $this->currenttime,
            'sysYN' => 'N',
            'sundry_code' => $code,
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'a',
        ];
        DB::table($tablename)->insert($data);

        return back()->with('msuccess', 'Sundry Master added successfully');
    }

    public function updatesundrymast(Request $request)
    {
        $permission = revokeopen(122013);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'upsundryname' => 'required',
            'upnature' => 'required',
        ]);
        $tablename = 'sundrymast';
        $existingname = DB::table($tablename)->where('propertyid', $this->propertyid)->where('name', $request->input('upsundryname'))->whereNot('id', $request->input('upsn'))->first();
        if ($existingname) {
            return back()->with('error', 'Sundry Name already exists!');
        }

        $data = [
            'name' => $request->input('upsundryname'),
            'nature' => $request->input('upnature'),
            'calcsign' => $request->input('upcalcsign'),
            'updated_at' => $this->currenttime,
            'sysYN' => 'N',
            'u_name' => Auth::user()->u_name,
            'propertyid' => $this->propertyid,
            'u_ae' => 'e',
        ];

        DB::table($tablename)->where('id', $request->input('upsn'))->update($data);

        return back()->with('success', 'Sundry Master updated successfully');
    }

    public function opensundrymaster(Request $request)
    {
        $permission = revokeopen(122013);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('sundrymast', 'Sundry Master Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $sundrydata = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();

        return view('property.sundrymaster', ['data' => $sundrydata]);
    }

    public function openmenuitem(Request $request)
    {
        $permission = revokeopen(121318);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $itemmast = ItemMast::select(
            'itemmast.Name as itemname',
            'itemmast.Code',
            'itemmast.id',
            'itemmast.DispCode',
            'itemmast.Property_ID',
            'itemmast.HSNCode',
            'itemmast.DiscApp',
            'itemmast.RateEdit',
            'itemmast.ActiveYN',
            'unitmast.name as unitname',
            'itemgrp.Name as itemgrpname',
            'itemcatmast.Name As itemcatname',
            'depart_r.Name as Restaurant',
            'depart_r.dcode',
            'depart_k.Name as Kitchen',
            'itemrate.Rate',
            'itemmast.NType',
            'itemmast.RestCode'
        )
            ->leftJoin('itemgrp', function ($join) {
                $join->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($join) {
                $join->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                    ->on('itemrate.RestCode', '=', 'itemmast.RestCode')
                    ->where('itemrate.Property_ID', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_k', function ($join) {
                $join->on('depart_k.dcode', '=', 'itemmast.Kitchen')
                    ->where('depart_k.propertyid', '=', $this->propertyid)
                    ->where('depart_k.rest_type', '=', 'Kitchen');
            })
            ->where('itemmast.Property_ID', '=', $this->propertyid)

            ->whereNotIn('itemmast.RestCode', [
                'PURC' . $this->propertyid,
                'BANQ' . $this->propertyid,
            ])

            ->groupBy('itemmast.Code', 'itemmast.RestCode')
            ->get();

        $itemrate = DB::table('itemrate')
            ->where('Property_ID', $this->propertyid)
            ->orderBy('ItemCode', 'ASC')
            ->get();
        $itemgrp = DB::table('itemgrp')->where('property_id', $this->propertyid)->orderBy('name', 'ASC')->get();
        $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $itemnames = DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $unit = DB::table('unitmast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $itemcatmast = DB::table('itemcatmast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $kitchen = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'Kitchen')->orderBy('name', 'ASC')->get();
        $purcItem = DB::table('itemmast')->where('Property_ID', $this->propertyid)->where('RestCode', 'PURC' . $this->propertyid)->orderBy('Name', 'ASC')->get();

        return view('property.menuitem', [
            'itemmast' => $itemmast,
            'itemrate' => $itemrate,
            'kitchen' => $kitchen,
            'restaurentdata' => $restaurentdata,
            'itemgrp' => $itemgrp,
            'itemnames' => $itemnames,
            'unit' => $unit,
            'purchItem' => $purcItem,
            'itemcatmast' => $itemcatmast,
            'canAddItemGroup' => optional(revokeopen(121316))->ins == 1,
            'canAddItemName' => optional(revokeopen(121315))->ins == 1,
            'canAddUnit' => optional(revokeopen(122021))->ins == 1,
            'maxicode' => DB::table('items')->where('propertyid', $this->propertyid)->max('icode') ?? 0,
            'idlength' => $this->ptlngth,
        ]);
    }

    /**
     * Generate the next property-scoped code (numeric prefix + propertyid),
     * same pattern as the legacy submit methods.
     */
    protected function nextCode($table, $codeColumn, $propertyColumn = 'propertyid')
    {
        $maxCode = DB::table($table)->where($propertyColumn, $this->propertyid)->max($codeColumn);
        $numericPart = $maxCode ? (int) substr($maxCode, 0, -$this->ptlngth) : 0;

        return ($numericPart + 1) . $this->propertyid;
    }

    /**
     * Log a quick-add failure and return a safe generic error response.
     */
    protected function quickAddErrorResponse($logMessage, $userMessage)
    {
        Log::error($logMessage);

        return response()->json(['success' => false, 'message' => $userMessage], 500);
    }

    /**
     * Quick Add Unit from Menu Item Page
     */
    public function quickAddUnitMaster(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'activeYN' => 'required|string|max:1',
        ]);

        $tableName = 'unitmast';

        // Duplicate check
        $existing = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();

        if ($existing) {
            return response()->json(['success' => false, 'message' => 'Unit already exists!'], 422);
        }

        // Auto-generate ucode (same pattern as submitbunitmaster)
        $newUcode = $this->nextCode($tableName, 'ucode');

        try {
            UnitMast::create([
                'ucode' => $newUcode,
                'name' => $request->input('name'),
                'propertyid' => $this->propertyid,
                'activeYN' => $request->input('activeYN', 'Y'),
                'sysYN' => 'N',
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ]);

            $units = DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->orderBy('name', 'ASC')
                ->get(['ucode', 'name']);

            return response()->json([
                'success' => true,
                'message' => 'Unit added successfully!',
                'new_ucode' => $newUcode,
                'units' => $units,
            ]);
        } catch (Exception $e) {
            return $this->quickAddErrorResponse('Quick Add Unit failed: ' . $e->getMessage(), 'Unable to add unit. Please try again.');
        }
    }

    /**
     * Quick Add Item Group from Menu Item Page
     */
    public function quickAddMenuItemGroup(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'restcode' => 'required|string',
            'activeyn' => 'required|string|max:1',
        ]);

        $restcode = $request->input('restcode');

        // Duplicate check
        $existing = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('name', $request->input('name'))
            ->where('restcode', $restcode)
            ->first();

        if ($existing) {
            return response()->json(['success' => false, 'message' => 'Item Group already exists!'], 422);
        }

        // Auto-generate code (same pattern as submititemgroup)
        $groupcode = $this->nextCode('itemgrp', 'code', 'property_id');

        try {
            ItemGrp::create([
                'code' => $groupcode,
                'name' => $request->input('name'),
                'property_id' => $this->propertyid,
                'restcode' => $restcode,
                'type' => '',
                'cattype' => '',
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'activeyn' => $request->input('activeyn', 'Y'),
            ]);

            // Return fresh itemgrp list for this restcode
            $itemgrps = DB::table('itemgrp')
                ->where('property_id', $this->propertyid)
                ->where('restcode', $restcode)
                ->orderBy('name', 'ASC')
                ->get(['code', 'name']);

            return response()->json([
                'success' => true,
                'message' => 'Item Group added successfully!',
                'new_code' => $groupcode,
                'itemgrps' => $itemgrps,
            ]);
        } catch (Exception $e) {
            return $this->quickAddErrorResponse('Quick Add Item Group failed: ' . $e->getMessage(), 'Unable to add item group. Please try again.');
        }
    }

    /**
     * Quick Add Item Name from Menu Item Page
     */
    public function quickAddItemName(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:200',
            'hsncode' => 'nullable|string|max:50',
            'barcode' => 'required|string|max:50',
        ]);

        $tableName = 'items';

        // Duplicate name check
        $existingName = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('name', $request->input('name'))
            ->first();

        if ($existingName) {
            return response()->json(['success' => false, 'message' => 'Item Name already exists!'], 422);
        }

        // Duplicate barcode check
        $existingCode = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('icode', $request->input('barcode') . $this->propertyid)
            ->first();

        if ($existingCode) {
            return response()->json(['success' => false, 'message' => 'Item Code (barcode) already exists!'], 422);
        }

        try {
            $icode = $request->input('barcode') . $this->propertyid;

            // Handle optional image upload
            $itempicture = null;
            if ($request->hasFile('itempicture') && $request->file('itempicture')->isValid()) {
                $itempic = $request->file('itempicture');
                $itempicture = $request->input('barcode') . '_' . $this->propertyid . '.' . $itempic->getClientOriginalExtension();
                $folderPath = 'public/property/itempicture';
                Storage::makeDirectory($folderPath);
                Storage::putFileAs($folderPath, $itempic, $itempicture);
            }

            Items::create([
                'propertyid' => $this->propertyid,
                'icode' => $icode,
                'barcode' => $icode,
                'name' => $request->input('name'),
                'hsncode' => $request->input('hsncode', ''),
                'itempic' => $itempicture,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
            ]);

            // Return fresh items list
            $itemnames = DB::table($tableName)
                ->where('propertyid', $this->propertyid)
                ->orderBy('name', 'ASC')
                ->get(['icode', 'name']);

            return response()->json([
                'success' => true,
                'message' => 'Item Name added successfully!',
                'new_icode' => $icode,
                'next_barcode' => (int) substr((string) $icode, 0, -strlen((string) $this->propertyid)) + 1,
                'itemnames' => $itemnames,
            ]);
        } catch (Exception $e) {
            return $this->quickAddErrorResponse('Quick Add Item Name failed: ' . $e->getMessage(), 'Unable to add item name. Please try again.');
        }
    }

    public function openmenucategory(Request $request)
    {
        $permission = revokeopen(121317);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $itemcatmast = DB::table('itemcatmast')
            ->select('itemcatmast.*', 'depart.name as departname', 'taxstru.name as taxstruname', 'subgroup.name as subgrpname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemcatmast.restcode')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'itemcatmast.AcCode')
            ->where('itemcatmast.propertyid', $this->propertyid)
            ->whereNotIn('itemcatmast.restcode', ['PURC' . $this->propertyid, 'BANQ' . $this->propertyid])
            ->groupBy('itemcatmast.Code', 'itemcatmast.RestCode')
            ->orderBy('itemcatmast.name', 'ASC')
            ->get();
        $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $subgroupdata = DB::table('subgroup')->where('propertyid', $this->propertyid)->where('nature', 'Sale')->orderBy('name', 'ASC')->get();
        $taxstrudata = DB::table('taxstru')->where('propertyid', $this->propertyid)
            ->distinct()
            ->get();

        return view('property.menucategory', [
            'data' => $itemcatmast,
            'restaurentdata' => $restaurentdata,
            'subgroupdata' => $subgroupdata,
            'taxstrudata' => $taxstrudata,
        ]);
    }

    public function submitmenucategory(Request $request)
    {
        $permission = revokeopen(121317);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'name' => 'required',
            'restcode' => 'required',
            'taxstru' => 'required',
        ]);
        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('RestCode', $request->input('restcode'))
            ->first();
        if ($existingname) {
            return back()->with('error', 'Category Name already exists!');
        }
        function skipfirst($string, $numToSkip)
        {
            return substr($string, $numToSkip) + 1;
        }

        $maxcode = DB::table('revmast')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', 'like', 'mt%')
            ->orderByRaw('CAST(SUBSTRING(rev_code, 3) AS UNSIGNED) DESC')
            ->value('rev_code');

        if (substr($maxcode, 0, 2) != 'MT') {
            $code = 'MT' . $this->propertyid . '1';
        } else {
            $codebe = skipfirst($maxcode, $this->ptlngth + 2);
            $code = 'MT' . $this->propertyid . $codebe;
        }

        if ($request->input('flag') == 'Charge') {
            $deskcode = $request->input('restcode');
            $field_type = 'C';
        } else {
            $deskcode = $request->input('restcode');
            $field_type = '';
        }

        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $request->input('restcode'))->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $request->input('restcode'))->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';

        try {
            $insertdata = [
                'rev_code' => $code,
                'name' => $shortname . ' - ' . $request->input('name'),
                'short_name' => $shortname,
                'ac_code' => $request->input('AcCode'),
                'tax_stru' => $request->input('taxstru'),
                'type' => $request->input('flag') == 'Category' ? 'Dr' : $request->input('type'),
                'flag_type' => $request->input('flag'),
                'Desk_code' => $deskcode,
                'field_type' => $field_type,
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Code' => $code,
                'Name' => $request->input('name'),
                'RestCode' => $request->input('restcode'),
                'TaxStru' => $request->input('taxstru'),
                'AcCode' => $request->input('AcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('flag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('type'),
                'DrCr' => $request->input('flag') == 'Category' ? 'Dr' : 'Cr',
                'RevCode' => $code,
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'ActiveYN' => 'Y',
            ];
            DB::table('revmast')->insert($insertdata);
            DB::table($tableName)->insert($itemcatmastdata);

            return back()->with('success', 'Item Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item!' . $e->getMessage() . 'On Line: ' . $e->getLine());
        }
    }

    public function updatemenucategory(Request $request)
    {
        $permission = revokeopen(121317);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'upname' => 'required',
            'uprestcode' => 'required',
            'uptaxstru' => 'required',
        ]);
        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('Code', '!=', $request->input('upcode'))
            ->first();
        if ($existingname) {
            return back()->with('error', 'Category Name already exists!');
        }
        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $request->input('uprestcode'))->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', $request->input('uprestcode'))->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';
        try {
            $updatedata = [
                'name' => $shortname . ' - ' . $request->input('upname'),
                'short_name' => $shortname,
                'ac_code' => $request->input('upAcCode'),
                'tax_stru' => $request->input('uptaxstru'),
                'type' => $request->input('upflag') == 'Category' ? 'Dr' : $request->input('uptype'),
                'flag_type' => $request->input('upflag'),
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Name' => $request->input('upname'),
                'RestCode' => $request->input('uprestcode'),
                'TaxStru' => $request->input('uptaxstru'),
                'AcCode' => $request->input('upAcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('upflag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('uptype'),
                'DrCr' => $request->input('upflag') == 'Category' ? 'Dr' : 'Cr',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'ActiveYN' => 'Y',
            ];
            DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $request->input('upcode'))->update($updatedata);
            DB::table($tableName)->where('propertyid', $this->propertyid)->where('RestCode', $request->input('uprestcode'))->where('Code', $request->input('upcode'))->update($itemcatmastdata);

            return back()->with('success', 'Item Category Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item Category!' . $e);
        }
    }

    public function getcurfinyear()
    {
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $currentYear = date('Y', strtotime($ncurdate));
        $nextYear = $currentYear + 1;
        if (date('m') < 4) {
            $date_from = ($previousYear = $currentYear - 1) . '-04-01';
            $date_to = $currentYear . '-03-31';
            $currfinancial = $previousYear;
        } else {
            $date_from = $currentYear . '-04-01';
            $date_to = $nextYear . '-03-31';
            $currfinancial = $currentYear;
        }
        $formatted_currfinancial = date('Y-m-d', strtotime($currfinancial . '-01-04'));

        return json_encode($formatted_currfinancial);
    }

    // //////////////////////////  Old Item Add Menu /////////////
    // public function submitmenuitem(Request $request)
    // {
    //     $permission = revokeopen(121318);

    //     if (is_null($permission) || $permission->ins == 0) {
    //         return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
    //     }
    //     $validate = [
    //         'name' => 'required',
    //         'restcode' => 'required',
    //         'icode' => 'required',
    //         'unit' => 'required',
    //         'itemcatmast' => 'required',
    //         'itemgrp' => 'required',
    //         'kitchen' => 'required',
    //         'rateedit' => 'required',
    //     ];
    //     $tableName = 'itemmast';

    //     // $existingcode = DB::table($tableName)
    //     //     ->where('Property_ID', $this->propertyid)
    //     //     ->where('DispCode', $request->input('itemcode'))
    //     //     ->where('RestCode', $request->input('restcode'))
    //     //     ->first();
    //     // $maxcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('Code');
    //     // $code = ($maxcode === null) ? $this->propertyid . '1' : ($code = $this->propertyid . substr($maxcode, $this->ptlngth) + 1);

    //     // if ($existingcode) {
    //     //     return response()->json(['message' => 'Item Code already exists!'], 500);
    //     // }

    //     $existingname = DB::table($tableName)
    //         ->where('Property_ID', $this->propertyid)
    //         ->where('Code', $request->input('itemname'))
    //         ->where('RestCode', $request->input('restcode'))
    //         ->first();

    //     if ($existingname) {
    //         return back()->with('error', 'Item Name already exists!');
    //     }

    //     $itemname = DB::table('items')->where('propertyid', $this->propertyid)->where('icode', $request->input('itemname'))->first();

    //     try {
    //         $insertdata = [
    //             'Code' => $request->input('itemname'),
    //             'Name' => $itemname->name,
    //             'property_id' => $this->propertyid,
    //             'RestCode' => $request->input('restcode'),
    //             'ItemGroup' => $request->input('itemgrp'),
    //             'dishtype' => $request->input('dishtype'),
    //             'favourite' => $request->input('favourite'),
    //             'PurchRate' => '0',
    //             'MinStock' => '0',
    //             'MaxStock' => '0',
    //             'ReStock' => '0',
    //             'LPurRate' => '0',
    //             'LPurDate' => null,
    //             'DispCode' => $request->input('itemcode'),
    //             'ConvRatio' => '0',
    //             'IssueUnit' => '',
    //             'Specification' => '',
    //             'LabelName' => '',
    //             'LabelQty' => '',
    //             'LabelRemark1' => '',
    //             'LabelRemark2' => '',
    //             'LabelRemark3' => '',
    //             'LabelRemark4' => '',
    //             'ItemType' => '',
    //             'NType' => $request->input('type'),
    //             'iempic' => $request->input('itempic') ?? '',
    //             'Unit' => $request->input('unit'),
    //             'RateEdit' => $request->input('rateedit'),
    //             'ItemCatCode' => $request->input('itemcatmast'),
    //             'BarCode' => $request->input('barcode'),
    //             'Type' => 'Finish',
    //             'HSNCode' => $request->input('hsncode') ?? '',
    //             'DiscApp' => $request->input('discappl'),
    //             'SChrgApp' => $request->input('servicecharge'),
    //             'RateIncTax' => $request->input('rateinctax'),
    //             'Kitchen' => $request->input('kitchen'),
    //             'created_at' => $this->currenttime,
    //             'U_Name' => Auth::user()->u_name,
    //             'U_AE' => 'a',
    //             'ActiveYN' => $request->input('activeyn'),
    //         ];

    //         DB::table($tableName)->insert($insertdata);

    //         $itemratedata = [
    //             'Property_ID' => $this->propertyid,
    //             'ItemCode' => $request->input('itemname'),
    //             'RestCode' => $request->input('restcode'),
    //             'AppDate' => $request->input('applicabldate'),
    //             'Rate' => $request->input('salerate'),
    //             'Party' => '',
    //             'created_at' => $this->currenttime,
    //             'U_Name' => Auth::user()->u_name,
    //             'U_AE' => 'a',
    //         ];

    //         DB::table('itemrate')->insert($itemratedata);

    //         return back()->with('sucess', 'Item Inserted successfully!');
    //     } catch (Exception $e) {
    //         return back()->with('error', 'Unable to Insert Item!' . $e . ' On Line: ' . $e->getLine());
    //     }
    // }

    public function submitmenuitem(Request $request)
    {
        $permission = revokeopen(121318);

        if (is_null($permission) || $permission->ins == 0) {
            return response()->json([
                'status' => 'error',
                'message' => 'You have no permission to execute this functionality!',
            ], 403);
        }

        // ✅ Validation Rules
        $validate = [
            'restcode' => 'required',
            'itemgrp' => 'required',
            'itemname' => 'required',
            'itemcode' => 'required|numeric',
            'hsncode' => 'nullable|string|max:50',
            'barcode' => 'nullable|string|max:50',
            'unit' => 'required',
            'itemcatmast' => 'required',
            'rateedit' => 'required',
            'discappl' => 'required',
            'servicecharge' => 'required',
            'salerate' => 'required|numeric|min:0',
            'rateinctax' => 'required',
            'applicabldate' => 'required|date',
            'kitchen' => 'required',
            'type' => 'required',
            'activeyn' => 'required',
            'dishtype' => 'required',
            'favourite' => 'required',
        ];
        // $validate = [
        //     'name' => 'required',
        //     'restcode' => 'required',
        //     'icode' => 'required',
        //     'unit' => 'required',
        //     'itemcatmast' => 'required',
        //     'itemgrp' => 'required',
        //     'kitchen' => 'required',
        //     'rateedit' => 'required',
        // ];

        $tableName = 'itemmast';

        //  Run Validation
        $request->validate($validate);

        // ✅ Check for existing item name
        $existingname = DB::table($tableName)
            ->where('Property_ID', $this->propertyid)
            ->where('Code', $request->input('itemname'))
            ->where('RestCode', $request->input('restcode'))
            ->first();

        if ($existingname) {
            return response()->json([
                'status' => 'error',
                'message' => 'Item Name already exists!',
                'code' => 409,
            ]);
        }

        // ✅ Get Item Name from items table
        $itemname = DB::table('items')
            ->where('propertyid', $this->propertyid)
            ->where('icode', $request->input('itemname'))
            ->first();

        if (! $itemname) {
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid item selected.',
                'code' => 409,
            ]);
        }

        try {
            // ✅ Insert into itemmast
            $insertdata = [
                'Code' => $request->input('itemname'),
                'Name' => $itemname->name,
                'property_id' => $this->propertyid,
                'RestCode' => $request->input('restcode'),
                'ItemGroup' => $request->input('itemgrp'),
                'dishtype' => $request->input('dishtype'),
                'favourite' => $request->input('favourite'),
                'PurchRate' => '0',
                'MinStock' => '0',
                'MaxStock' => '0',
                'ReStock' => '0',
                'LPurRate' => '0',
                'LPurDate' => null,
                'DispCode' => $request->input('itemcode'),
                'ConvRatio' => '0',
                'IssueUnit' => '',
                'Specification' => '',
                'LabelName' => '',
                'LabelQty' => '',
                'LabelRemark1' => '',
                'LabelRemark2' => '',
                'LabelRemark3' => '',
                'LabelRemark4' => '',
                'ItemType' => '',
                'NType' => $request->input('type'),
                'iempic' => $request->input('itempic') ?? '',
                'Unit' => $request->input('unit'),
                'RateEdit' => $request->input('rateedit'),
                'ItemCatCode' => $request->input('itemcatmast'),
                'BarCode' => $request->input('barcode'),
                'Type' => 'Finish',
                'HSNCode' => $request->input('hsncode') ?? '',
                'DiscApp' => $request->input('discappl'),
                'SChrgApp' => $request->input('servicecharge'),
                'RateIncTax' => $request->input('rateinctax'),
                'Kitchen' => $request->input('kitchen'),
                'created_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
                'ActiveYN' => $request->input('activeyn'),
                'wtqty' => $request->input('wtqty'),
                'Pitemcode' => $request->input('purchitem') ?? 0,
            ];

            DB::table($tableName)->insert($insertdata);

            // ✅ Insert into itemrate
            $itemratedata = [
                'Property_ID' => $this->propertyid,
                'ItemCode' => $request->input('itemname'),
                'RestCode' => $request->input('restcode'),
                'AppDate' => $request->input('applicabldate'),
                'Rate' => $request->input('salerate'),
                'Party' => '',
                'created_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
            ];

            DB::table('itemrate')->insert($itemratedata);

            $getmaxCodeofItem = $this->getmaxitemcodeInFunction();

            return response()->json([
                'itemcode' => $getmaxCodeofItem,
                'status' => 'success',
                'message' => 'Item inserted successfully!',
            ]);
        } catch (Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Unable to insert item! ' . $e->getMessage() . ' on line ' . $e->getLine(),
            ], 500);
        }
    }

    private function getmaxitemcodeInFunction()
    {
        $maxcode = DB::table('itemmast')->where('Property_ID', $this->propertyid)->max('DispCode');
        $code = ($maxcode === null) ? '1' : ($code = $maxcode + 1);

        return $code;
    }

    public function updatemenuitem(Request $request)
    {
        $permission = revokeopen(121318);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $validate = [
        //     'upname' => 'required',
        //     'uprestcode' => 'required',
        //     'upicode' => 'required',
        //     'upunit' => 'required',
        //     'upitemcatmast' => 'required',
        //     'upitemgrp' => 'required',
        //     'upkitchen' => 'required',
        //     'uprateedit' => 'required',
        // ];
        $tableName = 'itemmast';

        // $existingname = DB::table($tableName)
        //     ->where('Property_ID', $this->propertyid)
        //     ->where('itemcode', $request->input('upitemname'))
        //     ->where('Code', '!=', $request->input('upcode'))
        //     ->where('RestCode', $request->input('uprestcode'))
        //     ->first();

        // if ($existingname) {
        //     return response()->json(['message' => 'Item Name already exists!'], 500);
        // }

        // $itemname = DB::table('items')->where('propertyid', $this->propertyid)->where('icode', $request->input('upcode'))->first();

        try {
            $updatedata = [
                // 'Name' => $itemname->name,
                // 'itemcode' => $request->input('upitemname'),
                'RestCode' => $request->input('uprestcode'),
                'ItemGroup' => $request->input('upitemgrp'),
                'Unit' => $request->input('upunit'),
                'RateEdit' => $request->input('uprateedit'),
                'dishtype' => $request->input('updishtype'),
                'favourite' => $request->input('upfavourite'),
                'ItemCatCode' => $request->input('upitemcatmast'),
                'BarCode' => $request->input('upbarcode'),
                'HSNCode' => $request->input('uphsncode') ?? '',
                'DiscApp' => $request->input('updiscappl'),
                'SChrgApp' => $request->input('upservicecharge'),
                'RateIncTax' => $request->input('uprateinctax'),
                'Kitchen' => $request->input('upkitchen'),
                'u_updaedt' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'e',
                'ActiveYN' => $request->input('upactiveyn'),
                'Ntype' => $request->input('uptype'),
                'wtqty' => $request->input('wtqtyu'),
                'Pitemcode' => $request->input('purchitemyu') ?? 0,
            ];

            DB::table($tableName)
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $request->input('upcode'))
                ->where('RestCode', $request->input('uprestcode'))
                ->update($updatedata);

            $itemratedata = [
                'Property_ID' => $this->propertyid,
                'RestCode' => $request->input('uprestcode'),
                'AppDate' => $request->input('upapplicabldate'),
                'Rate' => $request->input('upsalerate'),
                'Party' => '',
                'updated_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'e',
            ];

            // return $request->input('uprestcode');
            DB::table('itemrate')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCode', $request->input('upcode'))
                ->where('RestCode', $request->input('uprestcode'))
                ->update($itemratedata);

            return back()->with('success', 'Item Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item!' . $e);
        }
    }

    public function deletemenuitem(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121318);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if item is used in KOT
            $isUsedInKot = DB::table('kot')
                ->where('propertyid', $this->propertyid)
                ->where('item', $ucode)
                ->exists();

            if ($isUsedInKot) {
                return back()->with('error', 'Cannot delete! This item is already used in KOT entries.');
            }

            // ✅ Check if item is used in Stock
            $isUsedInStock = DB::table('stock')
                ->where('propertyid', $this->propertyid)
                ->where('item', $ucode)
                ->exists();

            if ($isUsedInStock) {
                return back()->with('error', 'Cannot delete! This item is already used in Stock entries.');
            }

            // ✅ Delete from itemmast
            $deleted1 = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $ucode)
                ->where('id', $sn)
                ->delete();

            // ✅ Delete from itemrate
            $deleted2 = DB::table('itemrate')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCode', $ucode)
                ->delete();

            if ($deleted1) {
                return back()->with('success', 'Item Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item! ' . $e->getMessage());
        }
    }

    public function deletemenucategory(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121317);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if category is used in itemmast
            $isUsed = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCatCode', $ucode)
                ->exists();

            if ($isUsed) {
                return back()->with('error', 'Cannot delete! This category is already used in Menu Items.');
            }

            // ✅ Delete from itemcatmast
            $deleted1 = DB::table('itemcatmast')
                ->where('propertyid', $this->propertyid)
                ->where('Code', $ucode)
                ->delete();

            // ✅ Delete from revmast
            $deleted2 = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $ucode)
                ->delete();

            if ($deleted1 || $deleted2) {
                return back()->with('success', 'Item Category Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item Category!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item Category! ' . $e->getMessage());
        }
    }

    public function getitemdata(Request $request)
    {
        $itemdata = DB::table('items')
            ->where('propertyid', $this->propertyid)
            ->where('icode', $request->input('icode'))
            ->first();

        return json_encode($itemdata);
    }

    public function getupdatemenuitem(Request $request)
    {
        $itemdata = DB::table('itemmast')
            ->select('itemmast.*', 'itemrate.Rate', 'itemrate.AppDate')
            ->join('itemrate', function ($join) {
                $join->on('itemmast.Code', '=', 'itemrate.ItemCode')
                    ->on('itemmast.RestCode', '=', 'itemrate.RestCode');
            })
            ->where('itemmast.property_id', $this->propertyid)
            ->where('itemmast.Code', $request->input('code'))
            ->where('itemmast.RestCode', $request->input('restcode'))
            ->first();
        // return $itemdata;
        // $itemgrp = $itemdata->ItemGroup;
        $restcode = $itemdata->RestCode;
        $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $restcode)->orderBy('name')->get();
        $itemcats = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $restcode)->orderBy('Name')->get();

        $data = [
            'itemgrps' => $itemgrps,
            'itemdata' => $itemdata,
            'itemcats' => $itemcats,
        ];

        return json_encode($data);
    }

    public function getupdatemenucategory(Request $request)
    {
        $itemcatmast = DB::table('itemcatmast')
            ->where('propertyid', $this->propertyid)
            ->where('Code', $request->input('code'))
            ->where('RestCode', $request->input('restcode'))
            ->first();

        return json_encode($itemcatmast);
    }

    public function getmaxitemcode(Request $request)
    {
        $maxcode = DB::table('itemmast')->where('Property_ID', $this->propertyid)->max('DispCode');
        $code = ($maxcode === null) ? '1' : ($code = $maxcode + 1);

        return json_encode($code);
    }

    public function submitmenugroup(Request $request)
    {
        $permission = revokeopen(121316);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'name' => 'required',
            'type' => 'required',
        ];
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', $request->input('restcode'))
            ->where('name', $request->input('name'))
            ->where('property_id', $this->propertyid)
            ->first();

        if ($existingname) {
            return back()->with('error', 'Menu Group already exists!');
        }

        $groupcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('code');
        $groupcode = substr($groupcode, 0, -$this->ptlngth);
        if (empty($groupcode)) {
            $groupcode = 1 . $this->propertyid;
        } else {
            $groupcode = $groupcode + 1 . $this->propertyid;
        }

        // $paydata = Paycharge::select('paycharge.*', 'roomocc.chkintime', 'roomocc.chkindate', '')

        try {
            $insertdata = [
                'code' => $groupcode,
                'name' => $request->input('name'),
                'property_id' => $this->propertyid,
                'restcode' => $request->input('restcode'),
                'type' => 'Finish',
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'activeyn' => $request->input('activeyn'),
            ];

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Menu Group Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Menu Group!' . $e->getMessage());
        }
    }

    public function updatemenugroup(Request $request)
    {
        $permission = revokeopen(121316);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', $request->input('uprestcode'))
            ->where('name', $request->input('upname'))
            ->where('property_id', $this->propertyid)
            ->where('code', '!=', $request->input('upcode'))
            ->first();

        if ($existingname) {
            return back()->with('error', 'Menu Group already exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('upname'),
                'restcode' => $request->input('uprestcode'),
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'activeyn' => $request->input('upactiveyn'),
            ];

            DB::table($tableName)
                ->where('property_id', $this->propertyid)
                ->where('code', $request->input('upcode'))
                ->update($updatedata);

            return back()->with('success', 'Menu Group Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Menu Group!');
        }
    }

    public function deletemenugroup(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121316);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if group is used in itemmast
            $isUsed = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemGroup', $ucode)
                ->exists();

            if ($isUsed) {
                return back()->with('error', 'Cannot delete! This group is already used in Menu Items.');
            }

            // ✅ Delete the group
            $deleted = DB::table('itemgrp')
                ->where('property_id', $this->propertyid)
                ->where('code', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Menu Group Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Menu Group!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Menu Group! ' . $e->getMessage());
        }
    }

    public function deletesundrymast(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(122013);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $deletingrec = DB::table('sundrymast')
                ->where('propertyid', $this->propertyid)
                ->where('sundry_code', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deletingrec) {
                return back()->with('msucess', 'Sundry Master Deleted Successfully');
            } else {
                return back()->with('error', 'Unable to Delete Sundry Master!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Sundry Master!' . $e);
        }
    }

    public function partymaster()
    {
        $permission = revokeopen(121612);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $partydata = SubGroup::select(
            'subgroup.*',
            'tds_categories.name as tdscategoryname'
        )
            ->leftJoin('tds_categories', function ($join) {
                $join->on('tds_categories.code', '=', 'subgroup.tds_catg')
                    ->where('tds_categories.propertyid', '=', $this->propertyid);
            })
            ->where('subgroup.propertyid', $this->propertyid)
            ->where('subgroup.group_code', '27' . $this->propertyid)
            ->get();
        $partydatamain = DB::table('acgroup')->where('propertyid', $this->propertyid)->get();
        $under_group = '27' . $this->propertyid;
        $acname = ACGroup::where('group_code', $under_group)->where('propertyid', $this->propertyid)->first();

        return view('property.partymaster', [
            'taxdata' => $partydata,
            'partydatamain' => $partydatamain,
            'acname' => $acname,
            'update' => false,
        ]);
    }

    public function updatepartymaster(Request $request)
    {
        $permission = revokeopen(121612);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $ledgerdata = DB::table('subgroup')
            ->where('propertyid', $this->propertyid)
            ->where('sub_code', base64_decode($request->input('sub_code')))
            ->first();
        $groupname = DB::table('acgroup')->where('group_code', $ledgerdata->group_code)->first();
        $ledgerdatamain = DB::table('acgroup')->where('propertyid', $this->propertyid)->get();

        $ledgerdatasub = Ledger::where('subcode', base64_decode($request->input('sub_code')))->where('propertyid', $this->propertyid)->where('vtype', 'F_AO')->orderBy('vsno')->get();

        $amtdrsum = $ledgerdatasub->sum('amtdr') ?? 0;
        $amtcrsum = $ledgerdatasub->sum('amtcr') ?? 0;
        $balance = $amtdrsum - $amtcrsum;
        $drorcr = $balance >= 0 ? 'Dr' : 'Cr';

        return view('property.updatepartymaster', [
            'ledgerdata' => $ledgerdata,
            'ledgerdatamain' => $ledgerdatamain,
            'groupname' => $groupname,
            'ledgerdatasub' => $ledgerdatasub,
            'update' => true,
            'balance' => abs($balance),
            'drorcr' => $drorcr,
        ]);
    }

    public function openitemgroup(Request $request)
    {
        $permission = revokeopen(121613);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('itemgrp', 'Menu Group Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $menugroupdata = DB::table('itemgrp')
            ->select('itemgrp.*', 'depart.name as departname', 'depart.dcode')
            ->join('depart', 'depart.dcode', '=', 'itemgrp.restcode')
            ->where('itemgrp.property_id', $this->propertyid)
            ->where('itemgrp.restcode', 'PURC' . $this->propertyid)
            ->orderBy('itemgrp.name', 'ASC')
            ->get();

        $departdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();

        return view('property.itemgroup', ['data' => $menugroupdata, 'departdata' => $departdata]);
    }

    public function submititemgroup(Request $request)
    {
        $permission = revokeopen(121613);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'name' => 'required',
            'type' => 'required',
        ];
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', 'PURC' . $this->propertyid)
            ->where('name', $request->input('name'))
            ->where('property_id', $this->propertyid)
            ->first();

        if ($existingname) {
            return back()->with('message', 'Item Group already exists!');
        }

        $groupcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('code');
        $groupcode = substr($groupcode, 0, -$this->ptlngth);
        if (empty($groupcode)) {
            $groupcode = 1 . $this->propertyid;
        } else {
            $groupcode = $groupcode + 1 . $this->propertyid;
        }

        try {
            $insertdata = [
                'code' => $groupcode,
                'name' => $request->input('name'),
                'property_id' => $this->propertyid,
                'restcode' => 'PURC' . $this->propertyid,
                'type' => $request->type,
                'cattype' => $request->categorytype,
                'created_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'activeyn' => $request->input('activeyn'),
            ];

            DB::table($tableName)->insert($insertdata);

            return back()->with('success', 'Item Group Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item Group!' . $e->getMessage());
        }
    }

    public function updateitemgroup(Request $request)
    {
        $permission = revokeopen(121613);

        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $tableName = 'itemgrp';

        $existingname = DB::table($tableName)
            ->where('restcode', 'PURC' . $this->propertyid)
            ->where('name', $request->input('upname'))
            ->where('property_id', $this->propertyid)
            ->where('code', '!=', $request->input('upcode'))
            ->first();

        if ($existingname) {
            return back()->with('error', 'Item Group already exists!');
        }

        try {
            $updatedata = [
                'name' => $request->input('upname'),
                'type' => $request->uptype,
                'cattype' => $request->upcategorytype,
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'activeyn' => $request->input('upactiveyn'),
            ];

            DB::table($tableName)
                ->where('property_id', $this->propertyid)
                ->where('code', $request->input('upcode'))
                ->update($updatedata);

            return back()->with('success', 'Item Group Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item Group!');
        }
    }

    public function openitemcategory(Request $request)
    {
        $permission = revokeopen(121614);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $this->ExportTable();
        $this->DownloadTable('itemcategory', 'Item Category Data Analysis HMS', [0, 1, 2, 3], [1, 2, 3]);
        $itemcatmast = DB::table('itemcatmast')
            ->select('itemcatmast.*', 'depart.name as departname', 'taxstru.name as taxstruname', 'subgroup.name as subgrpname')
            ->leftJoin('depart', 'depart.dcode', '=', 'itemcatmast.restcode')
            ->leftJoin('taxstru', 'taxstru.str_code', '=', 'itemcatmast.TaxStru')
            ->leftJoin('subgroup', 'subgroup.sub_code', '=', 'itemcatmast.AcCode')
            ->where('itemcatmast.propertyid', $this->propertyid)
            ->where('itemcatmast.RestCode', 'PURC' . $this->propertyid)
            ->groupBy('itemcatmast.Code')
            ->orderBy('itemcatmast.name', 'ASC')
            ->get();
        $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('rest_type', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $ledgerdata = SubGroup::where('propertyid', $this->propertyid)
            ->whereIn('group_code', function ($query) {
                $query->select('group_code')
                    ->from('acgroup')
                    ->where('propertyid', $this->propertyid)
                    ->whereIn('maingroupcode', [240, 260, 280]);
            })
            ->orderBy('name', 'ASC')
            ->get();
        $taxstrudata = DB::table('taxstru')->where('propertyid', $this->propertyid)
            ->distinct()
            ->get();

        return view('property.itemcategory', [
            'data' => $itemcatmast,
            'restaurentdata' => $restaurentdata,
            'subgroupdata' => $ledgerdata,
            'taxstrudata' => $taxstrudata,
        ]);
    }

    public function submititemcategory(Request $request)
    {
        $permission = revokeopen(121614);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'name' => 'required',
            'taxstru' => 'required',
        ]);

        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('RestCode', 'PURC' . $this->propertyid)
            ->first();
        if ($existingname) {
            return back()->with('error', 'Item Category Name already exists!');
        }
        function skipfirsti($string, $numToSkip)
        {
            return substr($string, $numToSkip) + 1;
        }
        $maxcodeRow = DB::table('revmast')
            ->select('rev_code')
            ->where('propertyid', $this->propertyid)
            ->where('rev_code', 'like', 'MT%')
            ->orderByRaw('CAST(SUBSTRING(rev_code, ' . (strlen('MT' . $this->propertyid) + 1) . ', LENGTH(rev_code)) AS UNSIGNED) DESC')
            ->first();

        if (! $maxcodeRow) {
            $code = 'MT' . $this->propertyid . '1';
        } else {
            $numericPart = (int) substr($maxcodeRow->rev_code, strlen('MT' . $this->propertyid));
            $code = 'MT' . $this->propertyid . ($numericPart + 1);
        }

        // if ($request->input('flag') == 'Charge') {
        //     $deskcode = $request->input('restcode');
        //     $field_type = 'C';
        // } else {
        //     $deskcode = '';
        //     $field_type = '';
        // }

        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'PURC' . $this->propertyid)->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'PURC' . $this->propertyid)->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';

        try {
            $insertdata = [
                'rev_code' => $code,
                'name' => $shortname . ' - ' . $request->input('name'),
                'short_name' => $shortname,
                'ac_code' => $request->input('AcCode'),
                'tax_stru' => $request->input('taxstru'),
                'type' => $request->input('flag') == 'Category' ? 'Dr' : $request->input('type'),
                'flag_type' => 'PUR',
                'Desk_code' => 'PURC' . $this->propertyid,
                'field_type' => 'C',
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Code' => $code,
                'Name' => $request->input('name'),
                'RestCode' => 'PURC' . $this->propertyid,
                'TaxStru' => $request->input('taxstru'),
                'AcCode' => $request->input('AcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('flag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('type'),
                'cattyper' => $request->input('cattyper'),
                'DrCr' => $request->input('flag') == 'Category' ? 'Dr' : 'Cr',
                'RevCode' => $code,
                'created_at' => $this->currenttime,
                'propertyid' => $this->propertyid,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'a',
                'ActiveYN' => 'Y',
            ];
            DB::table('revmast')->insert($insertdata);
            DB::table($tableName)->insert($itemcatmastdata);

            return back()->with('success', 'Item Category Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item Category!' . $e);
        }
    }

    public function updateitemcategory(Request $request)
    {
        $permission = revokeopen(121614);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'upname' => 'required',
            'uptaxstru' => 'required',
        ]);
        $tableName = 'itemcatmast';
        $existingname = DB::table($tableName)
            ->where('propertyid', $this->propertyid)
            ->where('Name', $request->input('name'))
            ->where('Code', '!=', $request->input('upcode'))
            ->first();
        if ($existingname) {
            return back()->with('error', 'Category Name already exists!');
        }
        $shortname = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'PURC' . $this->propertyid)->value('short_name');
        $outletyn = DB::table('depart')->where('propertyid', $this->propertyid)->where('dcode', 'PURC' . $this->propertyid)->value('rest_type');
        $outyn = $outletyn == 'Outlet' ? 'Y' : 'N';
        try {
            $updatedata = [
                'name' => $shortname . ' - ' . $request->input('upname'),
                'short_name' => $shortname,
                'ac_code' => $request->input('upAcCode'),
                'tax_stru' => $request->input('uptaxstru'),
                'type' => $request->input('upflag') == 'Category' ? 'Dr' : $request->input('uptype'),
                'flag_type' => 'PUR',
                'Desk_code' => 'PURC' . $this->propertyid,
                'field_type' => 'C',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'SysYN' => 'N',
            ];
            $itemcatmastdata = [
                'Name' => $request->input('upname'),
                'TaxStru' => $request->input('uptaxstru'),
                'AcCode' => $request->input('upAcCode'),
                'OutletYN' => $outyn,
                'Flag' => $request->input('upflag'),
                'RoundOff' => 'No',
                'CatType' => $request->input('uptype'),
                'cattyper' => $request->input('upcattyper'),
                'DrCr' => $request->input('upflag') == 'Category' ? 'Dr' : 'Cr',
                'updated_at' => $this->currenttime,
                'u_name' => Auth::user()->u_name,
                'u_ae' => 'e',
                'ActiveYN' => 'Y',
            ];
            DB::table('revmast')->where('propertyid', $this->propertyid)->where('rev_code', $request->input('upcode'))->update($updatedata);
            DB::table($tableName)->where('propertyid', $this->propertyid)->where('Code', $request->input('upcode'))->update($itemcatmastdata);

            return back()->with('success', 'Item Category Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item Category!' . $e);
        }
    }

    public function openitementry(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        // $this->ExportTable();
        // $this->DownloadTable('menuitem', 'Menu Item Data Analysis HMS', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [1, 2, 3]);
        $itemmast = ItemMast::select(
            'itemmast.Name as itemname',
            'itemmast.Code',
            'itemmast.id',
            'itemmast.PurchRate',
            'itemmast.DispCode',
            'itemmast.Property_ID',
            'itemmast.HSNCode',
            'itemmast.DiscApp',
            'itemmast.RateEdit',
            'itemmast.ActiveYN',
            'unitmast.name as unitname',
            'itemgrp.Name as itemgrpname',
            'itemcatmast.Name As itemcatname',
            'itemmast.Dispcode',
            'depart_r.Name as Restaurant',
            'depart_r.dcode',
            'itemrate.Rate',
            'itemmast.ActiveYN',
            'itemmast.NType',
            'itemmast.RestCode',
            'itemmast.expiry_applicable'
        )
            ->leftJoin('itemgrp', function ($join) {
                $join->on('itemgrp.Code', '=', 'itemmast.ItemGroup')
                    ->where('itemgrp.property_id', '=', $this->propertyid);
            })
            ->leftJoin('unitmast', function ($join) {
                $join->on('unitmast.ucode', '=', 'itemmast.Unit')
                    ->where('unitmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemcatmast', function ($join) {
                $join->on('itemcatmast.Code', '=', 'itemmast.ItemCatCode')
                    ->where('itemcatmast.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('depart as depart_r', function ($join) {
                $join->on('depart_r.dcode', '=', 'itemmast.RestCode')
                    ->where('depart_r.propertyid', '=', $this->propertyid);
            })
            ->leftJoin('itemrate', function ($join) {
                $join->on('itemrate.ItemCode', '=', 'itemmast.Code')
                    ->where('itemrate.Property_ID', '=', $this->propertyid);
            })
            ->where('itemmast.Property_ID', '=', $this->propertyid)
            ->where('itemmast.RestCode', 'PURC' . $this->propertyid)
            ->groupBy('itemmast.Code')
            ->orderBy('itemmast.Name', 'ASC')
            ->get();

        $itemrate = DB::table('itemrate')
            ->where('Property_ID', $this->propertyid)
            ->orderBy('ItemCode', 'ASC')
            ->get();
        $itemgrp = DB::table('itemgrp')->where('restcode', 'PURC' . $this->propertyid)->where('property_id', $this->propertyid)->orderBy('name', 'ASC')->get();
        $restaurentdata = DB::table('depart')->where('propertyid', $this->propertyid)->whereIn('nature', ['Room Service', 'Outlet'])->orderBy('name', 'ASC')->get();
        $itemnames = DB::table('items')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $unit = DB::table('unitmast')->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $itemcatmast = DB::table('itemcatmast')->where('RestCode', 'PURC' . $this->propertyid)->where('propertyid', $this->propertyid)->orderBy('name', 'ASC')->get();
        $kitchen = DB::table('depart')->where('propertyid', $this->propertyid)->where('rest_type', 'Kitchen')->orderBy('name', 'ASC')->get();

        return view('property.itementry', [
            'itemmast' => $itemmast,
            'itemrate' => $itemrate,
            'kitchen' => $kitchen,
            'restaurentdata' => $restaurentdata,
            'itemgrp' => $itemgrp,
            'itemnames' => $itemnames,
            'unit' => $unit,
            'itemcatmast' => $itemcatmast,
        ]);
    }

    public function itementrysubmit(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        try {
            $validate = [
                'itemname' => 'required',
                'unit' => 'required',
                'itemcatmast' => 'required',
                'itemgrp' => 'required',
                'salerate' => 'required',
            ];
            $tableName = 'itemmast';

            $existingcode = DB::table($tableName)
                ->where('Property_ID', $this->propertyid)
                ->where('DispCode', $request->input('itemname'))
                ->where('RestCode', 'PURC' . $this->propertyid)
                ->first();
            $maxcode = DB::table($tableName)->where('property_id', $this->propertyid)->max('Code');
            $code = ($maxcode === null) ? $this->propertyid . '1' : ($code = $this->propertyid . substr($maxcode, $this->ptlngth) + 1);

            if ($existingcode) {
                return back()->with('error', 'Item Code already exists!');
            }

            $existingname = DB::table($tableName)
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $request->input('itemname'))
                ->where('RestCode', 'PURC' . $this->propertyid)
                ->first();

            if ($existingname) {
                return back()->with('error', 'Item Name already exists!');
            }

            $itemname = DB::table('items')->where('propertyid', $this->propertyid)->where('icode', $request->input('itemname'))->first();

            $cattype = ItemGrp::where('property_id', $this->propertyid)
                ->where('restcode', 'PURC' . $this->propertyid)
                ->where('code', $request->input('itemgrp'))
                ->value('cattype');

            // return $cattype;

            $insertdata = [
                'Code' => $request->input('itemname'),
                'Name' => $itemname->name,
                'property_id' => $this->propertyid,
                'RestCode' => 'PURC' . $this->propertyid,
                'ItemGroup' => $request->input('itemgrp'),
                'dishtype' => '',
                'favourite' => '0',
                'PurchRate' => $request->input('salerate') ?? '0.00',
                'MinStock' => $request->input('minstock') ?? '0.000',
                'MaxStock' => $request->input('maxstock') ?? '0.000',
                'ReStock' => $request->input('recordstock') ?? '0.000',
                'LPurRate' => '0',
                'LPurDate' => null,
                'DispCode' => '',
                'ConvRatio' => $request->input('convratio') ?? '0.000',
                'IssueUnit' => $request->input('wtunit') ?? '',
                'Specification' => '',
                'LabelName' => '',
                'LabelQty' => '',
                'LabelRemark1' => '',
                'LabelRemark2' => '',
                'LabelRemark3' => '',
                'LabelRemark4' => '',
                'ItemType' => 'Store',
                'NType' => '',
                'iempic' => $request->input('itempic') ?? '',
                'Unit' => $request->input('unit'),
                'RateEdit' => '',
                'ItemCatCode' => $request->input('itemcatmast'),
                'BarCode' => $request->input('barcode'),
                'Type' => $request->input('grouptype'),
                'cattype' => $cattype ?? '',
                'HSNCode' => $request->input('hsncode') ?? '',
                'DiscApp' => '',
                'SChrgApp' => '',
                'RateIncTax' => '',
                'Kitchen' => '',
                'created_at' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'a',
                'ActiveYN' => $request->input('activeyn'),
                'wtqty' => $request->input('wtqty') ?? '0.00',
                'Pitemcode' => 1,
                'expiry_applicable' => $request->input('expiry_applicable') ?? 0,
            ];

            // return $insertdata;
            DB::table($tableName)->insert($insertdata);
            // return 'sagar';

            return back()->with('success', 'Item Inserted successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Insert Item!' . $e);
        }
    }

    public function getupdateitemcategory(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $itemdata = DB::table('itemmast')
            ->select('itemmast.*')
            ->where('itemmast.property_id', $this->propertyid)
            ->where('itemmast.Code', $request->input('code'))
            ->where('itemmast.RestCode', $request->input('restcode'))
            ->first();
        // $itemgrp = $itemdata->ItemGroup;
        $restcode = $itemdata->RestCode;
        $itemgrps = ItemGrp::where('property_id', $this->propertyid)->where('restcode', $restcode)->orderBy('name')->get();
        $itemcats = ItemCatMast::where('propertyid', $this->propertyid)->where('RestCode', $restcode)->orderBy('Name')->get();

        $data = [
            'itemgrps' => $itemgrps,
            'itemdata' => $itemdata,
            'itemcats' => $itemcats,
        ];

        return json_encode($data);
    }

    public function updateitementry(Request $request)
    {
        $permission = revokeopen(121616);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = [
            'upname' => 'required',
            'uprestcode' => 'required',
            'upicode' => 'required',
            'upunit' => 'required',
            'upitemcatmast' => 'required',
            'upitemgrp' => 'required',
        ];
        $tableName = 'itemmast';

        $cattype = ItemGrp::where('property_id', $this->propertyid)
            ->where('restcode', 'PURC' . $this->propertyid)
            ->where('code', $request->input('upitemgrp'))
            ->value('cattype');

        try {
            $updatedata = [
                'ItemGroup' => $request->input('upitemgrp'),
                'Type' => $request->input('upgrouptype'),
                'cattype' => $cattype,
                'ItemType' => 'Store',
                'Unit' => $request->input('upunit'),
                'PurchRate' => $request->input('upsalerate') ?? '0.00',
                'MinStock' => $request->input('upminstock') ?? '0.000',
                'MaxStock' => $request->input('upmaxstock') ?? '0.000',
                'ReStock' => $request->input('uprecordstock') ?? '0.000',
                'IssueUnit' => $request->input('upwtunit'),
                'ItemCatCode' => $request->input('upitemcatmast'),
                'BarCode' => $request->input('upbarcode'),
                'HSNCode' => $request->input('uphsncode') ?? '',
                'u_updaedt' => $this->currenttime,
                'U_Name' => Auth::user()->u_name,
                'U_AE' => 'e',
                'ActiveYN' => $request->input('upactiveyn'),
                'expiry_applicable' => $request->input('upexpiry_applicable') ?? 0,
            ];

            DB::table($tableName)
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $request->input('upcode'))
                ->where('RestCode', 'PURC' . $this->propertyid)
                ->update($updatedata);

            return back()->with('success', 'Item Updated successfully!');
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Update Item!' . $e);
        }
    }

    public function opengrcprinting()
    {
        if ($this->revokeopen(141113)->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $data = Guestfolio::select([
            'roomocc.docid',
            'roomocc.name',
            'guestfolio.add1',
            'guestfolio.add2',
            'guestfolio.Name AS Guest_Name',
            'cities.cityname AS City',
            'guestprof.nationality',
            'guestprof.mobile_no',
            'guestprof.email_id',
            'guestprof.dob',
            'guestprof.anniversary',
            'guestfolio.arrfrom',
            'guestfolio.destination',
            'guestfolio.folio_no as Folio_No',
            'room_cat.name as room_category',
            'roomocc.adult',
            'roomocc.children',
            'roomocc.roomrate as Rate',
            'roomocc.planamt',
            'roomocc.rrtaxinc as Tax_Inc',
            'plan_mast.name as plan_name',
            'roomocc.chkindate as CheckIn_Date',
            'roomocc.chkintime as CheckIn_Time',
            'roomocc.depdate as Dep_Date',
            'roomocc.deptime as deptime',
            'guestfolio.travelmode',
            'guestprof.id_proof',
            'guestprof.idproof_no',
            'guestprof.paymentMethod',
            'subgroup.name as compname',
            'ST.name as travelagent',
            'busssource.name as business_source',
            'booking.BookedBy',
            'booking.RefBookNo',
            'guestprof.pic_path',
            'guestprof.guestsign',
            'roomocc.roomno as Room_No',
            'guestprof.u_name',
        ])
            ->leftJoin('roomocc', 'guestfolio.docid', '=', 'roomocc.docid')
            ->leftJoin('guestprof', 'guestfolio.guestprof', '=', 'guestprof.guestcode')
            ->leftJoin('cities', 'guestfolio.city', '=', 'cities.city_code')
            ->leftJoin('room_cat', 'roomocc.roomcat', '=', 'room_cat.cat_code')
            ->leftJoin('plan_mast', 'roomocc.plancode', '=', 'plan_mast.pcode')
            ->leftJoin('busssource', 'guestfolio.busssource', '=', 'busssource.bcode')
            ->leftJoin('subgroup', 'guestfolio.company', '=', 'subgroup.sub_code')
            ->leftJoin('subgroup as ST', 'guestfolio.travelagent', '=', 'ST.sub_code')
            ->leftJoin('booking', 'booking.docid', '=', 'guestfolio.bookingdocid')
            ->where('roomocc.type', '!=', 'C')
            ->whereNotNull('guestfolio.folio_no')
            ->where('guestfolio.folio_no', '!=', '')
            ->where('guestfolio.propertyid', $this->propertyid)
            ->orderBy('guestfolio.docid')
            ->get();

        return view('property.grcprinting', compact('data'));
    }

    public function deletepartymaster(Request $request, $sn, $sub_code)
    {
        $permission = revokeopen(121612);
        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            $usage = [];

            // ✅ Ledger self-check
            if (DB::table('ledger')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) use ($sub_code) {
                    $q->where('subcode', $sub_code)
                        ->orWhere('contrasub', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Ledger Entries';
            }

            // ✅ revmast
            if (DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where(function ($q) use ($sub_code) {
                    $q->where('ac_code', $sub_code)
                        ->orWhere('payable_ac', $sub_code)
                        ->orWhere('unregistered_ac', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Revmast';
            }

            // ✅ enviro_banquet
            if (DB::table('enviro_banquet')
                ->where(function ($q) use ($sub_code) {
                    $q->where('roundoffac', $sub_code)
                        ->orWhere('discountac', $sub_code)
                        ->orWhere('indoorsaleac', $sub_code)
                        ->orWhere('indoorpartyac', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Banquet';
            }

            // ✅ enviro_inventory
            if (DB::table('enviro_inventory')
                ->where('cashpurchaseac', $sub_code)
                ->exists()
            ) {
                $usage[] = 'Inventory';
            }

            // ✅ enviro_payroll
            if (DB::table('enviro_payroll')
                ->where(function ($q) use ($sub_code) {
                    $q->where('salaryac', $sub_code)
                        ->orWhere('loanac', $sub_code)
                        ->orWhere('advanceac', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Payroll';
            }

            // ✅ enviro_pos
            if (DB::table('enviro_pos')
                ->where('cashpaytype', $sub_code)
                ->exists()
            ) {
                $usage[] = 'POS';
            }

            // ✅ enviro_form
            if (DB::table('enviro_form')
                ->where(function ($q) use ($sub_code) {
                    $q->where('cancellationac', $sub_code)
                        ->orWhere('advanceroomrentac', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Form';
            }

            // ✅ itemcatmast
            if (DB::table('itemcatmast')
                ->where('AcCode', $sub_code)
                ->exists()
            ) {
                $usage[] = 'Item Category';
            }

            // ✅ guestfolio
            if (DB::table('guestfolio')
                ->where(function ($q) use ($sub_code) {
                    $q->where('company', $sub_code)
                        ->orWhere('travelagent', $sub_code);
                })->exists()
            ) {
                $usage[] = 'Guest Folio (Company/Travel Agent)';
            }

            // ❌ BLOCK DELETE if used anywhere
            if (! empty($usage)) {
                return back()->with(
                    'error',
                    'This Party Is Used In: ' . implode(' | ', $usage) . '. So It Can Not Be Deleted.'
                );
            }

            // ✅ FINAL DELETE
            $deleted = DB::table('subgroup')
                ->where('propertyid', $this->propertyid)
                ->where('sub_code', $sub_code)
                ->where('id', $sn)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Party Master Deleted Successfully!');
            } else {
                return back()->with('error', 'Party Master Not Found!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'An error occurred: ' . $e->getMessage());
        }
    }

    public function deleteitemgroup(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121613);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if group is used in itemmast
            $isUsed = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemGroup', $ucode)
                ->exists();

            if ($isUsed) {
                return back()->with('error', 'Cannot delete! This group is already used in Item List.');
            }

            // ✅ Delete from itemgrp
            $deleted = DB::table('itemgrp')
                ->where('property_id', $this->propertyid)
                ->where('code', $ucode)
                ->where('id', $sn)
                ->delete();

            if ($deleted) {
                return back()->with('success', 'Item List Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item List!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item List! ' . $e->getMessage());
        }
    }

    public function deleteitemcategory(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121614);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if category is used in itemmast
            $isUsed = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCatCode', $ucode)
                ->exists();

            if ($isUsed) {
                return back()->with('error', 'Cannot delete! This category is already used in Item List.');
            }

            // ✅ Delete from itemcatmast
            $deleted1 = DB::table('itemcatmast')
                ->where('propertyid', $this->propertyid)
                ->where('Code', $ucode)
                ->delete();

            // ✅ Delete from revmast
            $deleted2 = DB::table('revmast')
                ->where('propertyid', $this->propertyid)
                ->where('rev_code', $ucode)
                ->delete();

            if ($deleted1 || $deleted2) {
                return back()->with('success', 'Item Category Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item Category!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item Category! ' . $e->getMessage());
        }
    }

    public function deletemenuentry(Request $request, $sn, $ucode)
    {
        $permission = revokeopen(121318);

        if (is_null($permission) || $permission->del == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        try {
            // ✅ Check if item is used in Stock
            $isUsedInStock = DB::table('stock')
                ->where('propertyid', $this->propertyid)
                ->where('restcode', 'PURC' . $this->propertyid)
                ->where('item', $ucode)
                ->exists();

            if ($isUsedInStock) {
                return back()->with('error', 'Cannot delete! This item is already used in Stock entries.');
            }

            // ✅ Check if item is used in purch2
            $isUsedInPurch = DB::table('purch2')
                ->where('propertyid', $this->propertyid)
                ->where('item', $ucode)
                ->exists();

            if ($isUsedInPurch) {
                return back()->with('error', 'Cannot delete! This item is already used in Purchase entries.');
            }

            // ✅ Check if item is used in indent1
            $isUsedInIndent = DB::table('indent1')
                ->where('propertyid', $this->propertyid)
                ->where('item', $ucode)
                ->exists();

            if ($isUsedInIndent) {
                return back()->with('error', 'Cannot delete! This item is already used in Indent entries.');
            }

            // ✅ Delete from itemmast
            $deleted1 = DB::table('itemmast')
                ->where('Property_ID', $this->propertyid)
                ->where('Code', $ucode)
                ->where('id', $sn)
                ->delete();

            // ✅ Delete from itemrate
            $deleted2 = DB::table('itemrate')
                ->where('Property_ID', $this->propertyid)
                ->where('ItemCode', $ucode)
                ->delete();

            if ($deleted1) {
                return back()->with('success', 'Item Deleted Successfully!');
            } else {
                return back()->with('error', 'Unable to Delete Item!');
            }
        } catch (Exception $e) {
            return back()->with('error', 'Unable to Delete Item! ' . $e->getMessage());
        }
    }

    public function housekeepingstatusreport()
    {

        try {
            $permission = revokeopen(998765); // Use appropriate permission ID
            if (is_null($permission) || $permission->view == 0) {
                //  return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
            }

            $company = Companyreg::select(
                'comp_name',
                'address1',
                'city',
                'pin',
                'mobile',
                'email',
                'propertyid',
                'logo',
                'u_name',
                'gstin'
            )
                ->where('propertyid', $this->propertyid)
                ->first();

            $statename = DB::table('states')->where('state_code', $company->state ?? '')->value('name') ?? '';

            return view('property.housekeepingstatusreport', [
                'company' => $company,
                'statename' => $statename,
            ]);
        } catch (Exception $e) {

            Log::error('housekeepingstatusreport Error: ' . $e->getMessage());

            return redirect()->back()->with('error', 'Error: ' . $e->getMessage());
        }
    }

    public function fetchhousekeepingstatusreport(Request $request)
    {
        try {
            $arrDate = $request->input('arrDate', date('Y-m-d'));
            $roomStatus = $request->input('roomStatus', 'All');
            $guestStatus = $request->input('guestStatus', 'All');

            $query = DB::table('room_mast AS RO')
                ->select(
                    'RO.rcode AS RoomNo',
                    'C.name AS Type',
                    DB::raw("CASE WHEN RO.room_stat = 'C' THEN 'Clean' ELSE 'Dirty' END AS RoomStatus"),
                    DB::raw("CASE 
                        WHEN RC.folioNo > 0 THEN 'In House'
                        WHEN B.BookNo > 0 THEN 'Arrival'
                        WHEN RB.type = 'O' THEN 'Block'
                        ELSE 'Vacant'
                    END AS GuestStatus"),
                    DB::raw('COALESCE(RC.folioNo, B.BookNo) AS FolioResNo'),
                    DB::raw('COALESCE(GF.Name, GP.name) AS GuestName'),
                    DB::raw('COALESCE(RC.chkindate, B.ArrDate, RB.fromdate) AS ArrDate'),
                    DB::raw('COALESCE(RC.depdate, B.DepDate, RB.todate) AS DepDate'),
                    DB::raw('COALESCE(RC.adult, B.Adults) AS Adults')
                )
                ->leftJoin('roomocc AS RC', function ($join) {
                    $join->on('RO.rcode', '=', 'RC.roomno')
                        ->whereNull('RC.chkoutdate')
                        ->where('RC.propertyid', $this->propertyid);
                })
                ->leftJoin('grpbookingdetails AS B', function ($join) use ($arrDate) {
                    $join->on('RO.rcode', '=', 'B.RoomNo')
                        ->where('B.Cancel', '=', 'N')
                        ->where('B.ContraDocId', '=', '')
                        ->where('B.ArrDate', '=', $arrDate);
                })
                ->leftJoin('guestfolio AS GF', 'RC.FolioNo', '=', 'GF.folio_no')
                ->leftJoin('guestprof AS GP', 'B.GuestProf', '=', 'GP.guestcode')
                ->leftJoin('roomblockout AS RB', function ($join) {
                    $join->on('RO.rcode', '=', 'RB.roomcode')
                        ->where('RB.type', '=', 'O')
                        ->where('RB.propertyid', $this->propertyid);
                })
                ->leftJoin('room_cat AS C', 'RO.room_cat', '=', 'C.cat_code')
                ->where('RO.Propertyid', $this->propertyid)
                ->where('RO.Type', 'RO')
                ->where('RO.InclCount', 'Y');

            // Apply room status filter
            if ($roomStatus !== 'All') {
                if ($roomStatus === 'Clean') {
                    $query->where('RO.room_stat', 'C');
                } elseif ($roomStatus === 'Dirty') {
                    $query->where('RO.room_stat', '<>', 'C');
                }
            }

            $results = $query->groupBy('RO.rcode')
                ->orderBy('RO.Name')
                ->get();

            // Apply guest status filter after fetching
            if ($guestStatus !== 'All') {
                $results = $results->filter(function ($item) use ($guestStatus) {
                    return $item->GuestStatus === $guestStatus;
                })->values();
            }

            return response()->json([
                'success' => true,
                'data' => $results,
            ]);
        } catch (Exception $e) {
            Log::error('fetchhousekeepingstatusreport Error: ' . $e->getMessage());

            return response()->json([
                'success' => false,
                'message' => 'Error fetching data: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function getPurchaseAmount(Request $request)
    {
        $companies = Companyreg::groupBy('propertyid')->orderBy('comp_name', 'ASC')->get();

        return view('property.purchaseamount', compact('companies'));
    }

    public function getpurchaseamountsubmit(Request $request)
    {
        try {
            $propertyid = $this->propertyid; // Assuming you want to use the current property ID. You can also get it from the request if needed.

            if ($propertyid) {
                $data = DB::table('purch2')
                    ->selectRaw('YEAR(VDate) as Year, MONTH(VDate) as Month, SUM(amount) as Purchaseamount')
                    ->where('propertyid', $propertyid)
                    ->groupByRaw('YEAR(VDate), MONTH(VDate)')
                    ->orderBy('Year')
                    ->orderBy('Month')
                    ->get();

                return response()->json([
                    'success' => true,
                    'data' => $data,
                ]);
            }

            return response()->json([
                'success' => false,
                'message' => 'Missing required parameters',
            ], 400);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error fetching purchase amount data: ' . $e->getMessage(),
            ], 500);
        }
    }

    public function checklist()
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $data = HkChecklistMast::where('propertyid', $this->propertyid)
            ->orderBy('sno', 'asc')
            ->get();

        $predefined = [
            1 => 'BED MADE',
            2 => 'MIRROR CLEAN',
            3 => 'VACUUM DONE',
            4 => 'TV CHECKED',
            5 => 'TOWELS REPLACED',
            6 => 'ROOM FRAGRANCE',
            7 => 'BATHROOM CLEAN',
            8 => 'FLOOR MOPPED',
            9 => 'BALCONY CLEAN',
            10 => 'MINI BAR CHECKED',
            11 => 'LINEN CHANGED',
            12 => 'DOOR LOCKED CHECKED',
            13 => 'TOILET SANITIZED',
            14 => 'DUSTING DONE',
            15 => 'AC CHECKED',
            16 => 'CURTAIN CHECKED',
            17 => 'AMENITIES REFILLED',
            18 => 'LIGHTS CHECKED',
        ];

        $nextSno = (HkChecklistMast::where('propertyid', $this->propertyid)->max('sno') ?? 0) + 1;

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.checklist', compact('data', 'predefined', 'nextSno', 'departments'));
    }

    public function checklistsubmit(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        // Collect all submitted names (checklistname1, checklistname2, ...)
        $submittedNames = [];
        foreach ($request->all() as $key => $value) {
            if (strpos($key, 'checklistname') === 0) {
                $index = substr($key, strlen('checklistname')); // "1", "2", ...
                $name = strtoupper(trim((string) $value));
                if ($name !== '' && $name !== '__OTHER__') {
                    $dept = strtoupper(trim((string) $request->input('department' . $index, '')));
                    $submittedNames[] = [
                        'name' => $name,
                        'dcode' => $dept !== '' ? $dept : null,
                    ];
                }
            }
        }

        if (count($submittedNames) === 0) {
            return response()->json(['success' => false, 'message' => 'Please select or enter at least one name!']);
        }

        foreach ($submittedNames as $item) {
            if (mb_strlen($item['name']) > 25) {
                return response()->json(['success' => false, 'message' => 'Checklist name must not exceed 25 characters!']);
            }
        }

        $propertyid = $this->propertyid;

        // sno = simple row count increment (1, 2, 3 ...)
        $lastSno = HkChecklistMast::where('propertyid', $propertyid)
            ->max('sno') ?? 0;

        // code = propertyid + increment (e.g. 1031, 1032 ...)
        $lastCodeRaw = HkChecklistMast::where('propertyid', $propertyid)
            ->max('code') ?? 0;
        $prefixLen = strlen((string) $propertyid);
        $lastCode = $lastCodeRaw ? intval(substr((string) $lastCodeRaw, $prefixLen)) : 0;

        $inserted = 0;
        $skipped = [];

        foreach ($submittedNames as $item) {
            $name = $item['name'];
            $dept = $item['dcode'];

            // Skip duplicates
            if (HkChecklistMast::where('propertyid', $propertyid)
                ->where('name', $name)
                ->exists()
            ) {
                $skipped[] = $name;

                continue;
            }

            $lastSno++;
            $lastCode++;
            $code = intval($propertyid . $lastCode); // e.g. 1031, 1032 ...

            HkChecklistMast::create([
                'propertyid' => $propertyid,
                'code' => $code,
                'sno' => $lastSno,
                'name' => $name,
                'dcode' => $dept,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);

            $inserted++;
        }

        if ($inserted === 0 && count($skipped) > 0) {
            return response()->json([
                'success' => false,
                'message' => 'All items already exist: ' . implode(', ', $skipped),
            ]);
        }

        $msg = $inserted . ' item(s) saved successfully!';
        if (count($skipped) > 0) {
            $msg .= ' Skipped (duplicates): ' . implode(', ', $skipped);
        }

        return response()->json(['success' => true, 'message' => $msg]);
    }

    public function checklistupdate(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->edit == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to edit!']);
        }

        $request->validate([
            'sn' => 'required|integer',
            'sno' => 'required|integer|min:1',
            'name' => 'required|string|max:25',
            'department' => 'nullable|string|max:20',
        ]);

        $name = strtoupper(trim($request->name));
        $dept = $request->input('department') ? strtoupper(trim($request->input('department'))) : null;

        if (HkChecklistMast::where('propertyid', $this->propertyid)
            ->where('name', $name)
            ->where('id', '!=', $request->sn)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Checklist item name already exists!']);
        }

        try {
            HkChecklistMast::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'sno' => $request->sno,
                    'name' => $name,
                    'dcode' => $dept,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Checklist item updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    public function checklistdelete(Request $request)
    {
        $permission = revokeopen(121312);

        if (is_null($permission) || $permission->del == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to delete!']);
        }

        $request->validate([
            'sn' => 'required|integer',
        ]);

        try {
            HkChecklistMast::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Checklist item deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // =========================================================================
    //  FEEDBACK QUESTION MASTER
    // =========================================================================

    // ── Open Feedback Question Page ───────────────────────────────────────────
    public function feedbackquestion()
    {
        $permission = revokeopen(121923);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $data = FeedbackMaster::where('propertyid', $this->propertyid)
            ->orderBy('displayorder', 'asc')
            ->get();

        return view('property.feedbackquestion', compact('data'));
    }

    // ── Store Feedback Question ───────────────────────────────────────────────
    public function feedbackquestionstore(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to insert!']);
        }

        $request->validate([
            'question' => 'required|string|max:250',
            'displayorder' => 'required|integer|min:1',
            'depatment' => 'required|in:FOM,POS,BANQ',
            'isactive' => 'required|in:0,1',
        ]);

        $propertyid = $this->propertyid;
        $question = trim($request->input('question'));
        $displayorder = intval($request->input('displayorder'));
        $depatment = $request->input('depatment');
        $isactive = intval($request->input('isactive'));

        if (FeedbackMaster::where('propertyid', $propertyid)
            ->where('question', $question)
            ->where('depatment', $depatment)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'This feedback question already exists for this department!']);
        }

        // ── FIX: numeric MAX nikalna, string MAX nahi ─────────────────────────
        $prefixLen = strlen((string) $propertyid);

        $lastCode = FeedbackMaster::where('propertyid', $propertyid)
            ->selectRaw('MAX(CAST(SUBSTRING(questioncode, ?) AS UNSIGNED)) as maxcode', [$prefixLen + 1])
            ->value('maxcode');

        $lastCode = $lastCode ? intval($lastCode) : 0;
        $lastCode++;
        $newCode = (string) ($propertyid . $lastCode);

        FeedbackMaster::create([
            'propertyid' => $propertyid,
            'questioncode' => $newCode,
            'question' => $question,
            'displayorder' => $displayorder,
            'depatment' => $depatment,
            'isactive' => $isactive,
        ]);

        return response()->json(['success' => true, 'message' => 'Feedback question saved successfully!']);
    }

    // ── Update Feedback Question ──────────────────────────────────────────────
    public function feedbackquestionupdate(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->edit == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to edit!']);
        }

        $request->validate([
            'sn' => 'required|integer',
            'question' => 'required|string|max:250',
            'displayorder' => 'required|integer|min:1',
            'depatment' => 'required|in:FOM,POS,BANQ',
            'isactive' => 'required|in:0,1',
        ]);

        $question = trim($request->question);

        if (FeedbackMaster::where('propertyid', $this->propertyid)
            ->where('question', $question)
            ->where('depatment', $request->depatment)
            ->where('id', '!=', $request->sn)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'This feedback question already exists for this department!']);
        }

        try {
            FeedbackMaster::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'question' => $question,
                    'displayorder' => $request->displayorder,
                    'depatment' => $request->depatment,
                    'isactive' => $request->isactive,
                ]);

            return response()->json(['success' => true, 'message' => 'Feedback question updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    // ── Delete Feedback Question ──────────────────────────────────────────────
    public function feedbackquestiondelete(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->del == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to delete!']);
        }

        $request->validate([
            'sn' => 'required|integer',
        ]);

        try {
            FeedbackMaster::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Feedback question deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // =========================================================================
    //  AMENITIES MASTER
    // =========================================================================

    // ── Open Amenities Master Page ────────────────────────────────────────────
    public function amenitiesmaster()
    {
        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        // All existing records with item name joined from itemmast
        $data = DB::select(
            "SELECT h.id, h.propertyid, h.item, h.type, h.srno, h.dcode,
                    COALESCE(i.name, h.item) AS item_name
             FROM hkamentiesmaster h
             LEFT JOIN itemmast i
               ON i.Code = h.item
               AND i.Property_ID = h.propertyid
               AND i.RestCode = CONCAT('purc', h.propertyid)
             WHERE h.propertyid = ?
             ORDER BY h.type ASC, h.srno ASC, h.id ASC",
            [$this->propertyid]
        );
        $data = collect($data);

        // Items dropdown — same property & purchase restcode
        $items = DB::select(
            "SELECT code, name FROM itemmast
             WHERE Property_ID = ? AND RestCode = ? AND ActiveYN = 'Y'
             ORDER BY name ASC",
            [$this->propertyid, 'purc' . $this->propertyid]
        );

        $departments = DB::table('depart')
            ->select('name', 'dcode')
            ->where('propertyid', $this->propertyid)
            ->orderBy('name', 'asc')
            ->get();

        return view('property.amenitiesmaster', compact('data', 'items', 'departments'));
    }

    // ── AJAX: Get items already saved for a given type ────────────────────────
    public function amenitiesGetItems(Request $request)
    {
        $type = $request->input('type');

        $rows = HkAmentiesMaster::where('propertyid', $this->propertyid)
            ->where('type', $type)
            ->orderBy('id', 'asc')
            ->get(['id', 'item', 'type']);

        return response()->json(['success' => true, 'data' => $rows]);
    }

    // ── Store Amenities Master ────────────────────────────────────────────────
    public function amenitiesstore(Request $request)
    {
        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to insert!']);
        }

        $request->validate([
            'type' => 'required|in:Linen,Amenities,Chemical',
            'items' => 'required|array|min:1',
            'items.*' => 'required|string|max:10',
            'srnos' => 'nullable|array',
            'srnos.*' => 'nullable|integer|min:1',
        ]);

        $propertyid = $this->propertyid;
        $type = $request->input('type');
        $items = $request->input('items');
        $srnos = $request->input('srnos', []);
        $d_code = $request->input('dcode') ?: null;

        $inserted = 0;
        $skipped = [];

        foreach ($items as $index => $rawItem) {
            $item = strtoupper(trim($rawItem));
            $srno = isset($srnos[$index]) && $srnos[$index] !== '' ? (int) $srnos[$index] : null;
            if (empty($item)) {
                continue;
            }

            // Duplicate check: same property + type + item
            if (HkAmentiesMaster::where('propertyid', $propertyid)
                ->where('type', $type)
                ->where('item', $item)
                ->exists()
            ) {
                $skipped[] = $item;

                continue;
            }

            // srno duplicate check (same property + type + srno)
            if (
                $srno !== null && HkAmentiesMaster::where('propertyid', $propertyid)
                ->where('type', $type)
                ->where('srno', $srno)
                ->exists()
            ) {
                return response()->json(['success' => false, 'message' => 'Sr. No. ' . $srno . ' already exists under ' . $type . '. Please use a different number.']);
            }

            HkAmentiesMaster::create([
                'propertyid' => $propertyid,
                'item' => $item,
                'type' => $type,
                'srno' => $srno,
                'dcode' => $d_code,
                'u_name' => Auth::user()->u_name,
                'created_at' => $this->currenttime,
                'u_ae' => 'a',
            ]);
            $inserted++;
        }

        if ($inserted === 0 && count($skipped) > 0) {
            return response()->json(['success' => false, 'message' => 'All items already exist: ' . implode(', ', $skipped)]);
        }

        $msg = $inserted . ' item(s) saved successfully!';
        if (count($skipped) > 0) {
            $msg .= ' Skipped (duplicates): ' . implode(', ', $skipped);
        }

        return response()->json(['success' => true, 'message' => $msg]);
    }

    // ── Update Amenities Master ───────────────────────────────────────────────
    public function amenitiesupdate(Request $request)
    {
        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->edit == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to edit!']);
        }

        $id = $request->input('id', $request->input('sn'));

        $request->validate([
            'id' => 'nullable|integer',
            'sn' => 'nullable|integer',
            'type' => 'required|in:Linen,Amenities,Chemical',
            'item' => 'required|string|max:10',
            'srno' => 'nullable|integer|min:1',
            'dcode' => 'nullable|string|max:10',
        ]);

        if (empty($id)) {
            return response()->json(['success' => false, 'message' => 'Invalid ID provided.'], 422);
        }

        $item = strtoupper(trim($request->input('item')));
        $type = $request->input('type');
        $srno = $request->input('srno') !== '' && $request->input('srno') !== null ? (int) $request->input('srno') : null;
        $d_code = $request->input('dcode') ?: null;

        // Duplicate item check excluding self
        if (HkAmentiesMaster::where('propertyid', $this->propertyid)
            ->where('type', $type)
            ->where('item', $item)
            ->where('id', '!=', $id)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => '"' . $item . '" already exists under ' . $type . '.']);
        }

        // srno duplicate check excluding self
        if (
            $srno !== null && HkAmentiesMaster::where('propertyid', $this->propertyid)
            ->where('type', $type)
            ->where('srno', $srno)
            ->where('id', '!=', $id)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'Sr. No. ' . $srno . ' already exists under ' . $type . '. Please use a different number.']);
        }

        try {
            HkAmentiesMaster::where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'item' => $item,
                    'type' => $type,
                    'srno' => $srno,
                    'dcode' => $d_code,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Record updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    // ── Delete Amenities Master ───────────────────────────────────────────────
    public function amenitiesdelete(Request $request)
    {
        $permission = revokeopen(121313);

        if (is_null($permission) || $permission->del == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to delete!']);
        }

        $id = $request->input('id', $request->input('sn'));

        $request->validate([
            'id' => 'nullable|integer',
            'sn' => 'nullable|integer',
        ]);

        if (empty($id)) {
            return response()->json(['success' => false, 'message' => 'Invalid ID provided.'], 422);
        }

        try {
            HkAmentiesMaster::where('id', $id)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Record deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // =========================================================================
    //  SERVICE FACILITIES MASTER
    // =========================================================================

    // ── Open Service Facilities Page ─────────────────────────────────────────
    public function servicefacilities()
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }

        $data = CompServiceFacilities::where('propertyid', $this->propertyid)
            ->orderBy('displayorder', 'asc')
            ->get();

        return view('property.servicefacilities', compact('data'));
    }

    // ── Store Service Facilities ─────────────────────────────────────────────
    public function servicefacilitiesstore(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to insert!']);
        }

        $request->validate([
            'displayorder' => 'required|integer|min:1',
            'servicehdr' => 'required|string|max:15',
            'service' => 'required|string|max:15',
            'remark' => 'nullable|string|max:20',
            'isactive' => 'required|in:0,1',
        ]);

        $propertyid = $this->propertyid;
        $service = trim($request->input('service'));
        $servicehdr = trim($request->input('servicehdr'));
        $displayorder = intval($request->input('displayorder'));
        $remark = trim($request->input('remark') ?? '');
        $isactive = intval($request->input('isactive'));

        // Check duplicate service name
        if (CompServiceFacilities::where('propertyid', $propertyid)
            ->where('service', $service)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'This service already exists!']);
        }

        CompServiceFacilities::create([
            'propertyid' => $propertyid,
            'displayorder' => $displayorder,
            'service' => $service,
            'servicehdr' => $servicehdr,
            'remark' => $remark,
            'isactive' => $isactive,
            'U_name' => Auth::user()->u_name,
            'created_at' => $this->currenttime,
            'u_ae' => 'a',
        ]);

        return response()->json(['success' => true, 'message' => 'Service facility saved successfully!']);
    }

    // ── Update Service Facilities ────────────────────────────────────────────
    public function servicefacilitiesupdate(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->edit == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to edit!']);
        }

        $request->validate([
            'sn' => 'required|integer',
            'displayorder' => 'required|integer|min:1',
            'servicehdr' => 'required|string|max:15',
            'service' => 'required|string|max:15',
            'remark' => 'nullable|string|max:20',
            'isactive' => 'required|in:0,1',
        ]);

        $service = trim($request->service);
        $servicehdr = trim($request->servicehdr);
        $remark = trim($request->remark ?? '');
        $isactive = intval($request->isactive);
        // Check duplicate service name (excluding current record)
        if (CompServiceFacilities::where('propertyid', $this->propertyid)
            ->where('service', $service)
            ->where('id', '!=', $request->sn)
            ->exists()
        ) {
            return response()->json(['success' => false, 'message' => 'This service already exists!']);
        }

        try {
            CompServiceFacilities::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'displayorder' => $request->displayorder,
                    'service' => $service,
                    'servicehdr' => $servicehdr,
                    'remark' => $remark,
                    'isactive' => $isactive,
                    'U_name' => Auth::user()->u_name,
                    'created_at' => $this->currenttime,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Service facility updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to update: ' . $e->getMessage()]);
        }
    }

    // ── Delete Service Facilities ────────────────────────────────────────────
    public function servicefacilitiesdelete(Request $request)
    {
        $permission = revokeopen(121314);

        if (is_null($permission) || $permission->del == 0) {
            return response()->json(['success' => false, 'message' => 'You have no permission to delete!']);
        }

        $request->validate([
            'sn' => 'required|integer',
        ]);

        try {
            CompServiceFacilities::where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Service facility deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unable to delete: ' . $e->getMessage()]);
        }
    }

    // ══════════════════════════════════════════════════════
    //  CATALOG MASTER
    // ══════════════════════════════════════════════════════

    /** GET /catalogmaster  – open page */
    public function opencatalogmaster(Request $request)
    {
        // Item Groups dropdown — direct from itemgrp for this property (banquet outlet)
        $itemgroups = DB::table('itemgrp')
            ->where('property_id', $this->propertyid)
            ->where('restcode', 'BANQ103')
            ->select('code', 'name', 'restcode')
            ->orderBy('name', 'ASC')
            ->get();

        // Already-saved catalog rows for this property
        $catalogrowsRaw = DB::table('catalogmast as cm')
            ->leftJoin('itemmast as i', function ($j) {
                $j->on('i.Code', '=', DB::raw('CAST(cm.itemcode AS UNSIGNED)'))
                    ->whereRaw('LOWER(i.RestCode) = LOWER(cm.restcode)');
            })
            ->leftJoin('itemgrp as g', function ($j) {
                $j->on('g.code', '=', 'i.ItemGroup')
                    ->whereRaw('LOWER(g.restcode) = LOWER(cm.restcode)');
            })
            ->where('cm.propertyid', $this->propertyid)
            ->select('cm.*', 'i.Name as itemname', 'g.name as itemgroupname', 'g.code as groupcode')
            ->orderBy('cm.name')
            ->get();

        // Group by catalog name so 1 catalog = 1 row in the table
        $catalogrows = $catalogrowsRaw->groupBy('name')->map(function ($items, $catName) {
            $first = $items->first();

            return (object) [
                'name' => $catName,
                'restcode' => $first->restcode,
                'u_name' => $first->u_name,
                'created_at' => $first->created_at,
                'mlimit' => $first->mlimit ?? 0,
                'items' => $items,   // all rows for this catalog
            ];
        })->values();

        return view('property.catalogmaster', compact('itemgroups', 'catalogrows'));
    }

    /** POST catalogmaster/getitems – AJAX: fetch items for a itemgroup code */
    public function cataloggetitems(Request $request)
    {
        $grpcode = intval($request->input('grpcode', 0));
        $restcode = trim($request->input('restcode', ''));

        $items = DB::select(
            'SELECT Code, Name, ItemCatCode, RestCode FROM itemmast
             WHERE Property_ID = ? AND RestCode = ? AND ItemGroup = ?
             ORDER BY Name ASC',
            [$this->propertyid, $restcode, $grpcode]
        );

        return response()->json($items);
    }

    /** POST catalogmaster/save – save selected items to catalogmast */
    public function savecatalogmaster(Request $request)
    {
        $request->validate([
            'catalogname' => 'required|string|max:25',
            'restcode' => 'required|string',
            'items' => 'required|array|min:1',
            'items.*.itemcode' => 'required',
        ]);

        $catalogname = strtoupper(trim($request->catalogname));
        $restcode = strtoupper(trim($request->restcode));
        $username = $this->username;
        $now = $this->currenttime;
        $propertyid = $this->propertyid;

        // Check if this catalog name already has a code — reuse it
        $existingCode = DB::table('catalogmast')
            ->where('propertyid', $propertyid)
            ->where('name', $catalogname)
            ->value('code');

        if ($existingCode) {
            // Same catalog — reuse existing code
            $code = $existingCode;
        } else {
            // New catalog — generate ONE new code for all its items
            $pidLength = strlen((string) $propertyid);
            $lastCode = DB::table('catalogmast')
                ->where('propertyid', $propertyid)
                ->orderByRaw('CAST(code AS UNSIGNED) DESC')
                ->value('code');
            $seq = $lastCode ? ((int) substr($lastCode, 0, -$pidLength) + 1) : 1;
            $code = $seq . $propertyid;
        }

        DB::beginTransaction();
        try {
            foreach ($request->items as $item) {
                $exists = DB::table('catalogmast')
                    ->where('propertyid', $propertyid)
                    ->where('name', $catalogname)
                    ->where('itemcode', (string) $item['itemcode'])
                    ->where('restcode', $restcode)
                    ->exists();

                if (! $exists) {
                    DB::table('catalogmast')->insert([
                        'propertyid' => $propertyid,
                        'code' => $code,   // same code for all items in this catalog
                        'itemcode' => (string) $item['itemcode'],
                        'restcode' => $restcode,
                        'name' => $catalogname,
                        'itemgroupcode' => (string) ($item['itemcatcode'] ?? $item['itemgroupcode'] ?? ''),
                        'mlimit' => intval($item['mlimit'] ?? 0),
                        'u_name' => $username,
                        'created_at' => $now,
                        'u_ae' => 'a',
                    ]);
                }
            }
            DB::commit();

            return response()->json(['success' => true, 'message' => 'Catalog saved successfully!']);
        } catch (Exception $e) {
            DB::rollBack();

            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    /** POST catalogmaster/delete – delete a single row from catalogmast */
    public function deletecatalogmaster(Request $request)
    {
        $request->validate(['sn' => 'required|integer']);

        try {
            DB::table('catalogmast')
                ->where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->delete();

            return response()->json(['success' => true, 'message' => 'Deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    /** POST catalogmaster/deleteall – delete ALL rows of a catalog name */
    public function deleteallcatalogmaster(Request $request)
    {
        $request->validate([
            'catalogname' => 'required|string',
            'restcode' => 'required|string',
        ]);

        try {
            DB::table('catalogmast')
                ->where('propertyid', $this->propertyid)
                ->where('name', strtoupper(trim($request->catalogname)))
                ->where('restcode', strtoupper(trim($request->restcode)))
                ->delete();

            return response()->json(['success' => true, 'message' => 'Catalog deleted successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    /** POST catalogmaster/updateall – update mlimit + item group for ALL rows of a catalog */
    public function updateallcatalogmaster(Request $request)
    {
        $request->validate([
            'oldname' => 'required|string',
            'newname' => 'required|string|max:25',
            'restcode' => 'required|string',
            'mlimit' => 'nullable|integer|min:0',
            'groupcode' => 'nullable|string',
            'grouprestcode' => 'nullable|string',
        ]);

        try {
            $updateData = [
                'name' => strtoupper(trim($request->newname)),
                'mlimit' => intval($request->mlimit ?? 0),
                'u_name' => $this->username,
                'u_ae' => 'e',
            ];

            // Only update restcode if a new item group was selected
            if (! empty($request->groupcode)) {
                $updateData['itemgroupcode'] = (string) $request->groupcode;
            }
            if (! empty($request->grouprestcode)) {
                $updateData['restcode'] = strtoupper(trim($request->grouprestcode));
            }

            DB::table('catalogmast')
                ->where('propertyid', $this->propertyid)
                ->where('name', strtoupper(trim($request->oldname)))
                ->where('restcode', strtoupper(trim($request->restcode)))
                ->update($updateData);

            return response()->json(['success' => true, 'message' => 'Catalog updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    /** POST catalogmaster/update – update catalog entry (name, group, mlimit) */
    public function updatecatalogmaster(Request $request)
    {
        $request->validate([
            'sn' => 'required|integer',
            'catalogname' => 'required|string|max:25',
            'mlimit' => 'nullable|integer|min:0',
            'groupcode' => 'nullable|string',
            'restcode' => 'nullable|string',
        ]);

        try {
            DB::table('catalogmast')
                ->where('id', $request->sn)
                ->where('propertyid', $this->propertyid)
                ->update([
                    'name' => strtoupper(trim($request->catalogname)),
                    'itemgroupcode' => (string) ($request->groupcode ?? ''),
                    'restcode' => strtoupper(trim($request->restcode ?? '')),
                    'mlimit' => intval($request->mlimit ?? 0),
                    'u_name' => $this->username,
                    'u_ae' => 'e',
                ]);

            return response()->json(['success' => true, 'message' => 'Updated successfully!']);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error: ' . $e->getMessage()]);
        }
    }

    /** POST catalogmaster/search – search saved catalog rows */
    public function searchcatalogmaster(Request $request)
    {
        $catalogname = trim($request->input('catalogname', ''));
        $itemgroup = trim($request->input('itemgroup', ''));

        $query = DB::table('catalogmast as cm')
            ->leftJoin('itemgrp as g', function ($j) {
                $j->on('g.code', '=', DB::raw('cm.itemcode'))
                    ->on('g.restcode', '=', 'cm.restcode');
            })
            ->leftJoin('itemmast as i', function ($j) {
                $j->on('i.Code', '=', DB::raw('cm.itemcode'))
                    ->whereRaw('LOWER(i.RestCode) = LOWER(cm.restcode)');
            })
            ->where('cm.propertyid', $this->propertyid)
            ->select(
                'cm.sn',
                'cm.name  as catalogname',
                DB::raw('COALESCE(g.name, cm.itemcode) as itemgroupname'),
                DB::raw('COALESCE(i.Name, cm.itemcode) as itemname'),
                'cm.itemcode',
                'cm.restcode'
            );

        if ($catalogname !== '') {
            $query->where('cm.name', 'LIKE', '%' . $catalogname . '%');
        }
        if ($itemgroup !== '') {
            $query->where('g.name', 'LIKE', '%' . $itemgroup . '%');
        }

        return response()->json($query->orderBy('cm.name')->orderBy('g.name')->get());
    }

    /** GET catalogmaster/print – print a saved catalog (DomPDF, A4 landscape) */
    public function printcatalogmaster(Request $request)
    {
        $catalogname = strtoupper(trim($request->input('name', '')));
        $restcode = strtoupper(trim($request->input('restcode', '')));

        $rows = DB::table('catalogmast as cm')
            ->leftJoin('itemmast as i', function ($j) {
                $j->on('i.Code', '=', DB::raw('CAST(cm.itemcode AS UNSIGNED)'))
                    ->whereRaw('LOWER(i.RestCode) = LOWER(cm.restcode)');
            })
            ->leftJoin('itemgrp as g', function ($j) {
                $j->on('g.code', '=', 'i.ItemGroup')
                    ->whereRaw('LOWER(g.restcode) = LOWER(cm.restcode)');
            })
            ->where('cm.propertyid', $this->propertyid)
            ->where('cm.name', $catalogname)
            ->where('cm.restcode', $restcode)
            ->select('cm.*', 'i.Name as itemname', 'g.name as itemgroupname', 'g.code as groupcode')
            ->orderBy('i.Name')
            ->get();

        $first = $rows->first();
        $catalog = (object) [
            'name' => $catalogname,
            'restcode' => $restcode,
            'u_name' => $first->u_name ?? '',
            'created_at' => $first->created_at ?? now(),
            'mlimit' => $first->mlimit ?? 0,
            'items' => $rows,
        ];

        $company = Companyreg::where('propertyid', $this->propertyid)->first();

        $pdf = Pdf::loadView('property.print.catalogmasterprint', [
            'company' => $company,
            'catalog' => $catalog,
            'reportTitle' => 'Catalog Master',
        ])->setPaper('a4', 'landscape');

        return $pdf->stream('catalog-master-' . Str::slug($catalogname) . '-' . date('YmdHis') . '.pdf');
    }

    public function openfaclsundrysetting(Request $request)
    {
        $permission = revokeopen(121415);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = 'FACL' . $this->propertyid;
        $data = DB::table('sundrytype')
            ->where('sundrytype.propertyid', '=', $this->propertyid)
            ->where('sundrytype.vtype', $vtype)
            ->groupBy('sundrytype.vtype')
            ->get();

        return view('property.facilitysundrysetting', [
            'vtype' => $vtype,
            'data' => $data,
        ]);
    }

    public function faclsundrysettingsubmit(Request $request)
    {
        $permission = revokeopen(121415);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'applicablefrom' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'FACL' . $this->propertyid)->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', 'FACL' . $this->propertyid)->delete();
        }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $ncurdate = DB::table('enviro_general')->where('propertyid', $this->propertyid)->value('ncur');
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => 'FACL' . $this->propertyid,
                    'appdate' => $request->input('applicablefrom'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return back()->with('success', 'Facility Sundry Setting Submitted!');
    }

    public function updatefacilitysundrysetting(Request $request)
    {
        $permission = revokeopen(121415);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $vtype = base64_decode($request->input('vtype'));
        $data = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $vtype)->get();
        $revmast = DB::table('revmast')->where('propertyid', $this->propertyid)->where('Desk_code', $vtype)->where('field_type', 'C')
            ->union(
                DB::table('revmast')
                    ->where('propertyid', $this->propertyid)
                    ->where('field_type', 'T')
            )->orderBy('id')->get();
        $sundrynames = DB::table('sundrymast')->where('propertyid', $this->propertyid)->orderBy('name')->get();
        $sundrytype = DB::table('sundrytypefix')->where('propertyid', $this->propertyid)->orderBy('id')->get();
        $depart = Depart::where('propertyid', $this->propertyid)->where('dcode', $vtype)->first();

        return view('property.facilitysundrysettingupdate', [
            'data' => $data,
            'revmast' => $revmast,
            'sundrynames' => $sundrynames,
            'sundrytype' => $sundrytype,
            'depart' => $depart,
        ]);
    }

    public function updatefaclsundry(Request $request)
    {
        $permission = revokeopen(121415);
        if (is_null($permission) || $permission->edit == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'vtype' => 'required',
            'appdate' => 'required',
            'sundryname1' => 'required',
            'dispname1' => 'required',
        ]);

        $check = DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->first();
        if ($check) {
            DB::table('sundrytype')->where('propertyid', $this->propertyid)->where('vtype', $request->input('vtype'))->delete();
        }

        $prefixes = ['sundryname', 'dispname', 'calcformula', 'peroramt', 'vals', 'boldyn', 'revenuecharge', 'automan'];
        $count = 0;

        foreach ($request->input() as $key => $value) {
            if (strpos($key, 'sundryname') === 0) {
                $count++;
            }
        }
        $sno1 = 1;
        for ($i = 1; $i <= $count; $i++) {
            $data = [];
            $isEmptyRow = true;
            $sundryfix = SundryMast::where('propertyid', $this->propertyid)->where('sundry_code', $request->input('sundryname' . $i))->first();

            foreach ($prefixes as $prefix) {
                $value = $request->input($prefix . $i);
                $sundrydata = [
                    'propertyid' => $this->propertyid,
                    'sno' => $sno1,
                    'sundry_code' => $request->input('sundryname' . $i) ?? '',
                    'disp_name' => $request->input('dispname' . $i) ?? '',
                    'calcformula' => $request->input('calcformula' . $i) ?? '',
                    'peroramt' => $request->input('peroramt' . $i) ?? 'A',
                    'svalue' => $request->input('vals' . $i),
                    'bold' => $request->input('boldyn' . $i) == 'Yes' ? 'Y' : 'N',
                    'revcode' => $request->input('revenuecharge' . $i) ?? '',
                    'automanual' => $request->input('automan' . $i) ?? 'Manual',
                    'vtype' => $request->input('oldvtype'),
                    'appdate' => $request->input('appdate'),
                    'nature' => $sundryfix->nature ?? '',
                    'calcsign' => $sundryfix->calcsign ?? '',
                    'created_at' => $this->currenttime,
                    'u_name' => Auth::user()->u_name,
                    'u_ae' => 'a',
                    'postyn' => $request->input('postyn' . $i) == 'Yes' ? 'Y' : 'N',
                ];

                if (! empty($value)) {
                    $data[$prefix] = $value;
                    $isEmptyRow = false;
                }
            }

            if (! $isEmptyRow) {
                DB::table('sundrytype')->insert($sundrydata);
            }
            $sno1++;
        }

        return redirect('facilitysundrysetting')->with('success', 'Facility Sundry Setting Updated!');
    }
}
