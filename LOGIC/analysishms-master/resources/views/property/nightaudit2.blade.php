@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form id="nightauditform" action="{{ route('nightauditdegrade') }}" name="nightauditform"
                                method="POST">
                                @csrf
                                <div class="form-group">
                                    @php
                                        use Illuminate\Support\Facades\Date;
                                    @endphp

                                    <label for="ncurdate">For Date: <b> {{ Date::parse($ncurdate)->format('d-m-Y') }} </b>
                                    </label>
                                    <input style="display:none;" value="{{ $ncurdate }}" type="date" id="ncurdate"
                                        name="ncurdate" class="form-control">
                                </div>
                                @if (date('d-m', strtotime($ncurdate)) != '01-04')
                                    <div class="col-7 mt-4 ml-auto">
                                        <button id="submitBtn" type="button" class="btn btn-primary"
                                            onclick="nightAuditConfirmation()">Night Audit Reverse <i
                                                class="fa-solid fa-file-export"></i></button>
                                    </div>
                                @endif

                            </form>

                            <script>
                                function nightAuditConfirmation() {
                                    if (confirm("This process is very critical. Make sure that all the billings are stopped and no transactions have been made during the Night Audit process. Continue with the Night Audit Process.")) {
                                        document.getElementById("nightauditform").submit();
                                    }
                                }
                            </script>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
@endsection
