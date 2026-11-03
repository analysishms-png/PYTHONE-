@extends('frontend.layouts.main')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Username') }}</label>

                            <div class="col-md-6">
                                <input id="u_name" type="text"
                                    class="form-control @error('u_name') is-invalid @enderror" name="u_name"
                                    value="{{ old('email') }}" required autocomplete="u_name" autofocus>

                                @error('u_name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>

                           

                        </div>

                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password')
                                }}</label>

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

                            <label for="propertyid" class="col-md-4 mt-3 col-form-label text-md-end">{{ __('Propertyid')
                            }}</label>
                        <div class="col-md-6 mt-3">
                            <input id="propertyid" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" type="text"
                                class="form-control @error('propertyid') is-invalid @enderror" name="propertyid"
                                value="{{ old('email') }}" required autocomplete="propertyid" autofocus>

                            @error('propertyid')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{
                                        old('remember') ? 'checked' : '' }}>

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
                            <div class="mt-2 text-center">
                                <a class="btn btn-success" href="{{ url('/') }}#demo-request">Don't Have Login ID & Password ? Request Demo Now..</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const savedPropertyId = localStorage.getItem('propertyid');
        if (savedPropertyId) {
            document.getElementById('propertyid').value = savedPropertyId;
        }
    });

    document.querySelector('form').addEventListener('submit', function(e) {
        const propertyId = document.getElementById('propertyid').value;
        if (propertyId) {
            localStorage.setItem('propertyid', propertyId);
        }
    });
</script>
@endsection