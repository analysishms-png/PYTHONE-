@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <style>
        @media print {
            div.titlep {
                display: block;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                background-color: white;
                text-align: center;
            }

            #fomsalesummary {
                margin-top: 250px;
            }

            table#fomsalesummary tbody td.name,
            table#fomsalesummary tbody td.billdate {
                white-space: nowrap;
            }
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body checkoutreport">
                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"
                                        name="propertyid">
                                    <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                    <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                    <input type="hidden" value="{{ $company->pin }}" id="pin" name="pin">
                                    <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
                                    <div class="text-center titlep">
                                        <h3>{{ $company->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">FOM Sale Summary</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                                id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function() {
                                            const from = document.getElementById("fromdate");
                                            const to = document.getElementById("todate");

                                            [from, to].forEach(el => {
                                                if (!el) return;
                                                el.removeAttribute("readonly");
                                                el.removeAttribute("disabled");
                                                el.style.pointerEvents = "auto";
                                                el.style.backgroundColor = "#fff";
                                            });
                                        });
                                    </script>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i
                                                class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>

                                </div>

                            </form>
                            <button id="printBtn" class="btn btn-primary mb-3">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                <i class="fas fa-file-excel"></i> Export to Excel
                            </button>
                            <div class="table-responsive">
                                <table id="fomsalesummary"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <th>Date</th>
                                        <th>No Of Rooms</th>
                                        <th>Chargeable Rooms</th>
                                        <th>Occupancy %</th>
                                        <th>ARR</th>
                                        <th>Balance Room</th>
                                        <th>Adult</th>
                                        <th>Child</th>
                                        @foreach ($revmast as $item)
                                            <th>{{ $item->name }}</th>
                                        @endforeach
                                        @foreach ($outlets as $item)
                                            <th>{{ $item->name }}</th>
                                        @endforeach
                                        <th>TOTAL</th>
                                        <th>CGST</th>
                                        <th>SGST</th>
                                        <th>Grand Total</th>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
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
    <script>
        // Print (server-side DomPDF, contributionreport format)
        document.getElementById('printBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate   = document.getElementById('todate').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Print Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = '{{ route('printfomsalesummary') }}'
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate);

            window.open(url, '_blank');
        });

        // Excel Export (server-side PhpSpreadsheet, contributionreport format)
        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            let todate   = document.getElementById('todate').value;

            if (!fromdate || !todate) {
                pushNotify('error', 'Export Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = '{{ route('exportfomsalesummary') }}'
                    + '?fromdate=' + encodeURIComponent(fromdate)
                    + '&todate='   + encodeURIComponent(todate);

            window.location.href = url;
        });
    </script>
    <script>
        $(document).ready(function() {

            let dataTableInitialized = false;
            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
            });
            $(document).on('change', '#todate', function() {
                validateFinancialYear('#todate');
            });

            $(document).on('click', '#fetchbutton', function() {
                showLoader();
                pushNotify('info', 'FOM Sale Summary', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                if ($.fn.dataTable.isDataTable('#fomsalesummary')) {
                    $('#fomsalesummary').DataTable().destroy();
                }
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));
                if (fromdate > todate) {
                    pushNotify('error', 'From Date should not be greater than To Date');
                    $('#fromdate').val(todate);
                    return;
                }

                let compname = $('#compname').val();
                let tbody = $('#fomsalesummary tbody');
                let tfoot = $('#fomsalesummary tfoot');
                tbody.empty();
                tfoot.empty();
                let chargexhr = new XMLHttpRequest();
                chargexhr.open('POST', '/fetchfomsalesummary', true);
                chargexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                chargexhr.onreadystatechange = function() {
                    if (chargexhr.readyState === 4 && chargexhr.status === 200) {
                        let resulttmp = JSON.parse(chargexhr.responseText);
                        let result = resulttmp.report ?? [];
                        let revmast = resulttmp.revmast ?? [];
                        if (result.length == 0) {
                            pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
                        } else {
                            let tdata = '';
                            let avgrrate = 0.00;
                            result.forEach((row, index) => {

                                let revTotal = 0.00;
                                let hasAmount = false;

                                revmast.forEach((rdata) => {
                                    let key = 'sum_' + String(rdata.rev_code ?? '').toLowerCase();
                                    let value = parseFloat(row[key] ?? 0);
                                    value = isNaN(value) ? 0.00 : value;

                                    revTotal += value;

                                    if (value > 0) {
                                        hasAmount = true;
                                    }
                                });

                                @foreach ($outlets as $item)
                                    let outletValue_{{ strtolower($item->short_name) }} = parseFloat(row["{{ strtolower($item->short_name) }}"] ?? 0);

                                    if (outletValue_{{ strtolower($item->short_name) }} > 0) {
                                        hasAmount = true;
                                    }
                                @endforeach

                                if (!hasAmount) {
                                    return;
                                }

                                let rmchLower = '{{ strtolower('RMCH' . $company->propertyid) }}';
                                let rmchKey = 'sum_' + rmchLower;
                                let roomCharge = parseFloat(row[rmchKey] ?? 0);

                                let avgrrate = roomCharge / row.chargableroom;
                                avgrrate = isNaN(avgrrate) ? 0.00 : Number(avgrrate);

                                let tr = '<tr>';

                                tr += `<td>${dmy(row.vdate)}</td>`;
                                tr += `<td>${row.totalrooms}</td>`;
                                tr += `<td>${row.chargableroom}</td>`;
                                tr += `<td>${row.roomoccupancy}</td>`;
                                tr += `<td>${avgrrate.toFixed(2)}</td>`;
                                tr += `<td>${row.balance_room}</td>`;
                                tr += `<td>${row.adult}</td>`;
                                tr += `<td>${row.children}</td>`;

                                revmast.forEach((rdata) => {
                                    let key = 'sum_' + String(rdata.rev_code ?? '').toLowerCase();
                                    let value = parseFloat(row[key] ?? 0);
                                    value = isNaN(value) ? 0.00 : value;

                                    tr += `<td>${value.toFixed(2)}</td>`;
                                });

                                @foreach ($outlets as $item)
                                    tr += `<td>${parseFloat(row["{{ strtolower($item->short_name) }}"] ?? 0).toFixed(2)}</td>`;
                                @endforeach

                                let total =
                                    parseFloat(revTotal)
                                @foreach ($outlets as $item)
                                    +parseFloat(row["{{ strtolower($item->short_name) }}"] ?? 0)
                                @endforeach ;

                                tr += `<td>${total.toFixed(2)}</td>`;
                                tr += `<td>${row.cgst}</td>`;
                                tr += `<td>${row.sgst}</td>`;
                                tr += `<td>${(total + parseFloat(row.cgst) + parseFloat(row.sgst)).toFixed(2)}</td>`;

                                tr += '</tr>';

                                tbody.append(tr);
                            });

                            let footHtml = '<tr>';
                            footHtml += '<th>Total</th>';

                            let baseCols = 8; // Date + 7 fixed numeric columns (rooms..children)
                            let totalCols = baseCols + revmast.length + {{ count($outlets) }} + 4; // TOTAL, CGST, SGST, Grand Total
                            for (let i = 1; i < totalCols; i++) {
                                footHtml += `<th class="sumcol-${i}">0.00</th>`;
                            }
                            footHtml += '</tr>';
                            tfoot.append(footHtml);

                            $('#fomsalesummary tbody tr').each(function() {
                                $(this).find('td').each(function(index) {
                                    let val = parseFloat($(this).text().replace(/,/g, '')) || 0;
                                    let current = parseFloat($(`.sumcol-${index}`).text()) || 0;
                                    $(`.sumcol-${index}`).text((current + val).toFixed(2));
                                });
                            });

                            let totalRooms = parseFloat($('.sumcol-1').text()) || 0;
                            let chargableRooms = parseFloat($('.sumcol-2').text()) || 0;

                            let occupancyPercent = 0;
                            if (totalRooms > 0) {
                                occupancyPercent = (chargableRooms / totalRooms) * 100;
                            }
                            $('.sumcol-3').text(occupancyPercent.toFixed(2));

                            let rmchLower = '{{ strtolower('RMCH' . $company->propertyid) }}';
                            let rmchIndex = revmast.findIndex(r => String(r.rev_code ?? '').toLowerCase() === rmchLower);
                            let rmchColIndex = (rmchIndex >= 0) ? (baseCols + rmchIndex) : -1;
                            let totalRoomCharge = (rmchColIndex >= 0) ? (parseFloat($(`.sumcol-${rmchColIndex}`).text()) || 0) : 0;
                            let totalChargableRooms = parseFloat($('.sumcol-2').text()) || 0;
                            let avgRoomRate = 0;
                            if (totalChargableRooms > 0) {
                                avgRoomRate = totalRoomCharge / totalChargableRooms;
                            }
                            $('.sumcol-4').text(avgRoomRate.toFixed(2));

                            setTimeout(hideLoader, 1000);
                            $('#fomsalesummary').DataTable({
                                destroy: true,
                                dom: 'frtip',
                                ordering: true,
                                order: [],
                                pageLength: 15
                            });
                        }
                    }
                }
                chargexhr.send(`fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`);
            });
            $('#todate').trigger('change');

        });
    </script>
@endsection
