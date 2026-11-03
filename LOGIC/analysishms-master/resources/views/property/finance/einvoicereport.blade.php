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
    
    <style>
        h1.report-title {
            text-align: center;
            font-size: 2rem;
            margin: 20px 0;
        }

        .dt-buttons {
            margin-bottom: 10px;
        }

        .table-responsive {
            overflow-x: auto;
        }

        #einvoicetable {
            width: 100% !important;
            border-collapse: collapse !important;
        }

        #einvoicetable th {
            background-color: #f8f9fa;
            font-weight: bold;
            text-align: center;
            padding: 10px;
            border: 1px solid #dee2e6 !important;
        }

        #einvoicetable td {
            padding: 8px;
            border: 1px solid #dee2e6 !important;
        }

        .badge-success {
            background-color: #28a745;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
        }

        .badge-danger {
            background-color: #dc3545;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
        }

        @media print {
            #einvoicetable,
            #einvoicetable th,
            #einvoicetable td {
                border: 1px solid #000 !important;
            }
            
            table {
                border-collapse: collapse !important;
            }
            
            table, th, td {
                border: 1px solid #000 !important;
            }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">E-Invoice Report</h5>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-around align-items-end">
                                <input type="hidden" id="propertyid" value="{{ Auth::user()->propertyid }}">
                                <div class="">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" class="form-control fromdate" name="fromdate" id="fromdate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label">To Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" class="form-control todate" name="todate" id="todate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <label for="uploadstatus" class="col-form-label">Upload Status</label>
                                        <select class="form-control" name="uploadstatus" id="uploadstatus">
                                            <option value="uploaded">Uploaded</option>
                                            <option value="not_uploaded">Not Uploaded</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="">
                                    <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                        Search <i class="fa-solid fa-search"></i>
                                    </button>
                                </div>
                            </div>

                            <p class="unassigned-room p-1 rounded-left font-weight-bold mt-3">
                                From Date: <span id="startdate"></span> | To Date: <span id="enddate"></span>
                            </p>

                            <!-- Front Office Table -->
                            <div class="mt-4">
                                <h5 class="bg-info text-white p-2">Front Office</h5>
                                <div class="table-responsive">
                                    <table id="frontoffice_table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Company Name</th>
                                                <th>GST No</th>
                                                <th>Doc ID</th>
                                                <th>Upload Date</th>
                                                <th>Doc Detail</th>
                                                <th>IRN No</th>
                                            </tr>
                                        </thead>
                                        <tbody id="frontoffice_tbody">
                                            <tr>
                                                <td colspan="8" class="text-center">No data available</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- Banquet Table -->
                            <div class="mt-4">
                                <h5 class="bg-success text-white p-2">Banquet</h5>
                                <div class="table-responsive">
                                    <table id="banquet_table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Company Name</th>
                                                <th>GST No</th>
                                                <th>Doc ID</th>
                                                <th>Upload Date</th>
                                                <th>Doc Detail</th>
                                                <th>IRN No</th>
                                            </tr>
                                        </thead>
                                        <tbody id="banquet_tbody">
                                            <tr>
                                                <td colspan="8" class="text-center">No data available</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- POS Table -->
                            <div class="mt-4">
                                <h5 class="bg-warning text-white p-2">POS</h5>
                                <div class="table-responsive">
                                    <table id="pos_table" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Company Name</th>
                                                <th>GST No</th>
                                                <th>Doc ID</th>
                                                <th>Outlet</th>
                                                <th>Upload Date</th>
                                                <th>Doc Detail</th>
                                                <th>IRN No</th>
                                            </tr>
                                        </thead>
                                        <tbody id="pos_tbody">
                                            <tr>
                                                <td colspan="9" class="text-center">No data available</td>
                                            </tr>
                                        </tbody>
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
        $(document).ready(function() {
            // Set default dates - Current month 1st to today
            let today = new Date();
            let firstDayOfMonth = new Date(today.getFullYear(), today.getMonth(), 1);
            
            let fromDateStr = firstDayOfMonth.getFullYear() + '-' + 
                             String(firstDayOfMonth.getMonth() + 1).padStart(2, '0') + '-01';
            let toDateStr = today.getFullYear() + '-' + 
                           String(today.getMonth() + 1).padStart(2, '0') + '-' + 
                           String(today.getDate()).padStart(2, '0');
            
            $('#fromdate').val(fromDateStr);
            $('#todate').val(toDateStr);

            // Fetch E-Invoice Report Data
            $('#fetchbutton').click(function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let uploadstatus = $('#uploadstatus').val();

                if (!fromdate || !todate) {
                    alert('Please select both From Date and To Date');
                    return;
                }

                // Update date display
                $('#startdate').text(fromdate);
                $('#enddate').text(todate);

                // Fetch data via AJAX
                $.ajax({
                    url: "{{ route('einvoicereportdata') }}",
                    type: "POST",
                    cache: false,
                    dataType: 'json',
                    data: {
                        _token: "{{ csrf_token() }}",
                        from_date: fromdate,
                        to_date: todate,
                        upload_status: uploadstatus,
                        propertyid: $('#propertyid').val()
                    },
                    success: function(response) {
                        console.log('AJAX Response:', response);
                        
                        // Render Front Office Table
                        if (response.frontOffice && response.frontOffice.length > 0) {
                            renderTable('frontoffice', response.frontOffice);
                        } else {
                            $('#frontoffice_tbody').html('<tr><td colspan="8" class="text-center">No Data Available</td></tr>');
                        }
                        
                        // Render Banquet Table
                        if (response.banquet && response.banquet.length > 0) {
                            renderTable('banquet', response.banquet);
                        } else {
                            $('#banquet_tbody').html('<tr><td colspan="8" class="text-center">No Data Available</td></tr>');
                        }
                        
                        // Render POS Table
                        if (response.pos && response.pos.length > 0) {
                            renderTable('pos', response.pos);
                        } else {
                            $('#pos_tbody').html('<tr><td colspan="9" class="text-center">No Data Available</td></tr>');
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX Error:', error);
                        console.error('Response:', xhr.responseText);
                        alert('Error fetching E-Invoice report data: ' + error);
                    }
                });
            });

            function renderTable(module, data) {
                console.log('Rendering ' + module + ' table with', data.length, 'rows');
                
                let tableId = module + '_table';
                let tbodyId = module + '_tbody';
                
                // Destroy existing DataTable
                if ($.fn.DataTable.isDataTable('#' + tableId)) {
                    $('#' + tableId).DataTable().destroy();
                }

                // Clear tbody
                let tbody = $('#' + tbodyId);
                tbody.empty();

                data.forEach(function(row) {
                    // Format dates
                    let dateStr = row.settledate || '';
                    let formattedDate = '';
                    if (dateStr) {
                        let dateParts = dateStr.split('-');
                        if (dateParts.length === 3) {
                            formattedDate = `${dateParts[2]}-${dateParts[1]}-${dateParts[0]}`;
                        } else {
                            formattedDate = dateStr;
                        }
                    }

                    let uploadDateStr = row.Uploaddate || '';
                    let formattedUploadDate = '';
                    if (uploadDateStr) {
                        let uploadParts = uploadDateStr.split('-');
                        if (uploadParts.length === 3) {
                            formattedUploadDate = `${uploadParts[2]}-${uploadParts[1]}-${uploadParts[0]}`;
                        } else {
                            formattedUploadDate = uploadDateStr;
                        }
                    }

                    let tr = '';
                    if (module === 'pos') {
                        // POS has outlet column
                        tr = `<tr>
                            <td class="text-center">${row.billno || ''}</td>
                            <td class="text-center">${formattedDate}</td>
                            <td>${row.CompanyName || ''}</td>
                            <td>${row.GSTNo || ''}</td>
                            <td class="text-center">${row.docid || ''}</td>
                            <td>${row.outlet_name || '-'}</td>
                            <td class="text-center">${formattedUploadDate || '-'}</td>
                            <td>${row.DocDetail || '-'}</td>
                            <td style="font-size: 10px;">${row.IRNNo || '-'}</td>
                        </tr>`;
                    } else {
                        tr = `<tr>
                            <td class="text-center">${row.billno || ''}</td>
                            <td class="text-center">${formattedDate}</td>
                            <td>${row.CompanyName || ''}</td>
                            <td>${row.GSTNo || ''}</td>
                            <td class="text-center">${row.docid || ''}</td>
                            <td class="text-center">${formattedUploadDate || '-'}</td>
                            <td>${row.DocDetail || '-'}</td>
                            <td style="font-size: 10px;">${row.IRNNo || '-'}</td>
                        </tr>`;
                    }
                    tbody.append(tr);
                });

                // Initialize DataTable
                $('#' + tableId).DataTable({
                    dom: 'Bfrtip',
                    buttons: ['copy', 'csv', 'excel', 'pdf', 'print'],
                    pageLength: 25,
                    order: [[0, 'desc']]
                });
            }
        });
    </script>
@endsection
