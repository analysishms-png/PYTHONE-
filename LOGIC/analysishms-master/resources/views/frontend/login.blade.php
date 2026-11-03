{{-- @extends('layouts.app') --}}
{{-- @extends('frontend.layouts.header') --}}

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    @if (session('logerror'))
                        <div id="error-message" class="text-danger text-center bg-body-secondary p-1">
                            {{ session('logerror') }}
                        </div>
                    @endif
                    <div class="card-header">{{ __('Login') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="row mb-3">
                                <label for="email"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email"
                                        class="form-control @error('email') is-invalid @enderror" name="email"
                                        value="{{ old('email') }}" required autocomplete="email" autofocus>

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="password"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                                <div class="col-md-6">
                                    <input id="password" type="password"
                                        class="form-control @error('password') is-invalid @enderror" name="password"
                                        required autocomplete="current-password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-6 offset-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                            {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Login') }}
                                    </button>

                                    @if (Route::has('password.request'))
                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <style>
                /* Custom Animated Text Styling using ID-first selectors */
                #demo-suggest .wave-text {
                    display: inline-block;
                    position: relative;
                    color: #333;
                    text-decoration: none;
                    font-weight: bold;
                    transition: all 0.3s ease;
                    overflow: hidden;
                }

                #demo-suggest .wave-text::before {
                    content: '';
                    position: absolute;
                    bottom: 0;
                    left: -100%;
                    width: 100%;
                    height: 2px;
                    background: linear-gradient(90deg, transparent, #0d6efd, transparent);
                    transition: all 0.5s ease;
                }

                #demo-suggest .wave-text:hover {
                    color: #0d6efd;
                    transform: scale(1.05);
                }

                #demo-suggest .wave-text:hover::before {
                    left: 100%;
                }

                /* Wave Animation */
                @keyframes wave {

                    0%,
                    100% {
                        transform: translateY(0);
                    }

                    50% {
                        transform: translateY(-5px);
                    }
                }

                #demo-suggest .wave-hover:hover {
                    animation: wave 0.5s ease-in-out;
                }

                body {
                    background-color: #f4f6f9;
                }

                #demo-suggest {
                    background-color: white;
                    border-radius: 10px;
                    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                }
            </style>
            </head>

            <div id="demo-suggest" class="container text-center p-5 shadow-sm">
                <h1 class="h2 fw-bold mb-4 text-dark">Access Our Platform</h1>

                <p class="lead text-muted mb-4">
                    Don't have login and password?
                </p>

                <a href="#" class="wave-text wave-hover btn btn-primary btn-lg px-4 py-2 mb-4">
                    Request Demo Now
                </a>

                <div class="small text-muted">
                    Contact our sales team for <span class="fw-semibold text-primary">personalized access</span>
                </div>
            </div>
        </div>
    </div>
@endsection
