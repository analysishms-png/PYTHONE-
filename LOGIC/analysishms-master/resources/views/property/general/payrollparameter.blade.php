@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <!-- row -->
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                {{-- Payroll Setting --}}
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Payroll Setting</label>
                                    <div class="tabby-content">
                                        <form class="form" name="billprintingfm" id="billprintingfm"
                                            action="{{ route('payrollupdate') }}" method="POST">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="loanac">Loan Account</label>
                                                        <select class="form-control" name="loanac" id="loanac">
                                                            <option value="">Select</option>
                                                            @foreach (subgroupall() as $item)
                                                                <option value="{{ $item->sub_code }}" {{ payrollparameter()->loanac == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="salaryac">Salary Account</label>
                                                        <select class="form-control" name="salaryac" id="salaryac">
                                                            <option value="">Select</option>
                                                            @foreach (subgroupall() as $item)
                                                                <option value="{{ $item->sub_code }}" {{ payrollparameter()->salaryac == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="advanceac">Advance Account</label>
                                                        <select class="form-control" name="advanceac" id="advanceac">
                                                            <option value="">Select</option>
                                                            @foreach (subgroupall() as $item)
                                                                <option value="{{ $item->sub_code }}" {{ payrollparameter()->advanceac == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="gdayssalary">Salary Days</label>
                                                        <input type="text" class="form-control" value="{{ payrollparameter()->gdayssalary }}" name="gdayssalary" id="gdayssalary">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                {{-- Sample --}}

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">Sample</label>
                                    <div class="tabby-content">
                                        <p>sample</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

        });
    </script>
@endsection
