@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form id="chargeposting" name="chargeposting" action="{{ route('chargespostingstore') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="charge_date">For Date:</label>
                                            <input value="{{ $ncurdate }}" type="date" id="charge_date"
                                                name="charge_date" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Charge Posting <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    {{-- <script>
    $(document).ready(function () {
        handleFormSubmission('#chargeposting', '#submitBtn', 'chargespostingstore');
    });
</script> --}}
@endsection
