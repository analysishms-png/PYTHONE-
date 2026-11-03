@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        @if (session('success'))
            <script>
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: '{{ session('success') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif
        @if (session('error'))
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: '{{ session('error') }}',
                });
                setTimeout(function() {
                    Swal.close();
                }, 5000);
            </script>
        @endif
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-list"></i> Company
                            List</a></li>
                </ol>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center">Users List <i class="fa-solid fa-flip fa-list"></i></h4>
                            <div class="table-responsive">
                                <table id="example"
                                    class="table companylisttable table-striped table-hover table-bordered">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Designation</th>
                                            <th>Added By</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = ($userdata->currentPage() - 1) * $userdata->perPage() + 1; @endphp

                                        @if (count($userdata) === 0)
                                            <tr>
                                                <td class="table-info text-center" colspan="11">No data available in table
                                                </td>
                                            </tr>
                                        @else
                                            @foreach ($userdata as $user)
                                                <tr>
                                                    <td>{{ $sn }}</td>
                                                    <td>{{ $user->name }}</td>
                                                    <td>{{ $user->email }}</td>
                                                    <td>@php
                                                        if ($user->role === 3) {
                                                            echo 'SuperWiser';
                                                        } else {
                                                            echo 'Unknown';
                                                        }
                                                    @endphp</td>
                                                    <td>{{ $user->u_name }}</td>
                                                    <td>
                                                        @php
                                                            if ($user->status == 1) {
                                                                $encodedId = base64_encode($user->id);
                                                                echo '<a href="#" onclick="return confirmBanUserMaster2(\'' . $encodedId . '\')"><button class="btn-danger btn-sm text-white btn">InActive <i class="fa-solid fa-ban"></i></button></a>';
                                                            } else {
                                                                $encodedId = base64_encode($user->id);
                                                                echo '<a href="#" onclick="return confirmUnbanUserMaster2(\'' . $encodedId . '\')"><button class="btn-info btn-sm text-white btn">Active <i class="fa-solid fa-user-check"></i></button></a>';
                                                            }
                                                        @endphp
                                                    </td>
                                                </tr>
                                                @php $sn++; @endphp
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                            {{ $userdata->links('pagination::bootstrap-5') }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
