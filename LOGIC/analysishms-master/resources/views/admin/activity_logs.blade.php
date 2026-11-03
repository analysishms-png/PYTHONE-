@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="card" style="margin-bottom: 0.5rem;">
                        <div class="card-body" style="padding: 0.5rem;">
                            <h6 class="card-title" style="margin-bottom: 0.5rem; font-size: 0.9rem;">Most Hit Routes</h6>
                            <div class="table-responsive" style="max-height: 200px; overflow-y: auto;">
                                <table id="topRoutesTable" class="table table-sm table-striped" style="margin-bottom: 0;">
                                    <thead class="bg-light">
                                        <tr style="font-size: 0.85rem;">
                                            <th>Route</th>
                                            <th>Hits</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="card" style="margin-bottom: 0.5rem;">
                        <div class="card-body" style="padding: 0.5rem;">
                            <h6 class="card-title" style="margin-bottom: 0.5rem; font-size: 0.9rem;">Most Active Users</h6>
                            <div class="table-responsive" style="max-height: 200px; overflow-y: auto;">
                                <table id="topUsersTable" class="table table-sm table-striped" style="margin-bottom: 0;">
                                    <thead class="bg-light">
                                        <tr style="font-size: 0.85rem;">
                                            <th>Username</th>
                                            <th>Property</th>
                                            <th>Company</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 0.5rem;">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body" style="padding: 0.5rem;">
                            <h5 class="card-title" style="margin-bottom: 0.75rem; font-size: 1rem;">Activity Logs Report</h5>

                            <div class="row mb-2" style="margin-bottom: 0.5rem !important;">
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">From Date</label>
                                    <input type="date" class="form-control form-control-sm" id="fromDate" style="font-size: 0.85rem;">
                                </div>
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">To Date</label>
                                    <input type="date" class="form-control form-control-sm" id="toDate" style="font-size: 0.85rem;">
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">Property</label>
                                    <select class="form-control form-control-sm" id="propertyFilter" style="font-size: 0.85rem;">
                                        <option value="">All</option>
                                        @foreach ($properties as $prop)
                                            <option value="{{ $prop->propertyid }}">{{ $prop->propertyid }} - {{ $prop->comp_name ?? 'N/A' }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">User</label>
                                    <select class="form-control form-control-sm" id="usernameFilter" style="font-size: 0.85rem;">
                                        <option value="" data-propertyid="">All</option>
                                        @foreach ($usernames as $user)
                                            <option data-propertyid="{{ $user->propertyid }}" value="{{ $user->username }}">{{ $user->username }} ({{ $user->propertyid }} - {{ $user->comp_name ?? 'N/A' }})</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">Route</label>
                                    <select class="form-control form-control-sm" id="moduleFilter" style="font-size: 0.85rem;">
                                        <option value="">All</option>
                                        @foreach ($modules as $mod)
                                            <option value="{{ $mod->module }}">{{ $mod->module }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">&nbsp;</label>
                                    <button class="btn btn-sm btn-primary w-100" id="resetBtn" style="font-size: 0.8rem; padding: 0.3rem;">Reset</button>
                                </div>
                            </div>

                            <div class="table-responsive" style="font-size: 0.85rem;">
                                <table id="activityLogsTable" class="table table-sm table-striped table-hover" style="margin-bottom: 0;">
                                    <thead class="bg-light">
                                        <tr style="font-size: 0.85rem;">
                                            <th>Property ID</th>
                                            <th>Date/Time</th>
                                            <th>User</th>
                                            <th>Route</th>
                                            <th>Action</th>
                                            <th>Method</th>
                                            <th>URL</th>
                                            <th>IP</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="rowDetailsModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header" style="padding: 0.75rem;">
                    <h5 class="modal-title" style="font-size: 1rem;">Activity Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body" style="padding: 0.75rem; font-size: 0.9rem;">
                    <table class="table table-sm table-borderless" style="margin-bottom: 0;">
                        <tr>
                            <td style="width: 30%; font-weight: 600;">ID:</td>
                            <td id="detailId">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Date/Time:</td>
                            <td id="detailCreatedAt">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Username:</td>
                            <td id="detailUsername">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">User ID:</td>
                            <td id="detailUserId">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Route/Module:</td>
                            <td id="detailModule">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Action:</td>
                            <td id="detailAction">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Method:</td>
                            <td id="detailMethod">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">URL:</td>
                            <td><span id="detailUrl" style="word-break: break-all;"></span></td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">IP Address:</td>
                            <td id="detailIpAddress">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Property ID:</td>
                            <td id="detailPropertyId">-</td>
                        </tr>
                    </table>
                    <hr style="margin: 0.5rem 0;">
                    <div id="statsMessage" style="background-color: #f0f7ff; padding: 0.5rem; border-radius: 4px; font-size: 0.85rem;"></div>
                </div>
                <div class="modal-footer" style="padding: 0.5rem;">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function() {
            var today = '{{ $today }}';
            $('#fromDate').val(today);
            $('#toDate').val(today);

            function loadTopRoutes() {
                $.ajax({
                    url: '{{ route('admin.activity.logs.top.routes') }}',
                    data: {
                        from_date: $('#fromDate').val(),
                        to_date: $('#toDate').val()
                    },
                    success: function(response) {
                        var tbody = $('#topRoutesTable tbody');
                        tbody.empty();
                        if (response.data && response.data.length > 0) {
                            $.each(response.data, function(idx, route) {
                                tbody.append(
                                    '<tr style="font-size: 0.85rem;">' +
                                    '<td class="text-truncate" style="max-width: 150px;">' + (route.module || '-') + '</td>' +
                                    '<td><span class="badge badge-primary">' + route.total_hits + '</span></td>' +
                                    '</tr>'
                                );
                            });
                        } else {
                            tbody.append('<tr><td colspan="2" class="text-center text-muted">No data</td></tr>');
                        }
                    }
                });
            }

            function loadTopUsers() {
                $.ajax({
                    url: '{{ route('admin.activity.logs.top.users') }}',
                    data: {
                        from_date: $('#fromDate').val(),
                        to_date: $('#toDate').val()
                    },
                    success: function(response) {
                        var tbody = $('#topUsersTable tbody');
                        tbody.empty();
                        if (response.data && response.data.length > 0) {
                            $.each(response.data, function(idx, user) {
                                tbody.append(
                                    '<tr style="font-size: 0.85rem;">' +
                                    '<td class="text-truncate">' + (user.username || '-') + '</td>' +
                                    '<td>' + (user.propertyid || '-') + '</td>' +
                                    '<td class="text-truncate">' + (user.comp_name || 'N/A') + '</td>' +
                                    '<td><span class="badge badge-success">' + user.total_hits + '</span></td>' +
                                    '</tr>'
                                );
                            });
                        } else {
                            tbody.append('<tr><td colspan="4" class="text-center text-muted">No data</td></tr>');
                        }
                    }
                });
            }

            // Load on page load
            loadTopRoutes();
            loadTopUsers();

            var table = $('#activityLogsTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('admin.activity.logs.data') }}',
                    data: function(d) {
                        d.from_date = $('#fromDate').val();
                        d.to_date = $('#toDate').val();
                        d.propertyid = $('#propertyFilter').val();
                        d.username = $('#usernameFilter').val();
                        d.username_propertyid = $('#usernameFilter').find('option:selected').data('propertyid') || '';
                        d.module = $('#moduleFilter').val();
                    }
                },
                columns: [{
                        data: 'propertyid',
                        name: 'activity_logs.propertyid'
                    },
                    {
                        data: 'created_at',
                        name: 'activity_logs.created_at'
                    },
                    {
                        data: 'username',
                        name: 'activity_logs.username'
                    },
                    {
                        data: 'module',
                        name: 'activity_logs.module'
                    },
                    {
                        data: 'action',
                        name: 'activity_logs.action'
                    },
                    {
                        data: 'method',
                        name: 'activity_logs.method'
                    },
                    {
                        data: 'url',
                        name: 'activity_logs.url'
                    },
                    {
                        data: 'ip_address',
                        name: 'activity_logs.ip_address'
                    }
                ],
                order: [
                    [1, 'desc']
                ],
                pageLength: 25,
                lengthMenu: [10, 25, 50, 100],
                columnDefs: [{
                    targets: 6,
                    render: function(data) {
                        return '<span class="text-truncate" style="display: inline-block; max-width: 150px;" title="' + (data || '-') + '">' + (data || '-') + '</span>';
                    }
                }]
            });

            $(document).on('click', '#activityLogsTable tbody tr', function() {
                var rowData = table.row(this).data();
                showRowDetails(rowData);
            });

            var filterTimeout;
            $('#fromDate, #toDate, #propertyFilter, #usernameFilter, #moduleFilter').on('change', function() {
                clearTimeout(filterTimeout);
                filterTimeout = setTimeout(function() {
                    loadTopRoutes();
                    loadTopUsers();
                    table.ajax.reload();
                }, 300);
            });

            $('#resetBtn').on('click', function() {
                $('#fromDate').val(today);
                $('#toDate').val(today);
                $('#propertyFilter').val('');
                $('#usernameFilter').val('');
                $('#moduleFilter').val('');
                loadTopRoutes();
                loadTopUsers();
                table.ajax.reload();
            });

            function showRowDetails(rowData) {
                $('#detailId').text(rowData.id || '-');
                $('#detailCreatedAt').text(rowData.created_at || '-');
                $('#detailUsername').text(rowData.username || '-');
                $('#detailUserId').text(rowData.user_id || '-');
                $('#detailModule').text(rowData.module || '-');
                $('#detailAction').text(rowData.action || '-');
                $('#detailMethod').text(rowData.method || '-');
                $('#detailUrl').text(rowData.url_full || rowData.url || '-');
                $('#detailIpAddress').text(rowData.ip_address || '-');
                $('#detailPropertyId').text(rowData.propertyid || '-');

                var module = rowData.module || 'Unknown';
                var todayHits = rowData.todayHits || 0;
                var message = '<strong>' + module + '</strong> route was hit <strong>' + todayHits + '</strong> times today. ';

                if (rowData.hitsByProperty && rowData.hitsByProperty.length > 0) {
                    var propertyStats = rowData.hitsByProperty.map(p => 'PropertyID ' + p.propertyid + ': ' + p.hits + ' hits').join(', ');
                    message += '<br/>By property today: ' + propertyStats + '. ';
                }

                if (rowData.monthHits) {
                    message += '<br/>Most active property in last 30 days: PropertyID ' + rowData.monthHits.propertyid + ' (' + rowData.monthHits.hits + ' hits). This indicates resource usage pattern.';
                }

                $('#statsMessage').html(message || 'No additional stats available.');
                $('#rowDetailsModal').modal('show');
            }
        });
    </script>

    <style>
        .col-md-1-5 {
            flex: 0 0 16.666667%;
            max-width: 16.666667%;
        }

        .table-responsive {
            overflow-x: auto;
        }

        .card {
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            margin-bottom: 0.5rem;
        }

        .table tbody tr {
            cursor: pointer;
        }

        .table tbody tr:hover {
            background-color: #f9f9f9;
        }
    </style>
@endsection
