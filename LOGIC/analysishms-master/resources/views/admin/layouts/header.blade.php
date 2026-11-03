<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>Analysis</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <!-- Pignose Calender -->
    <link href="{{ asset('admin/plugins/pg-calendar/css/pignose.calendar.min.css') }}" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist/css/chartist.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Stylesheet -->
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css') }}"
        rel="stylesheet">
    <!-- Color picker plugins css -->
    <link href="{{ asset('admin/plugins/jquery-asColorPicker-master/css/asColorPicker.css') }}" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}" rel="stylesheet">
    <!-- Notify CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/spin.js/2.3.2/spin.min.js"></script>
    {{-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> --}}
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    {{-- <script src="{{ asset('admin/js/publicval.js') }}"></script> --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    {{-- <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div> --}}
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="{{ url('/superadmin') }}">
                    <b class="logo-abbr"><img class="rounded-circle" src="{{ env('APP_URL') }}/admin/images/user/letter-a.gif" alt="">
                    </b>
                    <span class="logo-compact"><img src="admin/images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="admin/images/logo-text.png" class="img-fluid" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content clearfix">

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left">
                    <div class="input-group icons">
                        @php
                            $currentDate = \Carbon\Carbon::now();
                            if ($currentDate->month < 4) {
                                $startYear = $currentDate->year - 1;
                                $endYear = $currentDate->year;
                            } else {
                                $startYear = $currentDate->year;
                                $endYear = $currentDate->year + 1;
                            }
                            $financialYear = $startYear . '-' . $endYear;
                        @endphp
                        <p class="m-2 bg-inverse text-white p-2 rounded-1">Current Financial Year: {{ $financialYear }}
                        </p>
                    </div>
                </div>

                <div class="header-right">
                    <li class="icons dropdown">
                        <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                            <span class="activity active"></span>
                            <img src="{{ env('APP_URL') }}/admin/images/user/letter-a.gif" height="40" width="40" alt="">
                        </div>

                        <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href=""><i class="icon-user"></i>
                                            <span>Profile</span></a>
                                    </li>
                                    <hr class="my-2">
                                    <li>
                                        <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock
                                                Screen</span></a>
                                    </li>
                                    <li><a href="{{ route('logout') }}"><i class="icon-key"></i><span>Logout</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        @if (isset($message))
            <script>
                Swal.fire({
                    icon: '{{ $type }}',
                    title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
                    text: '{{ $message }}',
                    timer: 5000,
                    showConfirmButton: true
                });
            </script>
        @endif

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
