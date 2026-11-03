<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Housekeeping Login — Room {{ $roomno }}</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <!-- Bootstrap 5 local -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}">
    <!-- Font Awesome — same CDN jo poore project mein use hoti hai -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Sirf woh jo Bootstrap 5 cover nahi karta */
        .hk-card   { border-radius: 18px; overflow: hidden; }
        .hk-header { background: linear-gradient(135deg, #1e3a5f, #2d6a9f); }

        .hk-icon {
            width: 64px; height: 64px;
            background: rgba(255,255,255,.15);
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .room-badge {
            display: inline-block;
            background: rgba(255,255,255,.18);
            color: #e8f4ff;
            border-radius: 20px;
            font-size: .82rem;
            font-weight: 600;
            padding: 3px 14px;
            letter-spacing: .4px;
        }

        .btn-hk-login {
            background: linear-gradient(135deg, #1e3a5f, #2d6a9f);
            border: none; font-weight: 700; letter-spacing: .3px;
            transition: opacity .2s;
        }
        .btn-hk-login:hover, .btn-hk-login:focus { opacity: .88; color: #fff; }
        .btn-hk-login:disabled                   { opacity: .6; }

        /* Input icon box */
        .ig-icon {
            background: #f0f4f8;
            border: 1px solid #dee2e6; border-right: none;
            border-radius: .375rem 0 0 .375rem;
            padding: 0 12px;
            display: flex; align-items: center; color: #6c757d;
        }
        .ig-input              { border-left: none; }
        .ig-input:focus        { box-shadow: none; border-color: #2d6a9f; }
        .ig-wrap:focus-within .ig-icon { border-color: #2d6a9f; }

        .ig-toggle {
            background: #f0f4f8;
            border: 1px solid #dee2e6; border-left: none;
            border-radius: 0 .375rem .375rem 0;
            padding: 0 12px; cursor: pointer; color: #6c757d;
        }
        .ig-toggle:hover         { background: #e2e8f0; }
        .ig-input.has-toggle     { border-radius: 0; }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 py-3 px-3"
      style="background: linear-gradient(145deg, #0f2744 0%, #1a4a7a 60%, #2d6a9f 100%);">

<div class="hk-card bg-white shadow" style="width:100%; max-width:400px;">

    {{-- Header --}}
    <div class="hk-header text-center py-4 px-4">
        <div class="hk-icon mx-auto mb-3">
            <i class="fa-solid fa-broom fa-lg text-white"></i>
        </div>
        <h5 class="fw-bold text-white mb-2" style="font-size:1.1rem; letter-spacing:.3px;">
            Housekeeping Login
        </h5>
        <span class="room-badge">
            <i class="fa-solid fa-door-open me-1"></i>Room No: {{ $roomno }}
        </span>
    </div>

    {{-- Body --}}
    <div class="px-4 py-4">

        @if ($errors->has('u_name') || $errors->has('password'))
            <div class="alert alert-danger d-flex align-items-center gap-2 py-2 px-3 mb-3"
                 style="font-size:.85rem; border-radius:8px;">
                <i class="fa-solid fa-circle-exclamation"></i>
                <span>{{ $errors->first('u_name') ?: $errors->first('password') }}</span>
            </div>
        @endif

        <form method="POST"
              action="{{ route('hk.qr.doLogin', ['propertyid' => $propertyid, 'roomno' => $roomno]) }}"
              id="hk-login-form">
            @csrf

            {{-- Username --}}
            <div class="mb-3">
                <label for="u_name"
                       class="form-label fw-semibold text-uppercase"
                       style="font-size:.78rem; letter-spacing:.4px; color:#495057;">
                    Username
                </label>
                <div class="d-flex ig-wrap">
                    <div class="ig-icon"><i class="fa-solid fa-user fa-sm"></i></div>
                    <input type="text"
                           id="u_name" name="u_name"
                           class="form-control ig-input @error('u_name') is-invalid @enderror"
                           value="{{ old('u_name') }}"
                           placeholder="Username"
                           autocomplete="username"
                           autofocus>
                </div>
            </div>

            {{-- Password --}}
            <div class="mb-4">
                <label for="password"
                       class="form-label fw-semibold text-uppercase"
                       style="font-size:.78rem; letter-spacing:.4px; color:#495057;">
                    Password
                </label>
                <div class="d-flex ig-wrap">
                    <div class="ig-icon"><i class="fa-solid fa-lock fa-sm"></i></div>
                    <input type="password"
                           id="password" name="password"
                           class="form-control ig-input has-toggle @error('password') is-invalid @enderror"
                           placeholder="Password"
                           autocomplete="current-password">
                    <button type="button" class="ig-toggle" onclick="togglePwd()" tabindex="-1">
                        <i class="fa-solid fa-eye fa-sm" id="pwd-eye"></i>
                    </button>
                </div>
            </div>

            {{-- Submit --}}
            <div class="d-grid">
                <button type="submit"
                        class="btn btn-hk-login btn-lg text-white"
                        id="btn-login">
                    <i class="fa-solid fa-right-to-bracket me-2"></i>Login &amp; Open Cleaning
                </button>
            </div>

        </form>
    </div>

    {{-- Footer --}}
    <div class="text-center pb-3" style="font-size:.75rem; color:#adb5bd;">
        <i class="fa-solid fa-shield-halved me-1"></i>
        Secure Housekeeping Access &bull; Property ID: {{ $propertyid }}
    </div>

</div>

<!-- Bootstrap 5 JS bundle local -->
<script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script>
    function togglePwd() {
        var inp = document.getElementById('password');
        var eye = document.getElementById('pwd-eye');
        if (inp.type === 'password') {
            inp.type = 'text';
            eye.classList.replace('fa-eye', 'fa-eye-slash');
        } else {
            inp.type = 'password';
            eye.classList.replace('fa-eye-slash', 'fa-eye');
        }
    }

    document.getElementById('hk-login-form').addEventListener('submit', function () {
        var btn = document.getElementById('btn-login');
        btn.disabled = true;
        btn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-2"></i>Verifying...';
    });
</script>
</body>
</html>
