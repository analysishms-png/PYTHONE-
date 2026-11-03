@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')

    <style>
        .country-rep { font-size: 14px; }
        .country-rep .table th {
            background-color: #5c2d91;
            color: white;
            vertical-align: middle;
            text-align: center;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body checkoutreport country-rep">
                            <form action="">
                                <input type="hidden" value="{{ $company->start_dt }}"   name="start_dt"   id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}"     name="end_dt"     id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"   name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}"  id="compname"     name="compname">
                                <input type="hidden" value="{{ $company->address1 }}"   id="address"      name="address">
                                <input type="hidden" value="{{ $company->city }}"       id="city"         name="city">
                                <input type="hidden" value="{{ $company->mobile }}"     id="compmob"      name="compmob">
                                <input type="hidden" value="{{ $statename }}"           id="statename"    name="statename">
                                <input type="hidden" value="{{ $company->pin }}"        id="pin"          name="pin">
                                <input type="hidden" value="{{ $company->email }}"      id="email"        name="email">
                                <input type="hidden" value="{{ $company->logo }}"       id="logo"         name="logo">
                                <input type="hidden" value="{{ $company->u_name }}"     id="u_name"       name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}"      id="gstin"        name="gstin">

                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">Discount Report</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">
                                        From Date: <span id="fromdatep"></span>&nbsp;&nbsp;
                                        To Date: <span id="todatep"></span>
                                    </p>
                                </div>

                                <div class="row justify-content-around">
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="outlets" class="col-form-label">Outlet</label>
                                            <select class="form-control" name="outlets" id="outlets">
                                                <option value="">All Outlets</option>
                                                @foreach ($departs as $dep)
                                                    <option value="{{ $dep->dcode }}">{{ $dep->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>
                            </form>

                            <button id="printBtn" class="btn btn-primary mb-3">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                <i class="fas fa-file-excel"></i> Export to Excel
                            </button>
                            <span id="printUrl"  style="display:none;">{{ route('printdiscountreport') }}</span>
                            <span id="exportUrl" style="display:none;">{{ route('exportdiscountreport') }}</span>

                            <div class="table-responsive">
                                <table id="discounttable" class="table table-bordered table-striped table-hover" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Outlet</th>
                                            <th>Date</th>
                                            <th>Guest Name</th>
                                            <th>Mobile No</th>
                                            <th>Bill No</th>
                                            <th>Item Name</th>
                                            <th>Qty</th>
                                            <th>Rate</th>
                                            <th>Amount</th>
                                            <th>Disc %</th>
                                            <th>Disc Amt</th>
                                            <th>User</th>
                                            <th>Change Date</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                    <tfoot></tfoot>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('printBtn').addEventListener('click', function () {
            var fromdate = document.getElementById('fromdate').value;
            var todate   = document.getElementById('todate').value;
            var outlets  = document.getElementById('outlets').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Print Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            var url = document.getElementById('printUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate)
                    + '&outlets='  + encodeURIComponent(outlets);
            window.open(url, '_blank');
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function () {
            var fromdate = document.getElementById('fromdate').value;
            var todate   = document.getElementById('todate').value;
            var outlets  = document.getElementById('outlets').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Export Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            var url = document.getElementById('exportUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate)
                    + '&outlets='  + encodeURIComponent(outlets);
            window.location.href = url;
        });
    </script>

    <script>
        var discountDT = null;

        document.getElementById('fetchbutton').addEventListener('click', function () {
            var fromdate = document.getElementById('fromdate').value;
            var todate   = document.getElementById('todate').value;
            var outlets  = document.getElementById('outlets').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Fill Required Fields', 'Please select From Date and To Date');
                return;
            }

            showLoader();
            pushNotify('info', 'Discount Report', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

            document.getElementById('fromdatep').textContent = dmy(fromdate);
            document.getElementById('todatep').textContent   = dmy(todate);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/fetchdiscountreport', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            xhr.onload = function () {
                if (xhr.status !== 200) { hideLoader(); return; }

                var response  = JSON.parse(xhr.responseText);
                var results   = response.data || [];
                var tableData = [];

                results.forEach(function (row) {
                    tableData.push({
                        outlet     : row.departname || '-',
                        vdate      : row.vdate      ? dmy(row.vdate)      : '-',
                        guestname  : row.name       || '-',
                        mobile     : row.mobileno   || '-',
                        billno     : row.vno        || '-',
                        itemname   : row.itemname   || '-',
                        quantity   : parseFloat(row.quantity || 0),
                        rate       : parseFloat(row.rate     || 0),
                        amount     : parseFloat(row.amount   || 0),
                        discper    : parseFloat(row.discper  || 0),
                        discamt    : parseFloat(row.discamt  || 0),
                        username   : row.username   || '-',
                        changedate : row.changedate ? dmy(row.changedate) : '-',
                    });
                });

                /* --- Destroy existing instance, then reinit with fresh data --- */
                if (discountDT !== null) {
                    discountDT.destroy();
                    discountDT = null;
                }

                discountDT = new DataTable('#discounttable', {
                    data    : tableData,
                    columns : [
                        { data: 'outlet' },
                        { data: 'vdate' },
                        { data: 'guestname' },
                        { data: 'mobile' },
                        { data: 'billno',    className: 'text-center' },
                        { data: 'itemname' },
                        { data: 'quantity',  className: 'text-center',
                          render: DataTable.render.number(',', '.', 2) },
                        { data: 'rate',      className: 'text-right',
                          render: DataTable.render.number(',', '.', 2) },
                        { data: 'amount',    className: 'text-right',
                          render: DataTable.render.number(',', '.', 2) },
                        { data: 'discper',   className: 'text-center',
                          render: DataTable.render.number(',', '.', 2) },
                        { data: 'discamt',   className: 'text-right',
                          render: DataTable.render.number(',', '.', 2) },
                        { data: 'username' },
                        { data: 'changedate' },
                    ],
                    order      : [[0, 'asc'], [1, 'asc']],
                    pageLength : 100,
                    layout     : { topStart: 'search', topEnd: 'info', bottomStart: 'pageLength', bottomEnd: 'paging' },
                });

                hideLoader();
            };

            xhr.onerror = function () { hideLoader(); };

            xhr.send('fromdate=' + encodeURIComponent(fromdate)
                   + '&todate='  + encodeURIComponent(todate)
                   + '&outlets=' + encodeURIComponent(outlets)
                   + '&_token={{ csrf_token() }}');
        });
    </script>
@endsection
