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

            #occupancytable {
                margin-top: 250px;
            }
        }

        .details {
            font-weight: 800;
            color: black;
        }

        .print-summary {
            page-break-inside: avoid;
            break-inside: avoid;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $comp->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $comp->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $comp->propertyid }}" id="propertyid" name="propertyid">
                                    <input type="hidden" value="{{ $comp->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ $comp->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ $comp->city }}" id="city" name="city">
                                    <input type="hidden" value="{{ $comp->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                    <input type="hidden" value="{{ $comp->pin }}" id="pin" name="pin">
                                    <input type="hidden" value="{{ $comp->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ $comp->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ $comp->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="{{ $comp->gstin }}" id="gstin" name="gstin">
                                    <input class="none" type="date" value="{{ $ncurdate }}" name="ncurdatef" id="ncurdatef">
                                    <div class="text-center titlep">
                                        <h3>{{ $comp->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">Occupancy Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fordate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" name="fordate"
                                                id="fordate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function() {
                                            const from = document.getElementById("fordate");
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
                                    <div class="">
                                        <label for="printcondition" class="col-form-label">Print Condition</label>
                                        <select class="form-control" name="printcondition" id="printcondition">
                                            <option value="1">Room Rate With Discount</option>
                                            <option value="2">With Room Rate</option>
                                            <option value="3" selected>Without Room Rate</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="plainbifurcation" class="col-form-label">Plain Bifurcation</label>
                                        <select class="form-control" name="plainbifurcation" id="plainbifurcation">
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="none">
                                        <label for="sortedby" class="col-form-label">Sorted By</label>
                                        <select class="form-control" name="sortedby" id="sortedby">
                                            <option value="room_mast.rcode" selected>Room Number</option>
                                            <option value="roomocc.name">Guest Name</option>
                                            <option value="companyname">Company Name</option>
                                        </select>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>

                                </div>
                            </form>

                            <button id="printBtn" class="btn btn-primary mb-3">
                                <i class="fas fa-print"></i> Print Report
                            </button>
                            <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                <i class="fas fa-file-excel"></i> Export to Excel
                            </button>

                            <div id="table-container">
                                <table id="occupancytable" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>GRC No.</th>
                                            <th>Room No.</th>
                                            <th>Name</th>
                                            <th>Pax</th>
                                            <th>Nationality</th>
                                            <th>Comp/T.A.</th>
                                            <th>Plan</th>
                                            <th>In Dt <i class="fa-regular fa-calendar mb-1"></i></th>
                                            <th>Exp. Dep Dt <i class="fa-regular fa-calendar mb-1"></i></th>
                                            <th>Dep Dt <i class="fa-regular fa-calendar mb-1"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                    <tfoot style="font-size: larger;">

                                    </tfoot>
                                </table>
                            </div>
                            <div id="details" class="details">

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
            let fordate = document.getElementById('fordate').value;
            let todate  = document.getElementById('todate').value;

            if (!fordate || !todate) {
                pushNotify('error', 'Print Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = '{{ route('printoccupancyreport') }}'
                    + '?fordate=' + encodeURIComponent(fordate)
                    + '&todate='  + encodeURIComponent(todate)
                    + '&printcondition=' + encodeURIComponent(document.getElementById('printcondition').value)
                    + '&plainbifurcation=' + encodeURIComponent(document.getElementById('plainbifurcation').value)
                    + '&sortedby=' + encodeURIComponent(document.getElementById('sortedby').value);

            window.open(url, '_blank');
        });

        // Excel Export (server-side PhpSpreadsheet, contributionreport format)
        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            let fordate = document.getElementById('fordate').value;
            let todate  = document.getElementById('todate').value;

            if (!fordate || !todate) {
                pushNotify('error', 'Export Failed', 'Please select From Date and To Date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            let url = '{{ route('exportoccupancyreport') }}'
                    + '?fordate=' + encodeURIComponent(fordate)
                    + '&todate='  + encodeURIComponent(todate)
                    + '&printcondition=' + encodeURIComponent(document.getElementById('printcondition').value)
                    + '&plainbifurcation=' + encodeURIComponent(document.getElementById('plainbifurcation').value)
                    + '&sortedby=' + encodeURIComponent(document.getElementById('sortedby').value);

            window.location.href = url;
        });
    </script>
    <script>
        $(document).ready(function() {
            const baseHeaders = [
                'GRC No.',
                'Room No.',
                'Name',
                'Pax',
                'Nationality',
                'Comp/T.A.',
                'Plan',
                'In Dt <i class="fa-regular fa-calendar mb-1"></i>',
                'Exp. Dep Dt <i class="fa-regular fa-calendar mb-1"></i>',
                'Dep Dt <i class="fa-regular fa-calendar mb-1"></i>'
            ];

            function buildTableHeader(printcondition) {
                let headerRow = `
        <th>GRC No.</th>
        <th>Room No.</th>`;

                if (printcondition == 1) {
                    headerRow += `
        <th>Room Rate</th>
        <th>Room Disc</th>
        <th>Room Tax</th>`;
                } else if (printcondition == 2) {
                    headerRow += `
        <th>Room Rate</th>
        <th>Room Tax</th>`;
                }

                headerRow += `
        <th>Name</th>
        <th>Pax</th>
        <th>Nationality</th>
        <th>Comp/T.A.</th>
        <th>Plan</th>
        <th>In Dt</th>
        <th>Exp. Dep Dt</th>
        <th>Dep Dt</th>`;

                if (printcondition != 3) {
                    headerRow += `<th>Mobile</th>`;
                }

                $('#occupancytable thead').html(`<tr>${headerRow}</tr>`);
            }

            $(document).on('change', '#fordate', function() {
                validateFinancialYear('#fordate');
            });

            $(document).on('click', '#fetchbutton', function() {
                if ($.fn.DataTable.isDataTable('#occupancytable')) {
                    $('#occupancytable').DataTable().destroy();
                }

                $('#occupancytable thead').empty();
                $('#occupancytable tbody').empty();
                $('#occupancytable tfoot').empty();

                let fordate = $('#fordate').val();
                let todate = $('#todate').val();
                $('#fromdatep').text(dmy(fordate));
                $('#todatep').text(dmy(todate));
                if (fordate == '' || fordate == null) {
                    pushNotify('error', 'Occupancy Report', 'Please Select For Date', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                    return;
                }
                let sortedby = $('#sortedby').val();
                let printcondition = $('#printcondition').val();

                buildTableHeader(printcondition);
                $('#occupancytable tbody').empty();
                $('#occupancytable tfoot').empty();

                let fetchoocxhr = new XMLHttpRequest();
                fetchoocxhr.open('POST', '/fetchoocxhr', true);
                fetchoocxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fetchoocxhr.onreadystatechange = function() {
                    if (fetchoocxhr.readyState === 4 && fetchoocxhr.status === 200) {
                        let result = JSON.parse(fetchoocxhr.responseText);
                        let occdata = result.occdata;
                        if (occdata.length == 0) {
                            pushNotify('info', 'Occupancy Report', `${occdata.length} rows found`, 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            $('#occupancytable tbody').empty();
                            $('#occupancytable tfoot').empty();
                            $('#details').html('');
                            return;
                        }
                        pushNotify('success', 'Occupancy Report', `${occdata.length} rows found`, 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        $('#occupancytable tbody').empty();
                        $('#occupancytable tfoot').empty();
                        $('#details').html('');
                        let row = '';
                        let totaladult = 0;
                        let totalchild = 0;
                        let totalplan = [];
                        let planspax = {}; // plan → total pax for that plan only
                        occdata.forEach((data, index) => {
                            totaladult += parseInt(data.adult);
                            totalchild += parseInt(data.children);
                            row += `<tr>
                                <td>${data.foliono}</td>
                                <td>${data.roomno}</td>`;

                            if (printcondition == 1) {
                                // Room Rate With Discount
                                row += `<td>${data.roomrate ?? 0.00}</td>`;
                                row += `<td>${data.roomdisc ?? 0.00}</td>`;
                                row += `<td>${data.RRTaxInc == 'N' ? 'No' : 'Yes'}</td>`;
                            } else if (printcondition == 2) {
                                // With Room Rate
                                row += `<td>${data.roomrate ?? 0.00}</td>`;
                                row += `<td>${data.RRTaxInc == 'N' ? 'No' : 'Yes'}</td>`;
                            }

                            row += `<td>${data.guestname}</td>
                                <td>${data.adult} / ${data.children}</td>
                                <td>${data.nationality}</td>
                               <td>${data.companyname || data.travelname ? `${data.companyname || ''}${data.companyname && data.travelname ? ' / ' : ''}${data.travelname || ''}` : ''}</td>
                                <td>${data.tarrif ?? ''}</td>
                                <td>${data.chkindate}</td>
                                <td>${data.depdate}</td>
                                <td>${data.depdate}</td>`;

                            if (printcondition != 3) {
                                row += `<td>${data.mobileno ?? ''}</td>`;
                            }

                            row += `</tr>`;

                            if (data.tarrif !== null) {
                                const planKey = (data.tarrif || '').toString().trim();
                                if (planKey !== '') {
                                    totalplan.push(planKey);
                                    planspax[planKey] = (planspax[planKey] || 0) + parseInt(data.adult) + parseInt(data.children);
                                }
                            }
                        });

                        let planscount = {};
                        totalplan.forEach((plan) => {
                            const planName = (plan || '').toString().trim();
                            if (planName !== '') {
                                planscount[planName] = (planscount[planName] || 0) + 1;
                            }
                        });

                        let countplans = Object.entries(planscount)
                            .map(([plan, count]) => `${plan} : ${count}/${planspax[plan] || 0}`)
                            .join(', ');
                        $('#occupancytable tbody').append(row);
                        let summaryHtml = `
                        <p><strong>From Date:</strong> ${$('#fordate').val() || ''}</p>
                        <p><strong>To Date:</strong> ${$('#todate').val() || ''}</p>
                        <p><strong>Print Condition:</strong> ${$('#printcondition option:selected').text() || ''}</p>
                        <p><strong>Plain Bifurcation:</strong> ${$('#plainbifurcation option:selected').text() || ''}</p>
                        <p><strong>Sorted By:</strong> ${$('#sortedby option:selected').text() || ''}</p>
                        <p>No. Of Rooms: ${occdata.length}</p>
                        <p>Dayuse: ${result.dayuse}</p>
                        <p>Total Person: ${totaladult} / ${totalchild}</p>
                        <p>Plan Summary: ${countplans || 'N/A'}</p>`;
                        $('#details').html(summaryHtml);
                        var tabledt = $('#occupancytable').DataTable({
                            dom: 'frtip',
                            pageLength: 15,
                            ordering: true,
                            order: []
                        });
                        tabledt.columns.adjust().draw();
                    }
                };
                fetchoocxhr.send(`fordate=${fordate}&todate=${todate}&sortedby=${sortedby}&printcondition=${printcondition}&_token={{ csrf_token() }}`);
            });
        });
    </script>
@endsection
