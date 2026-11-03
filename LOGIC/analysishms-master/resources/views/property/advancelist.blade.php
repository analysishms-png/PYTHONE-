@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/rowgroup/1.3.1/css/rowGroup.dataTables.min.css">
    <style>
        #advanceTable td,
        #advanceTable th {
            vertical-align: middle;
            white-space: nowrap;
        }

        #advanceTable .action-buttons {
            display: flex !important;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: flex-start;
            gap: 6px;
        }

        #advanceTable .action-buttons .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            white-space: nowrap;
        }

        #advanceTable td.ins {
            white-space: normal !important;
            min-width: 220px;
        }

        div.dataTables_processing {
            z-index: 2;
        }

        .badge-advance {
            background-color: #28a745;
            color: #fff;
            padding: 3px 8px;
            border-radius: 4px;
            font-size: 12px;
        }

        .badge-return {
            background-color: #dc3545;
            color: #fff;
            padding: 3px 8px;
            border-radius: 4px;
            font-size: 12px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="advanceTable" class="table table-striped table-bordered w-100">
                                    <thead>
                                        <tr>
                                            <th>Sn</th>
                                            <th>Rect Date</th>
                                            <th>Rect No</th>
                                            <th>FP No</th>
                                            <th>Bill No</th>
                                            <th>Booking Date</th>
                                            <th>Bill Date</th>
                                            <th>Party Name</th>
                                            <th>Type</th>
                                            <th>Mode</th>
                                            <th>Amount</th>
                                            <th>CGST</th>
                                            <th>SGST</th>
                                            <th>Action</th>
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

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.3.1/js/dataTables.rowGroup.min.js"></script>
    @if(session('print_url'))
<script>
    window.open("{{ session('print_url') }}", '_blank');
</script>
@endif
    <script>
        $(function() {
            const table = $('#advanceTable').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                pageLength: 15,
                order: [
                    [1, 'asc']
                ],
                lengthMenu: [
                    [15, 25, 50, 100],
                    [15, 25, 50, 100]
                ],
                scrollX: true,
                autoWidth: false,
                ajax: {
                    url: "{{ route('advancelist.data') }}",
                    type: 'GET',
                    beforeSend: function() {
                        if (typeof showLoader === 'function') showLoader();
                    },
                    dataSrc: function(json) {
                        if (typeof hideLoader === 'function') hideLoader();
                        return json.data || [];
                    },
                    error: function(xhr) {
                        if (typeof hideLoader === 'function') setTimeout(hideLoader, 1000);

                        const message = xhr.responseJSON && xhr.responseJSON.message ?
                            xhr.responseJSON.message :
                            'Failed to load advance list.';

                        Swal.fire({
                            title: 'Error',
                            text: message,
                            icon: 'error'
                        });
                    }
                },
                columns: [{
                        data: null,
                        name: 'id',
                        orderable: false,
                        searchable: false,
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        data: 'RectDate',
                        name: 'P.vdate'
                    },
                    {
                        data: 'Rectno',
                        name: 'P.vno'
                    },
                    {
                        data: 'FPNo',
                        name: 'P.fpno'
                    },
                    {
                        data: 'Billno',
                        name: 'S.vno'
                    },
                    {
                        data: 'Bookingdate',
                        name: 'O.fromdate'
                    },
                    {
                        data: 'Billdate',
                        name: 'S.vdate'
                    },
                    {
                        data: 'PartyName',
                        name: 'H.partyname'
                    },
                    {
                        data: 'Type',
                        name: 'Type',
                        render: function(data) {
                            if (data === 'Advance') {
                                return '<span class="badge-advance">Advance</span>';
                            } else if (data === 'Return') {
                                return '<span class="badge-return">Return</span>';
                            }
                            return data ?? '';
                        }
                    },
                    {
                        data: 'Mode',
                        name: 'R.name'
                    },
                    {
                        data: 'Amount',
                        name: 'Amount'
                    },
                    {
                        data: 'CGST',
                        name: 'CGST',
                        orderable: false
                    },
                    {
                        data: 'SGST',
                        name: 'SGST',
                        orderable: false
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false,
                        className: 'ins'
                    }
                ],
                language: {
                    processing: 'Loading advance list...'
                }
            });

            table.on('preXhr.dt', function() {
                if (typeof showLoader === 'function') showLoader();
            });

            table.on('xhr.dt', function() {
                if (typeof hideLoader === 'function') hideLoader();
            });

            // ── Delete confirmation ──────────────────────────────────────────
            $(document).on('click', '.js-delete-advance', function(e) {
                e.preventDefault();

                const deleteUrl = $(this).attr('href');
                const partyName = $(this).data('party-name') || 'this record';
                const rectNo = $(this).data('rect-no') || '';
                const hasBill = $(this).data('has-bill');
                const label = partyName + (rectNo ? ' - ' + rectNo : '');

                // Updated to match your exact requested message wording
                if (hasBill) {
                    Swal.fire({
                        title: 'Cannot Delete',
                        text: "Bill is already made, it can't be delete.",
                        icon: 'error',
                        confirmButtonColor: '#6c757d',
                        confirmButtonText: 'OK'
                    });
                    return;
                }

                Swal.fire({
                    title: 'Are you sure?',
                    text: `Are you sure you want to delete ${label}?`,
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#6c757d',
                    confirmButtonText: 'Yes, delete it',
                    cancelButtonText: 'No'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = deleteUrl;
                    }
                });
            });

            // ── Edit bill check (Fixed syntax comment line below) ───────────
            $(document).on('click', '.js-edit-advance', function(e) {
                e.preventDefault();

                // Updated text string to perfectly line up with backend message
                Swal.fire({
                    title: 'Cannot Edit',
                    text: "Bill is already made, it can't be edit.",
                    icon: 'error',
                    confirmButtonColor: '#6c757d',
                    confirmButtonText: 'OK'
                });
            });
        });
    </script>
@endsection
