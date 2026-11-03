@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="card shadow-sm p-3">
                <div class="row g-3">

                    {{-- Card 1 - Pending Vouchers --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100"
                            style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Pending Vouchers</h5>
                                <a href="{{ route('finance.transaction.voucherverification.pending') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 2 - Approved Vouchers --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100"
                            style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Approved Vouchers</h5>
                                <a href="{{ route('finance.transaction.voucherverification.approved') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 3 - Rejected Vouchers --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100"
                            style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Rejected Vouchers</h5>
                                <a href="{{ route('finance.transaction.voucherverification.rejected') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 4 - User Wise Entry (coming soon) --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100"
                            style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">User Wise Entry</h5>
                                <a href="{{ route('finance.transaction.voucherverification.userwise') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 5 - Audit Log (coming soon) --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100"
                            style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Audit Log</h5>
                                <a href="#" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
