@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body checkoutreport">
                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ companydata()->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ companydata()->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ companydata()->propertyid }}" id="propertyid" name="propertyid">
                                    <input type="hidden" value="{{ companydata()->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ companydata()->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ companydata()->city }}" id="city" name="city">
                                    <input type="hidden" value="{{ companydata()->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ companydata()->state }}" id="statename" name="statename">
                                    <input type="hidden" value="{{ companydata()->pin }}" id="pin" name="pin">
                                    <input type="hidden" value="{{ companydata()->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ companydata()->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ companydata()->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="{{ companydata()->gstin }}" id="gstin" name="gstin">
                                    <div class="text-center titlep">
                                        <h3>{{ companydata()->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ companydata()->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">{{ companydata()->state . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">Guest Trail</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">For Date: <span id="fromdatep"></span></p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">For Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ ncurdate() }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i
                                                class="fa-solid fa-arrows-rotate"></i></button>
                                    </div>
                                </div>
                            </form>

                            {{-- Action Buttons --}}
                            <div class="mt-3">
                                <button id="printBtn" class="btn btn-primary mb-3">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success mb-3 ms-2">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                                <span id="printUrl" style="display:none;">{{ route('printguesttrail') }}</span>
                                <span id="exportUrl" style="display:none;">{{ route('exportguesttrail') }}</span>
                            </div>

                            <div class="table-responsive">
                                <table id="bulkpaycharge"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <th>Folio No.</th>
                                        <th>Guest Name</th>
                                        <th>Room No.</th>
                                        <th>In Date</th>
                                        <th>Out Date</th>
                                        <th>Occ</th>
                                        <th>Nights</th>
                                        <th>Tariff</th>
                                        <th>Room Rent</th>
                                        <th>Room Disc</th>
                                        <th>Extra Charge</th>
                                        <th>Tax</th>
                                        <th>Outlet</th>
                                        <th>Credit Amt</th>
                                        <th>Backfor</th>
                                        <th>Total Today</th>
                                        <th>Total Upto Date</th>
                                        <th>Carryfor</th>
                                        <th>Bill No.</th>
                                        <th>Payment Detail</th>
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

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const from = document.getElementById("fromdate");
            [from].forEach(el => {
                if (!el) return;
                el.removeAttribute("readonly");
                el.removeAttribute("disabled");
                el.style.pointerEvents = "auto";
                el.style.backgroundColor = "#fff";
            });
        });

        function formatDateTime(dateStr) {
            if (!dateStr) return '';
            var parts = dateStr.split('-');
            if (parts.length !== 3) return dateStr;
            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            return parts[2] + '-' + months[parseInt(parts[1], 10) - 1] + '-' + parts[0];
        }

        function calculateNights(checkinDate, checkoutDate) {
            if (!checkinDate || !checkoutDate) return '';
            const checkIn = new Date(checkinDate);
            const checkOut = new Date(checkoutDate);
            const nights = Math.ceil((checkOut - checkIn) / (1000 * 60 * 60 * 24));
            return nights > 0 ? nights : '1';
        }

        document.getElementById('printBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            if (!fromdate) {
                pushNotify('error', 'Print Failed', 'Please select a date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }
            let url = document.getElementById('printUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate);
            window.open(url, '_blank');
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            let fromdate = document.getElementById('fromdate').value;
            if (!fromdate) {
                pushNotify('error', 'Export Failed', 'Please select a date.',
                    'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }
            let url = document.getElementById('exportUrl').textContent.trim()
                    + '?fromdate=' + encodeURIComponent(fromdate);
            window.location.href = url;
        });

        $(document).ready(function() {
            let table;

            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
            });

            $(document).on('click', '#fetchbutton', function() {
                showLoader();
                pushNotify('info', 'Guest Trail', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');

                let fromdate = $('#fromdate').val();
                $('#fromdatep').text(formatDateTime(fromdate));

                let tbody = $('#bulkpaycharge tbody');
                let tfoot = $('#bulkpaycharge tfoot');
                tbody.empty();
                tfoot.empty();

                let chargexhr = new XMLHttpRequest();
                chargexhr.open('POST', '/fetchguesttraildata', true);
                chargexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                chargexhr.onreadystatechange = function() {
                    if (chargexhr.readyState === 4 && chargexhr.status === 200) {
                        hideLoader();
                        let resulttmp = JSON.parse(chargexhr.responseText);
                        if (resulttmp.error) {
                            pushNotify('error', 'Query Error', resulttmp.error);
                            console.error('Query Error:', resulttmp.error);
                            return;
                        }
                        let result = resulttmp.report;
                        if (result.length == 0) {
                            pushNotify('info', 'No Data Found', 'No Data Found for the Selected Date');
                        }

                        let totalroomrent = 0, totalroomdisc = 0, totalextracharge = 0,
                            totaltax = 0, totaloutlet = 0, totalcreditamt = 0, totalbackfor = 0,
                            totaltoday = 0, totaluptodate = 0, totalcarryfor = 0,
                            totalguests = 0, totalnight = 0, totalroomcount = 0;

                        let rows = '';
                        result.forEach((item) => {
                            totalroomcount++;
                            let nights = calculateNights(item.checkindate, item.chkoutdate);

                            rows += `<tr>
                                <td>${item.foliono == null ? '' : item.foliono}</td>
                                <td>${item.guestname == null ? '' : item.guestname}</td>
                                <td>${item.roomno == null ? '' : item.roomno}</td>
                                <td class="nowrap">${item.checkindate == null ? '' : formatDateTime(item.checkindate)} ${item.checkintime == null ? '' : item.checkintime.substr(0, 5)}</td>
                                <td>${item.chkoutdate == '' || item.chkoutdate == null ? '' : formatDateTime(item.chkoutdate)} ${item.chkouttime == null ? '' : item.chkouttime.substr(0, 5)}</td>
                                <td>${item.occ == null ? '' : item.occ}</td>
                                <td>${nights}</td>
                                <td>${item.tarrif == null ? '0.00' : item.tarrif}</td>
                                <td>${parseFloat(item.RoomRent ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.RoomDisc ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.ExtraCharge ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.Tax ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.Outlet ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.CreditAmt ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.Backfor ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.TotalToday ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.TotaluptoDate ?? 0).toFixed(2)}</td>
                                <td>${parseFloat(item.Carryfor ?? 0).toFixed(2)}</td>
                                <td class="bg-warning-rgba1 font-tiny">${(() => {
                                    if (item.billno == null || item.billno == '') return '';
                                    let bills = item.billno.split(', ').map(b => b.trim()).filter(b => b && b !== '0');
                                    let prefixes = item.vprefix ? item.vprefix.split(', ').map(p => p.trim()) : [];
                                    if (bills.length === 1) {
                                        return `<a href="billreprint?billno=${bills[0]}&year=${prefixes[0] || ''}">${bills[0]}</a>`;
                                    }
                                    return bills.map((b, i) => `<a href="billreprint?billno=${b}&year=${prefixes[i] || ''}">${b}</a>`).join(', ');
                                })()}</td>
                                <td>${item.PaymentDetail == null ? '' : item.PaymentDetail}</td>
                            </tr>`;

                            totalguests += parseInt(item.occ ?? 0);
                            totalnight += parseInt(nights ?? 0);
                            totalroomrent += parseFloat(item.RoomRent ?? 0);
                            totalroomdisc += parseFloat(item.RoomDisc ?? 0);
                            totalextracharge += parseFloat(item.ExtraCharge ?? 0);
                            totaltax += parseFloat(item.Tax ?? 0);
                            totaloutlet += parseFloat(item.Outlet ?? 0);
                            totalcreditamt += parseFloat(item.CreditAmt ?? 0);
                            totalbackfor += parseFloat(item.Backfor ?? 0);
                            totaltoday += parseFloat(item.TotalToday ?? 0);
                            totaluptodate += parseFloat(item.TotaluptoDate ?? 0);
                            totalcarryfor += parseFloat(item.Carryfor ?? 0);
                        });

                        tbody.html(rows);

                        let footdata = `<tr class="font-weight-bold">
                            <td><b>Total:</b></td><td></td><td></td><td></td><td></td>
                            <td>${totalguests}</td><td>${totalnight}</td><td></td>
                            <td>${totalroomrent.toFixed(2)}</td><td>${totalroomdisc.toFixed(2)}</td>
                            <td>${totalextracharge.toFixed(2)}</td><td>${totaltax.toFixed(2)}</td>
                            <td>${totaloutlet.toFixed(2)}</td><td>${totalcreditamt.toFixed(2)}</td>
                            <td>${totalbackfor.toFixed(2)}</td><td>${totaltoday.toFixed(2)}</td>
                            <td>${totaluptodate.toFixed(2)}</td><td>${totalcarryfor.toFixed(2)}</td>
                            <td></td><td></td>
                        </tr>`;
                        tfoot.html(footdata);

                        if (table) {
                            table.destroy();
                        }
                        table = $('#bulkpaycharge').DataTable({
                            pageLength: 15,
                            order: [],
                        });

                    } else if (chargexhr.readyState === 4 && chargexhr.status === 500) {
                        pushNotify('error', 'Error Fetching Data', 'Error Fetching Data, Please Try Again Later');
                        console.error(chargexhr.responseText);
                        hideLoader();
                    }
                };
                chargexhr.send(`fromdate=${fromdate}&_token={{ csrf_token() }}`);
            });
        });
    </script>
@endsection
