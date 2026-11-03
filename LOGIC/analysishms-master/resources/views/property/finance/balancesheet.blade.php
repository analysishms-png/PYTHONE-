@extends('property.layouts.main')

@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://unpkg.com/xlsx@0.18.5/dist/xlsx.full.min.js"></script>
    <style>
        h1.report-title {
            text-align: center;
            font-size: 2rem;
            margin: 20px 0;
        }

        .dt-buttons {
            margin-bottom: 10px;
        }

        tfoot tr th {
            background-color: #f8f9fa;
        }

        table thead th {
            background: linear-gradient(to bottom, #9999ff 0%, #7777dd 100%);
            color: white;
            font-weight: 600;
            border: 1px solid #6666cc;
            padding: 8px;
            text-align: left;
        }

        table tbody td {
            padding: 6px 8px;
            border: 1px solid #ddd;
        }

        table tbody tr:nth-child(even) {
            background-color: #ffffcc;
        }

        table tbody tr:nth-child(odd) {
            background-color: white;
        }

        table tbody tr.total-row {
            background-color: #ffffcc;
            font-weight: bold;
        }

        .clickable-row-main:not(.d-none),
        .clickable-row:not(.d-none),
        .clickable-subrow:not(.d-none) {
            cursor: pointer;
        }

        .clickable-row-main:hover:not(.d-none),
        .clickable-row:hover:not(.d-none),
        .clickable-subrow:hover:not(.d-none) {
            filter: brightness(0.98);
        }

        .amount-col {
            text-align: right;
            font-family: 'Courier New', monospace;
        }

        @media print {
            body {
                margin: 0;
                padding: 0;
            }

            .no-print {
                display: none !important;
            }

            #printContent {
                width: 100%;
                margin: 0;
                padding: 20px;
            }

            .print-header {
                text-align: center;
                margin-bottom: 20px;
                border-bottom: 2px solid #000;
                padding-bottom: 10px;
            }

            .print-header h2 {
                margin: 5px 0;
                font-size: 18px;
            }

            .print-header p {
                margin: 2px 0;
                font-size: 12px;
            }

            .print-footer {
                text-align: center;
                margin-top: 20px;
                border-top: 2px solid #000;
                padding-top: 10px;
                font-size: 11px;
            }

            .print-table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 10px;
                page-break-inside: avoid;
            }

            .print-table thead {
                background-color: #9999ff;
                color: white;
            }

            .print-table th {
                border: 1px solid #666;
                padding: 8px;
                text-align: left;
                font-weight: bold;
                font-size: 12px;
            }

            .print-table td {
                border: 1px solid #ddd;
                padding: 6px 8px;
                font-size: 11px;
            }

            .print-table tr {
                page-break-inside: avoid;
            }

            .print-table tr.total-row {
                background-color: #ffffcc;
                font-weight: bold;
            }

            .print-table tr:nth-child(even) {
                background-color: #ffffcc;
            }

            .print-table tr:nth-child(odd) {
                background-color: white;
            }

            .amount-col-print {
                text-align: right;
                font-family: 'Courier New', monospace;
            }

            .page-break {
                page-break-after: always;
            }

            @page {
                margin: 1cm;

                @bottom-center {
                    content: "Page " counter(page) " of " counter(pages);
                    font-size: 11px;
                }
            }
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Balance Sheet</h5>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-around">
                                <div class="">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date"
                                            class="form-control fromdate" name="fromdate"
                                            id="fromdate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label">To Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date"
                                            class="form-control todate" name="todate"
                                            id="todate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <input type="checkbox" name="detaileddata" id="detaileddata" class="form-check-input" value="detaileddata">
                                        <label for="detaileddata" class="col-form-check">Detailed</label>
                                    </div>
                                </div>
                                <div class="">
                                    <button style="width: -webkit-fill-available;" type="button"
                                        class="btn rhead btn-outline-primary" name="propertylistbtn"
                                        id="propertylistbtn">Properties <i class="fa-solid fa-angle-down"></i></button>
                                    <ul class="checkul" id="listedproperty" style="display:none;">
                                        <li> <input type="checkbox" id="checkallproperties">
                                            <span>Select All <span class="tcount">{{ count(myproperties()) }}</span></span>
                                        </li>
                                        <li><input type="text" placeholder="Enter Property Name..." class="form-control propertysearch"></li>
                                        @foreach (myproperties() as $item)
                                            <li data-propertyname="{{ $item->comp_name }}" class="propertynameli">
                                                <input class="propertycheckbox" value="{{ $item->propertyid }}"
                                                    type="checkbox" {{ Auth::user()->propertyid == $item->propertyid ? 'checked' : '' }}>
                                                <span>{{ $item->comp_name }}</span>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <div style="margin-top: 30px;" class="ml-5">
                                    <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    <button id="exportbutton" name="exportbutton" type="button" class="btn btn-info" style="margin-left: 10px;">Export to Excel <i class="fa-solid fa-download"></i></button>
                                    <button id="printbutton" name="printbutton" type="button" class="btn btn-warning" style="margin-left: 10px;">Print <i class="fa-solid fa-print"></i></button>
                                </div>

                            </div>
                            <p class="unassigned-room p-1 rounded-left font-weight-bold">From Date <span id="startdate"></span> To <span id="enddate"></span></p>

                            <div class="row">
                                <div class="col-md-6">
                                    <table id="left-table" class="table table-bordered table-sm">
                                        <thead>
                                            <tr>
                                                <th>Particulars</th>
                                                <th class="subrowsamt" style="text-align: right;">Amount</th>
                                                <th class="mainamtrow" style="text-align: right;">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-md-6">
                                    <table id="right-table" class="table table-bordered table-sm">
                                        <thead>
                                            <tr>
                                                <th>Particulars</th>
                                                <th class="subrowsamt" style="text-align: right;">Amount</th>
                                                <th class="mainamtrow" style="text-align: right;">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>

                                {{-- DYNAMIC DATAS (Drilldown like Profit/Loss) --}}
                                <div class="col-md-8">
                                    <div class="col-md-3 offset-5">
                                        <span id="companyname" class="text-success font-weight-bold"></span>
                                    </div>

                                    <div style="display: none;" id="secondtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatem2" id="fromdatem2">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatem2" id="todatem2">
                                            </div>
                                        </div>
                                        <table id="second-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit5">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit5">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="fifthtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate5" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdate5" id="fromdate5">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate5" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todate5" id="todate5">
                                            </div>
                                        </div>
                                        <table id="fifth-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit6">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit6">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="thirdtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatem" id="fromdatem">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatem" id="todatem">
                                            </div>
                                        </div>
                                        <table id="third-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Month</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                    <th>Balance</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit2">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit2">0.00</td>
                                                    <td id="total-balance2" class="text-end">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="fourthtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatemr" id="fromdatemr">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatemr" id="todatemr">
                                            </div>
                                        </div>
                                        <table id="fourth-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Date</th>
                                                    <th>Vr. No.</th>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                    <th>Balance</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td colspan="3">Total</td>
                                                    <td class="debitcell text-end" id="total-debit3">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit3">0.00</td>
                                                    <td id="total-balance3" class="text-end">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            let emptytr20px = `
                            <tr>
                                <td style="height: 20px;"></td>
                                <td style="height: 20px;"></td>
                                <td style="height: 20px;"></td>
                            </tr>`;

            $('#checkallproperties').change(function() {
                let isChecked = $(this).is(':checked');
                $('.propertycheckbox').prop('checked', isChecked);
            });
            dynamicSearch('.propertysearch', 'propertyname', '.propertynameli');

            toggleList("#propertylistbtn", "#listedproperty");
            checkAllCheckboxes("#checkallproperties", ".propertycheckbox");

            $.ajax({
                url: '/yearmanage',
                method: 'GET',
                success: function(response) {
                    $('#startdate').text(dmy(response.finyearreal.start));
                    $('#enddate').text(dmy(response.mtd.end));
                    $('.fromdate').val(response.finyearreal.start);
                    $('.todate').val(response.mtd.end);
                },
                error: function(xhr) {
                    console.log("Error fetching year:", xhr.responseText);
                }
            });

            $.ajaxSetup({
                headers: {
                    'X_CSRF_TOKEN': "{{ csrf_token() }}"
                }
            });

            $('.subrowsamt').hide();
            $('.mainamtrow').attr('colspan', '2');
            $(document).on('change', '#fromdate, #todate, #detaileddata', function() {
                showLoader();
                fetchtrialfirst();

                if ($('#detaileddata').is(':checked')) {
                    $('.subrowsamt').show();
                    $('.mainamtrow').attr('colspan', '1');
                } else {
                    $('.subrowsamt').hide();
                    $('.mainamtrow').attr('colspan', '2');
                }
            });

            $(document).on('click', '#fetchbutton', function() {
                showLoader();
                fetchtrialfirst();
            });

            $(document).on('click', '.clickable-subrow:not(.d-none)', function() {
                $('.clickable-subrow').removeClass('table-success');
                $(this).addClass('table-success');
                // Direct drilldown: main-table subgroup -> month-wise trial (like Profit/Loss)
                fetchTrialData('fromdatem', 'todatem');
            });

            function fetchtrialfirst() {
                $.ajax({
                    url: '{{ route('balancesheetmainquery') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        'fromdate': $('#fromdate').val(),
                        'todate': $('#todate').val(),
                        'detailed': $('#detaileddata').is(':checked') ? 1 : 0,
                        'allproperties': $('.propertycheckbox').map(function() {
                            if ($(this).is(':checked')) {
                                return $(this).val();
                            }
                        }).get()
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);
                        // Clear existing table data
                        $('#left-table tbody').empty();
                        $('#right-table tbody').empty();

                        if (response.success === false) {
                            Swal.fire({
                                icon: 'warning',
                                title: 'No Data Found',
                                text: response.message
                            });
                            return;
                        }
                        let groupsac = response.groupsac;
                        let detailed = response.detailed;
                        let righttotal = 0.00; // Assets
                        let lefttotal = 0.00; // Liabilities & Capital

                        // Keep drill-down date ranges in sync with the main range by default
                        const fromMain = $('#fromdate').val();
                        const toMain = $('#todate').val();
                        $('#fromdatem2, #fromdatem, #fromdatemr, #fromdate5').val(fromMain);
                        $('#todatem2, #todatem, #todatemr, #todate5').val(toMain);

                        function toAmount(val) {
                            return (parseFloat(Math.abs(val)) || 0);
                        }

                        function sumAbsBalances(rows) {
                            return (rows || []).reduce((sum, r) => sum + toAmount(r.balance), 0);
                        }

                        function appendMainRow(tableSelector, meta) {
                            const total = meta.total || 0;
                            const hideClass = total <= 0 ? 'd-none' : '';

                            const tr = `<tr class="clickable-row-main ${hideClass}"
                                            data-side="${meta.side || ''}"
                                            data-maingroupcode="${meta.maingroupcode || ''}"
                                            data-group_code="${meta.group_code || ''}"
                                            data-compname="${meta.name || ''}">
                                            <td><strong>${meta.name || ''}</strong></td>
                                            <td class="amount-col subrowsamt"></td>
                                            <td class="amount-col mainamtrow"><strong>${total.toFixed(2)}</strong></td>
                                        </tr>`;
                            $(`${tableSelector} tbody`).append(tr);
                        }

                        function appendSubRows(tableSelector, subgroups) {
                            if (!detailed) return;
                            if (!subgroups || !subgroups.length) return;

                            subgroups.forEach(function(sub) {
                                const balance = toAmount(sub.balance);
                                const hideClass = balance <= 0 ? 'd-none' : '';

                                const subtr = `<tr class="clickable-subrow ${hideClass}"
                                                style="background-color: #f0f0f0;"
                                                data-acgroupcode="${sub.acgroupcode || ''}"
                                                data-sub_code="${sub.subcode || ''}"
                                                data-compname="${sub.name || ''}">
                                                <td style="padding-left: 30px;">${sub.name || ''}</td>
                                                <td class="amount-col subrowsamt">${balance.toFixed(2)}</td>
                                                <td class="amount-col mainamtrow"></td>
                                            </tr>`;
                                $(`${tableSelector} tbody`).append(subtr);
                            });
                        }

                        // RIGHT SIDE - ASSETS (Investments, Current Assets, Fixed Assets)
                        ['investments', 'currentassets', 'fixedassets'].forEach(function(groupKey) {
                            const group = groupsac[groupKey];
                            const rows = groupsac[groupKey + '_rows'] || [];
                            const subgroups = groupsac[groupKey + '_subgroups'] || [];

                            const groupTotal = sumAbsBalances(rows);
                            const groupName = rows[0]?.name || group?.maingroupname || groupKey;
                            const maingroupcode = rows[0]?.maingroupcode || group?.maingroupcode || '';
                            const group_code = rows[0]?.group_code || group?.group_code || '';

                            appendMainRow('#right-table', {
                                side: 'right',
                                maingroupcode: maingroupcode,
                                group_code: group_code,
                                name: groupName,
                                total: groupTotal,
                            });
                            appendSubRows('#right-table', subgroups);

                            righttotal += groupTotal;
                            $('#right-table tbody').append(emptytr20px);
                        });

                        // LEFT SIDE - LIABILITIES & CAPITAL (All other accounts)
                        let leftRows = groupsac['leftside_rows'] || [];
                        let groupedLeft = {};

                        leftRows.forEach(function(row) {
                            let key = row.maingroupcode || '';
                            if (!groupedLeft[key]) {
                                groupedLeft[key] = {
                                    maingroupcode: key,
                                    group_code: row.group_code || '',
                                    name: row.name || '',
                                    total: 0
                                };
                            }
                            groupedLeft[key].name = groupedLeft[key].name || row.name || '';
                            groupedLeft[key].group_code = groupedLeft[key].group_code || row.group_code || '';
                            groupedLeft[key].total += toAmount(row.balance);
                        });

                        const leftSubgroupsByMain = groupsac['leftside_subgroups_by_maingroupcode'] || {};

                        Object.keys(groupedLeft).forEach(function(key) {
                            let group = groupedLeft[key];
                            let subgroups = leftSubgroupsByMain[key] || [];

                            appendMainRow('#left-table', {
                                side: 'left',
                                maingroupcode: group.maingroupcode,
                                group_code: group.group_code,
                                name: group.name,
                                total: group.total,
                            });
                            appendSubRows('#left-table', subgroups);

                            lefttotal += group.total;
                            $('#left-table tbody').append(emptytr20px);
                        });

                        // Balance the sheet
                        let difference = righttotal - lefttotal;

                        if (difference > 0) {
                            // Net Profit - add to left side
                            $('#left-table tbody').append(`
                                <tr class="${difference <= 0 ? 'd-none' : ''}">
                                    <td><strong>Net Profit</strong></td>
                                    <td class="amount-col subrowsamt"></td>
                                    <td class="amount-col mainamtrow"><strong>${difference.toFixed(2)}</strong></td>
                                </tr>
                            `);
                            lefttotal += difference;
                        } else if (difference < 0) {
                            // Net Loss - add to right side
                            const loss = Math.abs(difference);
                            $('#right-table tbody').append(`
                                <tr class="${loss <= 0 ? 'd-none' : ''}">
                                    <td><strong>Net Loss</strong></td>
                                    <td class="amount-col subrowsamt"></td>
                                    <td class="amount-col mainamtrow"><strong>${loss.toFixed(2)}</strong></td>
                                </tr>
                            `);
                            righttotal += loss;
                        }

                        // Add totals
                        $('#left-table tbody').append(`
                            <tr class="total-row">
                                <td><strong>TOTAL</strong></td>
                                <td class="amount-col subrowsamt"></td>
                                <td class="amount-col mainamtrow"><strong>${lefttotal.toFixed(2)}</strong></td>
                            </tr>
                        `);

                        $('#right-table tbody').append(`
                            <tr class="total-row">
                                <td><strong>TOTAL</strong></td>
                                <td class="amount-col subrowsamt"></td>
                                <td class="amount-col mainamtrow"><strong>${righttotal.toFixed(2)}</strong></td>
                            </tr>
                        `);
                    },
                    error: function(xhr) {
                        hideLoader();
                        console.log("Error fetching profit loss data:", xhr.responseText);
                    }
                });
            }

            // Drilldown (same logic as Profit/Loss)
            $(document).on('click', '.clickable-row-main:not(.d-none)', function() {
                $('.clickable-row-main').removeClass('table-success');
                $(this).addClass('table-success');
                fetchsubgrouprows('fromdatem2', 'todatem2');
            });

            $(document).on('change', '#fromdatem2, #todatem2, .propertycheckbox', function() {
                fetchsubgrouprows('fromdatem2', 'todatem2');
            });

            $(document).on('change', '#fromdatem, #todatem, .propertycheckbox', function() {
                fetchTrialData('fromdatem', 'todatem');
            });

            let dataTableInitialized5 = false;
            let dataTableInitialized2 = false;
            let dataTableInitialized3 = false;
            let dataTableInitialized6 = false;

            function fetchsubgrouprows(fromdateId, todateId) {
                const selectedRow = $('.clickable-row-main.table-success');
                if (!selectedRow.length) return;

                const maingroupcode = selectedRow.data('maingroupcode');
                const companyname = selectedRow.data('compname');
                const group_code = selectedRow.data('group_code');

                $('#companyname').text(companyname);
                $('#second-table tbody').empty();
                $('#secondtablediv').fadeOut('500');
                $('#third-table tbody').empty();
                $('#thirdtablediv').fadeOut(500);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                $('#fifth-table tbody').empty();
                $('#fifthtablediv').fadeOut(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('fetchsubgroupdetails') }}",
                    cache: false,
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        group_code: group_code,
                        maingroupcode: maingroupcode,
                        fromdate: $(`#${fromdateId}`).val() || $('#fromdate').val(),
                        todate: $(`#${todateId}`).val() || $('#todate').val(),
                        openingbalance: ($('#openingbalance').length && $('#openingbalance').is(':checked')) ? 'checked' : 'not checked',
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (response.success === false || !response.subgroups || response.subgroups.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let rows = '';
                        let totalDebit = 0;
                        let totalCredit = 0;

                        response.subgroups.forEach(row => {
                            let debit = 0;
                            let credit = 0;
                            let bal = parseFloat(row.balance);
                            const hideClass = (!bal || Math.abs(bal) <= 0) ? 'd-none' : '';

                            if (bal < 0) {
                                credit = Math.abs(bal).toFixed(2);
                                totalCredit += Math.abs(bal);
                            } else {
                                debit = (bal || 0).toFixed(2);
                                totalDebit += (bal || 0);
                            }

                            rows += `<tr class="clickable-row ${hideClass}"
                                        data-groupfetch="${row.groupynvalue}"
                                        data-acgroupcode="${row.acgroupcode || ''}"
                                        data-docid="${row.docid || ''}"
                                        data-vtype="${row.vtype || ''}"
                                        data-vdate="${row.vdate || ''}"
                                        data-sub_code="${row.subcode || ''}"
                                        data-compname="${row.name || ''}"
                                        data-rowyear="${row.year || ''}">
                                        <td>${row.name || ''}</td>
                                        <td class="text-end debitcell">${debit}</td>
                                        <td class="text-end creditcell">${credit}</td>
                                    </tr>`;
                        });

                        // Reset table state before rendering new rows
                        if ($.fn.DataTable.isDataTable('#second-table')) {
                            $('#second-table').DataTable().clear().destroy();
                        }

                        $('#second-table tbody').html(rows);
                        $('#total-debit5').text(totalDebit.toFixed(2));
                        $('#total-credit5').text(totalCredit.toFixed(2));
                        $('#secondtablediv').hide().removeClass('d-none').fadeIn(300);

                        $('#second-table').DataTable({
                            destroy: true,
                            dom: 'Bfrtip',
                            ordering: true,
                            order: [],
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: 'Trial Balance (Subgroups)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedMainGroupName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedMainGroupName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: 'Subgroup Details - ' + companyname,
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedMainGroupName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);
                                    }
                                }
                            ]
                        });

                        dataTableInitialized5 = true;
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch subgroup data'
                        });
                    }
                });
            }

            // Click subgroup row (inside second-table only) to load month-wise trial
            $(document).on('click', '#second-table tbody .clickable-row:not(.d-none)', function() {
                $('#second-table tbody .clickable-row').removeClass('table-success');
                $(this).addClass('table-success');

                const groupynvalue = $(this).data('groupfetch');
                const acgroupcode = $(this).data('acgroupcode');

                if (String(groupynvalue) === '1') {
                    fetchsubdata2('fromdate5', 'todate5', acgroupcode);
                } else {
                    fetchTrialData('fromdatem', 'todatem');
                }
            });

            function fetchTrialData(fromdateId, todateId) {
                const selectedRow = $('.clickable-subrow.table-success').first().length ?
                    $('.clickable-subrow.table-success').first() :
                    $('#second-table tbody .clickable-row.table-success').first();
                if (!selectedRow.length) return;

                const sub_code = selectedRow.data('sub_code');
                const companyname = selectedRow.data('compname');

                $('#companyname').text(companyname);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                if ($.fn.DataTable.isDataTable('#third-table')) {
                    $('#third-table').DataTable().destroy();
                    dataTableInitialized2 = false;
                }

                $.ajax({
                    type: 'POST',
                    url: '{{ route('monthwisetrialfetch') }}',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        sub_code: sub_code,
                        fromdate: $(`#${fromdateId}`).val(),
                        todate: $(`#${todateId}`).val(),
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (!response.data || response.data.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let tr = '';
                        let totaldebit2 = 0;
                        let totalcredit2 = 0;
                        let openingbalance = parseFloat(response.openingbalance);

                        let amtdr = openingbalance >= 0 ? Math.abs(openingbalance) : 0.00;
                        let amtcr = openingbalance < 0 ? Math.abs(openingbalance) : 0.00;

                        if (amtdr || amtcr) {
                            let openingbal = amtdr ? `${amtdr.toFixed(2)} Dr` : `${amtcr.toFixed(2)} Cr`;
                            tr += `<tr>
                                <td>Opening Balance</td>
                                <td class="text-end debitcell">${amtdr.toFixed(2)}</td>
                                <td class="text-end creditcell">${amtcr.toFixed(2)}</td>
                                <td class="text-end">${openingbal}</td>
                            </tr>`;
                        }

                        let runningBalance = openingbalance;

                        response.data.forEach(row => {
                            let dr = parseFloat(row.totalamtdr) || 0.00;
                            let cr = parseFloat(row.totalamtcr) || 0.00;
                            runningBalance += dr - cr;

                            let balanceLabel = runningBalance > 0 ? `${Math.abs(runningBalance).toFixed(2)} Dr` :
                                runningBalance < 0 ? `${Math.abs(runningBalance).toFixed(2)} Cr` : '0.00';

                            tr += `<tr class="secondtr"
                                    data-month_number="${row.month_number}"
                                    data-sub_code="${row.subcode}"
                                    data-vprefix="${row.vprefix}"
                                    data-rowyear="${row.year}"
                                    >
                                    <td>${row.month_year}</td>
                                    <td class="text-end debitcell">${dr.toFixed(2)}</td>
                                    <td class="text-end creditcell">${cr.toFixed(2)}</td>
                                    <td class="text-end">${balanceLabel}</td>
                                </tr>`;

                            totaldebit2 += dr;
                            totalcredit2 += cr;
                        });

                        let finalBalance = totaldebit2 - totalcredit2;
                        let totalBalanceLabel = finalBalance > 0 ? `${Math.abs(finalBalance).toFixed(2)} Dr` :
                            finalBalance < 0 ? `${Math.abs(finalBalance).toFixed(2)} Cr` : '0.00';

                        $('#third-table tbody').html(tr);
                        $('#total-debit2').text(totaldebit2.toFixed(2));
                        $('#total-credit2').text(totalcredit2.toFixed(2));
                        $('#total-balance2').text(totalBalanceLabel);
                        $('#thirdtablediv').hide().removeClass('d-none').fadeIn(300);

                        $('#third-table').DataTable({
                            destroy: true,
                            dom: 'Bfrtip',
                            ordering: true,
                            order: [],
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: '(Month Wise)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: '(Month Wise)',
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);
                                    }
                                }
                            ]
                        });
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch data'
                        });
                    }
                });
            }

            // Fetch subgroup details (under-group = Y cases)
            function fetchsubdata2(fromdateId, todateId, acgroupcode) {
                const selectedRow = $('#second-table tbody .clickable-row.table-success');
                if (!selectedRow.length) return;

                const companyname = selectedRow.data('compname');
                $('#companyname').text(companyname);
                $('#third-table tbody').empty();
                $('#thirdtablediv').fadeOut(500);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                $('#fifth-table tbody').empty();
                $('#fifthtablediv').fadeIn(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('fetchsubgroupdetails2') }}",
                    cache: false,
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        acgroupcode: acgroupcode,
                        fromdate: $('#fromdate5').val(),
                        todate: $('#todate5').val(),
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (response.success === false || !response.subgroups || response.subgroups.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let totalDebit = 0;
                        let totalCredit = 0;
                        let rows = '';

                        response.subgroups.forEach(row => {
                            let debit = 0;
                            let credit = 0;
                            let bal = parseFloat(row.balance);
                            const hideClass = (!bal || Math.abs(bal) <= 0) ? 'd-none' : '';

                            if (bal < 0) {
                                credit = Math.abs(bal).toFixed(2);
                                totalCredit += Math.abs(bal);
                            } else {
                                debit = (bal || 0).toFixed(2);
                                totalDebit += (bal || 0);
                            }

                            rows += `<tr class="clickable-row ${hideClass}"
                                        data-groupfetch="0"
                                        data-acgroupcode="${row.acgroupcode || ''}"
                                        data-docid="${row.docid || ''}"
                                        data-vtype="${row.vtype || ''}"
                                        data-vdate="${row.vdate || ''}"
                                        data-sub_code="${row.subcode || ''}"
                                        data-compname="${row.name || ''}"
                                        data-rowyear="${row.year || ''}"
                                        >
                                        <td>${row.name || ''}</td>
                                        <td class="text-end debitcell">${debit}</td>
                                        <td class="text-end creditcell">${credit}</td>
                                    </tr>`;
                        });

                        if ($.fn.DataTable.isDataTable('#fifth-table')) {
                            $('#fifth-table').DataTable().clear().destroy();
                        }

                        $('#fifth-table tbody').html(rows);
                        $('#total-debit6').text(totalDebit.toFixed(2));
                        $('#total-credit6').text(totalCredit.toFixed(2));
                        $('#fifthtablediv').hide().removeClass('d-none').fadeIn(300);

                        $('#fifth-table').DataTable({
                            destroy: true,
                            dom: 'Bfrtip',
                            ordering: true,
                            order: [],
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: 'Trial Balance (Subgroups)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: 'Subgroup Details - ' + companyname,
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: 'Subgroup Details - ' + companyname,
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle]);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);
                                    }
                                }
                            ]
                        });

                        dataTableInitialized6 = true;
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch subgroup data'
                        });
                    }
                });
            }

            $(document).on('click', '#third-table tbody .secondtr', function() {
                $('#third-table tbody .secondtr').removeClass('table-success');
                $(this).addClass('table-success');
                fetchdocrodata('fromdatem', 'todatem', 0);
            });

            $('#fromdatemr, #todatemr').on('change', function() {
                fetchdocrodata('fromdatemr', 'todatemr', 1);
            });

            function fetchdocrodata(fromdateId, todateId, condition) {
                const selectedRow = $('#third-table tbody .secondtr.table-success');
                if (!selectedRow.length) return;

                let ncurdate = "{{ ncurdate() }}";

                const sub_code = selectedRow.data('sub_code');
                const vprefix = selectedRow.data('vprefix');
                const rowyear = selectedRow.data('rowyear');
                const month_number = selectedRow.data('month_number');

                let fromdate = $(`#${fromdateId}`).val();
                const todate = $(`#${todateId}`).val();
                if (condition != 1) {
                    let day = '01';
                    let month = String(month_number).padStart(2, '0');
                    let formattedDate = `${rowyear}-${month}-${day}`;
                    fromdate = formattedDate;
                    $('#fromdatemr').val(formattedDate);
                    let lastdaymonth = new Date(rowyear, parseInt(month), 0).getDate();
                    let enddateofmonth = `${rowyear}-${month}-${lastdaymonth}`;
                    if (enddateofmonth > ncurdate) {
                        enddateofmonth = ncurdate;
                    }
                    $('#todatemr').val(enddateofmonth);
                }

                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('monthrowfetch') }}",
                    cache: false,
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        sub_code: sub_code,
                        vprefix: vprefix,
                        fromdate: fromdate,
                        todate: todate,
                        month_number: month_number,
                        condition: condition,
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);
                        if ((!response.data || response.data.length < 1) && parseFloat(response.opening_balance || 0) === 0) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let rows = response.data || [];
                        let openingBalance = parseFloat(response.opening_balance || 0);
                        let totalDebit = 0;
                        let totalCredit = 0;
                        let runningBalance = openingBalance;
                        let tableRows = '';

                        if (openingBalance !== 0) {
                            tableRows += `
                                <tr class="table-warning">
                                    <td></td>
                                    <td></td>
                                    <td><strong>(Opening Balance)</strong></td>
                                    <td></td>
                                    <td></td>
                                    <td>${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}</td>
                                </tr>
                            `;
                        }

                        rows.forEach(row => {
                            let debit = parseFloat(row.amtdr || 0);
                            let credit = parseFloat(row.amtcr || 0);
                            runningBalance += debit - credit;
                            totalDebit += debit;
                            totalCredit += credit;

                            tableRows += `
                                <tr class="docrow" data-docid="${row.docid}" data-vtype="${row.vtype}">
                                    <td>${dmy(row.vdate)}</td>
                                    <td>${row.docid}</td>
                                    <td>${row.narration || ''}</td>
                                    <td class="debitcell text-end">${debit ? debit.toFixed(2) : ''}</td>
                                    <td class="creditcell text-end">${credit ? credit.toFixed(2) : ''}</td>
                                    <td class="text-end">${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}</td>
                                </tr>
                            `;
                        });

                        if ($.fn.DataTable.isDataTable('#fourth-table')) {
                            $('#fourth-table').DataTable().clear().destroy();
                            dataTableInitialized3 = false;
                        }

                        $('#fourth-table tbody').html(tableRows);
                        $('#fourthtablediv').fadeIn(500);

                        $('#total-debit3').text(totalDebit.toFixed(2));
                        $('#total-credit3').text(totalCredit.toFixed(2));
                        $('#total-balance3').text(`${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}`);

                        $('#fourth-table').DataTable({
                            dom: 'Bfrtip',
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: '(Ledger)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: '(Ledger)',
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);
                                    }
                                }
                            ]
                        });
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch data'
                        });
                    }
                });
            }

            // Helper functions for table selection
            function getSelectedMainGroupName() {
                const selected = $('.clickable-row-main.table-success');
                if (selected.length) {
                    return (selected.data('compname') || selected.find('td:first').text() || '').trim();
                }
                return '';
            }

            function getSelectedLedgerName() {
                const selected = $('#second-table tbody .clickable-row.table-success, #fifth-table tbody .clickable-row.table-success').first();
                if (selected.length) {
                    return (selected.data('compname') || selected.find('td:first').text() || '').trim();
                }
                return getSelectedMainGroupName();
            }

            function getSelectedMonthName() {
                const selected = $('#third-table tbody .secondtr.table-success');
                if (selected.length) {
                    return (selected.find('td:first').text() || '').trim();
                }
                return '';
            }

            function formatDateForExport(dateStr) {
                let date = new Date(dateStr);
                return date.toLocaleDateString('en-GB', {
                    day: '2-digit',
                    month: '2-digit',
                    year: 'numeric'
                });
            }

            function buildExportHeaderLines(extraLines = []) {
                const from = dmy($('#fromdate').val());
                const to = dmy($('#todate').val());
                const lines = [
                    '{{ companydata()->comp_name }}',
                    '{{ companydata()->address1 }} {{ companydata()->address2 }} - {{ companydata()->state }}-{{ companydata()->city }}-{{ companydata()->pin }}',
                    'Balance Sheet',
                    `From ${from} To ${to}`
                ];
                const extras = Array.isArray(extraLines) ? extraLines : [extraLines];
                return lines.concat(extras.filter(line => line && String(line).trim()));
            }

            function buildExportHeaderHtml(headerLines) {
                const extrasHtml = headerLines
                    .slice(4)
                    .map(line => `<div style="margin-top:6px;"><strong>${line}</strong></div>`)
                    .join('');
                return `
                    <div style="text-align:center; margin-bottom:20px;">
                        <h3>${headerLines[0] || ''}</h3>
                        <div>${headerLines[1] || ''}</div>
                        <div><strong>${headerLines[2] || ''}</strong></div>
                        <div><em>${headerLines[3] || ''}</em></div>
                        ${extrasHtml}
                    </div>
                `;
            }

            function escapeXml(value) {
                return String(value)
                    .replace(/&/g, '&amp;')
                    .replace(/</g, '&lt;')
                    .replace(/>/g, '&gt;')
                    .replace(/\"/g, '&quot;')
                    .replace(/'/g, '&apos;');
            }

            function addExcelHeaderRows(xlsx, headerLines) {
                if (!headerLines || !headerLines.length) return;

                const sheet = xlsx.xl.worksheets['sheet1.xml'];
                const sheetData = $('sheetData', sheet);
                const rows = $('row', sheetData);
                const headerCount = headerLines.length;

                rows.each(function() {
                    const $row = $(this);
                    const rowIndex = parseInt($row.attr('r'), 10);
                    $row.attr('r', rowIndex + headerCount);
                    $row.find('c').each(function() {
                        const $cell = $(this);
                        const ref = $cell.attr('r');
                        const col = ref.replace(/[0-9]/g, '');
                        const row = parseInt(ref.replace(/[A-Z]/g, ''), 10);
                        $cell.attr('r', col + (row + headerCount));
                    });
                });

                for (let i = headerLines.length - 1; i >= 0; i -= 1) {
                    const rowIndex = i + 1;
                    const text = escapeXml(headerLines[i]);
                    const rowXml = `<row r="${rowIndex}"><c r="A${rowIndex}" t="inlineStr"><is><t>${text}</t></is></c></row>`;
                    sheetData.prepend($.parseXML(rowXml).documentElement);
                }
            }

            $(document).on('click', '#exportbutton', function() {
                let fromDate = $('#fromdate').val();
                let toDate = $('#todate').val();

                if (!fromDate || !toDate) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Missing Dates',
                        text: 'Please select date range first'
                    });
                    return;
                }

                let isDetailed = $('.subrowsamt').is(':visible');

                let allData = [];

                allData.push(['BALANCE SHEET']);
                allData.push(['From: ' + formatDateForExport(fromDate) + ' To: ' + formatDateForExport(toDate)]);
                allData.push([]);

                if (isDetailed) {
                    allData.push(['Particulars (Liabilities & Capital)', 'Sub Amount', 'Total Amount', 'Particulars (Assets)', 'Sub Amount', 'Total Amount']);
                } else {
                    allData.push(['Particulars (Liabilities & Capital)', 'Amount', 'Particulars (Assets)', 'Amount']);
                }
                allData.push([]);

                let leftTableRows = [];
                $('#left-table tbody tr').each(function() {
                    let rowData = {
                        particulars: '',
                        subAmount: '',
                        mainAmount: '',
                        html: $(this)
                    };

                    let cells = $(this).find('td');
                    rowData.particulars = cells.eq(0).text().trim();

                    if (isDetailed) {
                        let subAmtText = cells.eq(1).text().trim();
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.subAmount = subAmtText ? parseFloat(subAmtText) : '';
                        rowData.mainAmount = mainAmtText ? parseFloat(mainAmtText) : '';
                    } else {
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.mainAmount = mainAmtText ? parseFloat(mainAmtText) : '';
                    }

                    leftTableRows.push(rowData);
                });

                let rightTableRows = [];
                $('#right-table tbody tr').each(function() {
                    let rowData = {
                        particulars: '',
                        subAmount: '',
                        mainAmount: '',
                        html: $(this)
                    };

                    let cells = $(this).find('td');
                    rowData.particulars = cells.eq(0).text().trim();

                    if (isDetailed) {
                        let subAmtText = cells.eq(1).text().trim();
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.subAmount = subAmtText ? parseFloat(subAmtText) : '';
                        rowData.mainAmount = mainAmtText ? parseFloat(mainAmtText) : '';
                    } else {
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.mainAmount = mainAmtText ? parseFloat(mainAmtText) : '';
                    }

                    rightTableRows.push(rowData);
                });

                let maxLength = Math.max(leftTableRows.length, rightTableRows.length);

                for (let i = 0; i < maxLength; i++) {
                    let row = [];

                    if (i < leftTableRows.length) {
                        let leftRow = leftTableRows[i];
                        row.push(leftRow.particulars);
                        if (isDetailed) {
                            row.push(leftRow.subAmount);
                        }
                        row.push(leftRow.mainAmount);
                    } else {
                        row.push('');
                        if (isDetailed) {
                            row.push('');
                        }
                        row.push('');
                    }

                    if (i < rightTableRows.length) {
                        let rightRow = rightTableRows[i];
                        row.push(rightRow.particulars);
                        if (isDetailed) {
                            row.push(rightRow.subAmount);
                        }
                        row.push(rightRow.mainAmount);
                    } else {
                        row.push('');
                        if (isDetailed) {
                            row.push('');
                        }
                        row.push('');
                    }

                    allData.push(row);
                }

                let ws = XLSX.utils.aoa_to_sheet(allData);

                if (isDetailed) {
                    ws['!cols'] = [{
                            wch: 28
                        }, // Column A - Particulars Debit
                        {
                            wch: 12
                        }, // Column B - Sub Amount Debit
                        {
                            wch: 12
                        }, // Column C - Total Amount Debit
                        {
                            wch: 28
                        }, // Column D - Particulars Credit
                        {
                            wch: 12
                        }, // Column E - Sub Amount Credit
                        {
                            wch: 12
                        } // Column F - Total Amount Credit
                    ];
                } else {
                    ws['!cols'] = [{
                            wch: 35
                        }, // Column A - Particulars Debit
                        {
                            wch: 15
                        }, // Column B - Amount Debit
                        {
                            wch: 35
                        }, // Column C - Particulars Credit
                        {
                            wch: 15
                        } // Column D - Amount Credit
                    ];
                }

                // Create workbook with styling
                let wb = XLSX.utils.book_new();
                XLSX.utils.book_append_sheet(wb, ws, "Balance Sheet");

                // Generate filename
                let filename = 'BalanceSheet_' + fromDate + '_to_' + toDate + '.xlsx';

                // Download
                XLSX.writeFile(wb, filename);

                Swal.fire({
                    icon: 'success',
                    title: 'Export Successful',
                    text: 'Report exported to Excel successfully'
                });
            });

            // Print functionality
            $(document).on('click', '#printbutton', function() {
                let fromDate = $('#fromdate').val();
                let toDate = $('#todate').val();

                if (!fromDate || !toDate) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Missing Dates',
                        text: 'Please select date range first'
                    });
                    return;
                }

                let isDetailed = $('.subrowsamt').is(':visible');
                let printWindow = window.open('', '', 'height=800,width=1200');

                let htmlContent = `
                    <!DOCTYPE html>
                    <html>
                    <head>
                        <title>Profit Loss Report</title>
                        <style>
                            * {
                                margin: 0;
                                padding: 0;
                                box-sizing: border-box;
                            }

                            body {
                                font-family: Arial, sans-serif;
                                font-size: 12px;
                                line-height: 1.4;
                            }

                            .print-header {
                                text-align: center;
                                margin-bottom: 20px;
                                border-bottom: 2px solid #000;
                                padding-bottom: 10px;
                            }

                            .print-header h2 {
                                margin: 5px 0;
                                font-size: 18px;
                                font-weight: bold;
                            }

                            .print-header p {
                                margin: 3px 0;
                                font-size: 12px;
                            }

                            .print-table {
                                width: 100%;
                                border-collapse: collapse;
                                margin-bottom: 15px;
                            }

                            .print-table thead {
                                background-color: #9999ff;
                                color: white;
                            }

                            .print-table th {
                                border: 1px solid #666;
                                padding: 10px;
                                text-align: left;
                                font-weight: bold;
                                font-size: 11px;
                            }

                            .print-table td {
                                border: 1px solid #ddd;
                                padding: 8px;
                                font-size: 11px;
                            }

                            .print-table tr {
                                page-break-inside: avoid;
                            }

                            .print-table tr.total-row {
                                background-color: #ffffcc;
                                font-weight: bold;
                            }

                            .print-table tr:nth-child(even) {
                                background-color: #ffffcc;
                            }

                            .print-table tr:nth-child(odd) {
                                background-color: white;
                            }

                            .amount-col-print {
                                text-align: right;
                                font-family: 'Courier New', monospace;
                            }

                            .print-footer {
                                text-align: center;
                                margin-top: 30px;
                                border-top: 2px solid #000;
                                padding-top: 10px;
                                font-size: 10px;
                            }

                            .print-footer p {
                                margin: 5px 0;
                            }

                            @media print {
                                body {
                                    margin: 0;
                                    padding: 10px;
                                }

                                .print-table tr {
                                    page-break-inside: avoid;
                                }

                                @page {
                                    size: A4;
                                    margin: 1cm;
                                    @bottom-center {
                                        content: "Page " counter(page) " of " counter(pages);
                                        font-size: 10px;
                                    }
                                }
                            }
                        </style>
                    </head>
                    <body>
                        <div class="print-header">
                            <h2>BALANCE SHEET</h2>
                            <p><strong>Period: ${formatDateForExport(fromDate)} to ${formatDateForExport(toDate)}</strong></p>
                            <p>Generated on: ${new Date().toLocaleDateString('en-GB', { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' })}</p>
                        </div>

                        <table class="print-table">
                            <thead>
                                <tr>
                                    ${isDetailed ? 
                                        '<th style="width: 25%;">Particulars (Debit/Expenses)</th><th style="width: 12%;">Sub Amount</th><th style="width: 12%;">Total Amount</th><th style="width: 25%;">Particulars (Credit/Income)</th><th style="width: 12%;">Sub Amount</th><th style="width: 14%;">Total Amount</th>' 
                                        : '<th style="width: 35%;">Particulars (Debit/Expenses)</th><th style="width: 15%;">Amount</th><th style="width: 35%;">Particulars (Credit/Income)</th><th style="width: 15%;">Amount</th>'
                                    }
                                </tr>
                            </thead>
                            <tbody>
                                ${getTableRowsForPrint(isDetailed)}
                            </tbody>
                        </table>

                        <div class="print-footer">
                            <p>Generated by Analysis HMS - Property Management System</p>
                        </div>
                    </body>
                    </html>
                `;

                printWindow.document.write(htmlContent);
                printWindow.document.close();

                setTimeout(function() {
                    printWindow.print();
                }, 500);
            });

            function getTableRowsForPrint(isDetailed) {
                let leftTableRows = [];
                let rightTableRows = [];

                $('#left-table tbody tr').each(function() {
                    let rowData = {
                        particulars: '',
                        subAmount: '',
                        mainAmount: '',
                        isTotal: $(this).hasClass('total-row')
                    };

                    let cells = $(this).find('td');
                    rowData.particulars = cells.eq(0).text().trim();

                    if (isDetailed) {
                        let subAmtText = cells.eq(1).text().trim();
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.subAmount = subAmtText || '';
                        rowData.mainAmount = mainAmtText || '';
                    } else {
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.mainAmount = mainAmtText || '';
                    }

                    leftTableRows.push(rowData);
                });

                $('#right-table tbody tr').each(function() {
                    let rowData = {
                        particulars: '',
                        subAmount: '',
                        mainAmount: '',
                        isTotal: $(this).hasClass('total-row')
                    };

                    let cells = $(this).find('td');
                    rowData.particulars = cells.eq(0).text().trim();

                    if (isDetailed) {
                        let subAmtText = cells.eq(1).text().trim();
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.subAmount = subAmtText || '';
                        rowData.mainAmount = mainAmtText || '';
                    } else {
                        let mainAmtText = cells.eq(2).text().trim();
                        rowData.mainAmount = mainAmtText || '';
                    }

                    rightTableRows.push(rowData);
                });

                let maxLength = Math.max(leftTableRows.length, rightTableRows.length);
                let htmlRows = '';

                for (let i = 0; i < maxLength; i++) {
                    let leftRow = leftTableRows[i];
                    let rightRow = rightTableRows[i];

                    let rowClass = (leftRow && leftRow.isTotal) || (rightRow && rightRow.isTotal) ? 'total-row' : '';
                    let isBold = rowClass === 'total-row' ? 'font-weight: bold;' : '';

                    htmlRows += `<tr class="${rowClass}">`;

                    if (leftRow) {
                        htmlRows += `<td style="${isBold}">${leftRow.particulars}</td>`;
                        if (isDetailed) {
                            htmlRows += `<td class="amount-col-print" style="${isBold}">${leftRow.subAmount}</td>`;
                        }
                        htmlRows += `<td class="amount-col-print" style="${isBold}">${leftRow.mainAmount}</td>`;
                    } else {
                        htmlRows += `<td></td>`;
                        if (isDetailed) {
                            htmlRows += `<td></td>`;
                        }
                        htmlRows += `<td></td>`;
                    }

                    if (rightRow) {
                        htmlRows += `<td style="${isBold}">${rightRow.particulars}</td>`;
                        if (isDetailed) {
                            htmlRows += `<td class="amount-col-print" style="${isBold}">${rightRow.subAmount}</td>`;
                        }
                        htmlRows += `<td class="amount-col-print" style="${isBold}">${rightRow.mainAmount}</td>`;
                    } else {
                        htmlRows += `<td></td>`;
                        if (isDetailed) {
                            htmlRows += `<td></td>`;
                        }
                        htmlRows += `<td></td>`;
                    }

                    htmlRows += `</tr>`;
                }

                return htmlRows;
            }

            $(document).on('click', '.docrow', function() {
                const docd = $(this).data('docid');
                const vtype = $(this).data('vtype');

                if (!docd || !vtype) return;

                let url = '';

                if (['PMT', 'CPV', 'CRV', 'RCT', 'CNT', 'JV'].some(t => vtype.includes(t))) {
                    url = `editvoucherentry/${docd}`;
                } else if (vtype === 'IDC') {
                    url = `banquetbilling?docid=${docd}`;
                } else if (vtype !== 'HPOST') {
                    url = `updatepurchasebill?docid=${docd}`;
                }

                if (url) {
                    window.open(url, '_blank', 'noopener,noreferrer');
                } else {
                    pushNotify('error', 'Not Allowed');
                }
            });

        });
    </script>
@endsection
