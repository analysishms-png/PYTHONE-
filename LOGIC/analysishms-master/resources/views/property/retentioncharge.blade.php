@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">

    <style>
        #noshowPage {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            color: #334155;
            font-size: 13px;
        }

        #noshowPage .card {
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
            margin-bottom: 1rem;
            background-color: #ffffff;
        }

        #noshowPage .card-header-blue {
            background-color: #e0f2fe;
            color: #0369a1;
            font-weight: 700;
            font-size: 14px;
            padding: 8px 14px;
            border-bottom: 1px solid #bae6fd;
            border-top-left-radius: 5px !important;
            border-top-right-radius: 5px !important;
        }

        #noshowPage .card-body {
            padding: 14px 16px;
        }

        #noshowPage .form-group {
            margin-bottom: 10px;
        }

        #noshowPage .form-control-sm,
        #noshowPage .input-group-sm>.form-control {
            height: calc(1.5em + 0.5rem + 2px);
            padding: 0.25rem 0.5rem;
            font-size: 12.5px;
            border-radius: 4px;
            border: 1px solid #cbd5e1;
            background-color: #f8fafc;
            color: #1e293b;
        }

        #noshowPage .form-control-sm:focus {
            background-color: #ffffff;
            border-color: #3b82f6;
            box-shadow: 0 0 0 0.15rem rgba(59, 130, 246, 0.25);
        }

        #noshowPage textarea.form-control-sm {
            height: auto;
        }

        #noshowPage .form-control[readonly] {
            background-color: #f1f5f9;
        }

        #noshowPage .input-group-text {
            background-color: #f1f5f9;
            border: 1px solid #cbd5e1;
            color: #64748b;
            padding: 0 8px;
            font-size: 12px;
        }

        #noshowPage label {
            margin-bottom: 3px;
            font-weight: 500;
            color: #475569;
            font-size: 12px;
        }

        #noshowPage .page-title {
            font-size: 20px;
            font-weight: 700;
            color: #0f172a;
        }

        #noshowPage .badge-noshow {
            background-color: #fee2e2;
            color: #b91c1c;
            font-weight: 700;
            padding: 5px 10px;
            border-radius: 4px;
            border: 1px solid #fca5a5;
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }

        #noshowPage .balance-highlight {
            background-color: #fef3c7;
            border: 1px solid #fde68a;
            border-radius: 4px;
            padding: 6px 10px;
            font-weight: 700;
            color: #92400e;
            font-size: 14px;
        }

        #noshowPage .btn-custom {
            font-size: 12.5px;
            font-weight: 600;
            padding: 6px 24px;
            border-radius: 4px;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: all 0.2s ease;
        }

        #noshowPage .btn-action-save {
            background-color: #2563eb;
            color: #fff;
            border: 1px solid #1d4ed8;
        }

        #noshowPage .btn-action-save:hover {
            background-color: #1d4ed8;
            color: #fff;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid" id="noshowPage">

            <div class="row align-items-center mb-3">
                <div class="col-12">
                    <div class="d-flex align-items-center">
                        <div class="mr-3 p-2 rounded bg-white text-primary border shadow-sm">
                            <i class="fas fa-receipt fa-lg"></i>
                        </div>
                        <div>
                            <h1 class="page-title mb-0">No-Show / Retention Charges</h1>
                        </div>
                    </div>
                </div>
            </div>

            @if ($taxcfg['missing'])
                <div class="row">
                    <div class="col-12">
                        <div class="alert alert-danger d-flex align-items-center" role="alert" style="font-size:13px;">
                            <i class="fas fa-exclamation-triangle mr-2"></i>
                            <div>
                                <strong>Retention charge not selected.</strong>
                                Please select the <em>Cancellation/Retention Charge</em> in FOM Parameter.
                                Retention can only be saved after that.
                            </div>
                        </div>
                    </div>
                </div>
            @endif

            {{-- Select Booking --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header-blue">Select Booking</div>
                        <div class="card-body">
                            <form method="GET" action="{{ route('retentioncharges') }}" class="form-inline">
                                <label class="mr-2">Booking No.</label>
                                <select name="bookno" class="form-control form-control-sm mr-2"
                                    onchange="this.form.submit()">
                                    <option value="">-- Select Booking --</option>
                                    @foreach ($bookings as $bno => $items)
                                        <option value="{{ $bno }}"
                                            {{ (string) $bno === (string) $selected ? 'selected' : '' }}>
                                            {{ $bno }} - {{ $items->first()->GuestName }}
                                            ({{ $items->count() }} room)
                                        </option>
                                    @endforeach
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Reservation Details --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header-blue">Reservation Details</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Reservation No.</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm" id="resNo"
                                                value="{{ $first->BookNo ?? '' }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Guest Name</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ $first->GuestName ?? '' }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Contact No.</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ $guest->mobile_no ?? '' }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Booking Date</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ !empty($first->created_at) ? \Carbon\Carbon::parse($first->created_at)->format('d M Y H:i') : '' }}"
                                                readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Arrival Date</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ !empty($first->ArrDate) ? \Carbon\Carbon::parse($first->ArrDate)->format('d M Y') : '' }}"
                                                readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Departure Date</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ !empty($first->DepDate) ? \Carbon\Carbon::parse($first->DepDate)->format('d M Y') : '' }}"
                                                readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">No. of Nights</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ $first->NoDays ?? '' }}" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-12 col-12">
                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Room No. / Type</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ $booking->pluck('RoomNo')->filter()->implode(', ') }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">No. of Rooms</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm"
                                                value="{{ $booking->count() }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Current Status</label>
                                        <div class="col-sm-7">
                                            @if ($first)
                                                <span class="badge-noshow">
                                                    <i class="fas fa-user-slash"></i>
                                                    @if (!empty($first->ContraDocId))
                                                        Checked-In
                                                    @elseif ($first->U_Name === 'NOSHOW')
                                                        No-Show
                                                    @else
                                                        Cancelled
                                                    @endif
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Retention Charges (new entry) --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header-blue">Retention Charges</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Retention Amount (₹)</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm text-right"
                                                id="inputRetention" placeholder="0.00" autocomplete="off"
                                                {{ !$first || $taxcfg['missing'] ? 'readonly' : '' }}>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Tax Amount (₹)</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm text-right"
                                                id="inputTaxAmount" value="0.00" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label font-weight-bold">Total Retention
                                            (₹)</label>
                                        <div class="col-sm-7">
                                            <input type="text"
                                                class="form-control form-control-sm text-right font-weight-bold"
                                                id="inputTotalCharge" value="0.00" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label">Advance Received (₹)</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control form-control-sm text-right"
                                                id="inputAdvReceived"
                                                value="{{ number_format($advanceTotal, 2, '.', '') }}" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-center">
                                        <label class="col-sm-5 col-form-label font-weight-bold">Balance (Advance −
                                            Retention) (₹)</label>
                                        <div class="col-sm-7">
                                            <div class="balance-highlight text-right" id="boxBalanceReceivable">0.00</div>
                                        </div>
                                    </div>

                                    <div class="form-group row align-items-start">
                                        <label class="col-sm-5 col-form-label">Remarks</label>
                                        <div class="col-sm-7">
                                            <textarea class="form-control form-control-sm" id="inputRemarks" rows="2" maxlength="500"
                                                {{ !$first || $taxcfg['missing'] ? 'readonly' : '' }}></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center mt-3">
                                <button type="button" class="btn btn-custom btn-action-save" id="btnSave"
                                    {{ !$first || $taxcfg['missing'] ? 'disabled' : '' }}>
                                    <i class="fas fa-save"></i> Save
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Retention Charge History (same style as item list) --}}
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header-blue">Retention Charge History</div>
                        <div class="table-responsive">
                            <table id="retentionHistory" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Date</th>
                                        <th>Bill No.</th>
                                        <th>Res. No.</th>
                                        <th>Guest</th>
                                        <th class="text-right">Amount (₹)</th>
                                        <th class="text-right">Tax (₹)</th>
                                        <th class="text-right">Total (₹)</th>
                                        <th>Remarks</th>
                                        <th>By</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($history as $row)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ \Carbon\Carbon::parse($row->vdate)->format('d M Y') }}</td>
                                            <td>{{ $row->vno }}</td>
                                            <td>{{ $row->bookno }}</td>
                                            <td>{{ $row->guest }}</td>
                                            <td class="text-right">{{ number_format($row->base, 2) }}</td>
                                            <td class="text-right">{{ number_format($row->tax, 2) }}</td>
                                            <td class="text-right">{{ number_format($row->total, 2) }}</td>
                                            <td>{{ $row->remarks }}</td>
                                            <td>{{ $row->u_name }}</td>
                                            <td class="ins" style="white-space:nowrap;">
                                                <button type="button" class="btn btn-success btn-sm editBtn"
                                                    data-bookno="{{ $row->bookno }}" data-docid="{{ $row->docid }}"
                                                    data-guest="{{ $row->guest }}"
                                                    data-base="{{ number_format($row->base, 2, '.', '') }}"
                                                    data-remarks="{{ $row->remarks }}">
                                                    <i class="fa-regular fa-pen-to-square"></i> Edit
                                                </button>
                                                <button type="button" class="btn btn-danger btn-sm deleteBtn"
                                                    data-bookno="{{ $row->bookno }}" data-docid="{{ $row->docid }}">
                                                    <i class="fa-solid fa-trash"></i> Delete
                                                </button>
                                                <button type="button" class="btn btn-info btn-sm text-white printBtn"
                                                    data-bookno="{{ $row->bookno }}" data-docid="{{ $row->docid }}">
                                                    <i class="fas fa-print"></i> Print
                                                </button>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    {{-- Edit Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Retention Charge</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-form-label" for="upBookNo">Reservation No.</label>
                        <input type="text" id="upBookNo" class="form-control" readonly>
                        <input type="hidden" id="upDocId">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="upGuest">Guest Name</label>
                        <input type="text" id="upGuest" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="upRetention">Retention Amount (₹)</label>
                        <input type="text" id="upRetention" class="form-control text-right" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="upTax">Tax Amount (₹)</label>
                        <input type="text" id="upTax" class="form-control text-right" value="0.00" readonly>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="upTotal">Total Retention (₹)</label>
                        <input type="text" id="upTotal" class="form-control text-right font-weight-bold"
                            value="0.00" readonly>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label" for="upRemarks">Remarks</label>
                        <textarea id="upRemarks" class="form-control" rows="2" maxlength="500"></textarea>
                    </div>
                    <div class="text-center">
                        <button type="button" id="updateBtn" class="btn btn-primary">
                            Update <i class="fa-solid fa-file-export"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- jQuery / DataTable / Bootstrap come from layout + cdns.datatable (same as item list page) --}}
    <script>
        $(document).ready(function() {
            const TAX = {!! json_encode(['inclusive' => $taxcfg['inclusive'], 'rows' => $taxcfg['rows']]) !!};
            const BOOKNO = @json($selected);
            const CHARGE_MISSING = {{ $taxcfg['missing'] ? 'true' : 'false' }};
            const SAVE_URL = "{{ route('retentionsave') }}";
            const UPDATE_URL = "{{ route('retentionupdate') }}";
            const DELETE_URL = "{{ route('retentiondelete') }}";
            const PRINT_URL = "{{ route('retentionprint') }}";
            const INDEX_URL = "{{ route('retentioncharges') }}";
            const CSRF = "{{ csrf_token() }}";
            const MSG_CHARGE_MISSING =
                'Retention charge not selected. Please select the Cancellation/Retention Charge in FOM Parameter.';

            new DataTable('#retentionHistory', {
                dom: 'frtip',
                order: [],
                columnDefs: [{
                    orderable: false,
                    targets: 10
                }]
            });

            function parseNum(val) {
                if (!val) return 0;
                return parseFloat(val.toString().replace(/,/g, '')) || 0;
            }

            function formatNum(num) {
                return num.toLocaleString('en-IN', {
                    minimumFractionDigits: 2,
                    maximumFractionDigits: 2
                });
            }

            function round2(n) {
                return Math.round((n + Number.EPSILON) * 100) / 100;
            }

            // Returns {tax, total} for an entered amount
            function calcTax(entered) {
                entered = Math.abs(entered);
                const totalRate = TAX.rows.reduce((a, r) => a + r.rate, 0);
                let base = entered;

                if (TAX.inclusive && totalRate > 0) {
                    base = round2((entered * 100) / (100 + totalRate));
                }

                let taxTotal = 0;
                TAX.rows.forEach(r => {
                    taxTotal += round2((base * r.rate) / 100);
                });
                taxTotal = round2(taxTotal);

                return {
                    tax: taxTotal,
                    total: round2(base + taxTotal)
                };
            }

            function recalculate() {
                const c = calcTax(parseNum($('#inputRetention').val()));
                const advReceived = parseNum($('#inputAdvReceived').val());

                $('#inputTaxAmount').val(formatNum(c.tax));
                $('#inputTotalCharge').val(formatNum(c.total));
                $('#boxBalanceReceivable').text(formatNum(round2(advReceived - c.total)));
            }

            function recalculateModal() {
                const c = calcTax(parseNum($('#upRetention').val()));
                $('#upTax').val(formatNum(c.tax));
                $('#upTotal').val(formatNum(c.total));
            }

            function notify(icon, text) {
                if (window.Swal) {
                    Swal.fire({
                        icon: icon,
                        text: text
                    });
                } else {
                    alert(text);
                }
            }

            function ajaxError(xhr) {
                let msg = 'Request failed.';
                if (xhr.responseJSON) {
                    if (xhr.responseJSON.errors) {
                        msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                    } else if (xhr.responseJSON.message) {
                        msg = xhr.responseJSON.message;
                    }
                }
                return msg;
            }

            function redirectSoon() {
                setTimeout(function() {
                    window.location.href = INDEX_URL;
                }, 900);
            }

            $('#inputRetention').on('input change', recalculate);
            $('#upRetention').on('input change', recalculateModal);

            // ---------- Save (new) ----------
            $('#btnSave').on('click', function() {
                const retention = parseNum($('#inputRetention').val());

                if (CHARGE_MISSING) {
                    notify('error', MSG_CHARGE_MISSING);
                    return;
                }
                if (!BOOKNO) {
                    notify('error', 'Please select a booking.');
                    return;
                }
                if (retention <= 0) {
                    notify('error', 'Retention amount must be greater than 0.');
                    return;
                }

                const $btn = $(this).prop('disabled', true);

                $.ajax({
                    url: SAVE_URL,
                    type: 'POST',
                    data: {
                        _token: CSRF,
                        bookno: BOOKNO,
                        retention: retention,
                        remarks: $('#inputRemarks').val()
                    },
                    success: function(res) {
                        notify('success', res.message || 'Saved');
                        redirectSoon(); // button stays disabled to prevent double submit
                    },
                    error: function(xhr) {
                        notify('error', ajaxError(xhr));
                        $btn.prop('disabled', false);
                    }
                });
            });

            // ---------- Edit (history table) ----------
            $(document).on('click', '.editBtn', function() {
                if (CHARGE_MISSING) {
                    notify('error', MSG_CHARGE_MISSING);
                    return;
                }
                $('#upBookNo').val($(this).data('bookno'));
                $('#upDocId').val($(this).attr('data-docid'));
                $('#upGuest').val($(this).data('guest'));
                $('#upRetention').val($(this).data('base'));
                $('#upRemarks').val($(this).data('remarks'));
                recalculateModal();
                $('#updateModal').modal('show');
            });

            $('#updateBtn').on('click', function() {
                const retention = parseNum($('#upRetention').val());

                if (retention <= 0) {
                    notify('error', 'Retention amount must be greater than 0.');
                    return;
                }

                const $btn = $(this).prop('disabled', true);

                $.ajax({
                    url: UPDATE_URL,
                    type: 'POST',
                    data: {
                        _token: CSRF,
                        docid: $('#upDocId').val(),
                        retention: retention,
                        remarks: $('#upRemarks').val()
                    },
                    success: function(res) {
                        $('#updateModal').modal('hide');
                        notify('success', res.message || 'Updated');
                        redirectSoon();
                    },
                    error: function(xhr) {
                        notify('error', ajaxError(xhr));
                        $btn.prop('disabled', false);
                    }
                });
            });

            // ---------- Delete (history table) ----------
            function doDelete(docid) {
                $.ajax({
                    url: DELETE_URL,
                    type: 'POST',
                    data: {
                        _token: CSRF,
                        _method: 'DELETE',
                        docid: docid
                    },
                    success: function(res) {
                        notify('success', res.message || 'Deleted');
                        redirectSoon();
                    },
                    error: function(xhr) {
                        notify('error', ajaxError(xhr));
                    }
                });
            }

            $(document).on('click', '.deleteBtn', function() {
                const bookno = $(this).data('bookno');
                const docid = $(this).attr('data-docid');

                if (window.Swal) {
                    Swal.fire({
                        icon: 'warning',
                        text: 'Delete the retention charge for Res. No: ' + bookno + '?',
                        showCancelButton: true,
                        confirmButtonText: 'Yes, delete',
                        cancelButtonText: 'Cancel'
                    }).then(function(r) {
                        if (r.isConfirmed) doDelete(docid);
                    });
                } else if (confirm('Delete the retention charge for Res. No: ' + bookno + '?')) {
                    doDelete(docid);
                }
            });

            // ---------- Print (history table) ----------
            $(document).on('click', '.printBtn', function() {
                window.open(PRINT_URL + '?docid=' + encodeURIComponent($(this).attr('data-docid')),
                    '_blank');
            });

            // Remove ?bookno from the address bar so a manual refresh (F5) loads a blank form.
            if (window.history.replaceState && window.location.search.indexOf('bookno=') !== -1) {
                window.history.replaceState({}, document.title, INDEX_URL);
            }

            recalculate();
        });
    </script>
@endsection
