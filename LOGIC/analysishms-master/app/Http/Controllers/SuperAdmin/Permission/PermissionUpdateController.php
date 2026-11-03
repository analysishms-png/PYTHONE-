<?php

namespace App\Http\Controllers\SuperAdmin\Permission;

use App\Http\Controllers\Controller;
use App\Models\UserModule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\Companyreg;
use App\Models\TblUserModule;
use App\Models\MenuHelp;
use App\Models\User;
use App\Services\TenantDatabase;
use Exception;

class PermissionUpdateController extends Controller
{
    protected $username;
    protected $email;
    protected $currenttime;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            if (!isset(Auth::user()->name)) {
                return redirect('/');
            }

            $this->username = Auth::user()->name;
            $this->email = Auth::user()->email;
            date_default_timezone_set('Asia/Kolkata');
            $this->currenttime = date('Y-m-d H:i:s');
            return $next($request);
        });
    }

    public function PermisionManage(Request $request)
    {
        $companies = Companyreg::on('main')
            ->orderBy('comp_name', 'ASC')
            ->get();

        return view('admin.permission', [
            'companies' => $companies
        ]);
    }

    public function validatecheck(Request $request)
    {
        $propertyid = (int) $request->input('propertyid');

        TenantDatabase::connect($propertyid);

        $chkval = UserModule::on('tenant')
            ->where('module_name', ucfirst($request->input('name')))
            ->where('propertyid', $propertyid)
            ->first();

        return $chkval
            ? json_encode('1')
            : json_encode('0');
    }

    public function submipermusermodule(Request $request)
    {
        try {
            $validate = $request->validate([
                'propertyid' => 'required',
            ]);

            $propertyid = (int) $request->input('propertyid');

            $modules = [
                'mainsetup' => '12',
                'reservation' => '13',
                'frontoffice' => '14',
                'housekeeping' => '15',
                'inventory' => '16',
                'pointofsale' => '17',
                'nightaudit' => '19',
                'banquet' => '18',
                'hrpayroll' => '21',
                'extras' => '27',
                'membersmgmt' => '20',
                'maintenance' => '22',
                'mallmanagement' => '26',
                'finance' => '11',
            ];

            $compdata = Companyreg::on('main')
                ->where('propertyid', $propertyid)
                ->first();

            $moduleDataByName = [];

            foreach ($modules as $moduleName => $moduleid) {
                if ($request->has($moduleName)) {
                    $moduleDataByName[$moduleName] = TblUserModule::on('main')
                        ->where('module_name', ucfirst($moduleName))
                        ->get();
                }
            }

            TenantDatabase::connect($propertyid);

            foreach ($moduleDataByName as $moduleName => $moduleData) {
                foreach ($moduleData as $data) {
                    $fetchUserModule = UserModule::on('tenant')
                        ->where('propertyid', $propertyid)
                        ->where('opt1', $data->opt1)
                        ->where('opt2', $data->opt2)
                        ->where('opt3', $data->opt3)
                        ->where('code', $data->code)
                        ->first();

                    if (!$fetchUserModule) {
                        $userModule = new UserModule;
                        $userModule->setConnection('tenant');
                        $userModule->propertyid = $propertyid;
                        $userModule->opt1 = $data->opt1;
                        $userModule->opt2 = $data->opt2;
                        $userModule->opt3 = $data->opt3;
                        $userModule->route = $data->route;
                        $userModule->code = $data->code;
                        $userModule->module = $data->module;
                        $userModule->module_name = $data->module_name;
                        $userModule->flag = $data->flag;
                        $userModule->outletcode = $data->outletcode;
                        $userModule->created_at = $this->currenttime;
                        $userModule->updated_at = null;
                        $userModule->save();
                    }

                    $existingMenu = MenuHelp::on('tenant')
                        ->where('propertyid', $propertyid)
                        ->where('compcode', $compdata->comp_code)
                        ->where('username', $compdata->u_name)
                        ->where('opt1', $data->opt1)
                        ->where('opt2', $data->opt2)
                        ->where('opt3', $data->opt3)
                        ->where('code', $data->code)
                        ->first();

                    if (!$existingMenu) {
                        $menumodule = new MenuHelp;
                        $menumodule->setConnection('tenant');
                        $menumodule->propertyid = $propertyid;
                        $menumodule->username = $compdata->u_name;
                        $menumodule->compcode = $compdata->comp_code;
                        $menumodule->opt1 = $data->opt1;
                        $menumodule->opt2 = $data->opt2;
                        $menumodule->opt3 = $data->opt3;
                        $menumodule->code = $data->code;
                        $menumodule->route = $data->route;
                        $menumodule->module = $data->module;
                        $menumodule->module_name = $data->module_name;
                        $menumodule->view = 1;
                        $menumodule->ins = 1;
                        $menumodule->edit = 1;
                        $menumodule->del = 1;
                        $menumodule->print = 1;
                        $menumodule->flag = $data->flag;
                        $menumodule->outletcode = $data->outletcode;
                        $menumodule->created_at = $this->currenttime;
                        $menumodule->updated_at = null;
                        $menumodule->u_name = Auth::user()->name;
                        $menumodule->save();
                    }
                }
            }

            return "User Module Permissions Submitted Successfully'";
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }
}
