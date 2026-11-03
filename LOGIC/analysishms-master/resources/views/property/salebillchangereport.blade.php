@extends('property.layouts.main')
@section('main-container')

    {{-- DataTables CSS + Buttons --}}
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

    <style>
        .checkul {
            list-style: none;
            padding: 4px 0;
            margin: 0;
            border: 1px solid #ddd;
            background: #fff;
            max-height: 250px;
            overflow-y: auto;
            z-index: 9999;
            position: absolute;
            min-width: 220px;
            box-shadow: 0 4px 8px rgba(0,0,0,.15);
        }
        .checkul li {
            padding: 6px 12px;
            border-bottom: 1px solid #f0f0f0;
        }
        .checkul li:last-child { border-bottom: none; }
        .rhead { position: relative; }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Hidden company meta --}}
                            <input type="hidden" value="{{ $company->propertyid }}" id="propertyid">
                            <input type="hidden" value="{{ $company->comp_name }}"  id="compname">
                            <input type="hidden" value="{{ $company->start_dt }}"   id="start_dt">
                            <input type="hidden" value="{{ $company->end_dt }}"     id="end_dt">

                            {{-- Report Header (visible on print) --}}
                            <div class="text-center titlep mb-2">
                                <h3>{{ $company->comp_name }}</h3>
                                <p style="margin-top:-10px;font-size:16px;">{{ $company->address1 }}</p>
                                <p style="margin-top:-10px;font-size:16px;">
                                    {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                </p>
                                <p style="margin-top:-10px;font-size:16px;">Sale Bill Change Report</p>
                                <p style="text-align:left;margin-top:-10px;font-size:16px;">
                                    From Date: <span id="fromdatep"></span>&nbsp; To Date: <span id="todatep"></span>
                                </p>
                            </div>

                            {{-- Filters --}}
                            <div class="row align-items-end g-3">

                                    {{-- From Date --}}
                                    <div class="col-auto">
                                        <label for="fromdate" class="col-form-label">
                                            From Date <i class="fa-regular fa-calendar mb-1"></i>
                                        </label>
                                        <input type="date" value="{{ $fromdate }}" class="form-control"
                                               name="fromdate" id="fromdate">
                                    </div>

                                    {{-- To Date --}}
                                    <div class="col-auto">
                                        <label for="todate" class="col-form-label">
                                            To Date <i class="fa-regular fa-calendar mb-1"></i>
                                        </label>
                                        <input type="date" value="{{ $fromdate }}" class="form-control"
                                               name="todate" id="todate">
                                    </div>

                                    {{-- Outlet multi-select --}}
                                    <div class="col-auto" style="position:relative;">
                                        <label class="col-form-label d-block">&nbsp;</label>
                                        <button style="min-width:220px; padding: 8px 16px; font-size:15px;" type="button"
                                                class="btn rhead btn-outline-success"
                                                id="departlistbtn">
                                            Outlet <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="checkul" id="listeddepart" style="display:none;">
                                            <li>
                                                <label style="display:flex;align-items:center;gap:8px;margin:0;font-weight:normal;cursor:pointer;">
                                                    <input type="checkbox" id="checkalldepart" checked style="width:14px;height:14px;margin:0;flex-shrink:0;">
                                                    <span>Select All</span>
                                                </label>
                                            </li>
                                            @foreach ($departs as $item)
                                                <li class="outletnameli" data-outletname="{{ $item->name }}">
                                                    <label style="display:flex;align-items:center;gap:8px;margin:0;font-weight:normal;cursor:pointer;width:100%;">
                                                        <input class="departcheckbox" value="{{ $item->dcode }}" type="checkbox" checked style="width:14px;height:14px;margin:0;flex-shrink:0;">
                                                        <span>{{ $item->name }}</span>
                                                    </label>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    {{-- Type dropdown (Bill Wise / Item Wise) --}}
                                    <div class="col-auto" style="position:relative;">
                                        <label class="col-form-label d-block">&nbsp;</label>
                                        <button type="button" id="viewDropdownBtn"
                                                class="btn rhead btn-success"
                                                style="min-width:220px; padding: 8px 16px; font-size:15px;">
                                            <span id="viewSelectedLabel">Type</span>
                                            <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="checkul" id="viewOptionsMenu" style="display:none;">
                                            <li class="viewoptionli" data-view="bill" data-label="Bill Wise"
                                                style="cursor:pointer;background:#e8f5e9;font-weight:600;">
                                                <i class="fa-solid fa-receipt"></i> &nbsp;Bill Wise
                                            </li>
                                            <li class="viewoptionli" data-view="item" data-label="Item Wise" style="cursor:pointer;">
                                                <i class="fa-solid fa-utensils"></i> &nbsp;Item Wise
                                            </li>
                                        </ul>
                                    </div>

                                    {{-- Refresh button --}}
                                    <div class="col-auto">
                                        <label class="col-form-label d-block">&nbsp;</label>
                                        <button type="button" id="fetchbutton" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                        <button id="printBtn" class="btn btn-primary">
                                            <i class="fas fa-print"></i> Print Report
                                        </button>
                                        <button id="exportExcelBtn" class="btn btn-success">
                                            <i class="fas fa-file-excel"></i> Export to Excel
                                        </button>
                                        <span id="printUrl" style="display:none;">{{ route('printsalebillchangereport') }}</span>
                                        <span id="exportUrl" style="display:none;">{{ route('exportsalebillchangeexcel') }}</span>
                                    </div>

                                </div>

                            {{-- Table 1: Bill Level Change --}}
                            <div id="billLevelSection">
                                {{-- <h5 class="mt-4 mb-2">Bill Level Changes (Disc / Net Amount)</h5> --}}
                                <div class="row mt-2 table-responsive">
                                    <table id="salebillchangetable"
                                           class="table table-bordered table-hover table-striped rounded">
                                        <thead>
                                            <tr>
                                                <th>Outlet</th>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Bill Time</th>
                                                <th>Version</th>
                                                <th>Record Status</th>
                                                <th>User</th>
                                                <th>Updated At</th>
                                                <th>Prev Disc%</th>
                                                <th>Curr Disc%</th>
                                                <th>Disc% Change</th>
                                                <th>Prev Disc Amt</th>
                                                <th>Curr Disc Amt</th>
                                                <th>Disc Amt Change</th>
                                                <th>Prev Net Amt</th>
                                                <th>Curr Net Amt</th>
                                                <th>Net Amt Change</th>
                                                <th>Change Status</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                        <tfoot></tfoot>
                                    </table>
                                </div>
                            </div>

                            {{-- Table 2: Item Level Change --}}
                            <div id="itemLevelSection" style="display:none;">                                
                                <div class="row mt-2 table-responsive">
                                    <table id="salebillitemchangetable"
                                           class="table table-bordered table-hover table-striped rounded">
                                        <thead>
                                            <tr>
                                                <th>Outlet</th>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Bill Time</th>
                                                <th>User</th>
                                                <th>Before Sno</th>
                                                <th>Before Item</th>
                                                <th>Before Qty</th>
                                                <th>Before Rate</th>
                                                <th>Before Disc%</th>
                                                <th>Before Disc Amt</th>
                                                <th>After Sno</th>
                                                <th>After Item</th>
                                                <th>After Qty</th>
                                                <th>After Rate</th>
                                                <th>After Disc%</th>
                                                <th>After Disc Amt</th>
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
    </div>

    <script>
        $(document).ready(function () {
            let dtTable = null;
            let allData = [];

            // ── View switcher (single dropdown: Bill Wise / Item Wise)
            let currentView = 'bill';

            function setView(view) {
                currentView = view;
                if (view === 'bill') {
                    $('#billLevelSection').show();
                    $('#itemLevelSection').hide();
                } else {
                    $('#billLevelSection').hide();
                    $('#itemLevelSection').show();
                }
                // highlight selected option
                $('.viewoptionli').each(function () {
                    let active = $(this).data('view') === view;
                    $(this).css('background', active ? '#e8f5e9' : '');
                    $(this).css('font-weight', active ? '600' : 'normal');
                });
            }

            $('#viewDropdownBtn').on('click', function (e) {
                e.stopPropagation();
                $('#viewOptionsMenu').toggle();
            });
            $(document).on('click', function (e) {
                if (!$(e.target).closest('#viewOptionsMenu, #viewDropdownBtn').length) {
                    $('#viewOptionsMenu').hide();
                }
            });

            $('.viewoptionli').on('click', function () {
                $('#viewSelectedLabel').text($(this).data('label'));
                $('#viewOptionsMenu').hide();
                setView($(this).data('view'));
            });

            // ── Date validation 
            $(document).on('change', '#fromdate', function () { validateFinancialYear('#fromdate'); });
            $(document).on('change', '#todate',   function () { validateFinancialYear('#todate');   });

            // Make date inputs editable (some layouts lock them)
            ['fromdate','todate'].forEach(function(id) {
                let el = document.getElementById(id);
                if (el) {
                    el.removeAttribute('readonly');
                    el.removeAttribute('disabled');
                    el.style.pointerEvents = 'auto';
                    el.style.backgroundColor = '#fff';
                }
            });

            // ── Outlet dropdown toggle 
            $('#departlistbtn').on('click', function (e) {
                e.stopPropagation();
                $('#listeddepart').toggle();
            });
            $(document).on('click', function (e) {
                if (!$(e.target).closest('#listeddepart, #departlistbtn').length) {
                    $('#listeddepart').hide();
                }
            });

            // Select All toggle
            $('#checkalldepart').on('change', function () {
                let checked = $(this).is(':checked');
                $('.departcheckbox:visible').prop('checked', checked);
            });

            // Outlet search filter
            $(document).on('input', '.outletsearch', function () {
                let q = $(this).val().toLowerCase();
                $('.outletnameli').each(function () {
                    let name = $(this).data('outletname').toLowerCase();
                    $(this).toggle(name.includes(q));
                });
            });

            // ── Get checked outlet dcodes 
            function getCheckedOutlets() {
                let codes = [];
                $('.departcheckbox:checked').each(function () { codes.push($(this).val()); });
                return codes;
            }

            // ── Render table with DataTables 
            function renderTable(data) {
                if (dtTable) {
                    dtTable.destroy();
                    $('#salebillchangetable tbody').empty();
                    $('#salebillchangetable tfoot').empty();
                }

                let rows     = '';

                data.forEach(function (row) {
                    rows += `<tr>
                        <td>${row.Outlet ?? ''}</td>
                        <td>${row.BillNo ?? ''}</td>
                        <td class="nowrap">${row.BillDate ? dmy(row.BillDate) : ''}</td>
                        <td>${row.BillTime ?? ''}</td>
                        <td class="text-center">${row.VersionNo ?? ''}</td>
                        <td>${row.RecordStatus ?? ''}</td>
                        <td>${row.UserName ?? ''}</td>
                        <td class="nowrap">${row.UpdateDateTime ?? ''}</td>
                        <td class="text-right">${fmt(row.PrevDiscPer)}</td>
                        <td class="text-right">${fmt(row.CurrentDiscPer)}</td>
                        <td class="text-right">${fmt(row.DiscPerChange)}</td>
                        <td class="text-right">${fmt(row.PrevDiscAmt)}</td>
                        <td class="text-right">${fmt(row.CurrentDiscAmt)}</td>
                        <td class="text-right">${fmt(row.DiscAmtChange)}</td>
                        <td class="text-right">${fmt(row.PrevNetAmt)}</td>
                        <td class="text-right">${fmt(row.CurrentNetAmt)}</td>
                        <td class="text-right">${fmt(row.NetAmtChange)}</td>
                        <td>${row.ChangeStatus ?? ''}</td>
                    </tr>`;
                });

                $('#salebillchangetable tbody').html(rows);

                dtTable = $('#salebillchangetable').DataTable({
                    dom: 'rtip',
                    pageLength: 25,
                    order: []
                });
            }

            // ── Render Item Change Table 
            let dtItemTable = null;

            function renderItemTable(data) {
                if (dtItemTable) {
                    dtItemTable.destroy();
                    $('#salebillitemchangetable tbody').empty();
                    $('#salebillitemchangetable tfoot').empty();
                }

                let rows     = '';

                data.forEach(function (row) {
                    rows += `<tr>
                        <td>${row.Outlet ?? ''}</td>
                        <td>${row.BillNo ?? ''}</td>
                        <td class="nowrap">${row.BillDate ? dmy(row.BillDate) : ''}</td>
                        <td>${row.BillTime ?? ''}</td>
                        <td>${row.UserName ?? ''}</td>
                        <td class="text-center">${row.BeforeSno ?? ''}</td>
                        <td>${row.BeforeName ?? ''}</td>
                        <td class="text-right">${fmt(row.BeforeQty)}</td>
                        <td class="text-right">${fmt(row.BeforeRate)}</td>
                        <td class="text-right">${fmt(row.BeforeDiscPer)}</td>
                        <td class="text-right">${fmt(row.BeforeDiscAmt)}</td>
                        <td class="text-center">${row.AfterSno ?? ''}</td>
                        <td>${row.AfterName ?? ''}</td>
                        <td class="text-right">${row.AfterQty ?? ''}</td>
                        <td class="text-right">${row.AfterRate ?? ''}</td>
                        <td class="text-right">${row.AfterDiscPer ?? ''}</td>
                        <td class="text-right">${row.AfterDiscAmt ?? ''}</td>
                    </tr>`;
                });

                $('#salebillitemchangetable tbody').html(rows);

                dtItemTable = $('#salebillitemchangetable').DataTable({
                    dom: 'rtip',
                    pageLength: 25,
                    order: []
                });
            }

            // ── Number formatter 
            function fmt(val) {
                if (val === null || val === undefined || val === '') return '-';
                let n = parseFloat(val);
                return isNaN(n) ? val : n.toFixed(2);
            }

            function applyFilter() {
                renderTable(allData);
            }

            // ── Refresh button 
            $('#fetchbutton').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let outlets  = getCheckedOutlets();

                if (!fromdate || !todate) {
                    pushNotify('error','Sale Bill Change Report','Please select both dates','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }
                if (!outlets.length) {
                    pushNotify('error','Sale Bill Change Report','Please select at least one outlet','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }

                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));

                pushNotify('info','Sale Bill Change Report','Fetching data, please wait...','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                showLoader();

                let postData = {
                    _token:   '{{ csrf_token() }}',
                    fromdate: fromdate,
                    todate:   todate,
                    outlets:  outlets.join(',')
                };

                // Fetch only the active view's table
                let reqUrl = currentView === 'bill' ? '/fetchsalebillchangereport' : '/fetchsalebillitemchangereport';

                $.ajax({ url: reqUrl, type: 'POST', data: postData }).then(function (resp) {
                    hideLoader();

                    let data = resp.data || [];

                    if (!data.length) {
                        pushNotify('info','Sale Bill Change Report','No records found','fade',300,'','',true,true,true,3000,20,20,'outline','right top');
                    }

                    if (currentView === 'bill') {
                        allData = data;
                        applyFilter();
                    } else {
                        renderItemTable(data);
                    }

                }).fail(function (xhr) {
                    hideLoader();
                    pushNotify('error','Sale Bill Change Report','Error fetching data: ' + xhr.status,'fade',300,'','',true,true,true,3000,20,20,'outline','right top');
                    console.error(xhr.responseText);
                });
            });

            // ── Print button
            function buildFilterQuery() {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let outlets  = getCheckedOutlets().join(',');
                return '?view=' + encodeURIComponent(currentView)
                     + '&fromdate=' + encodeURIComponent(fromdate)
                     + '&todate='   + encodeURIComponent(todate)
                     + '&outlets='  + encodeURIComponent(outlets);
            }

            $('#printBtn').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let outlets  = getCheckedOutlets();

                if (!fromdate || !todate) {
                    pushNotify('error','Sale Bill Change Report','Please select both dates','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }
                if (!outlets.length) {
                    pushNotify('error','Sale Bill Change Report','Please select at least one outlet','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }
                window.open($('#printUrl').text().trim() + buildFilterQuery(), '_blank');
            });

            // ── Export to Excel button
            $('#exportExcelBtn').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate   = $('#todate').val();
                let outlets  = getCheckedOutlets();

                if (!fromdate || !todate) {
                    pushNotify('error','Sale Bill Change Report','Please select both dates','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }
                if (!outlets.length) {
                    pushNotify('error','Sale Bill Change Report','Please select at least one outlet','fade',300,'','',true,true,true,2500,20,20,'outline','right top');
                    return;
                }
                window.location.href = $('#exportUrl').text().trim() + buildFilterQuery();
            });

        }); // end ready
    </script>

@endsection
