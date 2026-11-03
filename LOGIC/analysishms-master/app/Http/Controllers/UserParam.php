<?php

namespace App\Http\Controllers;

use App\Models\Companyreg;
use App\Models\MenuHelp;
use App\Models\User;
use App\Models\UserModule;
use App\Models\UserPermission;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserParam extends Controller
{
    protected $username;

    protected $email;

    protected $propertyid;

    protected $currenttime;

    protected $ptlngth;

    protected $prpid;

    protected $ncurdate;

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
            $this->ncurdate = DB::table('enviro_general')->where('propertyid', Auth::user()->propertyid)->value('ncur');
            $this->propertyid = $propertydata->propertyid;
            $this->ptlngth = strlen($this->propertyid);
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');

            return $next($request);
        });
    }
    // Warning: Abandon hope, all who enter here. 😱

    public function ExportTable()
    {
        echo '<link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />';
        echo '<link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />';
        echo '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>';
        echo '<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>';
        echo '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>';
        echo '<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>';
    }

    public function DownloadTable($tableName, $title, $columnsToExport, $columnToSearch)
    {
        $exportColumnsJS = json_encode($columnsToExport);
        $searchColumnsJS = json_encode($columnToSearch);

        echo "<script>$(document).ready(function() {
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
                // Configure column-specific search inputs based on the specified columns
                let searchColumns = $searchColumnsJS;
                this.api().columns(searchColumns).every(function() {
                    let column = this;
                    let title = column.header().textContent;
                    let input = document.createElement('input');
                    input.placeholder = title;
                    $(input).appendTo($(column.footer()).empty()); // Use jQuery for better compatibility
                    $(input).on('keyup', function () {
                        if (column.search() !== this.value) {
                            column.search(this.value).draw();
                        }
                    });
                });
            }
        });
    });</script>";
    }

    public function revokeopen($code)
    {
        $value = MenuHelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->name)->where('code', $code)->first();

        return $value;
    }

    public function getmainmenu(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->orderBy('comp_code', 'DESC')->first();

        $data = MenuHelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->u_name)->where('flag', 'N')
            ->where('opt2', 0)->where('compcode', $company->comp_code)->orderBy('code', 'DESC')->get();

        return json_encode($data);
    }

    public function fetchsubmenu(Request $request)
    {
        $code = $request->input('code');
        $company = Companyreg::where('propertyid', $this->propertyid)->orderBy('comp_code', 'DESC')->first();
        $menuhelp = MenuHelp::where('propertyid', $this->propertyid)->where('compcode', $company->comp_code)
            ->where('username', Auth::user()->u_name)
            ->where('opt1', $code)->where('flag', 'N')->whereNot('opt2', 0)->get();

        return json_encode($menuhelp);
    }

    public function fetchlastmenu(Request $request)
    {
        $company = Companyreg::where('propertyid', $this->propertyid)->orderBy('comp_code', 'DESC')->first();
        $code = $request->input('code');
        $code2 = $request->input('code2');
        $menuhelp = MenuHelp::where('propertyid', $this->propertyid)->where('username', Auth::user()->u_name)
            ->where('opt1', $code2)->where('compcode', $company->comp_code)->whereIn('flag', ['E', 'R'])->where('opt2', $code)->get();

        return json_encode($menuhelp);
    }

    public function userpermision(Request $request)
    {
        $permission = revokeopen(122012);
        if (is_null($permission) || $permission->view == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $users = User::where('propertyid', $this->propertyid)->whereNot('u_name', 'sa')->where('status', '1')->get();
        $firms = Companyreg::where('propertyid', $this->propertyid)->where('role', 'Property')->get();
        $sections = UserModule::where('propertyid', $this->propertyid)->where('opt2', 0)->where('opt3', 0)->get();

        return view('property.paramuser', [
            'users' => $users,
            'firms' => $firms,
            'sections' => $sections,
        ]);
    }

    public function menulist(Request $request)
    {
        $opt1 = $request->input('opt1');
        $username = $request->input('uname');
        $compcode = $request->input('compcode');
        $menu = MenuHelp::where('propertyid', $this->propertyid)->where('opt1', $opt1)->where('compcode', $compcode)->whereNot('opt2', 0)->where('username', Auth::user()->name)->get();
        $userchecked = MenuHelp::where('propertyid', $this->propertyid)->where('opt1', $opt1)->where('compcode', $compcode)->whereNot('opt2', 0)->where('username', $username)->get();
        $userparam = UserPermission::where('propertyid', $this->propertyid)->where('username', $username)->first();
        if (is_null($userparam)) {
            $userperm = new UserPermission;
            $userperm->propertyid = $this->propertyid;
            $userperm->username = $username;
            $userperm->u_name = Auth::user()->name;
            $userperm->created_at = $this->currenttime;
            $userperm->save();
        }

        $userparam = UserPermission::where('propertyid', $this->propertyid)->where('username', $username)->first();
        $data = [
            'menus' => $menu,
            'userchecked' => $userchecked,
            'userparam' => $userparam,
        ];

        return json_encode($data);
    }

    public function getposuserdetails(Request $request)
    {
        $username = $request->input('username');
        $userdata = User::where('propertyid', $this->propertyid)->where('name', $username)->first();
        $userpermission = UserPermission::where('propertyid', $this->propertyid)->where('username', $username)->first();

        return response()->json([
            'userdata' => $userdata,
            'userpermission' => $userpermission,
        ]);
    }

    public function updateposuserxhr(Request $request)
    {
        $username = $request->input('username');
        $posData = [
            'posdiscountallowupto' => $request->input('posdiscountallowupto'),
            'possettlementyn' => $request->input('possettlementyn'),
            'editelementinkot' => $request->input('editelementinkot'),
            'refundcashcardamt' => $request->input('refundcashcardamt'),
            'allowchkouttimechange' => $request->input('allowchkouttimechange', 'N'),
            'allowadvancechargeedit' => $request->input('allowadvancechargeedit', 'N'),
            'voucherverify' => $request->input('voucherverify', '0'),
            'billcancel' => $request->input('billcancel', '0'),
            'deleteguestcharges' => $request->input('deleteguestcharges', 'Y'),
        ];
        try {
            $udata = [
                'freeitemkot' => $request->input('freeitemkot'),
                'freeitemsale' => $request->input('freeitemsale'),
                'discappsale' => $request->input('discappsale'),
            ];

            User::where('propertyid', $this->propertyid)->where('name', $username)->update($udata);
            UserPermission::where('propertyid', $this->propertyid)->where('username', $username)->update($posData);

            return response()->json(['message' => 'POS user settings updated successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['message' => 'Error: '.$e->getMessage()]);
        }
    }

    public function copyuserpermission(Request $request)
    {
        $permission = revokeopen(122011);
        if (is_null($permission) || $permission->ins == 0) {
            return response()->json(['message' => 'You have no permission to execute this functionality!'], 403);
        }

        $validated = $request->validate([
            'from_username' => 'required|string',
            'to_username' => 'required|string|different:from_username',
        ]);

        $fromUsername = $validated['from_username'];
        $toUsername = $validated['to_username'];

        try {
            $fromUser = User::where('propertyid', $this->propertyid)->where('u_name', $fromUsername)->first();
            $toUser = User::where('propertyid', $this->propertyid)->where('u_name', $toUsername)->first();

            if (! $fromUser || ! $toUser) {
                return response()->json(['message' => 'Selected user not found for this property.'], 404);
            }

            $sourceMenuHelp = MenuHelp::where('propertyid', $this->propertyid)
                ->where('username', $fromUsername)
                ->get();

            $sourceUserPermission = UserPermission::where('propertyid', $this->propertyid)
                ->where('username', $fromUsername)
                ->get();

            if ($sourceMenuHelp->isEmpty() && $sourceUserPermission->isEmpty()) {
                return response()->json(['message' => 'No permission data found for source user.'], 404);
            }

            DB::transaction(function () use ($sourceMenuHelp, $sourceUserPermission, $toUsername) {
                MenuHelp::where('propertyid', $this->propertyid)
                    ->where('username', $toUsername)
                    ->delete();

                UserPermission::where('propertyid', $this->propertyid)
                    ->where('username', $toUsername)
                    ->delete();

                foreach ($sourceMenuHelp as $menuHelp) {
                    $data = $menuHelp->getAttributes();
                    unset($data['id']);
                    unset($data['sn']);
                    $data['username'] = $toUsername;
                    $data['u_name'] = Auth::user()->name;
                    $data['created_at'] = $this->currenttime;
                    $data['updated_at'] = null;

                    DB::table('menuhelp')->insert($data);
                }

                foreach ($sourceUserPermission as $userPermission) {
                    $data = $userPermission->getAttributes();
                    unset($data['id']);
                    unset($data['sn']);
                    $data['username'] = $toUsername;
                    $data['u_name'] = Auth::user()->name;
                    $data['created_at'] = $this->currenttime;
                    $data['updated_at'] = null;
                    $data['u_ae'] = 'a';

                    DB::table('userpermission')->insert($data);
                }
            });

            return response()->json([
                'message' => "Permissions copied from {$fromUsername} to {$toUsername} successfully.",
            ]);
        } catch (Exception $e) {
            return response()->json(['message' => 'Error: '.$e->getMessage()], 500);
        }
    }

    public function userparamsubmit(Request $request)
    {
        $permission = revokeopen(122011);
        if (is_null($permission) || $permission->ins == 0) {
            return redirect()->back()->with('error', 'You have no permission to execute this functionality!');
        }
        $validate = $request->validate([
            'username' => 'required',
            'firms' => 'required',
            'sections' => 'required',
            'compcode' => 'required',
        ]);

        $compcodetmp = Companyreg::where('propertyid', $request->input('firms'))->first();
        $compcode = $request->input('compcode');
        $currentTime = $this->currenttime;
        $opt1 = $request->input('sections');
        $firmname = $request->input('firms');
        MenuHelp::where('propertyid', $request->input('firms'))->where('compcode', $request->input('compcode'))->where('username', $request->input('username'))
            ->where('opt1', $opt1)->delete();
        $menu = UserModule::where('propertyid', $this->propertyid)->where('opt1', $opt1)->whereNot('opt2', 0)->get();

        function createMenuHelp($request, $compcode, $opt1, $opt2, $opt3, $route, $module, $module_name, $view, $ins, $edit, $del, $print, $currentTime, $flag)
        {
            $propertyid = $request->input('firms');
            $username = $request->input('username');
            $code = sprintf('%02d%02d%02d', $opt1, $opt2, $opt3);

            $existingRecord = MenuHelp::where('propertyid', $propertyid)
                ->where('compcode', $compcode)
                ->where('username', $username)
                ->where('opt1', $opt1)
                ->where('opt2', $opt2)
                ->where('opt3', $opt3)
                ->where('code', $code)
                ->first();

            if (! $existingRecord) {
                $menuhelpin = new MenuHelp;
                $menuhelpin->propertyid = $propertyid;
                $menuhelpin->username = $username;
                $menuhelpin->compcode = $compcode;
                $menuhelpin->opt1 = $opt1;
                $menuhelpin->opt2 = $opt2;
                $menuhelpin->opt3 = $opt3;
                $menuhelpin->code = $code;
                $menuhelpin->route = $route;
                $menuhelpin->module = $module;
                $menuhelpin->module_name = $module_name;
                $menuhelpin->view = $view;
                $menuhelpin->ins = $ins;
                $menuhelpin->edit = $edit;
                $menuhelpin->del = $del;
                $menuhelpin->print = $print;
                $menuhelpin->flag = $flag;
                $menuhelpin->outletcode = '';
                $menuhelpin->u_name = Auth::user()->name;
                $menuhelpin->created_at = $currentTime;
                $menuhelpin->updated_at = null;
                $menuhelpin->save();
            }
        }

        $mainmenu = MenuHelp::where('propertyid', $firmname)->where('username', Auth::user()->name)->where('opt1', $opt1)
            ->where('opt3', 0)->get();
        $uniqueentpoint = [];
        foreach ($mainmenu as $index => $menu) {
            if ($index == 0 && $menu->opt2 == 0 && $request->input('validatecheckbox') == 'checked') {
                createMenuHelp($request, $compcode, $menu->opt1, $menu->opt2, $menu->opt3, $menu->route, $menu->module, $menu->module_name, $menu->ins, $menu->view, $menu->edit, $menu->del, $menu->print, $currentTime, $menu->flag);
            }
            if ($request->has('view'.$menu->code)) {
                createMenuHelp($request, $compcode, $menu->opt1, $menu->opt2, $menu->opt3, $menu->route, $menu->module, $menu->module_name, $menu->view, $menu->ins, $menu->edit, $menu->del, $menu->print, $currentTime, $menu->flag);
                $entrymenu = MenuHelp::where('propertyid', $firmname)->where('username', Auth::user()->name)->where('opt1', $menu->opt1)
                    ->whereNot('opt3', 0)->get();
                foreach ($entrymenu as $entmenu) {
                    if ($request->has('view'.$entmenu->code) && ! in_array($entmenu->code, $uniqueentpoint, true)) {
                        createMenuHelp($request, $compcode, $entmenu->opt1, $entmenu->opt2, $entmenu->opt3, $entmenu->route, $entmenu->module, $entmenu->module_name, $request->has('view'.$entmenu->code) == true ? 1 : 0, $request->has('insert'.$entmenu->code) == true ? 1 : 0, $request->has('edit'.$entmenu->code) == true ? 1 : 0, $request->has('delete'.$entmenu->code) == true ? 1 : 0, $request->has('print'.$entmenu->code) == true ? 1 : 0, $currentTime, $entmenu->flag);
                        $uniqueentpoint[] = $entmenu->code;
                    }
                }
            }
        }

        return back()->with('success', 'User Permission Updated Successfully');
    }
}
