@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')


    <!-- 2️⃣ DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">


    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="nightAuditForm" action="javascript:void(0);" method="POST">
                                @csrf
                                <div class="row">

                                    <div class="col-md-3">
                                        <label>From Date</label>
                                        <input type="date" class="form-control" name="from_date" required>
                                    </div>

                                    <div class="col-md-3">
                                        <label>To Date</label>
                                        <input type="date" class="form-control" name="to_date" required>
                                    </div>

                                    <div class="col-md-3">
                                        <label>Select Users</label>
                                        <div class="border p-2" style="max-height:150px; overflow-y:auto;">
                                            <label>
                                                <input type="checkbox" id="select_all_users" checked> All Users
                                            </label>
                                            <br>

                                            @foreach ($users as $item => $users)
                                                <label>
                                                    <input type="checkbox" name="users[]" value="{{ $users }}"
                                                        class="user-checkbox" checked>
                                                    {{ $users }}
                                                </label>
                                                <br>
                                            @endforeach
                                        </div>
                                    </div>

                                    <div class="col-md-3 text-center">
                                        <button type="submit" class="btn btn-primary mt-4" id="btnSubmit">Refresh</button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12" id="resultArea" style="display: none;">
                    <div class="card">
                        <div class="card-body">
                            <!-- TABLE AREA -->
                            <div class="table-responsive mt-3">
                                <table id="nightAuditTable" class="table table-bordered table-striped" style="width:100%;">
                                    <thead>
                                        <tr>
                                            <th>Login Date</th>
                                            <th>Night Audit Date</th>
                                            <th>Narration</th>
                                            <th>User Name</th>
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
    <!-- jQuery FIRST -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- Then DataTables -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

    <script>
        $(document).ready(function () {

            function exportAllRowsToExcel(table) {
                const headers = [];
                $('#nightAuditTable thead th').each(function () {
                    headers.push($(this).text().trim());
                });

                const rows = table.rows({ search: 'applied', order: 'applied' }).data().toArray();

                const excelData = [headers];
                rows.forEach(function (row) {
                    if (Array.isArray(row)) {
                        excelData.push(row.map(function (cell) {
                            return $('<div>').html(cell).text().trim();
                        }));
                    } else {
                        excelData.push([
                            row[0] || '',
                            row[1] || '',
                            row[2] || '',
                            row[3] || ''
                        ]);
                    }
                });

                const worksheet = XLSX.utils.aoa_to_sheet(excelData);
                const workbook = XLSX.utils.book_new();
                XLSX.utils.book_append_sheet(workbook, worksheet, 'Night Audit');
                XLSX.writeFile(workbook, 'night_audit_log.xlsx');
            }

            function getAuditTableConfig() {
                return {
                    processing: true,
                    searching: true,
                    paging: true,
                    info: true,
                    order: [[0, 'desc']],
                    dom: 'Bfrtip',
                    buttons: [{
                        text: 'Export Excel',
                        className: 'btn btn-success',
                        action: function (e, dt) {
                            exportAllRowsToExcel(dt);
                        }
                    }]
                };
            }

            // Datatable Initialize (Empty)
            let auditTable = $('#nightAuditTable').DataTable(getAuditTableConfig());

            // SELECT ALL USERS
            $("#select_all_users").on("change", function () {
                $(".user-checkbox").prop("checked", $(this).is(":checked"));
            });

            $(".user-checkbox").on("change", function () {
                if ($(".user-checkbox:checked").length === $(".user-checkbox").length) {
                    $("#select_all_users").prop("checked", true);
                } else {
                    $("#select_all_users").prop("checked", false);
                }
            });

            // AJAX FORM SUBMIT
            $("#nightAuditForm").on("submit", function (e) {
                e.preventDefault();

                $("#btnSubmit").prop("disabled", true).text("Loading...");

                $.ajax({
                    url: "{{ route('fetchNightAuditLog') }}",
                    method: "POST",
                    data: $(this).serialize(),
                    success: function (response) {

                        $("#btnSubmit").prop("disabled", false).text("Refresh");
                        $("#resultArea").show();
                        // Destroy old datatable
                        auditTable.clear().destroy();

                        // Inject new rows
                        $("#nightAuditTable tbody").html(response.data_html || '');

                        // Reinitialize DataTable
                        auditTable = $('#nightAuditTable').DataTable(getAuditTableConfig());

                    },
                    error: function (xhr) {
                        $("#btnSubmit").prop("disabled", false).text("Refresh");
                        alert("Error loading data.");
                    }
                });

            });

        });

    </script>
@endsection