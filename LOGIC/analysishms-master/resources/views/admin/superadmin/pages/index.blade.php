@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i> Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">My Pages</a></li>
                </ol>
            </div>
        </div>

        <div class="container-fluid">
            <div class="mb-3">
                <a href="{{ route('superadmin.pages.create') }}" class="btn btn-primary"><i class="fa fa-plus"></i> New Page</a>
            </div>

            @if(session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif

            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="bg-secondary text-white">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($pages as $page)
                            <tr>
                                <td>{{ $loop->iteration + ($pages->currentPage()-1)*$pages->perPage() }}</td>
                                <td>{{ $page->name }}</td>
                                <td>{{ $page->slug }}</td>
                                <td>{{ $page->title }}</td>
                                <td>{{ Str::limit($page->description, 100) }}</td>
                                <td>{{ ucfirst($page->status) }}</td>
                                <td>
                                    <a href="{{ route('superadmin.pages.edit', $page->id) }}" class="btn btn-sm btn-success">Edit</a>
                                    <form action="{{ route('superadmin.pages.destroy', $page->id) }}" method="POST" style="display:inline;"><br>
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?');">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            {{ $pages->links() }}
        </div>
    </div>
@endsection
