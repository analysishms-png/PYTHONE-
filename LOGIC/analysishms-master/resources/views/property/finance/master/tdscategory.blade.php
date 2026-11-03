@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
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

                            <form action="{{ route('finance.master.tdscategory.store') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="tdspercentage">TDS Percentage</label>
                                            <input type="number" class="form-control" id="tdspercentage" name="tdspercentage" step="0.01" value="{{ old('tdspercentage') }}" required>
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
                                                    <option value="{{ $group->sub_code }}">{{ $group->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>

                            <div class="mt-3">
                                <div class="table-responsive">
                                    <table id="tdscategory" class="table">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>TDS Percentage</th>
                                                <th>Account</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($data as $item)
                                                <tr>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->tdspercentage }}</td>
                                                    <td>{{ $item->accountname }}</td>
                                                    <td class="ins">
                                                        <a href="{{ route('finance.master.tdscategory.edit', $item->id) }}" class="btn btn-sm btn-primary">Edit</a>
                                                        <form action="{{ route('finance.master.tdscategory.destroy', $item->id) }}" method="POST" style="display: inline;">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
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
            let table = new DataTable('#tdscategory', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
        });
    </script>
@endsection
