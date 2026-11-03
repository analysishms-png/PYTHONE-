@extends('property.layouts.main')
@section('main-container')
    @php
        use Illuminate\Support\Facades\Date;
    @endphp
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form id="blankgrcform" name="blankgrcform" method="POST">
                                @csrf
                                <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $company->city }}" id="compcity" name="compcity">
                                <input type="hidden" value="{{ $fom->checkout }}" name="checkout" id="checkout">
                                <input type="hidden" value="{{ date('d-m-Y', strtotime($ncur)) }}" name="ncur" id="ncur">
                                <input type="hidden" value="{{ date('H:i:s') }}" name="curtime" id="curtime">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="startsrl">Guest Serial no.</b>
                                            </label>
                                            <input value="{{ $srlno }}" type="number" 
                                                id="startsrl" name="startsrl" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Guest Name</b>
                                            </label>
                                            <input value="" type="text"  id="name" name="name"
                                                class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center mt-4 ml-auto">
                                    <button id="submitBtn" type="button" class="btn ti-printer btn-primary"> Print Blank
                                        Grc</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script>
        $(document).ready(function() {
            $('#submitBtn').on('click', function() {
                let name = $('#name').val();
                let rid = $('#startsrl').val();
                let compname = $('#compname').val();
                let address = $('#address').val();
                let mob = $('#compmob').val();
                let email = $('#email').val();
                let compcity = $('#compcity').val();
                let logo = 'storage/admin/property_logo/' + $('#logo').val();
                let checkout = $('#checkout').val().substr(0, 5);
                let curdate = $('#ncur').val();
                let curtime = $('#curtime').val();
                let filetoprint = 'blankgrcform';
                // let curtc = new Date();
                // curtc = curtc.getTime()
                let newWindow = window.open(filetoprint, '_blank');
                newWindow.onload = function() {
                    $('#names', newWindow.document).val(name);
                    $('#rid', newWindow.document).text(rid);
                    $('#checkouttime', newWindow.document).text(checkout);
                    $('#ncur', newWindow.document).text(curdate);
                    $('#curtime', newWindow.document).text(curtime);
                    newWindow.print();
                };
            });
        });
    </script>
@endsection
