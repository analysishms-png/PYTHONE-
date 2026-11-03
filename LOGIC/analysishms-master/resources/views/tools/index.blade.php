@extends('tools.layouts.main')
@section('main-container')
    {{-- <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css"> --}}
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="general-button inconsistency">
                                <button type="button" class="btn mb-1 btn-primary">Company <i
                                        class="fa-solid fa-coins"></i></button>
                                <i class="fa-solid fa-arrow-right fa-fade"></i>
                                <button onclick="window.location.href='{{ url('/tools/changeswdate') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Change S/W Date</button>
                                <button onclick="window.location.href='{{ url('/tools/changecompanydetails') }}'"
                                    type="button" class="btn mb-1 btn-outline-success">Change Company Details</button>
                                <button onclick="functionGetCompanyDetails()" id="loadPropertiesBtn" type="button"
                                    class="btn mb-1 btn-outline-success">Property Detalies</button><button
                                    onclick="window.location.href='{{ url('/tools/databackups') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Database Backup</button>
                                <button onclick="window.location.href='{{ url('/tools/dataempty') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Data Empty</button>
                                <button onclick="window.location.href='{{ url('/tools/getlogreport') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Log Report</button>
                                <button onclick="window.location.href='{{ url('/tools/getpurchaseamount') }}'"
                                    type="button" class="btn mb-1 btn-outline-success">Purchase Amount</button>
                            </div>
                            <div class="general-button inconsistency">
                                <button type="button" class="btn mb-1 btn-primary">FOM <i
                                        class="fa-solid fa-coins"></i></button>
                                <i class="fa-solid fa-arrow-right fa-fade"></i>
                                <button onclick="window.location.href='{{ url('/tools/changecheckout') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Change Checkout</button>
                                <button onclick="window.location.href='{{ url('/tools/roomchargepost') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Room Charge Posting</button>
                                <button onclick="window.location.href='{{ url('/tools/extrabedpost') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Charge Posting</button>
                            </div>
                            <div class="general-button inconsistency">
                                <button type="button" class="btn mb-1 btn-primary">POS <i
                                        class="fa-solid fa-coins"></i></button>
                                <i class="fa-solid fa-arrow-right fa-fade"></i>
                                <button onclick="window.location.href='{{ url('/tools/changebilldate') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Change Bill Date</button>
                                <button onclick="window.location.href='{{ url('/tools/posrecycle') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">POS Recyle</button>
                            </div>
                            <div class="general-button inconsistency">
                                <button type="button" class="btn mb-1 btn-primary">FINANCE<i
                                        class="fa-solid fa-coins"></i></button>
                                <i class="fa-solid fa-arrow-right fa-fade"></i>
                                <button onclick="window.location.href='{{ url('/tools/integritycheck') }}'" type="button"
                                    class="btn mb-1 btn-outline-success">Intregity Check</button>
                            </div>
                        </div>
                    </div>
                    <div class="card" id="company_details_report" style="display: none;">
                        <div class="card-body">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}
    <!-- 1️⃣ jQuery (FULL VERSION ONLY) -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- 2️⃣ DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

    <!-- 3️⃣ DataTables JS -->
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script>
        function formatDateDDMMYYYY(data) {
            if (!data) return '';

            let d = new Date(data);

            if (isNaN(d.getTime())) {
                return '';
            }

            let day = String(d.getDate()).padStart(2, '0');
            let month = String(d.getMonth() + 1).padStart(2, '0');
            let year = d.getFullYear();

            return `${day}-${month}-${year}`;
        }

        function functionGetCompanyDetails() {

            // ✅ SHOW LOADING
            Swal.fire({
                title: 'Loading Property IDs...',
                html: 'Please wait while data is loading',
                allowOutsideClick: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            });
            $('#loadPropertiesBtn').prop('disabled', true);

            $.ajax({
                url: "{{ route('getcompanydetails') }}",
                type: "GET",

                success: function(response) {

                    Swal.close(); // ✅ CLOSE LOADING

                    if (response.status && response.data.length > 0) {
                        // re-enable after success/error
                        $('#loadPropertiesBtn').prop('disabled', false);
                        $("#company_details_report").show();

                        let cardBody = $("#company_details_report .card-body");

                        if ($.fn.DataTable.isDataTable('#companyTable')) {
                            $('#companyTable').DataTable().destroy();
                        }

                        cardBody.html(`
                            <table id="companyTable" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Property ID</th>
                                        <th>Name</th>
                                        <th>City</th>
                                        <th>Mobile</th>
                                        <th>SW Date</th>
                                        <th>Install Date</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        `);

                        $('#companyTable').DataTable({
                            data: response.data,
                            columns: [{
                                    data: 'PropertyID',
                                    render: function(data) {
                                        return `<strong>${data}</strong>`;
                                    }
                                },
                                {
                                    data: 'Name'
                                },
                                {
                                    data: 'City'
                                },
                                {
                                    data: 'Mobile'
                                },
                                {
                                    data: 'SWDate',
                                    render: function(data) {
                                        return formatDateDDMMYYYY(data);
                                    }
                                },
                                {
                                    data: 'InstallDate',
                                    render: function(data) {
                                        return formatDateDDMMYYYY(data);
                                    }
                                }
                            ],
                            order: [
                                [1, 'asc']
                            ],
                            pageLength: 10,
                            columnDefs: [{
                                targets: 0,
                                className: 'text-center'
                            }]
                        });

                    } else {
                        Swal.fire('No Data', 'No company data found.', 'warning');
                    }
                },

                error: function() {

                    Swal.close(); // ✅ CLOSE LOADING

                    Swal.fire('Error', 'Unable to fetch company details.', 'error');
                }
            });
        }


        // Database Backup
        $('#downloadDatabaseBtn').click(function() {

            Swal.fire({
                title: 'Confirm Database Backup',
                text: 'Are you sure you want to create a database backup?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#198754', // Bootstrap success
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Backup Now',
                cancelButtonText: 'Cancel'
            }).then((result) => {

                if (result.isConfirmed) {

                    let dbPassword = 'Analysis@pss';

                    Swal.fire({
                        title: 'Creating Database Backup...',
                        html: 'Please wait... Elapsed time: <b>00:00</b>',
                        allowOutsideClick: false,
                        didOpen: () => {
                            Swal.showLoading();
                            startTimer();
                        },
                        willClose: () => stopTimer()
                    });

                    $.ajax({
                        url: "{{ route('superadmin.database-backup') }}",
                        method: 'POST',
                        data: {
                            password: dbPassword,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(response) {

                            stopTimer();
                            Swal.close();

                            if (response.status === 'success') {

                                triggerDownload(response.url);

                                Swal.fire({
                                    icon: 'success',
                                    title: 'Backup Created!',
                                    text: 'Database backup downloaded successfully.'
                                });

                            } else {
                                Swal.fire('Error!', response.message, 'error');
                            }
                        },
                        error: function() {

                            stopTimer();
                            Swal.close();

                            Swal.fire(
                                'Error!',
                                'Something went wrong while creating the backup.',
                                'error'
                            );
                        }
                    });
                }
            });
        });

        // Timer utils
        let timerInterval;

        function startTimer() {
            let startTime = Date.now();
            timerInterval = setInterval(() => {
                const elapsed = Math.floor((Date.now() - startTime) / 1000);
                const minutes = Math.floor(elapsed / 60);
                const seconds = elapsed % 60;
                const timeString = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
                Swal.update({
                    html: `Please wait... Elapsed time: <b>${timeString}</b>`
                });
            }, 1000);
        }

        function stopTimer() {
            if (timerInterval) {
                clearInterval(timerInterval);
                timerInterval = null;
            }
        }

        // Trigger download helper
        function triggerDownload(url) {
            const link = document.createElement('a');
            link.href = url;
            link.download = '';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    </script>
@endsection
