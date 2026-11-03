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

        tfoot tr th {
            background-color: #f8f9fa;
        }

        .table-responsive {
            overflow-x: auto;
        }

        #tdsreporttable {
            width: 100% !important;
            border-collapse: collapse !important;
        }

        #tdsreporttable th {
            background-color: #f8f9fa;
            font-weight: bold;
            text-align: center;
            padding: 10px;
            border: 1px solid #dee2e6 !important;
        }

        #tdsreporttable td {
            padding: 8px;
            border: 1px solid #dee2e6 !important;
        }

        #tdsreporttable tfoot th {
            border: 1px solid #dee2e6 !important;
        }

        /* Right align numeric columns */
        #tdsreporttable td:nth-child(4),
        #tdsreporttable td:nth-child(6) {
            text-align: right;
        }

        /* Center align TDS percentage column */
        #tdsreporttable td:nth-child(5) {
            text-align: center;
        }

        /* Print styles */
        @media print {
            #tdsreporttable,
            #tdsreporttable th,
            #tdsreporttable td,
            #tdsreporttable tfoot th {
                border: 1px solid #000 !important;
            }
            
            /* Ensure table borders are visible */
            table {
                border-collapse: collapse !important;
            }
            
            /* Force borders on all cells */
            table, th, td {
                border: 1px solid #000 !important;
            }
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">TDS Report</h5>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-around align-items-end">
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
                                    <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                        Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                    </button>
                                </div>
                                <div class="">
                                    <button style="width: -webkit-fill-available;" type="button"
                                        class="btn rhead btn-outline-primary" name="propertylistbtn" id="propertylistbtn">
                                        Properties <i class="fa-solid fa-angle-down"></i>
                                    </button>
                                    <ul class="checkul" id="listedproperty" style="display:none;">
                                        <li>
                                            <input type="checkbox" id="checkallproperties" name="checkallproperties">
                                            <span>Select All <span class="tcount">{{ count(myproperties()) }}</span></span>
                                        </li>
                                        <li><input type="text" placeholder="Enter Property Name..."
                                                class="form-control propertysearch" id="propertysearch" name="propertysearch"></li>
                                        @foreach (myproperties() as $item)
                                            <li data-propertyname="{{ $item->comp_name }}" class="propertynameli">
                                                <input class="propertycheckbox" id="property_{{ $item->propertyid }}" name="property_{{ $item->propertyid }}" value="{{ $item->propertyid }}"
                                                    type="checkbox"
                                                    {{ Auth::user()->propertyid == $item->propertyid ? 'checked' : '' }}>
                                                <span>{{ $item->comp_name }}</span>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>

                            <p class="unassigned-room p-1 rounded-left font-weight-bold mt-3">
                                From Date: <span id="startdate"></span> To Date: <span id="enddate"></span>
                            </p>

                            <div class="table-responsive mt-3">
                                <table id="tdsreporttable" class="table table-bordered table-striped">
                                    <colgroup>
                                        <col style="width: 10%;">
                                        <col style="width: 15%;">
                                        <col style="width: 35%;">
                                        <col style="width: 15%;">
                                        <col style="width: 10%;">
                                        <col style="width: 15%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Vr.No.</th>
                                            <th>A/C Name</th>
                                            <th>Amt</th>
                                            <th>TDS</th>
                                            <th>TDS Amt</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tdstablebody">
                                        <tr>
                                            <td colspan="6" class="text-center">Please select date range and click Refresh</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th class="text-right">Total:</th>
                                            <th class="text-right" id="totalamt">0.00</th>
                                            <th></th>
                                            <th class="text-right" id="totaltds">0.00</th>
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

    <script>
        // Store company data for print
        var companyName = {!! json_encode($company->comp_name ?? 'Company Name') !!};
        var companyAddress = {!! json_encode($fulladdress ?? '') !!};
        var companyCity = {!! json_encode($company->city ?? '') !!};
        var companyPin = {!! json_encode($company->pin ?? '') !!};
        var stateName = {!! json_encode($statename ?? '') !!};
        var logoBase64 = {!! json_encode($logoBase64 ?? null) !!};
        var logoMimeType = {!! json_encode($logoMimeType ?? 'image/png') !!};

        // Debug: Check if data is loaded
        console.log('Company Name:', companyName);
        console.log('Company Address:', companyAddress);
        console.log('Company City:', companyCity);
        console.log('Company Pin:', companyPin);
        console.log('State Name:', stateName);
        console.log('Logo Base64:', logoBase64 ? 'Logo loaded (' + logoBase64.length + ' chars)' : 'No logo');
        console.log('Logo MIME Type:', logoMimeType);

        $(document).ready(function() {
            // Set default dates - Current month 1st to today
            let today = new Date();
            let firstDayOfMonth = new Date(today.getFullYear(), today.getMonth(), 1);
            
            // Format dates as YYYY-MM-DD for input fields
            let fromDateStr = firstDayOfMonth.getFullYear() + '-' + 
                             String(firstDayOfMonth.getMonth() + 1).padStart(2, '0') + '-01';
            let toDateStr = today.getFullYear() + '-' + 
                           String(today.getMonth() + 1).padStart(2, '0') + '-' + 
                           String(today.getDate()).padStart(2, '0');
            
            $('#fromdate').val(fromDateStr);
            $('#todate').val(toDateStr);

            // Property list toggle
            $('#propertylistbtn').click(function() {
                $('#listedproperty').toggle();
            });

            // Check all properties
            $('#checkallproperties').change(function() {
                $('.propertycheckbox').prop('checked', $(this).is(':checked'));
            });

            // Property search
            $('.propertysearch').on('keyup', function() {
                let value = $(this).val().toLowerCase();
                $('.propertynameli').filter(function() {
                    $(this).toggle($(this).data('propertyname').toLowerCase().indexOf(value) > -1);
                });
            });

            // Fetch TDS Report Data
            $('#fetchbutton').click(function() {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let allproperties = [];

                $('.propertycheckbox:checked').each(function() {
                    allproperties.push($(this).val());
                });

                if (!fromdate || !todate) {
                    alert('Please select both From Date and To Date');
                    return;
                }

                if (allproperties.length === 0) {
                    alert('Please select at least one property');
                    return;
                }

                // Update date display
                $('#startdate').text(fromdate);
                $('#enddate').text(todate);

                // Fetch data via AJAX
                $.ajax({
                    url: "{{ route('tdsreport.fetch') }}",
                    type: "POST",
                    cache: false,
                    dataType: 'json',
                    data: {
                        _token: "{{ csrf_token() }}",
                        fromdate: fromdate,
                        todate: todate,
                        allproperties: allproperties
                    },
                    success: function(response) {
                        console.log('AJAX Response:', response);
                        console.log('Response Data:', response.data);
                        console.log('Data Length:', response.data ? response.data.length : 0);
                        
                        if (response.success && response.data && response.data.length > 0) {
                            console.log('Rendering table with', response.data.length, 'rows');
                            renderTDSTable(response.data);
                        } else if (response.success && (!response.data || response.data.length === 0)) {
                            console.log('No data returned');
                            $('#tdstablebody').html(
                                '<tr><td colspan="6" class="text-center">No Data Available for selected date range</td></tr>'
                            );
                            resetTotals();
                        } else {
                            $('#tdstablebody').html(
                                '<tr><td colspan="6" class="text-center">' + (response.message || 'Error fetching data') +
                                '</td></tr>'
                            );
                            resetTotals();
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX Error:', error);
                        console.error('Response:', xhr.responseText);
                        console.error('Status:', status);
                        alert('Error fetching TDS report data: ' + error);
                    }
                });
            });

            function renderTDSTable(data) {
                console.log('renderTDSTable called with', data.length, 'rows');
                
                // First, destroy existing DataTable before clearing tbody
                if ($.fn.DataTable.isDataTable('#tdsreporttable')) {
                    try {
                        var table = $('#tdsreporttable').DataTable();
                        table.destroy();
                        console.log('DataTable destroyed');
                    } catch(e) {
                        console.error('Error destroying DataTable:', e);
                    }
                }

                // Now clear tbody and add new rows
                let tbody = $('#tdstablebody');
                tbody.empty();
                console.log('tbody cleared');

                let totalAmt = 0;
                let totalTds = 0;

                data.forEach(function(row) {
                    // Use new column names from ledger_tds table
                    let onAmt = parseFloat(row.onamt) || 0;
                    let tdsPercentage = parseFloat(row.tds) || 0;
                    let tdsAmount = parseFloat(row.tdsamt) || 0;

                    totalAmt += onAmt;
                    totalTds += tdsAmount;

                    // Format date to DD-MM-YYYY (without timezone conversion)
                    let dateParts = row.vdate.split('-'); // Split YYYY-MM-DD
                    let year = dateParts[0];
                    let month = dateParts[1];
                    let day = dateParts[2];
                    let formattedDate = `${day}-${month}-${year}`;

                    let tr = `<tr>
                        <td class="text-center">${formattedDate}</td>
                        <td class="text-center">${row.docid || ''}</td>
                        <td>${row.PartyName || ''}</td>
                        <td class="text-right">${onAmt.toFixed(2)}</td>
                        <td class="text-center">${tdsPercentage.toFixed(2)}%</td>
                        <td class="text-right">${tdsAmount.toFixed(2)}</td>
                    </tr>`;
                    tbody.append(tr);
                });

                console.log('Added', data.length, 'rows to tbody');

                // Update totals
                $('#totalamt').text(totalAmt.toFixed(2));
                $('#totaltds').text(totalTds.toFixed(2));

                console.log('Totals updated, initializing DataTable');

                // Now initialize DataTable with fresh data
                $('#tdsreporttable').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'copy', 
                        'csv', 
                        'excel', 
                        {
                            extend: 'pdf',
                            title: 'TDS Report',
                            messageTop: function() {
                                return 'From Date: ' + $('#fromdate').val() + ' To Date: ' + $('#todate').val();
                            }
                        },
                        {
                            extend: 'print',
                            title: '',
                            footer: true,
                            messageTop: function() {
                                // Debug: Log values before printing
                                console.log('Print - Company Name:', companyName);
                                console.log('Print - Company Address:', companyAddress);
                                console.log('Print - Company City:', companyCity);
                                console.log('Print - Company Pin:', companyPin);
                                console.log('Print - State Name:', stateName);
                                console.log('Print - Logo:', logoBase64 ? 'Logo available' : 'No logo');
                                
                                // Format dates to DD-MM-YYYY
                                let fromDateVal = $('#fromdate').val();
                                let toDateVal = $('#todate').val();
                                let fromDateObj = new Date(fromDateVal);
                                let toDateObj = new Date(toDateVal);
                                
                                let fromFormatted = String(fromDateObj.getDate()).padStart(2, '0') + '-' + 
                                                   String(fromDateObj.getMonth() + 1).padStart(2, '0') + '-' + 
                                                   fromDateObj.getFullYear();
                                let toFormatted = String(toDateObj.getDate()).padStart(2, '0') + '-' + 
                                                 String(toDateObj.getMonth() + 1).padStart(2, '0') + '-' + 
                                                 toDateObj.getFullYear();
                                
                                // Build logo HTML - only show if logo exists
                                let logoHtml = '';
                                if (logoBase64 && logoBase64.trim() !== '') {
                                    logoHtml = '<img src="data:' + logoMimeType + ';base64,' + logoBase64 + '" style="max-width: 120px; max-height: 100px; margin-bottom: 10px; display: block; margin-left: auto; margin-right: auto;" />';
                                }
                                
                                // Build address line - only show if not empty
                                let addressLine = '';
                                if (companyAddress && companyAddress.trim() !== '') {
                                    addressLine = '<p style="margin: 2px 0; font-size: 11pt;">' + companyAddress + '</p>';
                                }
                                
                                // Build location line
                                let locationParts = [];
                                if (stateName && stateName.trim() !== '') locationParts.push(stateName);
                                if (companyCity && companyCity.trim() !== '') locationParts.push(companyCity);
                                if (companyPin && companyPin.trim() !== '') locationParts.push(companyPin);
                                
                                let locationLine = '';
                                if (locationParts.length > 0) {
                                    locationLine = '<p style="margin: 2px 0; font-size: 11pt;"><strong>' + locationParts.join(' - ') + '</strong></p>';
                                }
                                
                                return '<div style="text-align: center; margin-bottom: 10px;">' +
                                    logoHtml +
                                    '<h2 style="margin: 0 0 5px 0; font-size: 18pt;">' + companyName + '</h2>' +
                                    addressLine +
                                    locationLine +
                                    '<h3 style="margin: 10px 0 5px 0; font-size: 14pt;">TDS REPORT</h3>' +
                                    '<p style="margin: 2px 0; font-size: 11pt;"><strong>From Date: ' + fromFormatted + ' To Date: ' + toFormatted + '</strong></p>' +
                                    '</div>';
                            },
                            customize: function(win) {
                                // Set page margins to prevent right border cutoff
                                $(win.document.body).css({
                                    'font-size': '12pt',
                                    'margin': '10mm 5mm 10mm 5mm'
                                });
                                
                                $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css({
                                        'font-size': '11pt',
                                        'border-collapse': 'collapse',
                                        'border': '1px solid #000',
                                        'width': '100%',
                                        'table-layout': 'fixed'
                                    });
                                
                                // Set column widths for print
                                $(win.document.body).find('table thead tr th:nth-child(1)').css('width', '10%');
                                $(win.document.body).find('table thead tr th:nth-child(2)').css('width', '15%');
                                $(win.document.body).find('table thead tr th:nth-child(3)').css('width', '35%');
                                $(win.document.body).find('table thead tr th:nth-child(4)').css('width', '15%');
                                $(win.document.body).find('table thead tr th:nth-child(5)').css('width', '10%');
                                $(win.document.body).find('table thead tr th:nth-child(6)').css('width', '15%');
                                
                                // Force borders on all table elements
                                $(win.document.body).find('table th, table td').css({
                                    'border': '1px solid #000 !important',
                                    'padding': '8px',
                                    'word-wrap': 'break-word'
                                });
                                
                                // Add specific border to last column to ensure it shows
                                $(win.document.body).find('table th:last-child, table td:last-child').css({
                                    'border-right': '2px solid #000 !important'
                                });
                                
                                $(win.document.body).find('h1').remove();
                                
                                // Force show footer
                                $(win.document.body).find('tfoot').show();
                                
                                // Right align numeric columns in print
                                $(win.document.body).find('table tbody td:nth-child(4)').css('text-align', 'right');
                                $(win.document.body).find('table tbody td:nth-child(6)').css('text-align', 'right');
                                $(win.document.body).find('table tbody td:nth-child(5)').css('text-align', 'center');
                                
                                // Right align footer totals
                                $(win.document.body).find('table tfoot th').css('text-align', 'right');
                            }
                        }
                    ],
                    pageLength: 25,
                    order: [[0, 'asc']],
                    drawCallback: function() {
                        // Add id and name attributes to search inputs after draw
                        $('input[type="search"]').each(function(i) {
                            if (!$(this).attr('id')) $(this).attr('id', 'tdsreport_search_' + i);
                            if (!$(this).attr('name')) $(this).attr('name', 'tdsreport_search_' + i);
                        });
                    }
                });
                console.log('DataTable initialized successfully');
            }

            function resetTotals() {
                $('#totalamt').text('0.00');
                $('#totaltds').text('0.00');
            }
        });
    </script>
@endsection
