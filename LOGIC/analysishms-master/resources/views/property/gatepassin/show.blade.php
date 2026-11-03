@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Gate Pass IN Details</h4>
                            <div>
                                <a href="{{ route('inwarddetails.edit', $gatePassIn->sn) }}" class="btn btn-primary">
                                    <i class="fa fa-edit"></i> Edit
                                </a>
                                <a href="{{ route('inwarddetails.index') }}" class="btn btn-secondary">
                                    <i class="fa fa-arrow-left"></i> Back to List
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="text-center mb-4">Gate Pass IN - Word</h3>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Gate Pass No:</strong></label>
                                        <p>{{ $gatePassIn->gatepassno }}</p>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Date:</strong></label>
                                        <p>{{ $gatePassIn->date ? \Carbon\Carbon::parse($gatePassIn->date)->format('d-m-Y') : '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Time:</strong></label>
                                        <p>{{ $gatePassIn->time ? \Carbon\Carbon::parse($gatePassIn->time)->format('H:i:s') : '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Type:</strong></label>
                                        <p>{{ $gatePassIn->type }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Voucher Type:</strong></label>
                                        <p>GAIP</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Visitor/Party Name:</strong></label>
                                        <p>{{ $gatePassIn->visitiorname ?? ($gatePassIn->partycode ?? '-') }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Mobile No:</strong></label>
                                        <p>{{ $gatePassIn->mobileno ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Vehicle No:</strong></label>
                                        <p>{{ $gatePassIn->vehicleno ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Material:</strong></label>
                                        <p>{{ $gatePassIn->materinouyn == 'Y' ? 'Yes' : 'No' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Item Name:</strong></label>
                                        <p>{{ $gatePassIn->item_name ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Qty:</strong></label>
                                        <p>{{ $gatePassIn->qty ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Unit:</strong></label>
                                        <p>{{ $gatePassIn->unit ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Department:</strong></label>
                                        <p>{{ $gatePassIn->department ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Word Status:</strong></label>
                                        <p>
                                            <span class="badge badge-{{ $gatePassIn->wordstatus == 'PENDING' ? 'warning' : 'success' }}">
                                                {{ $gatePassIn->wordstatus }}
                                            </span>
                                        </p>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label><strong>Remark:</strong></label>
                                        <p>{{ $gatePassIn->remark ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Created By:</strong></label>
                                        <p>{{ $gatePassIn->u_name ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Created Date:</strong></label>
                                        <p>{{ $gatePassIn->created_at ? \Carbon\Carbon::parse($gatePassIn->created_at)->format('d-m-Y H:i:s') : '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-12 mt-4">
                                    <button onclick="window.print()" class="btn btn-info">
                                        <i class="fa fa-print"></i> Print Gate Pass
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        @media print {
            .card-header .btn,
            button {
                display: none !important;
            }
        }
    </style>
@endsection
