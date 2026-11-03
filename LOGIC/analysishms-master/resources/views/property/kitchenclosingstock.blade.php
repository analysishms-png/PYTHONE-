@extends('property.layouts.main')
@section('main-container')
<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">

                        {{-- Success / Error Messages --}}
                        @if(session('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('success') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        @endif
                        @if(session('error'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{ session('error') }}
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        @endif

                        <h5 class="card-title mb-4">Kitchen Closing Stock</h5>

                        <form action="{{ route('kitchenclosingstocksubmit') }}" method="POST" id="kcsform">
                            @csrf
                            <input type="hidden" name="totalitem" id="totalitem" value="0">

                            <div class="row mb-3">
                                {{-- Voucher No --}}
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="col-form-label">Voucher No.</label>
                                        <input type="text" class="form-control" value="{{ $vno }}" readonly>
                                    </div>
                                </div>

                                {{-- Date from ncur --}}
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="col-form-label">Date</label>
                                        <input type="date"
                                               class="form-control"
                                               name="vdate"
                                               id="vdate"
                                               value="{{ $ncurdate }}"
                                               required>
                                        @error('vdate')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                {{-- Location from depart --}}
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="col-form-label">Location</label>
                                        <select class="form-control" name="department" id="department" required>
                                            <option value="">-- Select Location --</option>
                                            @foreach($departs as $dept)
                                                <option value="{{ $dept->dcode }}">{{ $dept->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('department')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            {{-- Item Table --}}
                            <div id="itemsection" style="display:none;">
                                <div class="text-end mb-2">
                                    <button type="button" id="addItemBtn" class="btn btn-outline-primary btn-sm">
                                        Add Item <i class="fa-solid fa-square-plus"></i>
                                    </button>
                                </div>

                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover" id="itemtable">
                                        <thead class="table-secondary">
                                            <tr>
                                                <th>SNO</th>
                                                <th>Item Name</th>
                                                <th>Wt. Unit</th>
                                                <th>Quantity</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th><i class="fa-solid fa-trash"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody id="itemtbody">
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="5" class="text-end fw-bold">Total Amount</td>
                                                <td>
                                                    <input type="text" id="totalamount" name="netamount"
                                                           class="form-control form-control-sm text-end fw-bold"
                                                           readonly value="0.00">
                                                </td>
                                                <td></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class="mt-3">
                                    <button type="submit" class="btn btn-primary" id="submitBtn">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        {{-- ============ Existing Records Table ============ --}}
                        <div class="table-responsive mt-5">
                            <table class="table table-hover table-striped table-download-with-search">
                                <thead class="bg-secondary text-white">
                                    <tr>
                                        <th>SNO</th>
                                        <th>Voucher No.</th>
                                        <th>Date</th>
                                        <th>Location</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $blockDays  = $enviroinv->blockdays ?? 0;
                                        $laterdays  = date('Y-m-d', strtotime("-{$blockDays} days"));
                                        $sn = 1;
                                    @endphp
                                    @forelse($data as $row)
                                        <tr>
                                            <td>{{ $sn++ }}</td>
                                            <td>{{ $row->vno }}</td>
                                            <td>{{ date('d-m-Y', strtotime($row->vdate)) }}</td>
                                            <td>{{ $row->deptname }}</td>
                                            <td>
                                                @if($superwiser == '1' || ($row->vdate > $laterdays && $superwiser != '0'))
                                                    <a href="updatekitchenclosingstock?docid={{ $row->docid }}">
                                                        <button class="btn btn-success btn-sm">
                                                            <i class="fa-regular fa-pen-to-square"></i> Edit
                                                        </button>
                                                    </a>
                                                    <a href="kitchenclosingstockdelete?docid={{ $row->docid }}"
                                                       onclick="return confirm('Delete this record?')">
                                                        <button class="btn btn-danger btn-sm">
                                                            <i class="fa-solid fa-trash"></i> Delete
                                                        </button>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="5" class="text-center text-muted">No records found.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>

                    </div>{{-- card-body --}}
                </div>{{-- card --}}
            </div>
        </div>
    </div>
</div>

{{-- ===================== Items JSON for JS ===================== --}}
<script>
    const allItems = @json($items);
</script>

<script>
$(document).ready(function () {

    // Show item section when location is selected
    $('#department').on('change', function () {
        if ($(this).val() !== '') {
            $('#itemsection').slideDown(300);
        } else {
            $('#itemsection').slideUp(300);
        }
    });

    // Add Item Row
    $('#addItemBtn').on('click', function () {
        let tbody   = $('#itemtbody');
        let rowCount = tbody.find('tr').length + 1;

        // Build item options
        let itemOptions = `<option value="">-- Select Item --</option>`;
        allItems.forEach(function (item) {
            itemOptions += `<option value="${item.Code}" data-unit="${item.Unit}" data-rate="${item.Rate}">
                                ${item.Name}
                            </option>`;
        });

        let tr = `
        <tr>
            <td>${rowCount}</td>
            <td>
                <select class="form-control form-control-sm item-select" name="item${rowCount}" id="item${rowCount}" required>
                    ${itemOptions}
                </select>
            </td>
            <td>
                <input type="text" class="form-control form-control-sm unit-field"
                       name="unit${rowCount}" id="unit${rowCount}" readonly>
            </td>
            <td>
                <input type="number" class="form-control form-control-sm qty-field"
                       name="qty${rowCount}" id="qty${rowCount}"
                       value="0" min="0" step="0.001">
            </td>
            <td>
                <input type="number" class="form-control form-control-sm rate-field"
                       name="rate${rowCount}" id="rate${rowCount}"
                       value="0.00" min="0" step="0.01">
            </td>
            <td>
                <input type="text" class="form-control form-control-sm amount-field"
                       name="amount${rowCount}" id="amount${rowCount}"
                       value="0.00" readonly>
            </td>
            <td>
                <span class="remove-row btn btn-danger btn-sm">
                    <i class="fa-solid fa-eraser"></i>
                </span>
            </td>
        </tr>`;

        tbody.append(tr);
        updateTotalitem();
    });

    // Item select change - auto fill unit & rate
    $(document).on('change', '.item-select', function () {
        let selected = $(this).find('option:selected');
        let idx      = $(this).closest('tr').index() + 1;

        // Duplicate check
        let selectedVal = $(this).val();
        let isDuplicate = false;
        $('.item-select').not(this).each(function () {
            if ($(this).val() === selectedVal && selectedVal !== '') {
                isDuplicate = true;
            }
        });
        if (isDuplicate) {
            alert('This item is already added. Please select a different item.');
            $(this).val('');
            return;
        }

        let unit = selected.data('unit') || '';
        let rate = selected.data('rate') || 0;
        let row  = $(this).closest('tr');

        row.find('.unit-field').val(unit);
        row.find('.rate-field').val(parseFloat(rate).toFixed(2));
        row.find('.qty-field').val('0');
        row.find('.amount-field').val('0.00');

        // Update name attribute for unit
        let rowIndex = row.index() + 1;
        row.find('.unit-field').attr('name', 'unit' + rowIndex);
        calculateRowAmount(row);
        calculateTotal();
    });

    // Qty change
    $(document).on('input', '.qty-field', function () {
        if (parseFloat($(this).val()) < 0) $(this).val(0);
        calculateRowAmount($(this).closest('tr'));
        calculateTotal();
    });

    // Rate change
    $(document).on('input', '.rate-field', function () {
        if (parseFloat($(this).val()) < 0) $(this).val(0);
        calculateRowAmount($(this).closest('tr'));
        calculateTotal();
    });

    // Remove row
    $(document).on('click', '.remove-row', function () {
        $(this).closest('tr').remove();
        renumberRows();
        calculateTotal();
    });

    function calculateRowAmount(row) {
        let qty    = parseFloat(row.find('.qty-field').val())  || 0;
        let rate   = parseFloat(row.find('.rate-field').val()) || 0;
        let amount = (qty * rate).toFixed(2);
        row.find('.amount-field').val(amount);
    }

    function calculateTotal() {
        let total = 0;
        $('.amount-field').each(function () {
            total += parseFloat($(this).val()) || 0;
        });
        $('#totalamount').val(total.toFixed(2));
    }

    function renumberRows() {
        $('#itemtbody tr').each(function (index) {
            let i = index + 1;
            $(this).find('td:first').text(i);
            $(this).find('select, input').each(function () {
                let name = $(this).attr('name');
                let id   = $(this).attr('id');
                if (name) $(this).attr('name', name.replace(/\d+$/, i));
                if (id)   $(this).attr('id',   id.replace(/\d+$/, i));
            });
        });
        updateTotalitem();
    }

    function updateTotalitem() {
        $('#totalitem').val($('#itemtbody tr').length);
    }

    // Form submit validation
    $('#kcsform').on('submit', function (e) {
        let total = parseFloat($('#totalamount').val()) || 0;
        let rows  = $('#itemtbody tr').length;
        if (rows < 1) {
            e.preventDefault();
            Swal.fire({
                title: 'Validation Error',
                text:  'Please add at least 1 item before submitting.',
                icon:  'error',
                confirmButtonText: 'OK'
            });
            return;
        }
        // Check all items selected
        let valid = true;
        $('.item-select').each(function () {
            if (!$(this).val()) { valid = false; }
        });
        if (!valid) {
            e.preventDefault();
            Swal.fire({
                title: 'Validation Error',
                text:  'Please select an item in all rows.',
                icon:  'warning',
                confirmButtonText: 'OK'
            });
        }
    });

});
</script>
@endsection
