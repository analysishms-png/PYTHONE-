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

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="uptodate">Up To Date</label>
                                            <input type="date" value="{{ ncurdate() }}" id="uptodate" name="uptodate" class="form-control">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="bankaccounts">Bank Accounts</label>
                                            <select name="bankaccounts" id="bankaccounts" class="form-control select2-multiple">
                                                <option value="">Select</option>
                                                @foreach (subgroupall('Bank') as $item)
                                                    <option data-nature="{{ $item->nature }}" value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="col-md-6">
                                            <label for="balanceperbank">Balanace as Per Bank</label>
                                            <input type="text" id="balanceperbank" name="balanceperbank" class="form-control">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="balanceperbook">Balance as Per Book</label>
                                            <input type="text" id="balanceperbook" name="balanceperbook" class="form-control">
                                        </div>

                                        <div class="col-md-6">
                                            <label for="status">Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="">Select</option>
                                                <option value="clear">Clear</option>
                                                <option value="unclear" selected>Unclear</option>
                                                <option value="all">All</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center p-1 offset-10">
                                <button type="button" id="updateledger" class="btn btn-primary" style="display:none;">
                                    Update Ledger
                                </button>
                            </div>

                            <div class="mt-3 table-responsive">
                                <table id="ledgerTable" class="table table-bordered table-sm w-100">
                                    <thead>
                                        <tr>
                                            <th>V. Type</th>
                                            <th>V. Prefix</th>
                                            <th>Vno</th>
                                            <th>Vdate</th>
                                            <th>Ledger A/C</th>
                                            <th>Dr</th>
                                            <th>Cr</th>
                                            <th>Chq No</th>
                                            <th>Chq Date</th>
                                            <th>Clr Date</th>
                                            <th>Narration</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('change', '#status, #bankaccounts, #uptodate', function() {
                let bankaccounts = $('#bankaccounts').val();
                let status = $('#status').val();
                let vdate = $('#uptodate').val();
                if (bankaccounts == '') {
                    Swal.fire({
                        icon: 'info',
                        title: 'Bank Reconciliation',
                        text: 'Please select a bank account first.',
                    });
                    return;
                }

                if (status == '') {
                    Swal.fire({
                        icon: 'info',
                        title: 'Bank Reconciliation',
                        text: 'Please select a status.',
                    });
                    return;
                }

                if (vdate == '') {
                    Swal.fire({
                        icon: 'info',
                        title: 'Bank Reconciliation',
                        text: 'Please select a date.',
                    });
                    return;
                }

                fetchbankamt();
                fetchleder();

            });

            function fetchbankamt() {
                let bankaccounts = $('#bankaccounts').val();
                let status = $('#status').val();
                let vdate = $('#uptodate').val();

                $.ajax({
                    url: "{{ route('finance.transaction.bankreconciliation.ledgeramtfetch') }}",
                    type: "POST",
                    data: {
                        bankaccounts: bankaccounts,
                        status: status,
                        vdate: vdate,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(response) {
                        if (response.success) {
                            $('#balanceperbank').val(response.asperbank);
                            $('#balanceperbook').val(response.asperbook);
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Bank Reconciliation',
                                text: response.message,
                            });
                        }
                    },
                    error: function(xhr) {
                        let message = 'Something went wrong';

                        if (xhr.responseJSON && xhr.responseJSON.error) {
                            message = xhr.responseJSON.error;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Bank Reconciliation',
                            text: message,
                        });
                    }
                });
            }

            let table;

            function fetchleder() {

                let bankaccounts = $('#bankaccounts').val();
                let status = $('#status').val();
                let vdate = $('#uptodate').val();

                if ($.fn.DataTable.isDataTable('#ledgerTable')) {
                    table.destroy();
                }

                table = $('#ledgerTable').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: false,
                    destroy: true,
                    order: [],
                    language: {
                        emptyTable: "No ledger entries found"
                    },

                    ajax: {
                        url: "{{ route('finance.transaction.bankreconciliation.ledgerfetch') }}",
                        type: "POST",
                        data: {
                            bankaccounts: bankaccounts,
                            status: status,
                            vdate: vdate,
                            _token: '{{ csrf_token() }}'
                        },
                        error: function(xhr) {
                            let message = 'Something went wrong';

                            if (xhr.responseJSON && xhr.responseJSON.error) {
                                message = xhr.responseJSON.error;
                            }

                            Swal.fire({
                                icon: 'error',
                                title: 'Bank Reconciliation',
                                text: message,
                            });
                        }
                    },

                    columns: [{
                            data: 'vtype'
                        },
                        {
                            data: 'vprefix'
                        },
                        {
                            data: 'vno'
                        },
                        {
                            data: 'vdate'
                        },
                        {
                            data: 'ledgername'
                        },
                        {
                            data: 'amtdr'
                        },
                        {
                            data: 'amtcr'
                        },
                        {
                            data: 'chqno',
                            render: function(data, type, row) {
                                return `<input type="text" 
                                    class="form-control form-control-sm editable" 
                                    data-field="chqno"
                                    data-docid="${row.docid}" 
                                    data-vsno="${row.vsno}" 
                                    value="${data ?? ''}">`;
                            }
                        },
                        {
                            data: 'chqdate',
                            render: function(data, type, row) {
                                return `<input type="date" 
                                    class="form-control form-control-sm editable" 
                                    data-field="chqdate"
                                    data-docid="${row.docid}" 
                                    data-vsno="${row.vsno}" 
                                    value="${data ?? ''}">`;
                            }
                        },
                        {
                            data: 'clgdate',
                            render: function(data, type, row) {
                                return `<input type="date" 
                                    class="form-control form-control-sm editable" 
                                    data-field="clgdate"
                                    data-docid="${row.docid}" 
                                    data-vsno="${row.vsno}" 
                                    value="${data ?? ''}">`;
                            }
                        },
                        {
                            data: 'narration'
                        }
                    ]
                });
            }

            let changedRows = {};

            $(document).on('change', '.editable', function() {

                let docid = $(this).data('docid');
                let vsno = $(this).data('vsno');
                let field = $(this).data('field');
                let value = $(this).val();

                let key = docid + '_' + vsno;

                if (!changedRows[key]) {
                    changedRows[key] = {
                        docid: docid,
                        vsno: vsno
                    };
                }

                changedRows[key][field] = value;

                console.log(changedRows);

                $('#updateledger').show();
            });

            $(document).on('click', '#updateledger', function() {

                if (Object.keys(changedRows).length === 0) {
                    return;
                }

                $.ajax({
                    url: "{{ route('finance.transaction.bankreconciliation.updateledger') }}",
                    type: "POST",
                    data: {
                        rows: Object.values(changedRows),
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(res) {

                        Swal.fire({
                            icon: 'success',
                            title: 'Updated',
                            text: 'Ledger updated successfully'
                        });

                        changedRows = {};
                        $('#updateledger').hide();

                        table.ajax.reload(null, false);
                    },
                    error: function(xhr) {
                        let message = 'Update failed';

                        if (xhr.responseJSON && xhr.responseJSON.error) {
                            message = xhr.responseJSON.error;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: message
                        });
                    }
                });

            });
        });
    </script>
@endsection
