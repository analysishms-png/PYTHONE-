@extends('property.layouts.main')
@section('main-container')
    <style>
        .danger-background {
            background: linear-gradient(45deg, #ff6b6b, #ff8585);
            min-height: 100vh;
            padding: 2rem 0;
        }

        .warning-card {
            background: rgba(255, 255, 255, 0.95);
            border: 2px solid #dc3545;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(220, 53, 69, 0.3);
        }

        .danger-header {
            color: #dc3545;
            text-transform: uppercase;
            letter-spacing: 2px;
            animation: pulse 2s infinite;
        }

        .warning-icon {
            font-size: 48px;
            color: #dc3545;
            margin: 20px 0;
            animation: rotate 3s infinite;
        }

        .warning-text {
            color: #dc3545;
            font-weight: 500;
            margin: 20px 0;
        }

        .btn-danger-custom {
            background-color: #dc3545;
            border: none;
            padding: 10px 30px;
            margin: 10px;
            transition: all 0.3s ease;
        }

        .btn-danger-custom:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }

            50% {
                transform: scale(1.05);
            }

            100% {
                transform: scale(1);
            }
        }

        @keyframes rotate {
            0% {
                transform: rotate(0deg);
            }

            10% {
                transform: rotate(-10deg);
            }

            20% {
                transform: rotate(10deg);
            }

            30% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(0deg);
            }
        }
    </style>
    </head>

    <body>
        <div class="danger-background">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card warning-card">
                            <div class="card-body text-center">
                                <h2 class="danger-header mb-4">⚠️ Danger Zone ⚠️</h2>
                                <i class="fas fa-exclamation-triangle warning-icon"></i>
                                <p class="warning-text">
                                    You are about to change the financial year in the database.<br>
                                    This action cannot be undone. Please proceed with caution.
                                </p>

                                <form id="yearupdateprocess" method="POST">
                                    @csrf
                                    <div class="alert alert-danger" role="alert">
                                        <i class="fas fa-info-circle"></i>
                                        Make sure you have backed up all your data before proceeding
                                    </div>

                                    <div class="d-flex justify-content-center gap-3 mt-4">
                                        @if (date('m-d', strtotime($ncurdate)) == '03-31')
                                            <button id="processbutton" type="submit" class="btn btn-danger-custom">
                                                <i class="fas fa-calendar-alt me-2"></i>
                                                Update Financial Year
                                            </button>
                                        @else
                                            <div class="alert alert-danger" role="alert">
                                                <i class="fas fa-info-circle"></i>
                                                Update Button will only show on 31st of March
                                            </div>
                                            </br>
                                        @endif

                                    </div>

                                    <button onclick="window.location.href='/company'" id="exit" type="button" class="btn btn-secondary">
                                        <i class="fas fa-times me-2"></i>
                                        Cancel
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function() {

                $('#yearupdateprocess').on('submit', function(event) {
                    event.preventDefault();
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to proceed with the year update?",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, proceed!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            formsubmit('#yearupdateprocess', '#processbutton', 'Year And Update', 'company', 'yearupdatesubmit');
                        }
                    });
                });
            });
        </script>
    @endsection
