@extends('property.layouts.main')
@section('main-container')
    {{-- ✅ DataTables CSS --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.0/css/buttons.dataTables.css">

    {{-- ✅ jQuery + DataTables JS --}}
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.dataTables.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.0/js/buttons.print.min.js"></script>

    <div class="content-body possalereg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="">
                                <div class="row justify-content-around">

                                    <input type="hidden" value="{{ $comp->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $comp->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $fromdate }}" name="ncurdatef" id="ncurdatef">
                                    <input type="hidden" value="{{ $comp->propertyid }}" id="propertyid" name="propertyid">


                                    <div class="text-center titlep mb-3">
                                        <h3>{{ $comp->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $comp->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}
                                        </p>
                                        <p style="margin-top:-10px; font-size:16px;">Sales Register Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">
                                            From Date: <span id="fromdatep"></span> To Date: <span id="todatep"></span>
                                        </p>
                                    </div>


                                    <div>
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>


                                    <div>
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $todate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>


                                    <div>
                                        <label for="itemwise" class="col-form-label">Item Wise</label>
                                        <select class="form-control" name="itemwise" id="itemwise">
                                            <option value="yes">YES</option>
                                            <option value="no" selected>NO</option>
                                        </select>
                                    </div>


                                    <div style="margin-top: 30px;">
                                        <button id="fetchbutton" name="fetchbutton" type="button"
                                            class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>


                            <div id="myloader" class="none text-center my-3">Loading...</div>


                            <div class="mt-3">
                                <div id="table-buttons" class="mb-2"></div>
                                <div class="table-responsive">
                                    <table id="arrival-list-table" class="table table-hover" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Bill No</th>
                                                <th>Bill Date</th>
                                                <th>Party Name</th>
                                                <th>No. Of Pax</th>
                                                <th>Total Per Cover</th>
                                                <th>Discount</th>
                                                <th>Taxable</th>
                                                <th>NonTaxable</th>
                                                <th>Cgst</th>
                                                <th>Sgst</th>
                                                <th>Round Off</th>
                                                <th>Net Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
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
            let dataTable;

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            function initializeDataTable() {
                if (dataTable) {
                    dataTable.destroy();
                }
                
                dataTable = $('#arrival-list-table').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            extend: 'excel',
                            text: '<i class="fa-solid fa-file-excel"></i> Export to Excel',
                            className: 'btn btn-success',
                            exportOptions: {
                                modifier: {
                                    search: 'none',
                                    order: 'current'
                                }
                            },
                            filename: function() {
                                return 'Sales_Register_' + new Date().toISOString().split('T')[0];
                            }
                        }
                    ],
                    paging: true,
                    searching: true,
                    ordering: true,
                    info: true,
                    responsive: true
                });
            }

            function loadSalesRegister(fromdate, todate, itemwise) {
                $('#myloader').removeClass('none');

                $.ajax({
                    url: "{{ route('fetchsalesregister') }}",
                    method: 'POST',
                    data: { fromdate, todate, itemwise },
                    success: function (results) {
                        $('#myloader').addClass('none');
                        $('#fromdatep').text(formatDate(fromdate));
                        $('#todatep').text(formatDate(todate));

                        if (dataTable) {
                            dataTable.destroy();
                        }

                        let table = $('#arrival-list-table');
                        let tbody = table.find('tbody');
                        let thead = table.find('thead');

                        tbody.empty();
                        thead.empty();

                        if (itemwise === 'no') {
                            // Old table header
                            let trHead = $('<tr></tr>');
                            let commonColumns = ['Bill No', 'Bill Date', 'Party Name', 'No. Of Pax', 'Total Per Cover', 'Discount', 'Taxable', 'NonTaxable', 'Cgst', 'Sgst', 'Round Off', 'Net Amount'];
                            commonColumns.forEach(col => trHead.append(`<th>${col}</th>`));
                            thead.append(trHead);

                            results.data.forEach(function (row) {
                                let tr = $('<tr></tr>');
                                tr.append(`<td><a href="banquetbillprint/${row.docid}">${row.vno || ''} : <i class="fa fa-eye"></i></a></td>`);
                                tr.append(`<td>${row.vdate || ''}</td>`);
                                tr.append(`<td>${row.party || ''}</td>`);
                                tr.append(`<td>${row.noofpax || ''}</td>`);
                                tr.append(`<td>${row.TotalPerCover || ''}</td>`);
                                tr.append(`<td>${row.discamt || ''}</td>`);
                                tr.append(`<td>${row.taxable || ''}</td>`);
                                tr.append(`<td>${row.nontaxable || ''}</td>`);
                                tr.append(`<td>${row.cgst || ''}</td>`);
                                tr.append(`<td>${row.sgst || ''}</td>`);
                                tr.append(`<td>${row.roundoff || ''}</td>`);
                                tr.append(`<td>${row.Amount || ''}</td>`);
                                tbody.append(tr);
                            });

                        } else if (itemwise === 'yes') {
                            // Itemwise table header
                            let trHead = $('<tr></tr>');
                            let itemHeaders = ['Bill No', 'Bill Date', 'Item Name', 'Qty', 'Rate', 'Taxable', 'Cgst', 'Sgst', 'Discount', 'Round Off', 'Amount'];
                            itemHeaders.forEach(col => trHead.append(`<th>${col}</th>`));
                            thead.append(trHead);

                            results.data.forEach(function (row) {
                                // First row: bill summary
                                let trBill = $('<tr></tr>').css('background-color', '#d9d9d9'); // dark background
                                trBill.append(`<td><a href="banquetbillprint/${row.docid}">${row.vno || ''} : <i class="fa fa-eye"></i></a></td>`);
                                trBill.append(`<td>${row.vdate || ''}</td>`);
                                trBill.append(`<td>${row.party || ''}</td>`);
                                trBill.append(`<td></td>`); // Qty empty for bill row
                                trBill.append(`<td></td>`); // Rate empty for bill row
                                trBill.append(`<td>${row.taxable || ''}</td>`);
                                trBill.append(`<td>${row.cgst || ''}</td>`);
                                trBill.append(`<td>${row.sgst || ''}</td>`);
                                trBill.append(`<td>${row.discamt || ''}</td>`);
                                trBill.append(`<td>${row.roundoff || ''}</td>`);
                                trBill.append(`<td>${row.Amount || ''}</td>`);
                                tbody.append(trBill);

                                // Item rows
                                if (row.items && row.items.length > 0) {
                                    row.items.forEach(function (item, index) {
                                        let trItem = $('<tr></tr>');
                                        trItem.append(`<td></td>`); // Bill No empty
                                        trItem.append(`<td>${row.vdate || ''}</td>`); // Bill Date
                                        // First item default cooked food
                                        let itemName = index === 0 && !item.iname ? 'Cooked Food' : item.iname;
                                        trItem.append(`<td>${itemName}</td>`);
                                        trItem.append(`<td>${item.qtyiss || ''}</td>`); // Qty
                                        trItem.append(`<td>${item.rate || ''}</td>`);    // Rate
                                        trItem.append(`<td>${item.taxamt || row.taxable || ''}</td>`); // Taxable
                                        trItem.append(`<td>${item.cgst || row.cgst || ''}</td>`);       // CGST
                                        trItem.append(`<td>${item.sgst || row.sgst || ''}</td>`);       // SGST
                                        trItem.append(`<td>${item.discamt || row.discamt || ''}</td>`); // Discount
                                        trItem.append(`<td>${row.roundoff || ''}</td>`);                // Round Off
                                        trItem.append(`<td>${(item.rate * item.qtyiss).toFixed(2) || row.Amount || ''}</td>`); // Amount
                                        tbody.append(trItem);
                                    });
                                }
                            });
                        }

                        // Initialize DataTable with Excel button
                        initializeDataTable();
                    },
                    error: function () {
                        $('#myloader').addClass('none');
                        pushNotify('error', 'Failed to fetch data');
                    }
                });
            }



            $('#fetchbutton').on('click', function () {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                let itemwise = $('#itemwise').val();

                if (fromdate === '' || todate === '') {
                    pushNotify('error', fromdate === '' ? 'Please Select From Date' :
                        'Please Select To Date');
                    return;
                }
                loadSalesRegister(fromdate, todate, itemwise);
            });

            function formatDate(dateString) {
                if (!dateString) return '';
                const date = new Date(dateString);
                return date.toLocaleDateString('en-US', {
                    year: 'numeric',
                    month: 'short',
                    day: 'numeric'
                });
            }

            function pushNotify(type, message) {
                alert(type.toUpperCase() + ': ' + message);
            }

        });
    </script>
@endsection