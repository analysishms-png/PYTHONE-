@extends('property.layouts.main')
@section('main-container')
@include('cdns.select')
<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title mb-0">
                            Update Recipe &mdash; <strong>{{ $finishname }}</strong>
                        </h4>
                    </div>
                    <div class="card-body">

                        <form action="{{ route('recipemasterupdate') }}" method="POST" id="updaterecipeform">
                            @csrf
                            <input type="hidden" name="finishcode" value="{{ $finishcode }}">
                            <input type="hidden" name="totalitem" id="totalitem" value="{{ count($existingItems) }}">

                            {{-- Add Item Button --}}
                            <div class="text-right mb-2">
                                <button type="button" id="additem" class="btn btn-outline-primary">
                                    Add Item <i class="fa-solid fa-square-plus"></i>
                                </button>
                            </div>

                            {{-- Item Grid --}}
                            <div class="table-responsive">
                                <table id="itemtable" class="table table-bordered table-hover">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Raw Item</th>
                                            <th>Wt. Unit</th>
                                            <th>Qty</th>
                                            <th>Cost</th>
                                            <th>Total</th>
                                            <th><i class="fa-solid fa-square-caret-down"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($existingItems as $index => $item)
                                        @php $n = $index + 1; @endphp
                                        <tr>
                                            <td>
                                                <select class="form-control rawitemsel" name="rawitem{{ $n }}" id="rawitem{{ $n }}" required>
                                                    <option value="">-- Select Raw Item --</option>
                                                    @foreach($rawItems as $r)
                                                        <option value="{{ $r->code }}"
                                                            data-unit="{{ $r->wtunit }}"
                                                            {{ $r->code == $item->rawcode ? 'selected' : '' }}>
                                                            {{ $r->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                <input type="hidden" name="rawunit{{ $n }}" id="rawunit{{ $n }}" value="{{ $item->wtunit }}">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" id="wtunitshow{{ $n }}"
                                                    value="{{ $item->wtunit }}" readonly>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control rawqtyinput" name="rawqty{{ $n }}" id="rawqty{{ $n }}"
                                                    value="{{ $item->rawqty }}" min="0" step="0.001" required>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control rawcostinput" name="rawcost{{ $n }}" id="rawcost{{ $n }}"
                                                    value="{{ $item->rawcost ?? 0 }}" min="0" step="0.01">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="rawtotal{{ $n }}" id="rawtotal{{ $n }}"
                                                    value="{{ number_format(($item->rawqty ?? 0) * ($item->rawcost ?? 0), 2) }}" readonly>
                                            </td>
                                            <td>
                                                <span class="removerow" style="cursor:pointer;color:red;font-size:18px;">
                                                    <i class="fa-solid fa-eraser"></i>
                                                </span>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <div class="mt-3">
                                <button type="submit" class="btn btn-primary">
                                    Update <i class="fa-solid fa-file-export"></i>
                                </button>
                                <a href="{{ route('recipemaster') }}" class="btn btn-secondary ml-2">Cancel</a>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
var rawItemsData = @json($rawItems);

$(document).ready(function () {

    var rawOptions = '<option value="">-- Select Raw Item --</option>';
    rawItemsData.forEach(function(item) {
        rawOptions += '<option value="' + item.code + '" data-unit="' + (item.wtunit || '') + '">' + item.name + '</option>';
    });

    // Add new row
    $('#additem').on('click', function () {
        var tbody = $('#itemtable tbody');
        var count = tbody.find('tr').length + 1;
        $('#totalitem').val(count);

        var tr = '<tr>'
            + '<td>'
            +   '<select class="form-control rawitemsel" name="rawitem' + count + '" id="rawitem' + count + '" required>'
            +   rawOptions
            +   '</select>'
            +   '<input type="hidden" name="rawunit' + count + '" id="rawunit' + count + '">'
            + '</td>'
            + '<td><input type="text" class="form-control" id="wtunitshow' + count + '" readonly></td>'
            + '<td><input type="number" class="form-control rawqtyinput" name="rawqty' + count + '" id="rawqty' + count + '" min="0" step="0.001" placeholder="0.000" required></td>'
            + '<td><input type="number" class="form-control rawcostinput" name="rawcost' + count + '" id="rawcost' + count + '" min="0" step="0.01" placeholder="0.00"></td>'
            + '<td><input type="text" class="form-control" name="rawtotal' + count + '" id="rawtotal' + count + '" readonly placeholder="0.00"></td>'
            + '<td><span class="removerow" style="cursor:pointer;color:red;font-size:18px;"><i class="fa-solid fa-eraser"></i></span></td>'
            + '</tr>';

        tbody.append(tr);
    });

    // Raw item change → fill unit
    $(document).on('change', '.rawitemsel', function () {
        var unit = $(this).find('option:selected').data('unit') || '';
        var idx  = $(this).attr('id').replace('rawitem', '');
        $('#wtunitshow' + idx).val(unit);
        $('#rawunit'    + idx).val(unit);
    });

    // Auto-calculate Total = Qty * Cost
    $(document).on('input', '.rawqtyinput, .rawcostinput', function () {
        var idx  = $(this).attr('id').replace('rawqty', '').replace('rawcost', '');
        var qty  = parseFloat($('#rawqty'  + idx).val() || 0);
        var cost = parseFloat($('#rawcost' + idx).val() || 0);
        $('#rawtotal' + idx).val((qty * cost).toFixed(2));
    });

    // Remove row
    $(document).on('click', '.removerow', function () {
        $(this).closest('tr').remove();
        $('#itemtable tbody tr').each(function (i) {
            var n = i + 1;
            $(this).find('select, input').each(function () {
                var name = $(this).attr('name');
                var id   = $(this).attr('id');
                if (name) $(this).attr('name', name.replace(/\d+$/, n));
                if (id)   $(this).attr('id',   id.replace(/\d+$/, n));
            });
        });
        // Set totalitem AFTER loop
        $('#totalitem').val($('#itemtable tbody tr').length);
    });

    // Submit validation
    $('#updaterecipeform').on('submit', function (e) {
        if ($('#itemtable tbody tr').length < 1) {
            e.preventDefault();
            alert('Please add at least one raw item.');
        }
    });
});
</script>
@endsection
