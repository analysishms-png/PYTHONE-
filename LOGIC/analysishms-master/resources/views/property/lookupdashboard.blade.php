@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">

            <div class="card shadow-sm p-3">

                {{-- Cards Row --}}
                <div class="row g-3">

                    {{-- Card 1 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Total Purchase</h5>
                                <a href="{{ route('total.purchase') }}" class="btn btn-primary mt-auto">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 2 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Pending Indent</h5>
                                <a href="{{ route('pendingindent') }}" class="btn btn-primary mt-auto">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 3 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Pending Purchase Order</h5>
                                <a href="{{ route('pendingpurchaseorder') }}" class="btn btn-primary mt-auto">View
                                    Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 4 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Receiver VS Pending Material</h5>
                                <a href="{{ route('receiverpendingmaterial') }}" class="btn btn-primary mt-auto">View
                                    Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 5 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Supplier Wise Purchase</h5>
                                <a href="{{ route('supplierwisepurchase') }}" class="btn btn-primary mt-auto">View
                                    Details</a>
                            </div>
                        </div>
                    </div>


                    {{-- Card 6 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Delay Delivery</h5>
                                <a href="{{ route('delaydeliveryreport') }}" class="btn btn-primary mt-auto">View
                                    Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 7 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Purchase Trend</h5>
                                <a href="{{ route('getPurchaseAmount') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                    {{-- Card 8 --}}
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Minus stock</h5>
                                <a href="{{ route('miniusstock') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mb-3">
                        <div class="card h-100" style="border:1px solid #000; transition:all 0.3s ease; cursor:pointer;"
                            onmouseover="this.style.transform='translateY(-6px)'; this.style.boxShadow='0 8px 18px rgba(0,0,0,0.2)';"
                            onmouseout="this.style.transform='translateY(0)'; this.style.boxShadow='none';">
                            <div class="card-body text-center d-flex flex-column">
                                <h5 class="card-title mb-3">Pending M.R</h5>
                                <a href="{{ route('pendingmr') }}" class="btn btn-primary mt-auto">View Details</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
