@extends('property.layouts.main')
@section('main-container')
    {{-- DataTables CSS --}}
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />

    {{-- DataTables JS --}}
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    {{-- Hidden company info for print --}}
    <input type="hidden" value="{{ $company->comp_name }}" id="compname">
    <input type="hidden" value="{{ $company->address1 }}" id="address">
    <input type="hidden" value="{{ $company->city }}" id="city">
    <input type="hidden" value="{{ $statename }}" id="statename">
    <input type="hidden" value="{{ $company->pin }}" id="pin">
    <input type="hidden" value="{{ $company->logo }}" id="logo">
    <input type="hidden" value="{{ $company->gstin }}" id="gstin">

    <style>
        /* ===== Container & Scroll Management ===== */
        .card-body {
            overflow-x: hidden;
        }

        .table-loading-wrapper {
            position: relative;
            width: 100%;
            overflow-x: auto;
            /* Natural horizontal scroll without splitting headers */
            margin-top: 15px;
            background-color: #ffffff !important;
        }

        /* ===== Single Unified Table ===== */
        #feedbackTable {
            width: 100% !important;
            border-collapse: collapse !important;
            margin: 0 !important;
            background-color: #ffffff !important;
        }

        /* Border & Cells Layout */
        #feedbackTable th,
        #feedbackTable td {
            background-color: #ffffff !important;
            border: 1px solid #dcdcdc !important;
            /* Visible clean borders */
            vertical-align: middle !important;
            padding: 10px 12px !important;
            color: #000000 !important;
            height: auto !important;
            /* Fix for small thin empty rows */
        }

        #feedbackTable th {
            font-weight: 700;
            white-space: nowrap !important;
            text-align: center;
        }

        #feedbackTable td {
            white-space: nowrap;
        }

        /* Wrap longer text properly */
        #feedbackTable td.wrap-text {
            white-space: normal !important;
            min-width: 160px;
            max-width: 280px;
            word-wrap: break-word;
        }

        /* White Loading Overlay */
        .table-loading-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(255, 255, 255, 0.9);
            display: none;
            align-items: center;
            justify-content: center;
            z-index: 10;
            font-weight: 600;
            font-size: 16px;
        }

        .table-loading-overlay.active {
            display: flex;
        }

        #fetchbutton[disabled],
        #printbutton[disabled] {
            opacity: 0.6;
            cursor: not-allowed;
        }

        /* ===== Print styles ===== */
        #printArea {
            display: none;
        }

        @media print {
            body * {
                visibility: hidden;
            }

            #printArea,
            #printArea * {
                visibility: visible;
            }

            #printArea {
                display: block !important;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
            }

            .print-header {
                text-align: center;
                margin-bottom: 15px;
            }

            .print-header img {
                max-height: 70px;
                margin-bottom: 8px;
            }

            .print-header h3 {
                margin: 0;
            }

            .print-header p {
                margin: 2px 0;
                font-size: 13px;
            }

            #printArea table {
                width: 100%;
                border-collapse: collapse;
            }

            #printArea table,
            #printArea th,
            #printArea td {
                border: 1px solid #000 !important;
            }

            #printArea th,
            #printArea td {
                padding: 5px;
                font-size: 11px;
                vertical-align: middle;
            }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            {{-- Title --}}
                            <div class="row mb-2">
                                <div class="col-md-12">
                                    <h3>Feedback Report</h3>
                                </div>
                            </div>

                            {{-- Filters --}}
                            <form id="filterForm" autocomplete="off">
                                <div class="row g-3 align-items-end">

                                    {{-- From Date --}}
                                    <div class="col-auto">
                                        <label class="col-form-label" for="fromdate">
                                            From Date <i class="fa-regular fa-calendar"></i>
                                        </label>
                                        <input type="date" id="fromdate" name="fromdate" value="{{ $fromdate }}"
                                            class="form-control">
                                    </div>

                                    {{-- To Date --}}
                                    <div class="col-auto">
                                        <label class="col-form-label" for="todate">
                                            To Date <i class="fa-regular fa-calendar"></i>
                                        </label>
                                        <input type="date" id="todate" name="todate" value="{{ $fromdate }}"
                                            class="form-control">
                                    </div>

                                    {{-- Refresh button --}}
                                    <div class="col-auto" style="margin-top:30px;">
                                        <button id="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>

                                    {{-- Print button --}}
                                    <div class="col-auto" style="margin-top:30px;">
                                        <button id="printbutton" type="button" class="btn btn-primary">
                                            Print <i class="fa-solid fa-print"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <hr>

                            {{-- Table Container --}}
                            <div class="table-loading-wrapper">
                                <div id="tableLoadingOverlay" class="table-loading-overlay">
                                    <i class="fa-solid fa-spinner fa-spin me-2"></i>&nbsp;Loading data...
                                </div>
                                <table id="feedbackTable" class="table table-bordered w-100">
                                    <thead>
                                        <tr>
                                            <th>Feedback ID</th>
                                            <th>Date</th>
                                            <th>Guest Name</th>
                                            <th>Room No</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Folio No</th>
                                            <th>Purpose</th>
                                            <th>Overall Rating</th>
                                            <th>Comments</th>
                                            <th>Improve</th>
                                            <th>Question</th>
                                            <th>Question Rating</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>

                        </div>{{-- /card-body --}}
                    </div>{{-- /card --}}
                </div>
            </div>
        </div>
    </div>

    {{-- Hidden print-only area --}}
    <div id="printArea">
        <div class="print-header">
            <img id="printLogo" src="" alt="logo">
            <h3 id="printCompName"></h3>
            <p id="printAddress"></p>
            <p id="printGstin"></p>
        </div>
        <table id="printTable">
            <thead>
                <tr>
                    <th>Feedback ID</th>
                    <th>Date</th>
                    <th>Guest Name</th>
                    <th>Room No</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Folio No</th>
                    <th>Purpose</th>
                    <th>Overall Rating</th>
                    <th>Comments</th>
                    <th>Improve</th>
                    <th>Question</th>
                    <th>Question Rating</th>
                </tr>
            </thead>
            <tbody id="printTableBody"></tbody>
        </table>
    </div>

    <script>
        $(function() {
            let currentData = [];

            let table = $('#feedbackTable').DataTable({
                data: [],
                autoWidth: false,
                processing: false,
                scrollX: false, // ScrollX ko FALSE rakha h taaki header & body split na hon aur misalignment na ho
                order: [
                    [0, 'asc']
                ],
                columns: [{
                        data: 'feedbackid',
                        className: 'text-center'
                    },
                    {
                        data: 'deedbackdate'
                    },
                    {
                        data: 'guestname',
                        defaultContent: ''
                    },
                    {
                        data: 'roomno',
                        className: 'text-center'
                    },
                    {
                        data: 'mobileno',
                        defaultContent: ''
                    },
                    {
                        data: 'mailid',
                        defaultContent: ''
                    },
                    {
                        data: 'folioNo',
                        defaultContent: ''
                    },
                    {
                        data: 'purpose',
                        defaultContent: ''
                    },
                    {
                        data: 'overallrating',
                        className: 'text-center'
                    },
                    {
                        data: 'comments',
                        className: 'wrap-text',
                        defaultContent: ''
                    },
                    {
                        data: 'improve',
                        className: 'wrap-text',
                        defaultContent: ''
                    },
                    {
                        data: 'question',
                        className: 'wrap-text',
                        defaultContent: ''
                    },
                    {
                        data: 'detailrating',
                        className: 'text-center',
                        defaultContent: ''
                    },
                ],
                drawCallback: function(settings) {
                    let api = this.api();
                    let rows = api.rows({
                        page: 'current'
                    }).nodes();

                    // Merge columns 0 to 10
                    let mergeCols = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

                    let lastFid = null;
                    let groupRows = [];

                    // Subhi cells ko visible karke rowspans reset karein
                    $(rows).find('td').show().removeAttr('rowspan');

                    $(rows).each(function(i, tr) {
                        let rowData = api.row(tr).data();
                        if (!rowData) return;

                        let fid = rowData.feedbackid;

                        if (fid !== lastFid) {
                            if (groupRows.length > 1) {
                                applyRowspan(groupRows, mergeCols);
                            }
                            lastFid = fid;
                            groupRows = [tr];
                        } else {
                            groupRows.push(tr);
                        }
                    });

                    if (groupRows.length > 1) {
                        applyRowspan(groupRows, mergeCols);
                    }
                }
            });

            function applyRowspan(trList, cols) {
                let firstRowTds = $(trList[0]).find('td');
                let rowspanCount = trList.length;

                cols.forEach(function(colIdx) {
                    $(firstRowTds[colIdx])
                        .attr('rowspan', rowspanCount)
                        .css('vertical-align', 'middle');

                    for (let i = 1; i < trList.length; i++) {
                        $($(trList[i]).find('td')[colIdx]).hide();
                    }
                });
            }

            function loadFeedbackData() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();

                $('#tableLoadingOverlay').addClass('active');
                $('#fetchbutton').prop('disabled', true)
                    .html('Loading... <i class="fa-solid fa-spinner fa-spin"></i>');

                $.ajax({
                    url: "{{ route('feedbackreportdata') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        fromdate: fromdate,
                        todate: todate
                    },
                    success: function(res) {
                        currentData = res.data || [];
                        table.clear();
                        table.rows.add(currentData);
                        table.draw();
                    },
                    error: function(xhr) {
                        console.error(xhr.responseText);
                        alert('Kuch error aa gaya, console check karein.');
                    },
                    complete: function() {
                        $('#tableLoadingOverlay').removeClass('active');
                        $('#fetchbutton').prop('disabled', false)
                            .html('Refresh <i class="fa-solid fa-arrows-rotate"></i>');
                    }
                });
            }

            function buildPrintTable() {
                $('#printLogo').attr('src', $('#logo').val());
                $('#printCompName').text($('#compname').val());
                $('#printAddress').text(
                    $('#address').val() + ', ' + $('#city').val() + ', ' +
                    $('#statename').val() + ' - ' + $('#pin').val()
                );
                $('#printGstin').text('GSTIN: ' + $('#gstin').val());

                let $body = $('#printTableBody').empty();
                let lastFid = null;
                let lastRow = null;
                let rowspan = 1;

                let sortedData = table.rows({
                    order: 'current'
                }).data().toArray();

                sortedData.forEach(function(row) {
                    let $tr = $('<tr></tr>');

                    if (row.feedbackid === lastFid) {
                        rowspan++;
                        $(lastRow).find('td.mergeable').each(function() {
                            $(this).attr('rowspan', rowspan);
                        });
                        $tr.append('<td>' + (row.question ?? '') + '</td>');
                        $tr.append('<td>' + (row.detailrating ?? '') + '</td>');
                    } else {
                        lastFid = row.feedbackid;
                        rowspan = 1;
                        $tr.append('<td class="mergeable">' + (row.feedbackid ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.deedbackdate ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.guestname ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.roomno ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.mobileno ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.mailid ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.folioNo ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.purpose ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.overallrating ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.comments ?? '') + '</td>');
                        $tr.append('<td class="mergeable">' + (row.improve ?? '') + '</td>');
                        $tr.append('<td>' + (row.question ?? '') + '</td>');
                        $tr.append('<td>' + (row.detailrating ?? '') + '</td>');
                        lastRow = $tr;
                    }

                    $body.append($tr);
                });
            }

            loadFeedbackData();

            $('#fetchbutton').on('click', function() {
                loadFeedbackData();
            });

            $('#printbutton').on('click', function() {
                if (!currentData.length) {
                    alert('Print karne ke liye pehle data load hona chahiye.');
                    return;
                }
                buildPrintTable();
                window.print();
            });
        });
    </script>
@endsection
