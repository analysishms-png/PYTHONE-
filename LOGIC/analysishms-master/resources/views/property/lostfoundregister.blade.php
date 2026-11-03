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
            #lostfoundtable {
                margin-top: 250px;
            }
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ companydata()->propertyid }}" id="propertyid" name="propertyid">
                                    <input type="hidden" value="{{ companydata()->comp_name }}" id="compname" name="compname">
                                    <div class="text-center titlep">
                                        <h3>{{ companydata()->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ companydata()->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">{{ companydata()->state . ' - ' . companydata()->city . ' - ' . companydata()->pin }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">Lost & Found Register</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span id="fromdatep"></span> To Date: <span id="todatep"></span></p>
                                    </div>
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ ncurdate() }}" class="form-control" name="fromdate" id="fromdate">
                                    </div>
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ ncurdate() }}" class="form-control" name="todate" id="todate">
                                    </div>
                                    <div style="margin-top: 30px;">
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
                            <span id="printUrl" style="display:none;">{{ route('printlostfoundregister') }}</span>
                            <span id="exportUrl" style="display:none;">{{ route('exportlostfoundexcel') }}</span>
                            <div class="table-responsive">
                                <table id="lostfoundtable" class="table table-hover table-download-with-search table-striped">
                                    <thead>
                                        <th>Tag No</th>
                                        <th>Found Date</th>
                                        <th>Found Time</th>
                                        <th>Found Location</th>
                                        <th>Room No</th>
                                        <th>Item Name</th>
                                        <th>Brand</th>
                                        <th>Condition</th>
                                        <th>Found By</th>
                                        <th>Storage Location</th>
                                        <th>Status</th>
                                        <th>Claim By</th>
                                        <th>Received By</th>
                                        <th>Claim Mobile</th>
                                        <th>Claim Email</th>
                                        <th>Claim Remark</th>
                                        <th>Courier Name</th>
                                        <th>Courier Doc No</th>
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
        function dmy(dateStr) {
            if (!dateStr) return '';
            var parts = dateStr.split('-');
            if (parts.length !== 3) return dateStr;
            return parts[2] + '-' + parts[1] + '-' + parts[0];
        }

        $(document).ready(function () {
            var fetchXhr = null;

            function buildReportUrl(base) {
                var fromdate = $('#fromdate').val();
                var todate = $('#todate').val();
                return base + '?fromdate=' + encodeURIComponent(fromdate)
                           + '&todate=' + encodeURIComponent(todate);
            }

            $(document).on('click', '#printBtn', function () {
                var url = document.getElementById('printUrl').textContent.trim();
                window.open(buildReportUrl(url), '_blank');
            });

            $(document).on('click', '#exportExcelBtn', function () {
                var url = document.getElementById('exportUrl').textContent.trim();
                window.location.href = buildReportUrl(url);
            });

            $(document).on('click', '#fetchbutton', function () {
                showLoader();
                var fromdate = $('#fromdate').val();
                var todate = $('#todate').val();

                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));

                // Abort any in-flight request so old responses can't pile up
                if (fetchXhr && fetchXhr.readyState !== 4) {
                    fetchXhr.abort();
                }

                // Fully tear down any existing DataTable, then clear the table
                if ($.fn.DataTable && $.fn.DataTable.isDataTable('#lostfoundtable')) {
                    $('#lostfoundtable').DataTable().destroy();
                }
                $('#lostfoundtable tbody').empty();
                $('#lostfoundtable tfoot').empty();

                fetchXhr = $.ajax({
                    url: '/fetchlostfounddata',
                    type: 'POST',
                    data: {
                        fromdate: fromdate,
                        todate: todate,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function (result) {
                        setTimeout(hideLoader, 500);

                        if (result.length === 0) {
                            pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
                        }

                        // Always clear before (re)building to avoid duplicates
                        $('#lostfoundtable tbody').empty();
                        $('#lostfoundtable tfoot').empty();

                        var rows = '';
                        result.forEach(function (item) {
                            var tagno = (item.vno) ? 'LF-' + String(item.vno).padStart(2, '0') : '';

                            rows += '<tr>'
                                + '<td>' + tagno + '</td>'
                                + '<td>' + (item.founddate ? dmy(item.founddate) : '') + '</td>'
                                + '<td>' + (item.foundtime ?? '') + '</td>'
                                + '<td>' + (item.foundlocation ?? '') + '</td>'
                                + '<td>' + (item.roomno ?? '') + '</td>'
                                + '<td>' + (item.itemname ?? '') + '</td>'
                                + '<td>' + (item.brandname ?? '') + '</td>'
                                + '<td>' + (item.itemcondition ?? '') + '</td>'
                                + '<td>' + (item.foundby ?? '') + '</td>'
                                + '<td>' + (item.storagelocation ?? '') + '</td>'
                                + '<td>' + (item.status ?? '') + '</td>'
                                + '<td>' + (item.claimby ?? '') + '</td>'
                                + '<td>' + (item.receivedby ?? '') + '</td>'
                                + '<td>' + (item.claimmoblieno ?? '') + '</td>'
                                + '<td>' + (item.claimemail ?? '') + '</td>'
                                + '<td>' + (item.claimremark ?? '') + '</td>'
                                + '<td>' + (item.couiername ?? '') + '</td>'
                                + '<td>' + (item.couierdocno ?? '') + '</td>'
                                + '</tr>';
                        });
                        $('#lostfoundtable tbody').append(rows);

                        $('#lostfoundtable').DataTable({
                            pageLength: 15,
                            order: []
                        });
                    },
                    error: function () {
                        setTimeout(hideLoader, 500);
                        pushNotify('error', 'Error', 'Error Fetching Data');
                    }
                });
            });
        });
    </script>
@endsection
