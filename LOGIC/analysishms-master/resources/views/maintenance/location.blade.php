@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                             <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Location Master</h3>
                                </div>
                                <div class="col-lg-6">

                                </div>
                            </div>
                            <form action="javascript:void(0);" id="locationAddForm" class="form-horizontal" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="roomname">Location Name <span
                                                class="text-danger">*</span></label>
                                        <input autocomplete="off" type="text" name="roomname" id="roomname" maxlength="100"
                                            class="form-control" placeholder="Location Name" required>
                                    </div>
                                    <div class="col-md-6 pt-4">
                                        <button id="submitBtn" type="submit" class="btn ti-save btn-primary">
                                            Submit</button>
                                    </div>
                                </div>
                            </form>

                            <div class="d-flex gap-2 pb-2">
                <button type="button" onclick="window.location.href='{{ route('locationmaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                <button type="button" onclick="window.open('{{ route('printlocationmaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
            </div>

            <div class="table-responsive mt-4">
                                <table id="countrytable" class="table countrytable table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Location Name</th>
                                            {{-- <th>Room Code</th> --}}
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = 1; @endphp

                                        @foreach ($room as $item)
                                        <?php
                                            if ($item->sysYN == 'Y') {
                                                $statusLabel = 'Active';
                                                $class = 'badge badge-success font-weight-bold';
                                            } else {
                                                $statusLabel = 'Inactive';
                                                $class = 'badge badge-danger font-weight-bold';
                                            }
                                        ?>
                                            <tr>
                                                <td>{{ $sn }}</td>
                                                <td>{{ $item->name }}</td>
                                                {{-- <td>{{ $item->scode }}</td> --}}
                                                <td><span class="{{ $class }}">{{ $statusLabel }}</span></td>
                                                <td class="ins">
                                                    <button class="btn btn-success btn-sm editBtn" data-name='{{ $item->name }}'data-sn='{{ $item->sn }}'
                                                        data-status='{{ $item->sysYN }}' data-toggle="modal" data-target="#updateModal"><i class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                        <button class="btn btn-danger btn-sm deleteBtn" data-sn='{{ $item->sn }}'><i class="fa-solid fa-trash"></i>
                                                            Delete
                                                        </button>
                                                </td>
                                            </tr>
                                            @php $sn++; @endphp
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

    <!-- #/ container -->
    <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Update Location</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <form id="roomupdateform" method="POST" action="javascript:void(0)">
                        @csrf
                        <input type="hidden" name="sn" id="rm_id">
                        <div class="form-group">
                            <label class="col-form-label" for="roomname">Location Name <span
                                    class="text-danger">*</span></label>
                            <input autocomplete="off" type="text" name="roomname" id="roomname_edit" maxlength="100"
                                class="form-control" placeholder="Location Name" required>
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <select name="status" id="roomsttaus" class="form-control">
                                <option value="Y">Active</option>
                                <option value="N">Inactive</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script>
        $(document).on('click', '.editBtn', function () {
                let id = $(this).data('sn');
                let name = $(this).data('name');
                let status = $(this).data('status');

                console.log(id, name, status);

                $('#rm_id').val(id);
                $('#roomname_edit').val(name);
                $('#roomsttaus').val(status);
            });
        $(document).ready(function () {
            $('#locationAddForm').on('submit', function (e) {
                e.preventDefault();

                $('span.error-text').text('');

                $.ajax({
                    url: "{{ route('addlocation') }}",   // 
                    method: "POST",
                    data: new FormData(this),
                    processData: false,
                    contentType: false,
                    beforeSend: function () {
                        $('#submitBtn').prop('disabled', true).text('Submitting...');
                    },
                    success: function (response) {
                        $('#submitBtn').prop('disabled', false).text('Submit +');

                        if (response.status == 1) {
                            // Success
                            pushNotify('success', response.message);
                            $('#locationAddForm')[0].reset();

                            setTimeout(function () {
                                location.reload();
                            }, 2000);
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function (xhr) {
                        $('#submitBtn').prop('disabled', false).text('Submit +');

                        if (xhr.status === 422) {
                            // Laravel validation error
                            $.each(xhr.responseJSON.errors, function (key, value) {
                                $('span.' + key + '_error').text(value[0]);
                                pushNotify('error', value[0]);
                            });
                        } else {
                            pushNotify('error', 'Something went wrong! Please try again.');
                        }
                    }
                });
            });

             ///////////////  Update Form //////////////

                $('#roomupdateform').on('submit', function (e) {
                    e.preventDefault();

                    $('span.error-text').text(''); // Clear previous errors

                    $.ajax({
                        url: "{{ route('editlocation') }}", // Laravel route for update
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function () {
                            $('#roomupdateform button[type="submit"]').prop('disabled', true).text('Updating...');
                        },
                        success: function (response) {
                            $('#roomupdateform button[type="submit"]').prop('disabled', false).text('Update');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.message);
                                $('#roomupdateform')[0].reset();
                                $('#updateModal').modal('hide'); // Modal close
                                 setTimeout(function () {
                                    location.reload();
                                }, 2000);
                            } else {
                                pushNotify('error', response.message);
                            }
                        },
                        error: function (xhr) {
                            $('#roomupdateform button[type="submit"]').prop('disabled', false).text('Update');

                            if (xhr.status === 422) {
                                // Laravel validation error
                                $.each(xhr.responseJSON.errors, function (key, value) {
                                    $('span.' + key + '_error').text(value[0]);
                                    pushNotify('error', value[0]);
                                });
                            } else {
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        }
                    });
                });


                //////////// Delete ////////////////

                $(document).on('click', '.deleteBtn', function () {
                    let id = $(this).data('sn'); // Button me data-id attribute hona chahiye

                    if (confirm('Are you sure you want to delete this location?')) {
                        $.ajax({
                            url: "{{ route('deletelocation') }}", // Laravel route
                            type: 'POST',
                            data: {
                                'sn': id,
                                'status': 'D', // Set status to 'D' for delete
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function () {
                                // Optional: disable button or show loader
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', true).text('Deleting...');
                            },
                            success: function (response) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');

                                if (response.status == 1) {
                                    pushNotify('success', response.message);
                                    setTimeout(function () {
                                        location.reload();
                                    }, 2000);// Refresh DataTable
                                } else {
                                    pushNotify('error', response.message);
                                }
                            },
                            error: function (xhr) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        });
                    }
                });
        });
    </script>
@endsection