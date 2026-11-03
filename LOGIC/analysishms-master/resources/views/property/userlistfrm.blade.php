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
        #userlist-table { width: 100% !important; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Hidden company info --}}
                            <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"   name="propertyid">
                            <input type="hidden" value="{{ $company->comp_name }}"  id="compname"     name="compname">

                            {{-- Report Header --}}
                            <div class="text-center titlep">
                                <h3>{{ $company->comp_name }}</h3>
                                <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                <p style="margin-top:-10px; font-size:16px;">
                                    {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                </p>
                                <p style="margin-top:-10px; font-size:16px;">User List</p>
                            </div>

                            {{-- Status Filter --}}
                            <div class="row mt-2">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="statusfilter" class="col-form-label">Status</label>
                                        <select name="statusfilter" id="statusfilter" class="form-control">
                                            <option value="all" selected>All</option>
                                            <option value="active">Active</option>
                                            <option value="inactive">InActive</option>
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
                                    <button id="print-table" class="btn btn-info">
                                        Print <i class="fa-solid fa-print"></i>
                                    </button>
                                    <button id="download-xlsx" class="btn btn-success">
                                        Excel <i class="fa fa-file-excel-o"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="custom-header">User List</div>
                            <div class="mt-3" id="userlist-table"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            let table;

            let columns = [
                {
                    title: "Sr No",
                    field: "srno",
                    sorter: "number",
                    width: 80,
                    hozAlign: "center",
                },
                {
                    title: "User Name",
                    field: "username",
                    sorter: "string",
                    minWidth: 150,
                },
                {
                    title: "Designation",
                    field: "designation",
                    sorter: "string",
                    minWidth: 140,
                },
                {
                    title: "Is Superwiser",
                    field: "issuperwiser",
                    sorter: "string",
                    width: 120,
                    hozAlign: "center",
                },
                {
                    title: "BackDate Entry Allow",
                    field: "backdateentryallow",
                    sorter: "string",
                    width: 160,
                    hozAlign: "center",
                },
                {
                    title: "Create Date",
                    field: "createdate",
                    sorter: "string",
                    minWidth: 160,
                },
                {
                    title: "Create User",
                    field: "createuser",
                    sorter: "string",
                    minWidth: 120,
                },
                {
                    title: "Status",
                    field: "status",
                    sorter: "string",
                    width: 100,
                    hozAlign: "center",
                },
            ];

            function loaddata() {
                showLoader();

                let statusfilter = $('#statusfilter').val() || 'all';

                let ulxhr = new XMLHttpRequest();
                ulxhr.open('POST', '/fetchuserlistfrm', true);
                ulxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                ulxhr.onreadystatechange = function () {
                    if (ulxhr.readyState === 4 && ulxhr.status === 200) {
                        let response = JSON.parse(ulxhr.responseText);
                        let results  = response.data || [];
                        let tabledata = processData(results);

                        if (table) {
                            table.setData(tabledata);
                        } else {
                            table = new Tabulator("#userlist-table", {
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

                        if (results.length == 0) {
                            pushNotify('info', 'User List', 'No Data Found',
                                'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        }

                        setTimeout(hideLoader, 800);
                    } else if (ulxhr.readyState === 4) {
                        setTimeout(hideLoader, 800);
                    }
                };
                ulxhr.send(`status=${statusfilter}&_token={{ csrf_token() }}`);
            }

            $(document).on('click', '#refreshbutton', function () {
                loaddata();
            });

            // Reload on status filter change
            $(document).on('change', '#statusfilter', function () {
                loaddata();
            });

            // Print (DomPDF — same format as Contribution Report)
            $("#print-table").on("click", function () {
                let statusfilter = $('#statusfilter').val() || 'all';
                window.open('/printuserlistfrm?status=' + encodeURIComponent(statusfilter), '_blank');
            });

            // Excel Download (PhpSpreadsheet — same format as Contribution Report)
            $("#download-xlsx").on("click", function () {
                let statusfilter = $('#statusfilter').val() || 'all';
                window.location.href = '/exportuserlistfrm?status=' + encodeURIComponent(statusfilter);
            });

            // Auto load on page open
            loaddata();
        });

        function processData(results) {
            let reportData = [];
            results.forEach(function (row, index) {
                reportData.push({
                    srno              : index + 1,
                    username          : row.username          || '-',
                    designation       : row.designation       || '-',
                    issuperwiser      : row.issuperwiser      || '-',
                    backdateentryallow: row.backdateentryallow || '-',
                    createdate        : row.createdate ? dmy(row.createdate) + ' ' + row.createdate.substr(11, 5) : '-',
                    createuser        : row.createuser        || '-',
                    status            : row.status            || '-',
                });
            });
            return reportData;
        }
    </script>
@endsection
