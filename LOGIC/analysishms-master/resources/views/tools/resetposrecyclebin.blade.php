@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('posrecyclesubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="POS Recycle Bin Reset">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company:</label>
                                            <select class="form-control select2-multiple" id="propertyid" required name="propertyid">
                                                <option value="">Select Company</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} - {{ $item->propertyid }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Reset POS Recycle Bin</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
