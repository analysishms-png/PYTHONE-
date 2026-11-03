@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.css">
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>

    <style>
        .filter-form {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
            margin-bottom: 8px;
        }

        .table thead {
            background-color: #007bff;
            color: white;
        }

        .table-responsive {
            border: 1px solid #dee2e6;
        }

        /* Column Width Styling */
        #menuItemRateTable thead th:nth-child(1),
        #menuItemRateTable tbody td:nth-child(1) {
            width: 5% !important;
            text-align: center;
        }

        #menuItemRateTable thead th:nth-child(2),
        #menuItemRateTable tbody td:nth-child(2) {
            width: 15% !important;
            min-width: 120px;
        }

        #menuItemRateTable thead th:nth-child(3),
        #menuItemRateTable tbody td:nth-child(3) {
            width: 18% !important;
            min-width: 140px;
        }

        #menuItemRateTable thead th:nth-child(4),
        #menuItemRateTable tbody td:nth-child(4) {
            width: 10% !important;
            min-width: 80px;
        }

        #menuItemRateTable thead th:nth-child(5),
        #menuItemRateTable tbody td:nth-child(5) {
            width: 10% !important;
            min-width: 80px;
        }

        #menuItemRateTable thead th:nth-child(6),
        #menuItemRateTable tbody td:nth-child(6) {
            width: 12% !important;
            min-width: 100px;
        }

        #menuItemRateTable thead th:nth-child(7),
        #menuItemRateTable tbody td:nth-child(7) {
            width: 30% !important;
            min-width: 150px;
        }

        /* Input and Select Width */
        .form-control {
            width: 100% !important;
        }

        .select2-container {
            width: 100% !important;
        }

        .table td {
            vertical-align: middle;
            padding: 8px 5px;
        }

        .table th {
            vertical-align: middle;
            padding: 10px 5px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <h4 class="card-title mb-4">Menu Item Rate Report</h4>

                            <!-- Filter Form -->
                            <div class="filter-form">
                                <form id="menuItemRateForm">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="outletSelect" class="col-form-label">Select Outlet <span
                                                        class="text-danger">*</span></label>
                                                <select class="form-control select2-single" id="outletSelect"
                                                    name="depart_code" required>
                                                    <option value="">-- Select Outlet --</option>
                                                    @foreach($outlets as $outlet)
                                                        <option value="{{ $outlet->dcode }}">{{ $outlet->Name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="itemGroupSelect" class="col-form-label">Select Item
                                                    Group</label>
                                                <select class="form-control select2-single" id="itemGroupSelect"
                                                    name="item_group">
                                                    <option value="">-- All Item Groups --</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="itemGroupSelect" class="col-form-label">App Date</label>
                                                <input type="date" class="form-control" id="appDate" name="app_date"
                                                    value="{{ $ncur }}">
                                            </div>
                                        </div>

                                        <div class="col-md-4" style="display: flex; align-items: flex-end;">
                                            <button type="button" id="fetchReportBtn" class="btn btn-primary btn-block">
                                                <i class="fa-solid fa-magnifying-glass"></i> Fetch Report
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <!-- Data Table -->
                            <div class="mt-4 table-responsive">
                                <table id="menuItemRateTable" class="table table-hover" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" id="selectAll"></th>
                                            <th>Item Name</th>
                                            <th>Department</th>
                                            <th>Weight/Qty</th>
                                            <th>Rate</th>
                                            <th>App Date</th>
                                            <th>Purchase Item </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Submit Buttons -->
                            <div class="mt-3 text-right">
                                <button type="button" id="itemUpdateBtn" class="btn btn-success">
                                    <i class="fa fa-save"></i> Item Update
                                </button>
                                <button type="button" id="itemRateUpdateBtn" class="btn btn-info">
                                    <i class="fa fa-edit"></i> Item Rate Update
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        let table; // Global variable to store DataTable instance

        $(document).ready(function () {
            // Initialize DataTable
            table = $('#menuItemRateTable').DataTable({
                responsive: true,
                serverSide: false,
                paging: true,
                pageLength: 15,
                searching: true
            });

            // Outlet Selection Change
            $('#outletSelect').on('change', function () {
                const departCode = $(this).val();

                if (departCode) {
                    // Clear previous data
                    $('#itemGroupSelect').html('<option value="">-- All Item Groups --</option>');
                    table.clear().draw();

                    // Fetch item groups via AJAX
                    $.ajax({
                        type: 'POST',
                        url: '{{ route("fetchitemgroupsbyoutlet") }}',
                        data: {
                            _token: '{{ csrf_token() }}',
                            depart_code: departCode
                        },
                        success: function (response) {
                            const itemGroups = JSON.parse(response);

                            itemGroups.forEach(function (group) {
                                $('#itemGroupSelect').append(
                                    `<option value="${group.code}">${group.name}</option>`
                                );
                            });
                        },
                        error: function (xhr, status, error) {

                            // Sweet Alert
                            Swal.fire({
                                title: 'Error fetching item groups:',
                                text: error,
                                icon: 'error',
                                confirmButtonColor: '#dc3545'
                            });
                        }
                    });
                } else {
                    $('#itemGroupSelect').html('<option value="">-- All Item Groups --</option>');
                    table.clear().draw();
                }
            });
            function formatDateDDMMYYYY(dateStr) {
                if (!dateStr) return '-';

                const d = new Date(dateStr);
                const day = String(d.getDate()).padStart(2, '0');
                const month = String(d.getMonth() + 1).padStart(2, '0');
                const year = d.getFullYear();

                return `${day}-${month}-${year}`;
            }

            // Fetch Report Button Click
            $('#fetchReportBtn').on('click', function () {

                $.ajax({
                    type: 'POST',
                    url: '{{ route("fetchmenuitemratereport") }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                        depart_code: $('#outletSelect').val(),
                        item_group: $('#itemGroupSelect').val()
                    },
                    success: function (response) {

                        table.clear();

                        response.items.forEach(function (row) {
                            

                            var checkbox = '<input type="checkbox" class="row-checkbox" data-itemcode="' + 
                                row.ItemCode + '" data-itemname="' + row.ItemName + '">';

                            var wtqtyinput = '<input type="number" class="form-control wtqty-input" ' +
                                'value="' + (row.wtqty ?? 0) + '" step="0.01" min="0">';

                            var rateinput = '<input type="number" class="form-control rate-input" ' +
                                'value="' + (row.Rate ? parseFloat(row.Rate).toFixed(2) : '0.00') + '" ' +
                                'step="0.01" min="0">';

                            /* ===== Purchase Item Select ===== */
                            let purchaseSelect = `
                                            <select class="form-control select2-single pitemcode">
                                                <option value="">Select</option>`;

                            response.purchase_items.forEach(function (pi) {
                                let selected = (pi.code == row.Pitemcode) ? 'selected' : '';
                                purchaseSelect += `<option value="${pi.code}" ${selected}>${pi.name}</option>`;
                            });

                            purchaseSelect += `</select>`;


                            /* ===== Department Select ===== */
                            let departSelect = `
                                            <select class="form-control select2-single departname">
                                                <option value="">Select</option>`;

                            response.departments.forEach(function (dn) {
                                let selected = (dn.dcode == row.kcode) ? 'selected' : '';
                                departSelect += `<option value="${dn.dcode}" ${selected}>${dn.name}</option>`;
                            });

                            departSelect += `</select>`;

                            /* ===== Add Row ===== */
                            table.row.add([
                                checkbox,
                                row.ItemName,
                                departSelect,
                                wtqtyinput,
                                rateinput,
                                // Date formate in DD-MM-YYYY
                                formatDateDDMMYYYY(row.AppDate), // 👈 DD-MM-YYYY
                                purchaseSelect,
                                // row.weightqty,
                            ]);
                        });

                        table.draw();

                        $('.select2-single').select2();
                    }
                });
            });

            // Optional: Fetch report when Enter key is pressed
            $(document).keypress(function (e) {
                if (e.which == 13) { // Enter key
                    $('#fetchReportBtn').click();
                    return false;
                }
            });

            // Select All Checkbox
            $(document).on('change', '#selectAll', function() {
                $('.row-checkbox').prop('checked', $(this).prop('checked'));
            });

            // Uncheck "Select All" if any checkbox is unchecked
            $(document).on('change', '.row-checkbox', function() {
                if (!$(this).prop('checked')) {
                    $('#selectAll').prop('checked', false);
                }
                
                // Check "Select All" if all checkboxes are checked
                if ($('.row-checkbox:checked').length === $('.row-checkbox').length) {
                    $('#selectAll').prop('checked', true);
                }
            });

            // Item Update Button Click
            $('#itemUpdateBtn').on('click', function() {
                const checkedRows = [];
                
                $('.row-checkbox:checked').each(function() {
                    const $row = $(this).closest('tr');
                    const itemcode = $(this).data('itemcode');
                    const itemname = $(this).data('itemname');
                    const departcode = $row.find('.departname').val();
                    const wtqty = $row.find('.wtqty-input').val();
                    const pitemcode = $row.find('.pitemcode').val();
                    
                    checkedRows.push({
                        itemcode: itemcode,
                        itemname: itemname,
                        departcode: departcode,
                        wtqty: wtqty,
                        pitemcode: pitemcode
                    });
                });

                if (checkedRows.length === 0) {
                    Swal.fire({
                        title: 'Warning',
                        text: 'Please select at least one item to update',
                        icon: 'warning',
                        confirmButtonColor: '#ffc107'
                    });
                    return;
                }

                // Send AJAX request
                $.ajax({
                    type: 'POST',
                    url: '{{ route("updatemenuitems") }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                        items: checkedRows,
                        outlet: $('#outletSelect').val()
                    },
                    beforeSend: function() {
                        $('#itemUpdateBtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Updating...');
                    },
                    success: function(response) {
                        Swal.fire({
                            title: 'Success',
                            text: response.message || 'Items updated successfully',
                            icon: 'success',
                            confirmButtonColor: '#28a745'
                        });
                        $('#fetchReportBtn').click(); // Refresh data
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            title: 'Error',
                            text: xhr.responseJSON?.message || 'Failed to update items',
                            icon: 'error',
                            confirmButtonColor: '#dc3545'
                        });
                    },
                    complete: function() {
                        $('#itemUpdateBtn').prop('disabled', false).html('<i class="fa fa-save"></i> Item Update');
                    }
                });
            });

            // Item Rate Update Button Click
            $('#itemRateUpdateBtn').on('click', function() {
                const checkedRows = [];
                
                $('.row-checkbox:checked').each(function() {
                    const $row = $(this).closest('tr');
                    const itemcode = $(this).data('itemcode');
                    const itemname = $(this).data('itemname');
                    const rate = $row.find('.rate-input').val();
                    const appDate = $('#appDate').val();
                    
                    checkedRows.push({
                        itemcode: itemcode,
                        itemname: itemname,
                        rate: rate,
                        app_date: appDate
                    });
                });

                if (checkedRows.length === 0) {
                    Swal.fire({
                        title: 'Warning',
                        text: 'Please select at least one item to update rate',
                        icon: 'warning',
                        confirmButtonColor: '#ffc107'
                    });
                    return;
                }

                // Send AJAX request
                $.ajax({
                    type: 'POST',
                    url: '{{ route("updateitemrates") }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                        items: checkedRows,
                        outlet: $('#outletSelect').val()
                    },
                    beforeSend: function() {
                        $('#itemRateUpdateBtn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Updating...');
                    },
                    success: function(response) {
                        Swal.fire({
                            title: 'Success',
                            text: response.message || 'Item rates updated successfully',
                            icon: 'success',
                            confirmButtonColor: '#28a745'
                        });
                        $('#fetchReportBtn').click(); // Refresh data
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            title: 'Error',
                            text: xhr.responseJSON?.message || 'Failed to update item rates',
                            icon: 'error',
                            confirmButtonColor: '#dc3545'
                        });
                    },
                    complete: function() {
                        $('#itemRateUpdateBtn').prop('disabled', false).html('<i class="fa fa-edit"></i> Item Rate Update');
                    }
                });
            });
        });
    </script>

@endsection