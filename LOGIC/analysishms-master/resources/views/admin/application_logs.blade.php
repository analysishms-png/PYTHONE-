@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body" style="padding: 0.5rem;">
                            <h5 class="card-title" style="margin-bottom: 0.75rem; font-size: 1rem;">Application Logs</h5>

                            <div class="mb-2 border rounded" style="padding: 8px;">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <h6 class="mb-0" style="font-size: 0.9rem;">
                                        <i class="fas fa-chart-bar me-1"></i> Top 5 Frequent Errors
                                    </h6>
                                    <span class="badge bg-danger">ERROR RANKING</span>
                                </div>

                                <div class="table-responsive">
                                    <table class="table table-sm table-striped table-hover mb-0" style="font-size: 0.78rem;">
                                        <thead class="bg-light">
                                            <tr>
                                                <th style="width: 45px;">Rank</th>
                                                <th>Error Message</th>
                                                <th>File</th>
                                                <th class="text-center">Total</th>
                                                <th>Property ID</th>
                                                <th class="text-center">Property Count</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($topErrors as $error)
                                                <tr class="top-error-row"
                                                    style="cursor: pointer;"
                                                    data-message="{{ $error->message }}"
                                                    data-file="{{ $error->file ?? '' }}"
                                                    data-context="{{ $error->context ?? '' }}"
                                                    data-line="{{ $error->line ?? '' }}"
                                                    data-total="{{ $error->total_occurrences }}"
                                                    data-property="{{ $error->most_affected_property ?? '-' }}"
                                                    data-property-count="{{ $error->property_occurrences ?? 0 }}"
                                                    title="Click to view error details">
                                                    <td>
                                                        <span class="badge bg-secondary">{{ $loop->iteration }}</span>
                                                    </td>
                                                    <td style="max-width: 300px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"
                                                        title="{{ $error->message }}">
                                                        {{ $error->message }}
                                                    </td>
                                                    <td style="max-width: 220px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"
                                                        title="{{ $error->file }}">
                                                        {{ $error->file ? basename(str_replace('\\', '/', $error->file)) : '-' }}
                                                    </td>
                                                    <td class="text-center">
                                                        <span class="badge bg-danger">{{ number_format($error->total_occurrences) }}</span>
                                                    </td>
                                                    <td>{{ $error->most_affected_property ?? '-' }}</td>
                                                    <td class="text-center">
                                                        {{ number_format($error->property_occurrences ?? 0) }}
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="6" class="text-center text-muted py-2">
                                                        No error rankings available.
                                                    </td>
                                                </tr>
                                            @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="row mb-2" style="margin-bottom: 0.5rem !important;">
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">From Date</label>
                                    <input type="datetime-local"
                                        value="{{ $minDate ? \Carbon\Carbon::parse($minDate)->format('Y-m-d\TH:i') : '' }}"
                                        class="form-control form-control-sm"
                                        id="fromDate"
                                        style="font-size: 0.85rem;">
                                </div>
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">To Date</label>
                                    <input type="datetime-local"
                                        value="{{ $maxDate ? \Carbon\Carbon::parse($maxDate)->format('Y-m-d\TH:i') : '' }}"
                                        class="form-control form-control-sm"
                                        id="toDate"
                                        style="font-size: 0.85rem;">
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">Level</label>
                                    <select class="form-control form-control-sm" id="levelFilter" style="font-size: 0.85rem;">
                                        <option value="">All</option>
                                        @foreach ($levels as $lvl)
                                            <option value="{{ $lvl }}">{{ $lvl }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">Property</label>
                                    <select class="form-control select2-multiple form-control-sm" id="propertyFilter" style="font-size: 0.85rem;">
                                        <option value="">All</option>
                                        @foreach ($properties as $prop)
                                            <option value="{{ $prop->propertyid }}">{{ $prop->propertyid }} - {{ $prop->comp_name ?? 'N/A' }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">User</label>
                                    <select class="form-control select2-multiple form-control-sm" id="usernameFilter" style="font-size: 0.85rem;">
                                        <option value="">All</option>
                                        @foreach ($usernames as $user)
                                            <option value="{{ $user->username }}">
                                                {{ $user->username }}
                                                ({{ $user->propertyid }} - {{ $user->comp_name ?? 'N/A' }})
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-1-5">
                                    <label class="form-label" style="font-size: 0.8rem; margin-bottom: 0.2rem;">&nbsp;</label>
                                    <button class="btn btn-sm btn-primary w-100" id="resetBtn" style="font-size: 0.8rem; padding: 0.3rem;">Reset</button>
                                </div>
                            </div>

                            <div class="table-responsive" style="font-size: 0.85rem;">
                                <table id="applicationLogsTable" class="table table-sm table-striped table-hover" style="margin-bottom: 0;">
                                    <thead class="bg-light">
                                        <tr style="font-size: 0.85rem;">
                                            <th>Date/Time</th>
                                            <th>Level</th>
                                            <th>Message</th>
                                            <th>File</th>
                                            <th>User</th>
                                            <th>Property</th>
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
                    <h5 class="modal-title" style="font-size: 1rem;">Application Log Details</h5>
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
                            <td style="font-weight: 600;">Level:</td>
                            <td id="detailLevel">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">File:</td>
                            <td>
                                <span id="detailFile"
                                    class="copy-filename"
                                    title="Click to copy filename"
                                    style="word-break: break-all; cursor: pointer;"></span>
                                <small class="file-copy-status text-success ms-2" style="display: none;">
                                    Copied!
                                </small>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">Line:</td>
                            <td id="detailLine">-</td>
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
                            <td style="font-weight: 600;">Property ID:</td>
                            <td id="detailPropertyId">-</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600;">IP Address:</td>
                            <td id="detailIpAddress">-</td>
                        </tr>
                    </table>
                    <hr style="margin: 0.5rem 0;">
                    <label style="font-weight: 600;">Message:</label>
                    <pre id="detailMessage" style="background-color: #f7f7f7; padding: 0.5rem; border-radius: 4px; font-size: 0.8rem; max-height: 300px; overflow: auto; white-space: pre-wrap; word-break: break-word;">-</pre>
                    <hr style="margin: 0.5rem 0;">
                    <label style="font-weight: 600;">Context:</label>
                    <pre id="detailcontext" style="background-color: #f7f7f7; padding: 0.5rem; border-radius: 4px; font-size: 0.8rem; max-height: 300px; overflow: auto; white-space: pre-wrap; word-break: break-word;">-</pre>
                </div>
                <div class="modal-footer" style="padding: 0.5rem;">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="topErrorDetailsModal" tabindex="-1" aria-labelledby="topErrorDetailsTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header py-2">
                    <h5 class="modal-title fs-6" id="topErrorDetailsTitle">
                        <i class="fas fa-bug text-danger me-1"></i> Error Ranking Details
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body p-3">
                    <div class="row g-2 mb-3">
                        <div class="col-md-4">
                            <div class="border rounded p-2 h-100">
                                <div class="text-muted small">Total Occurrences</div>
                                <div class="fs-5 fw-bold text-danger" id="topErrorTotal">0</div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="border rounded p-2 h-100">
                                <div class="text-muted small">Most Affected Property</div>
                                <div class="fs-5 fw-bold" id="topErrorProperty">-</div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="border rounded p-2 h-100">
                                <div class="text-muted small">Property Occurrences</div>
                                <div class="fs-5 fw-bold" id="topErrorPropertyCount">0</div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-semibold mb-1">Error Message</label>
                        <pre id="topErrorMessage" class="bg-light border rounded p-2 mb-0" style="white-space: pre-wrap; overflow-wrap: anywhere; font-size: 0.85rem;"></pre>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-semibold mb-1">Full File Path</label>
                        <pre id="topErrorFile"
                            class="bg-light border rounded p-2 mb-0"
                            title="Click to copy filename"
                            style="white-space: pre-wrap; overflow-wrap: anywhere; font-size: 0.8rem; cursor: pointer;"></pre>
                        <small id="topErrorFileCopyStatus" class="text-success" style="display: none;">
                            Filename copied!
                        </small>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-semibold mb-1">Context</label>
                        <pre id="topcontext" class="bg-light border rounded p-2 mb-0" style="white-space: pre-wrap; overflow-wrap: anywhere; font-size: 0.8rem;"></pre>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-semibold mb-1">Approx Line Nu.</label>
                        <pre id="topline" class="bg-light border rounded p-2 mb-0" style="white-space: pre-wrap; overflow-wrap: anywhere; font-size: 0.8rem;"></pre>
                    </div>

                    <div>
                        <label class="form-label fw-semibold mb-1">Affected Property Distribution</label>
                        <div class="table-responsive">
                            <table class="table table-sm table-bordered mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Property ID</th>
                                        <th class="text-end">Occurrences</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td id="topErrorDistributionProperty">-</td>
                                        <td class="text-end" id="topErrorDistributionCount">0</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <small class="text-muted">The distribution above shows the most affected property only, not every property.</small>
                    </div>
                </div>

                <div class="modal-footer py-2">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(function() {
            var today = '{{ date('Y-m-d H:i:s') }}';

            function levelBadge(level) {
                var lvl = (level || '').toUpperCase();
                var cls = 'badge-secondary';
                if (lvl === 'EMERGENCY' || lvl === 'ALERT' || lvl === 'CRITICAL' || lvl === 'ERROR') {
                    cls = 'badge-danger';
                } else if (lvl === 'WARNING') {
                    cls = 'badge-warning';
                } else if (lvl === 'NOTICE' || lvl === 'INFO') {
                    cls = 'badge-info';
                } else if (lvl === 'DEBUG') {
                    cls = 'badge-secondary';
                }
                return '<span class="badge ' + cls + '">' + (lvl || '-') + '</span>';
            }

            var table = $('#applicationLogsTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('admin.application.logs.data') }}',
                    data: function(d) {
                        d.from_date = $('#fromDate').val();
                        d.to_date = $('#toDate').val();
                        d.level = $('#levelFilter').val();
                        d.propertyid = $('#propertyFilter').val();
                        d.username = $('#usernameFilter').val();
                    }
                },
                columns: [{
                        data: 'created_at',
                        name: 'created_at'
                    },
                    {
                        data: 'level',
                        name: 'level',
                        render: function(data) {
                            return levelBadge(data);
                        }
                    },
                    {
                        data: 'message',
                        name: 'message'
                    },
                    {
                        data: 'file',
                        name: 'file'
                    },
                    {
                        data: 'username',
                        name: 'username'
                    },
                    {
                        data: 'propertyid',
                        name: 'propertyid'
                    },
                    {
                        data: 'ipaddress',
                        name: 'ipaddress'
                    }
                ],
                order: [
                    [0, 'desc']
                ],
                pageLength: 25,
                lengthMenu: [10, 25, 50, 100],
                columnDefs: [{
                        targets: 2,
                        render: function(data) {
                            var text = (data || '-').toString();
                            return '<span class="text-truncate" style="display: inline-block; max-width: 350px;" title="' + $('<div>').text(text).html() + '">' + $('<div>').text(text).html() + '</span>';
                        }
                    },
                    {
                        targets: 3,
                        render: function(data) {
                            var text = (data || '-').toString();
                            return '<span class="text-truncate" style="display: inline-block; max-width: 250px;" title="' + $('<div>').text(text).html() + '">' + $('<div>').text(text).html() + '</span>';
                        }
                    }
                ]
            });

            $(document).on('click', '#applicationLogsTable tbody tr', function() {
                var rowData = table.row(this).data();
                if (rowData) {
                    showRowDetails(rowData);
                }
            });

            $(document).on('click', '#topErrorFile, #detailFile', async function() {
                const fullPath = $(this).text().trim();

                if (!fullPath || fullPath === '-') {
                    return;
                }

                // Extract only the filename, supporting both Linux and Windows paths
                const filename = fullPath.split(/[\\/]/).pop();

                try {
                    await navigator.clipboard.writeText(filename);

                    const status = $(this).siblings('.file-copy-status');

                    // Support both modal layouts
                    const copyStatus = status.length ?
                        status :
                        $('#topErrorFileCopyStatus');

                    copyStatus
                        .stop(true, true)
                        .text('Copied: ' + filename)
                        .show()
                        .delay(2000)
                        .fadeOut();

                } catch (error) {
                    console.error('Unable to copy filename:', error);
                    alert('Could not copy filename. Please check browser clipboard permissions.');
                }
            });

            $(document).on('click', '.top-error-row', function() {
                var row = $(this);

                $('#topErrorMessage').text(row.attr('data-message') || '-');
                $('#topErrorFile').text(row.attr('data-file') || '-');
                $('#topcontext').text(row.attr('data-context') || '-');
                $('#topline').text(row.attr('data-line') || '-');
                $('#topErrorTotal').text(Number(row.attr('data-total')) || 0);
                $('#topErrorProperty').text(row.attr('data-property') || '-');
                $('#topErrorPropertyCount').text(Number(row.attr('data-property-count')) || 0);
                $('#topErrorDistributionProperty').text(row.attr('data-property') || '-');
                $('#topErrorDistributionCount').text(Number(row.attr('data-property-count')) || 0);

                $('#topErrorDetailsModal').modal('show');
            });

            var filterTimeout;
            $('#fromDate, #toDate, #levelFilter, #propertyFilter, #usernameFilter').on('change', function() {
                clearTimeout(filterTimeout);
                filterTimeout = setTimeout(function() {
                    table.ajax.reload();
                }, 300);
            });

            $('#resetBtn').on('click', function() {
                $('#fromDate').val(today);
                $('#toDate').val(today);
                $('#levelFilter').val('');
                $('#propertyFilter').val('');
                $('#usernameFilter').val('');
                table.ajax.reload();
            });

            function showRowDetails(rowData) {
                $('#detailId').text(rowData.id || '-');
                $('#detailCreatedAt').text(rowData.created_at || '-');
                $('#detailLevel').html(levelBadge(rowData.level));
                $('#detailMessage').text(rowData.message || '-');
                $('#detailcontext').text(rowData.context || '-');
                $('#detailFile').text(rowData.file || '-');
                $('#detailLine').text(rowData.line || '-');
                $('#detailUsername').text(rowData.username || '-');
                $('#detailUserId').text(rowData.userid || '-');
                $('#detailPropertyId').text(rowData.propertyid || '-');
                $('#detailIpAddress').text(rowData.ipaddress || '-');
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
