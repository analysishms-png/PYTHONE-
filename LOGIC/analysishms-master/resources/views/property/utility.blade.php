@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        @if (session('success'))
            <script>
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: '{{ session('success') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif
        @if (session('error'))
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: '{{ session('error') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i
                                class="fa-solid fa-magnifying-glass"></i>
                            Utility</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center mb-3">Utility Access <i
                                    class="fa-solid fa-magnifying-glass"></i></h4>
                            <div class="general-button">
                                <button type="button" class="btn mb-1 btn-primary">Permission</button>
                                <button type="button" class="btn mb-1 btn-secondary">Backup Data</button>
                                <button type="button" onclick="window.location.href='{{ url('/usermaster') }}'"
                                    class="btn mb-1 btn-success">User Master</button>
                                <button type="button" class="btn mb-1 btn-danger">Sundry Master</button>
                                <button type="button" onclick="window.location.href='{{ url('/inconsistency') }}'"
                                    class="btn mb-1 btn-warning">Inconsistency Check</button>
                                <button type="button" class="btn mb-1 btn-info">Year And Updation</button>
                                <button type="button" class="btn mb-1 btn-light">Menu Item Copy</button>
                                <button type="button" class="btn mb-1 btn-dark">Guest Lookup</button>
                                <button type="button" onclick="window.location.href='{{ url('/countryform2') }}'"
                                    class="btn mb-1 btn-primary">Country Master</button>
                                <button type="button" onclick="window.location.href='{{ url('/stateform2') }}'"
                                    class="btn mb-1 btn-secondary">State Master</button>
                                <button type="button" onclick="window.location.href='{{ url('/cityform2') }}'"
                                    class="btn mb-1 btn-success">City Master</button>
                                <button type="button" class="btn mb-1 btn-danger">Sundry Master</button>
                                <button type="button" class="btn mb-1 btn-warning">Company Master</button>
                                <button type="button" class="btn mb-1 btn-info">Department</button>
                                <button type="button" class="btn mb-1 btn-light">Ledge Accounts</button>
                                <button type="button" class="btn mb-1 btn-dark">Unit Master</button>
                                <button type="button" class="btn mb-1 btn-success">Task Scheduler</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);
        });
    </script>
@endsection
