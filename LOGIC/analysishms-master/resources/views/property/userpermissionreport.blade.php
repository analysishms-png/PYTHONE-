@extends('property.layouts.main')
@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>

    <style>
        .custom-header {
            background-color: #777575;
            text-align: center;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            border: 1px solid #ddd;
            margin: 10px 0 -17px 0;
            color: white;
            display: none;
        }
        .tabulator-col .tabulator-arrow { display: none !important; }
        #userpermission-table { width: 100% !important; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Hidden company info --}}
                            <input type="hidden" value="{{ $company->propertyid }}" id="propertyid" name="propertyid">
                            <input type="hidden" value="{{ $company->comp_name }}"  id="compname"  name="compname">

                            {{-- Report Header --}}
                            <div class="text-center titlep">
                                <h3>{{ $company->comp_name }}</h3>
                                <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                <p style="margin-top:-10px; font-size:16px;">
                                    {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                </p>
                                <p style="margin-top:-10px; font-size:16px;">User Permission Report</p>
                            </div>

                            {{-- Username Filter --}}
                            <div class="row mt-2">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="usernamefilter" class="col-form-label">User Name</label>
                                        <select name="usernamefilter" id="usernamefilter" class="form-control">
                                            <option value="all" selected>All Users</option>
                                            @foreach ($usernames as $uname)
                                                <option value="{{ $uname }}">{{ $uname }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            {{-- Action Buttons --}}
                            <div class="row mt-2">
                                <div class="col-md-8">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">
                                        Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                    </button>
                                    <button id="print-table" class="btn btn-info text-white">
                                        Print <i class="fa-solid fa-print"></i>
                                    </button>
                                    <button id="download-xlsx" class="btn btn-success">
                                        Excel <i class="fa fa-file-excel-o"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="custom-header">User Permission Report</div>
                            <h5 class="mt-3 mb-1" style="font-weight:600;">A. Module Permissions</h5>
                            <div id="userpermission-table"></div>

                            <h5 class="mt-4 mb-1" style="font-weight:600;">B. User Settings</h5>
                            <div id="userpermsettings-table"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            let table = null;
            let settingsTable = null;

            let columns = [
                {
                    title: "Sr No",
                    field: "srno",
                    sorter: "number",
                    width: 80,
                    hozAlign: "center",
                },
                {
                    title: "Username",
                    field: "username",
                    sorter: "string",
                    minWidth: 130,
                },
                {
                    title: "Module",
                    field: "module",
                    sorter: "string",
                    minWidth: 220,
                },
                {
                    title: "Is View",
                    field: "isview",
                    sorter: "string",
                    width: 100,
                    hozAlign: "center",
                },
                {
                    title: "Is Add",
                    field: "isadd",
                    sorter: "string",
                    width: 100,
                    hozAlign: "center",
                },
                {
                    title: "Is Edit",
                    field: "isedit",
                    sorter: "string",
                    width: 100,
                    hozAlign: "center",
                },
                {
                    title: "Is Delete",
                    field: "isdelete",
                    sorter: "string",
                    width: 110,
                    hozAlign: "center",
                },
            ];

            let settingsColumns = [
                { title: "Sr No", field: "srno", sorter: "number", width: 70, hozAlign: "center" },
                { title: "User Name", field: "username", sorter: "string", minWidth: 120 },
                { title: "POS Dis.UPTO", field: "posdisupto", sorter: "number", hozAlign: "right", width: 110,
                  formatter: "money", formatterParams: { thousand: ",", decimal: ".", precision: 2 } },
                { title: "FOM Dis.UPTO", field: "fomdisupto", sorter: "number", hozAlign: "right", width: 110,
                  formatter: "money", formatterParams: { thousand: ",", decimal: ".", precision: 2 } },
                { title: "Edit Item In KOT", field: "edititeminkot", sorter: "string", width: 115, hozAlign: "center" },
                { title: "Free Item In KOT", field: "freeiteminkot", sorter: "string", width: 115, hozAlign: "center" },
                { title: "Guest Bill Cancel", field: "guestbillcancel", sorter: "string", width: 115, hozAlign: "center" },
                { title: "Change Room Detail", field: "changeroomdetail", sorter: "string", width: 125, hozAlign: "center" },
                { title: "Delete Guest Charges", field: "deleteguestcharges", sorter: "string", width: 130, hozAlign: "center" },
                { title: "Guest Charge Change", field: "guestchargechange", sorter: "string", width: 125, hozAlign: "center" },
                { title: "Change Guest Profile", field: "changeguestprofile", sorter: "string", width: 125, hozAlign: "center" },
                { title: "Cancel Reservation", field: "cancelreservation", sorter: "string", width: 115, hozAlign: "center" },
                { title: "Check Out Time Change", field: "chkouttimechange", sorter: "string", width: 135, hozAlign: "center" },
                { title: "Edit Advance Voucher", field: "editadvancevoucher", sorter: "string", width: 125, hozAlign: "center" },
                { title: "POS Rate Edit", field: "posrateedit", sorter: "string", width: 105, hozAlign: "center" },
                { title: "Voucher Verify Allow", field: "voucherverify", sorter: "string", width: 125, hozAlign: "center" },
                { title: "Last Update", field: "lastupdate", sorter: "string", minWidth: 130, hozAlign: "center" },
            ];

            function loaddata() {
                showLoader();

                let usernamefilter = $('#usernamefilter').val() || 'all';

                let upxhr = new XMLHttpRequest();
                upxhr.open('POST', '/fetchuserpermissionreport', true);
                upxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                upxhr.onreadystatechange = function () {
                    if (upxhr.readyState === 4 && upxhr.status === 200) {
                        let response     = JSON.parse(upxhr.responseText);
                        let permissions  = response.permissions || [];
                        let settings     = response.settings    || [];
                        let tabledata    = processData(permissions);
                        let settingsdata = processSettings(settings);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            table = new Tabulator("#userpermission-table", {
                                data: tabledata,
                                printHeader: $('.titlep').html(),
                                printFooter: "<h2>Copyright @Analysis</h2>",
                                columns: columns,
                                layout: "fitColumns",
                                layoutColumnsOnNewData: true,
                                width: "100%",
                                pagination: "local",
                                paginationSize: 100,
                                tooltips: true,
                            });
                        }

                        if (settingsTable) {
                            settingsTable.setData(settingsdata);
                        } else {
                            settingsTable = new Tabulator("#userpermsettings-table", {
                                data: settingsdata,
                                printHeader: $('.titlep').html(),
                                printFooter: "<h2>Copyright @Analysis</h2>",
                                columns: settingsColumns,
                                layout: "fitColumns",
                                layoutColumnsOnNewData: true,
                                width: "100%",
                                pagination: "local",
                                paginationSize: 100,
                                tooltips: true,
                            });
                        }

                        if (permissions.length == 0 && settings.length == 0) {
                            pushNotify('info', 'User Permission Report', 'No Data Found',
                                'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        }

                        setTimeout(hideLoader, 800);
                    } else if (upxhr.readyState === 4) {
                        setTimeout(hideLoader, 800);
                    }
                };
                upxhr.send(`username=${encodeURIComponent(usernamefilter)}&_token={{ csrf_token() }}`);
            }

            $(document).on('click', '#refreshbutton', function () {
                loaddata();
            });

            // Reload on username filter change
            $(document).on('change', '#usernamefilter', function () {
                loaddata();
            });

            // Print (DomPDF — Contribution Format)
            $("#print-table").on("click", function () {
                let usernamefilter = $('#usernamefilter').val() || 'all';
                window.open('/printuserpermissionreport?username=' + encodeURIComponent(usernamefilter), '_blank');
            });

            // Excel Download (PhpSpreadsheet — Contribution Format)
            $("#download-xlsx").on("click", function () {
                let usernamefilter = $('#usernamefilter').val() || 'all';
                window.location.href = '/exportuserpermissionreport?username=' + encodeURIComponent(usernamefilter);
            });

            // Auto load on page open
            loaddata();
        });

        function processData(results) {
            let reportData = [];
            results.forEach(function (row, index) {
                reportData.push({
                    srno     : index + 1,
                    username : row.username || '-',
                    module   : row.module   || '-',
                    isview   : row.isview   === '' ? '-' : (row.isview   || '-'),
                    isadd    : row.isadd    === '' ? '-' : (row.isadd    || '-'),
                    isedit   : row.isedit   === '' ? '-' : (row.isedit   || '-'),
                    isdelete : row.isdelete === '' ? '-' : (row.isdelete || '-'),
                });
            });
            return reportData;
        }

        function processSettings(results) {
            let reportData = [];
            results.forEach(function (row, index) {
                reportData.push({
                    srno               : index + 1,
                    username           : row.username           || '-',
                    posdisupto         : parseFloat(row.posdisupto ?? 0),
                    fomdisupto         : parseFloat(row.fomdisupto ?? 0),
                    edititeminkot      : row.edititeminkot      || '-',
                    freeiteminkot      : row.freeiteminkot      || '-',
                    guestbillcancel    : row.guestbillcancel    || '-',
                    changeroomdetail   : row.changeroomdetail   || '-',
                    deleteguestcharges : row.deleteguestcharges || '-',
                    guestchargechange  : row.guestchargechange  || '-',
                    changeguestprofile : row.changeguestprofile || '-',
                    cancelreservation  : row.cancelreservation  || '-',
                    chkouttimechange   : row.chkouttimechange   || '-',
                    editadvancevoucher : row.editadvancevoucher || '-',
                    posrateedit        : row.posrateedit        || '-',
                    voucherverify      : row.voucherverify      || '-',
                    lastupdate         : row.lastupdate ? dmy(row.lastupdate) + ' ' + row.lastupdate.substr(11, 5) : '-',
                });
            });
            return reportData;
        }
    </script>
@endsection
