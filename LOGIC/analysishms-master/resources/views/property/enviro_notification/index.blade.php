@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    @include('cdns.select')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form method="POST" action="{{ route('enviro-notification.store') }}" id="notificationForm">
                                @csrf

                                <div class="row">

                                    <div class="col-md-4 mb-3">
                                        <label class="form-label">Route</label>
                                        <input type="text" name="route" class="form-control" placeholder="Enter route" required>
                                    </div>

                                    <div class="col-md-4 mb-3">
                                        <label class="form-label">Message</label>
                                        <input type="text" name="message" class="form-control" placeholder="Enter notification message" required>
                                    </div>

                                    <div class="col-md-4 mb-3">
                                        <label class="form-label">Active Or Not</label>
                                        <select class="form-control" name="enabled" id="enabled">
                                            <option value="1" selected>Active</option>
                                            <option value="0">In Active</option>
                                        </select>
                                    </div>

                                    <div class="col-md-6 mb-3">
                                        <label class="form-label">Departments</label>

                                        <select name="departments[]" id="departments" class="form-control" multiple>
                                            @foreach ($departments as $department)
                                                <option value="{{ $department->dcode }}">
                                                    {{ $department->name }} ({{ $department->dcode }})
                                                </option>
                                            @endforeach
                                        </select>

                                        <small class="text-muted">
                                            Multiple departments can be selected.
                                        </small>
                                    </div>

                                    <div class="col-md-4 mb-3">
                                        <label class="form-label">SuperWiser</label>
                                        <select class="form-control" name="superwiser" id="superwiser">
                                            <option value="1" selected>Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    </div>

                                    <div class="col-md-3 mb-3 d-flex align-items-end">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fa fa-paper-plane me-1"></i> Submit
                                        </button>
                                    </div>

                                </div>
                            </form>

                            <hr>

                            <div class="table-responsive">
                                <table id="notificationTable" class="table table-bordered table-striped align-middle">
                                    <thead>
                                        <tr>
                                            <th width="60">Sn.</th>
                                            <th>Route</th>
                                            <th>Message</th>
                                            <th>Departments</th>
                                            <th>Superwiser</th>
                                            <th>Active</th>
                                            <th width="180">Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @foreach ($notifications as $notification)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>

                                                <td>
                                                    {{ $notification->route }}
                                                </td>

                                                <td>
                                                    {{ $notification->message }}
                                                </td>

                                                <td>
                                                    @php
                                                        $notificationDepartments = is_array($notification->departments) ? $notification->departments : [];
                                                    @endphp

                                                    @if (count($notificationDepartments))
                                                        @foreach ($notificationDepartments as $department)
                                                            <span class="badge bg-light text-dark border me-1">
                                                                {{ $department }}
                                                            </span>
                                                        @endforeach
                                                    @else
                                                        <span class="text-muted">All / None</span>
                                                    @endif
                                                </td>

                                                <td>
                                                    @if ((int) $notification->superwiser === 1)
                                                        Yes
                                                    @else
                                                        No
                                                    @endif
                                                </td>

                                                <td>
                                                    @if ((int) $notification->enabled === 1)
                                                        <span class="badge bg-success">Yes</span>
                                                    @else
                                                        <span class="badge bg-danger">No</span>
                                                    @endif
                                                </td>

                                                <td>
                                                    <button
                                                        type="button"
                                                        class="btn btn-success btn-sm editNotification"
                                                        data-id="{{ $notification->id }}"
                                                        data-route="{{ $notification->route }}"
                                                        data-message="{{ $notification->message }}"
                                                        data-enabled="{{ $notification->enabled }}"
                                                        data-superwiser="{{ $notification->superwiser }}"
                                                        data-departments='@json($notification->departments ?? [])'>
                                                        <i class="fa fa-edit"></i> Edit
                                                    </button>

                                                    <button
                                                        type="button"
                                                        class="btn btn-danger btn-sm deleteNotification"
                                                        data-id="{{ $notification->id }}">
                                                        <i class="fa fa-trash"></i> Delete
                                                    </button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                        </div>

                        <div class="modal fade" id="editNotificationModal" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <form method="POST" id="editNotificationForm">
                                        @csrf
                                        @method('PUT')

                                        <div class="modal-header">
                                            <h5 class="modal-title">
                                                <i class="fa fa-edit me-1"></i> Edit Notification
                                            </h5>

                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>

                                        <div class="modal-body">

                                            <div class="row">

                                                <div class="col-md-4 mb-3">
                                                    <label class="form-label">Route</label>
                                                    <input
                                                        type="text"
                                                        name="route"
                                                        id="edit_route"
                                                        class="form-control"
                                                        placeholder="Enter route"
                                                        required>
                                                </div>

                                                <div class="col-md-4 mb-3">
                                                    <label class="form-label">Message</label>
                                                    <input
                                                        type="text"
                                                        name="message"
                                                        id="edit_message"
                                                        class="form-control"
                                                        placeholder="Enter notification message"
                                                        required>
                                                </div>

                                                <div class="col-md-4 mb-3">
                                                    <label class="form-label">Active Or Not</label>
                                                    <select
                                                        class="form-control"
                                                        name="enabled"
                                                        id="edit_enabled">
                                                        <option value="1">Active</option>
                                                        <option value="0">In Active</option>
                                                    </select>
                                                </div>

                                                <div class="col-md-6 mb-3">
                                                    <label class="form-label">Departments</label>

                                                    <select
                                                        name="departments[]"
                                                        id="edit_departments"
                                                        class="form-control"
                                                        multiple>

                                                        @foreach ($departments as $department)
                                                            <option value="{{ $department->dcode }}">
                                                                {{ $department->name }} ({{ $department->dcode }})
                                                            </option>
                                                        @endforeach

                                                    </select>

                                                    <small class="text-muted">
                                                        Multiple departments can be selected.
                                                    </small>
                                                </div>

                                                <div class="col-md-4 mb-3">
                                                    <label class="form-label">SuperWiser</label>

                                                    <select
                                                        class="form-control"
                                                        name="superwiser"
                                                        id="edit_superwiser">

                                                        <option value="1">Yes</option>
                                                        <option value="0">No</option>

                                                    </select>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="modal-footer">

                                            <button
                                                type="button"
                                                class="btn btn-secondary"
                                                data-bs-dismiss="modal">
                                                Close
                                            </button>

                                            <button
                                                type="submit"
                                                class="btn btn-primary">
                                                <i class="fa fa-save me-1"></i> Update
                                            </button>

                                        </div>

                                    </form>

                                </div>
                            </div>
                        </div>

                        <form method="POST" id="deleteNotificationForm" style="display:none;">
                            @csrf
                            @method('DELETE')
                        </form>

                        <script>
                            $(document).ready(function() {

                                $('#departments').select2({
                                    width: '100%',
                                    placeholder: 'Select departments',
                                    allowClear: true
                                });

                                $('#edit_departments').select2({
                                    width: '100%',
                                    placeholder: 'Select departments',
                                    allowClear: true,
                                    dropdownParent: $('#editNotificationModal')
                                });

                                $('#notificationTable').DataTable({
                                    pageLength: 25,
                                    ordering: true,
                                    searching: true,
                                    responsive: true
                                });

                                $('.editNotification').on('click', function() {

                                    const button = $(this);

                                    const id = button.data('id');
                                    const route = button.data('route');
                                    const message = button.data('message');
                                    const enabled = button.data('enabled');
                                    const superwiser = button.data('superwiser');
                                    const departments = button.attr('data-departments');

                                    $('#edit_route').val(route);
                                    $('#edit_message').val(message);

                                    $('#edit_enabled').val(parseInt(enabled));
                                    $('#edit_superwiser').val(parseInt(superwiser));

                                    $('#edit_departments')
                                        .val(JSON.parse(departments))
                                        .trigger('change');

                                    $('#editNotificationForm').attr(
                                        'action',
                                        "{{ url('enviro-notification') }}/" + id
                                    );

                                    $('#editNotificationModal').modal('show');
                                });

                                $('.deleteNotification').on('click', function() {

                                    const id = $(this).data('id');

                                    if (!confirm('Are you sure you want to delete this notification configuration?')) {
                                        return;
                                    }

                                    $('#deleteNotificationForm').attr(
                                        'action',
                                        "{{ url('enviro-notification') }}/" + id
                                    );

                                    $('#deleteNotificationForm').submit();
                                });

                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
