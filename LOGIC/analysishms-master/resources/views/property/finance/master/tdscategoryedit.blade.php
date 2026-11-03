@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            @if (session('success'))
                                <div class="alert alert-success">
                                    {{ session('success') }}
                                </div>
                            @endif

                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul class="mb-0">
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <form action="{{ route('finance.master.tdscategory.update', $editData->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                value="{{ old('name', $editData->name) }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="tdspercentage">TDS Percentage</label>
                                            <input type="number" class="form-control" id="tdspercentage" name="tdspercentage"
                                                step="0.01" value="{{ old('tdspercentage', $editData->tdspercentage) }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        @php
                                            use App\Models\SubGroup;
                                            $tdsgroups = SubGroup::where('propertyid', Auth::user()->propertyid)
                                                ->where('nature', 'TDS')
                                                ->orderBy('name')
                                                ->get();
                                        @endphp
                                        <div class="form-group">
                                            <label for="account">Ac Name</label>
                                            <select class="form-control" name="account" id="account" required>
                                                <option value="">Select</option>
                                                @foreach ($tdsgroups as $group)
                                                    <option value="{{ $group->sub_code }}" {{ $editData->account == $group->sub_code ? 'selected' : '' }}>
                                                        {{ $group->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                    <a href="{{ route('finance.master.tdscategory') }}" class="btn btn-secondary">Back</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
