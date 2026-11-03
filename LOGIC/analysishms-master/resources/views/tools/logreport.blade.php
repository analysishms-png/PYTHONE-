@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- DataTable CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap4.min.css">
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="logReportForm" action="" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="logreport">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="propertyid">Select</label>
                                            <select class="form-control select2-multiple" id="propertyid" required name="propertyid">
                                                <option value="">Select</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} - {{ $item->propertyid }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                          <label class="rbtn">
                                          <input type="radio" style="margin:3% right: 6px;" checked name="report_type" value="wp"> WhatsApp
                                          </label>

                                          <label class="rbtn">
                                          <input type="radio" style="margin:3% right: 6px;" name="report_type" value="cm"> CM
                                          </label>
                                          <label class="rbtn">
                                          <input type="radio" style="margin:3% right: 6px;" name="report_type" value="cm"> en voice
                                          </label>
                                        </div>
                                    </div>

                                </div>

                                <div class="row" id="dateSection" style="display: none;">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="from_date">From Date</label>
                                            <input type="date" class="form-control" id="from_date" name="from_date">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="to_date">To Date</label>
                                            <input type="date" class="form-control" id="to_date" name="to_date">
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" id="logReportSubmitBtn" class="btn btn-primary">Log Report</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- DataTable Section -->
            <div class="row" id="tableSection" style="display: none; margin-top: 30px;">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Log Report Results</h5>
                        </div>
                        <div class="card-body">
                            <table id="logReportTable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Details</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- DataTable JS -->
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.0/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.0/vfs_fonts.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

    <script>
        let currentReportType = 'wp'; // Store report type globally
        let logReportTable = null; // Global DataTable instance

        $(document).ready(function() {
            logReportTable = $('#logReportTable').DataTable({
                responsive: true,
                processing: true,
                dom: 'Bfrtip',
                buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
                pageLength: 25,
                order: [[0, 'desc']],
                columnDefs: [{
                    targets: [1, 2],
                    orderable: false
                }]
            });

            // Handle radio button change to show/hide date section
            $('input[name="report_type"]').on('change', function() {
                currentReportType = $(this).val();

                if ($(this).val() === 'wp') {
                    $('#dateSection').show();
                    $('#from_date').prop('required', true);
                    $('#to_date').prop('required', true);
                } else {
                    $('#dateSection').hide();
                    $('#from_date').prop('required', false);
                    $('#to_date').prop('required', false);
                }
            });

            // Show date section on page load if WhatsApp is checked
            if ($('input[name="report_type"]:checked').val() === 'wp') {
                $('#dateSection').show();
                $('#from_date').prop('required', true);
                $('#to_date').prop('required', true);
            }

            $('#logReportForm').on('submit', function(e) {
                e.preventDefault();

                currentReportType = $('input[name="report_type"]:checked').val();

                const submitBtn = $('#logReportSubmitBtn');
                const originalBtnHtml = submitBtn.html();

                submitBtn.prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Loading...');

                $.ajax({
                    url: "{{ route('tools.fetchlogreport') }}",
                    type: "POST",
                    data: $(this).serialize(),
                    dataType: 'json',
                    success: function(result) {
                        if (result.status === true && Array.isArray(result.data)) {
                            displayLogsData(result.data);
                        } else {
                            logReportTable.clear().draw();
                            $('#tableSection').show();
                            Swal.fire({
                                icon: 'info',
                                title: 'No Data Found',
                                text: result.message || 'No logs found for selected criteria.'
                            });
                        }
                    },
                    error: function(xhr) {
                        logReportTable.clear().draw();
                        $('#tableSection').hide();

                        let errorMessage = 'Something went wrong while fetching log report.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Request Failed',
                            text: errorMessage
                        });
                    },
                    complete: function() {
                        submitBtn.prop('disabled', false).html(originalBtnHtml);
                    }
                });
            });

            // Function to display logs data in DataTable
            function displayLogsData(logs) {
                // Clear existing data
                logReportTable.clear().draw();

                if (logs.length === 0) {
                    $('#tableSection').show();
                    return;
                }

                // Get first log to determine columns
                let firstLog = logs[0];
                
                // Detect date column - find the first column that looks like a date
                let dateColumn = null;
                let dateColumns = ['created_at', 'Date', 'created_at', 'date'];
                for (let col of dateColumns) {
                    if (firstLog.hasOwnProperty(col)) {
                        dateColumn = col;
                        break;
                    }
                }
                
                // If no date column found, use first key
                if (!dateColumn) {
                    dateColumn = Object.keys(firstLog)[0];
                }

                // Add rows to DataTable
                logs.forEach(function(log, index) {
                    let dateVal = log[dateColumn] || '-';
                    
                    // Build details column
                    let details = '';
                    let columnsToSkip = [dateColumn, 'postdata', 'response', 'u_name', 'created_at', 'created_at', 'Date'];
                    
                    Object.entries(log).forEach(function([key, value]) {
                        if (!columnsToSkip.includes(key)) {
                            let displayText = value ? (typeof value === 'string' ? value.substring(0, 30) : JSON.stringify(value).substring(0, 30)) : '-';
                            if (displayText.length > 30) displayText += '...';
                            details += '<strong>' + htmlEscape(key) + ':</strong> ' + htmlEscape(displayText) + '<br>';
                        }
                    });

                    // Build actions column
                    let actions = '<div class="btn-group btn-group-sm" role="group">';
                    
                    // For WP reports - show response button
                    if (currentReportType === 'wp') {
                        if (log.response) {
                            actions += '<button type="button" class="btn btn-sm btn-warning view-json-btn" data-json="' + escapeHtml(JSON.stringify(log.response)) + '" data-type="Response" title="View Response"><i class="fa fa-eye"></i> Response</button>';
                        }
                        if (log.ResponseMgs) {
                            actions += '<button type="button" class="btn btn-sm btn-info view-json-btn" data-json="' + escapeHtml(JSON.stringify(log.ResponseMgs)) + '" data-type="Response Message" title="View Response Message"><i class="fa fa-eye"></i> Msg</button>';
                        }
                    }
                    
                    // For CM reports - show postdata and response buttons
                    if (currentReportType === 'cm') {
                        if (log.postdata) {
                            actions += '<button type="button" class="btn btn-sm btn-info view-json-btn" data-json="' + escapeHtml(JSON.stringify(log.postdata)) + '" data-type="PostData" title="View PostData"><i class="fa fa-eye"></i> PostData</button>';
                        }
                        if (log.response) {
                            actions += '<button type="button" class="btn btn-sm btn-warning view-json-btn" data-json="' + escapeHtml(JSON.stringify(log.response)) + '" data-type="Response" title="View Response"><i class="fa fa-eye"></i> Response</button>';
                        }
                    }
                    
                    actions += '</div>';

                    // Add row to DataTable
                    logReportTable.row.add([
                        dateVal,
                        details,
                        actions
                    ]).node().classList.add('align-top');
                });

                logReportTable.draw();
                $('#tableSection').show();

                // Attach click handlers to eye buttons
                attachJsonViewHandlers();
            }

            // Function to attach JSON view handlers
            function attachJsonViewHandlers() {
                document.querySelectorAll('.view-json-btn').forEach(function(btn) {
                    btn.removeEventListener('click', jsonBtnClickHandler);
                    btn.addEventListener('click', jsonBtnClickHandler);
                });
            }

            // Separate function for click handler for better event delegation
            function jsonBtnClickHandler(e) {
                e.preventDefault();
                const jsonData = this.getAttribute('data-json');
                const type = this.getAttribute('data-type');
                viewJsonData(jsonData, type);
            }

            // Function to escape HTML
            function htmlEscape(str) {
                if (!str) return '';
                return String(str)
                    .replace(/&/g, '&amp;')
                    .replace(/</g, '&lt;')
                    .replace(/>/g, '&gt;')
                    .replace(/"/g, '&quot;')
                    .replace(/'/g, '&#39;');
            }

            // Function to escape HTML for data attributes
            function escapeHtml(str) {
                if (!str) return '';
                return String(str)
                    .replace(/&/g, '&amp;')
                    .replace(/</g, '&lt;')
                    .replace(/>/g, '&gt;')
                    .replace(/"/g, '&quot;')
                    .replace(/'/g, '&#39;');
            }

            // Function to display JSON data in formatted view
            function viewJsonData(jsonString, type) {
                try {
                    let jsonData = JSON.parse(jsonString);
                    let formattedJson = JSON.stringify(jsonData, null, 2);

                    let htmlContent = '<div style="text-align: left; max-height: 600px; overflow-y: auto; background-color: #f5f5f5; padding: 15px; border-radius: 5px; font-family: monospace; font-size: 12px; white-space: pre-wrap; word-break: break-word;">';
                    htmlContent += htmlEscape(formattedJson);
                    htmlContent += '</div>';

                    Swal.fire({
                        title: htmlEscape(type.charAt(0).toUpperCase() + type.slice(1)) + ' - Formatted View',
                        html: htmlContent,
                        width: '90%',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'Close',
                        allowOutsideClick: true,
                        allowEscapeKey: true,
                    }); 
                } catch (e) {
                    // If not valid JSON, show as plain text
                    let htmlContent = '<div style="text-align: left; max-height: 600px; overflow-y: auto; background-color: #f5f5f5; padding: 15px; border-radius: 5px; font-family: monospace; font-size: 12px; white-space: pre-wrap; word-break: break-word;">';
                    htmlContent += htmlEscape(jsonString);
                    htmlContent += '</div>';

                    Swal.fire({
                        title: type.charAt(0).toUpperCase() + type.slice(1),
                        html: htmlContent,
                        width: '90%',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'Close'
                    });
                }
            }
        });
    </script>
@endsection
