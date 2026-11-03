@extends('tools.layouts.main')
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
                                <h5 class="card-title mb-3">CRM</h5>
                                <a href="{{ route('CRM') }}" class="btn btn-primary mt-auto">
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
                                <h5 class="card-title mb-3">Follow Up</h5>
                                <a href="{{ route('followUp') }}" class="btn btn-primary mt-auto">
                                    View Details
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
