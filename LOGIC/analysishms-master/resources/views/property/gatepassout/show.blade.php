@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Gate Pass Details</h4>
                            <div>
                                <a href="{{ route('gatepass.edit', $gatePass->sn) }}" class="btn btn-primary">
                                    <i class="fa fa-edit"></i> Edit
                                </a>
                                <a href="{{ route('gatepass.index') }}" class="btn btn-secondary">
                                    <i class="fa fa-arrow-left"></i> Back to List
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="text-center mb-4">Gate Pass Out - Exit</h3>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Gate Pass No:</strong></label>
                                        <p>{{ $gatePass->gatepassno }}</p>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Date:</strong></label>
                                        <p>{{ $gatePass->date ? \Carbon\Carbon::parse($gatePass->date)->format('d-m-Y') : '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label><strong>Time:</strong></label>
                                        <p>{{ $gatePass->time ? \Carbon\Carbon::parse($gatePass->time)->format('H:i:s') : '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Type:</strong></label>
                                        <p>{{ $gatePass->type }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Voucher Type:</strong></label>
                                        <p>GARP</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Visitor/Party Name:</strong></label>
                                        <p>{{ $gatePass->visitiorname ?? ($gatePass->partycode ?? '-') }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Mobile No:</strong></label>
                                        <p>{{ $gatePass->mobileno ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Vehicle No:</strong></label>
                                        <p>{{ $gatePass->vehicleno ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Material:</strong></label>
                                        <p>{{ $gatePass->materinouyn == 'Y' ? 'Yes' : 'No' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Exit Status:</strong></label>
                                        <p>
                                            <span class="badge badge-{{ $gatePass->exitstatus == 'PENDING' ? 'warning' : 'success' }}">
                                                {{ $gatePass->exitstatus }}
                                            </span>
                                        </p>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label><strong>Remark:</strong></label>
                                        <p>{{ $gatePass->remark ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Created By:</strong></label>
                                        <p>{{ $gatePass->u_name ?? '-' }}</p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label><strong>Created Date:</strong></label>
                                        <p>{{ $gatePass->created_at ? \Carbon\Carbon::parse($gatePass->created_at)->format('d-m-Y H:i:s') : '-' }}</p>
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
