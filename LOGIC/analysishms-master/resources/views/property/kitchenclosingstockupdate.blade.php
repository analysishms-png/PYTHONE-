@extends('property.layouts.main')
@section('main-container')
<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">

                        {{-- Messages --}}
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

                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h5 class="card-title mb-0">Edit Kitchen Closing Stock</h5>
                            <a href="{{ route('kitchenclosingstock') }}" class="btn btn-secondary btn-sm">
                                <i class="fa-solid fa-arrow-left"></i> Back to List
                            </a>
                        </div>

                        <form action="{{ route('kitchenclosingstockupdate') }}" method="POST" id="kcsUpdateForm">
                            @csrf
                            <input type="hidden" name="docid" value="{{ $header->docid }}">
                            <input type="hidden" name="totalitem" id="totalitem" value="{{ count($stockitems) }}">

                            <div class="row mb-3">
                                {{-- Voucher No --}}
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="col-form-label">Voucher No.</label>
                                        <input type="text" class="form-control" value="{{ $header->vno }}" readonly>
                                    </div>
                                </div>

                                {{-- Date --}}
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="col-form-label">Date</label>
                                        <input type="date"
                                               class="form-control"
                                               name="vdate"
                                               id="vdate"
                                               value="{{ $header->vdate }}"
                                               required>
                                        @error('vdate')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                {{-- Location --}}
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="col-form-label">Location</label>
                                        <select class="form-control" name="department" id="department" required>
                                            <option value="">-- Select Location --</option>
                                            @foreach($departs as $dept)
                                                <option value="{{ $dept->dcode }}"
                                                    {{ $header->departcode == $dept->dcode ? 'selected' : '' }}>
                                                    {{ $dept->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('department')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            {{-- Item Table --}}
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
                                        @foreach($stockitems as $index => $sitem)
                                            @php $i = $index + 1; @endphp
                                            <tr>
                                                <td>{{ $i }}</td>
                                                <td>
                                                    <select class="form-control form-control-sm item-select"
                                                            name="item{{ $i }}" id="item{{ $i }}" required>
                                                        <option value="">-- Select Item --</option>
                                                        @foreach($items as $itm)
                                                            <option value="{{ $itm->Code }}"
                                                                    data-unit="{{ $itm->Unit }}"
                                                                    data-rate="{{ $itm->Rate }}"
                                                                    {{ $sitem->item == $itm->Code ? 'selected' : '' }}>
                                                                {{ $itm->Name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control form-control-sm unit-field"
                                                           name="unit{{ $i }}" id="unit{{ $i }}"
                                                           value="{{ $sitem->unit }}" readonly>
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control form-control-sm qty-field"
                                                           name="qty{{ $i }}" id="qty{{ $i }}"
                                                           value="{{ $sitem->accqty }}" min="0" step="0.001">
                                                </td>
                                                <td>
                                                    <input type="number" class="form-control form-control-sm rate-field"
                                                           name="rate{{ $i }}" id="rate{{ $i }}"
                                                           value="{{ $sitem->rate }}" min="0" step="0.01">
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control form-control-sm amount-field"
                                                           name="amount{{ $i }}" id="amount{{ $i }}"
                                                           value="{{ number_format($sitem->amount, 2, '.', '') }}" readonly>
                                                </td>
                                                <td>
                                                    <span class="remove-row btn btn-danger btn-sm">
                                                        <i class="fa-solid fa-eraser"></i>
                                                    </span>
                                                </td>
                                            </tr>
                                        @endforeach
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
                                    Update <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                                <a href="{{ route('kitchenclosingstock') }}" class="btn btn-secondary ms-2">
                                    Cancel
                                </a>
                            </div>

                        </form>

                    </div>{{-- card-body --}}
                </div>{{-- card --}}
            </div>
        </div>
    </div>
</div>

{{-- Items JSON for JS --}}
<script>
    const allItems = @json($items);
</script>

<script>
$(document).ready(function () {

    // Calculate total on page load
    calculateTotal();

    // Add Item Row
    $('#addItemBtn').on('click', function () {
        let tbody    = $('#itemtbody');
        let rowCount = tbody.find('tr').length + 1;

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

    // Item select change — auto fill unit & rate
    $(document).on('change', '.item-select', function () {
        let selected   = $(this).find('option:selected');
        let selectedVal = $(this).val();

        // Duplicate check
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
        row.find('.amount-field').val((qty * rate).toFixed(2));
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
    $('#kcsUpdateForm').on('submit', function (e) {
        let rows = $('#itemtbody tr').length;
        if (rows < 1) {
            e.preventDefault();
            Swal.fire({
                title: 'Validation Error',
                text:  'Please add at least 1 item before updating.',
                icon:  'error',
                confirmButtonText: 'OK'
            });
            return;
        }
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
