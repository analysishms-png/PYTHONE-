<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Analysis') }}</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font -->
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <style>
        /* Responsive logo */
        .navbar-brand img {
            height: 45px;
            max-width: 100%;
        }

        @media (max-width: 768px) {
            .navbar-brand img {
                height: 35px;
            }
        }

        /* Page spacing */
        main {
            min-height: 80vh;
            padding: 20px 10px;
        }
    </style>
</head>

<body>

<div id="app">

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">

            <!-- Logo -->
            <a class="navbar-brand" href="{{ url('/') }}">
                <img src="{{ config('APP_HEADERIMG', 'assets/img/logo.gif') }}"
                     alt="{{ config('app.name', 'Analysis') }}">
            </a>

            <!-- Mobile Toggle -->
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Menu -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav me-auto"></ul>

                <ul class="navbar-nav ms-auto">

                    @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">
                                    Login
                                </a>
                            </li>
                        @endif

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">
                                    Register
                                </a>
                            </li>
                        @endif

                    @else
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle"
                               href="#"
                               role="button"
                               data-bs-toggle="dropdown">
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">

                                <a class="dropdown-item"
                                   href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                   document.getElementById('logout-form').submit();">
                                    Logout
                                </a>

                                <form id="logout-form"
                                      action="{{ route('logout') }}"
                                      method="POST"
                                      class="d-none">
                                    @csrf
                                </form>

                            </div>
                        </li>
                    @endguest

                </ul>

            </div>
        </div>
    </nav>

    <!-- CONTENT -->
    <main>
        @yield('content')
    </main>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
