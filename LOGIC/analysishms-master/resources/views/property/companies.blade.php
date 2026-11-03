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
                            <h4 class="card-title text-center">Company List <i class="fa-solid fa-flip fa-list"></i></h4>
                            <div class="table-responsive">
                                <table class="table companylisttable table-striped table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>SN.</th>
                                            <th>Company Name</th>
                                            <th>Start Date</th>
                                            <th>End Date</th>
                                            <th>Country</th>
                                            <th>State</th>
                                            <th>City</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th style="white-space: nowrap;" colspan="2">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $serialNumber = 1; @endphp

                                        @foreach ($companies as $list)
                                            <tr>
                                                <td>{{ $serialNumber }}</td>
                                                <td>{{ $list->comp_name }}</td>
                                                <td>{{ date('d-m-Y', strtotime($list->start_dt)) }}</td>
                                                <td>{{ date('d-m-Y', strtotime($list->end_dt)) }}</td>
                                                <td>{{ $list->country }}</td>
                                                <td>{{ $list->state }}</td>
                                                <td>{{ $list->city }}</td>
                                                <td><a class="text-dark"
                                                        href="tel:{{ $list->mobile }}">{{ $list->mobile }}</a></td>
                                                <td><a class="text-dark"
                                                        href="mailto:{{ $list->email }}">{{ $list->email }}</a></td>
                                                <td>
                                                    <a
                                                        href="updatepropertyadmin?propertyid=@php echo base64_encode($list->propertyid); @endphp">
                                                        <button class="btn-success btn-sm btn">Update <i
                                                                class="fa-regular fa-pen-to-square"></i></button>
                                                    </a>
                                                </td>
                                                <td>
                                                    @php
                                                        if ($list->status == 1) {
                                                            $encodedPropertyId = base64_encode($list->propertyid);
                                                            echo '<a href="#" onclick="return confirmBan(\'' . $encodedPropertyId . '\')"><button class="btn-danger btn-sm text-white btn">InActive <i class="fa-solid fa-ban"></i></button></a>';
                                                        } else {
                                                            $encodedPropertyId = base64_encode($list->propertyid);
                                                            echo '<a href="#" onclick="return confirmUnban(\'' . $encodedPropertyId . '\')"><button class="btn-info btn-sm text-white btn">Active <i class="fa-solid fa-user-check"></i></button></a>';
                                                        }
                                                    @endphp
                                                </td>
                                            </tr>
                                            @php $serialNumber++; @endphp
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
@endsection
