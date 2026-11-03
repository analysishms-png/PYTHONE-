@extends('property.layouts.main')

@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h4 class="mb-0">Send Notification</h4>
                <a href="{{ url('/usermaster') }}" class="btn btn-light">Back to Usermaster</a>
            </div>

            <div class="card">
                <div class="card-body">
                    <form id="notificationForm" novalidate>
                        @csrf
                        <div class="row">
                            <div class="col-md-4">
                                <label for="target" class="form-label">Target</label>
                                <select id="target" name="target" class="form-control">
                                    <option value="all">All Departments</option>
                                    <option value="departments">Specific Department</option>
                                </select>
                            </div>
                            <div class="col-md-8" id="departmentGroup">
                                <label for="departments" class="form-label">Departments</label>
                                <select id="departments" name="departments[]" class="form-control select2-multiple" multiple>
                                    @foreach ($departments as $department)
                                        <option value="{{ $department->dcode }}">{{ $department->name }} ({{ $department->dcode }})</option>
                                    @endforeach
                                </select>
                                <small class="text-muted">Users are merged when multiple departments are selected.</small>
                            </div>
                        </div>

                        <div class="mt-4">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <h5 class="mb-0">Selected Users</h5>
                                <span class="badge badge-primary" id="recipientCount">0 selected</span>
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="usernameSearch" class="form-label">Search Username</label>
                                    <input type="search" id="usernameSearch" class="form-control"
                                        placeholder="Search by username..." autocomplete="off">
                                </div>
                            </div>
                            <div id="userLoading" class="text-muted d-none">Loading users...</div>
                            <div id="userEmpty" class="alert alert-light border">Select a target to load eligible users.</div>
                            <div class="table-responsive">
                                <table class="table table-sm table-hover" id="userTable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th></th>
                                            <th>Name</th>
                                            <th>Username</th>
                                            <th>Designation</th>
                                            <th>Department</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label for="route" class="form-label">Route</label>
                                <input type="text" id="route" name="route" class="form-control" value="dashboard" maxlength="100" required>
                            </div>
                            <div class="col-md-6">
                                <label for="module" class="form-label">Module</label>
                                <input type="text" id="module" name="module" class="form-control" value="dashboard" maxlength="100" required>
                            </div>
                            <div class="col-12 mt-3">
                                <label for="task" class="form-label">Task / Notification Message</label>
                                <textarea id="task" name="task" class="form-control capitalize-first" maxlength="1000" rows="4" required placeholder="Enter notification message..."></textarea>
                                <small class="text-muted">Maximum 1000 characters.</small>
                            </div>
                        </div>

                        <div class="text-right mt-4">
                            <button type="submit" id="sendNotificationButton" class="btn btn-primary">
                                <span class="button-label">Send Notification</span>
                                <span class="button-loading d-none">Queueing...</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function() {
            const users = new Map();
            let selectedDepartments = [];
            const csrf = $('#notificationForm input[name="_token"]').val();

            $('#departments').select2({
                placeholder: 'Select departments...',
                width: '100%'
            });

            function refreshTable() {
                const $tbody = $('#userTable tbody').empty();
                const search = $('#usernameSearch').val().trim().toLowerCase();
                let visibleUsers = 0;
                users.forEach(function(user) {
                    if (search && !String(user.username || '').toLowerCase().includes(search)) return;
                    visibleUsers++;
                    const tokenStatus = user.has_token ? 'Ready' : 'No device token';
                    const disabled = user.has_token ? '' : 'disabled';
                    const checked = user.selected && user.has_token ? 'checked' : '';
                    $tbody.append(`
                        <tr data-user-id="${user.id}">
                            <td><input type="checkbox" class="user-checkbox" value="${user.id}" ${checked} ${disabled}></td>
                            <td>${escapeHtml(user.name || '-')}</td>
                            <td>${escapeHtml(user.username || '-')}</td>
                            <td>${escapeHtml(user.designation_name || '-')}</td>
                            <td>${escapeHtml(user.department_name || '-')}</td>
                            <td><span class="badge ${user.has_token ? 'badge-success' : 'badge-secondary'}">${tokenStatus}</span></td>
                        </tr>`);
                });
                $('#userEmpty')
                    .toggle(visibleUsers === 0)
                    .text(users.size === 0 ?
                        'Select a target to load eligible users.' :
                        'No users match this username search.');
                updateCount();
            }

            function escapeHtml(value) {
                return $('<div>').text(value).html();
            }

            function updateCount() {
                $('#recipientCount').text([...users.values()].filter(user => user.selected && user.has_token).length + ' selected');
            }

            function loadUsers() {
                const target = $('#target').val();
                const departments = $('#departments').val() || [];
                if (target !== 'all' && departments.length === 0) {
                    users.clear();
                    refreshTable();
                    return;
                }
                $('#userLoading').removeClass('d-none');
                $.ajax({
                    url: '{{ route('notification.users') }}',
                    method: 'GET',
                    data: {
                        target: target,
                        departments: departments
                    },
                    success: function(response) {
                        (response.data || []).forEach(function(user) {
                            const key = String(user.id);
                            if (!users.has(key)) user.selected = true;
                            users.set(key, Object.assign(users.get(key) || {}, user));
                        });
                        if (target !== 'all') {
                            users.forEach(function(user, key) {
                                if (!departments.includes(String(user.department))) users.delete(key);
                            });
                        }
                        refreshTable();
                    },
                    error: function() {
                        Swal.fire('Error', 'Unable to load users.', 'error');
                    },
                    complete: function() {
                        $('#userLoading').addClass('d-none');
                    }
                });
            }

            $('#target').on('change', function() {
                const all = this.value === 'all';
                $('#departmentGroup').toggle(!all);
                if (all) $('#departments').val(null).trigger('change.select2');
                selectedDepartments = [];
                users.clear();
                loadUsers();
            });
            $('#departments').on('change', function() {
                selectedDepartments = $(this).val() || [];
                loadUsers();
            });
            $('#usernameSearch').on('input', refreshTable);
            $('#userTable').on('change', '.user-checkbox', function() {
                const user = users.get(String(this.value));
                if (user) user.selected = this.checked;
                updateCount();
            });

            $('#notificationForm').on('submit', function(event) {
                event.preventDefault();
                const selected = [...users.values()].filter(user => user.selected && user.has_token).map(user => user.id);
                const target = $('#target').val();
                const departments = $('#departments').val() || [];
                const task = $('#task').val().trim();
                if (target !== 'all' && departments.length === 0) return Swal.fire('Validation', 'Select at least one department.', 'warning');
                if (selected.length === 0) return Swal.fire('Validation', 'Select at least one user with a device token.', 'warning');
                if (!task) return Swal.fire('Validation', 'Enter a notification message.', 'warning');

                const $button = $('#sendNotificationButton').prop('disabled', true);
                $button.find('.button-label').addClass('d-none');
                $button.find('.button-loading').removeClass('d-none');
                $.ajax({
                    url: '{{ route('notification.store') }}',
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrf
                    },
                    data: {
                        target,
                        departments,
                        user_ids: selected,
                        task,
                        route: $('#route').val().trim(),
                        module: $('#module').val().trim()
                    },
                    success: function(response) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Queued',
                            text: response.message,
                            timer: 1800,
                            showConfirmButton: false
                        }).then(() => window.location.reload());
                    },
                    error: function(xhr) {
                        const message = xhr.responseJSON?.message || 'Unable to queue notification.';
                        Swal.fire('Error', message, 'error');
                    },
                    complete: function() {
                        $button.prop('disabled', false);
                        $button.find('.button-label').removeClass('d-none');
                        $button.find('.button-loading').addClass('d-none');
                    }
                });
            });

            $('#target').trigger('change');
        });
    </script>
@endsection
