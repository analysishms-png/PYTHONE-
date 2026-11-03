@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">

                        @if(session('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('success') }}
                                <button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
                            </div>
                        @endif
                        @if(session('error'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{ session('error') }}
                                <button type="button" class="close" data-dismiss="alert"><span>&times;</span></button>
                            </div>
                        @endif

                        {{-- Entry Form --}}
                        <form action="{{ route('recipemastersubmit') }}" method="POST" id="recipemasterform">
                            @csrf
                            <input type="hidden" name="totalitem" id="totalitem" value="0">

                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-form-label font-weight-bold">Finish Item Name</label>
                                        <select name="finishcode" id="finishcode" class="form-control" required>
                                            <option value="">-- Select Finish Item --</option>
                                            @foreach($finishItems as $item)
                                                <option value="{{ $item->code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            {{-- Item Grid --}}
                            <div class="itemshow">
                                <div class="text-right mb-2">
                                    <button type="button" id="additem" class="btn btn-outline-primary">
                                        Add Item <i class="fa-solid fa-square-plus"></i>
                                    </button>
                                </div>
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
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="mt-3 mb-4">
                                <button type="submit" id="submitBtn" class="btn btn-primary">
                                    Submit <i class="fa-solid fa-file-export"></i>
                                </button>
                            </div>
                        </form>

                        <hr>

                        {{-- Saved BOM Table --}}
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <div style="gap:8px; display:flex;">
                                <a href="{{ route('printrecipemaster') }}" target="_blank" id="printBtn" class="btn btn-info btn-sm text-white" data-base-url="{{ route('printrecipemaster') }}">Print</a>
                                <a href="{{ route('recipemaster.export') }}" id="excelBtn" class="btn btn-success btn-sm" data-base-url="{{ route('recipemaster.export') }}">Excel</a>
                            </div>
                        </div>

                        <div class="table-responsive">
                            <table id="recipetable" class="table table-hover table-download-with-search table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>S.No</th>
                                        <th>Finish Item</th>
                                        <th>Raw Item</th>
                                        <th>Wt. Unit</th>
                                        <th>Qty</th>
                                        <th>Cost</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach($savedData as $row)
                                    <tr>
                                        <td>{{ $sn++ }}</td>
                                        <td><strong>{{ $row->finishname }}</strong></td>
                                        <td>{{ $row->rawname }}</td>
                                        <td>{{ $row->wtunit }}</td>
                                        <td>{{ number_format($row->RawQty, 3) }}</td>
                                        <td>{{ number_format($row->cost ?? 0, 2) }}</td>
                                        <td>{{ number_format($row->total ?? 0, 2) }}</td>
                                        <td>
                                            <a href="{{ url('updaterecipemaster/' . urlencode($row->FinItem)) }}" class="btn btn-success btn-sm">
                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                            </a>
                                            <a href="{{ url('deleterecipemaster/' . $row->id) }}"
                                               class="btn btn-danger btn-sm"
                                               onclick="return confirm('Delete this item?')">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </a>
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
</div>

<script>
// Raw items data from PHP
var rawItemsData = @json($rawItems);
// Debug: savedData count
var savedDataCount = {{ $savedCount ?? 0 }};
var savedDataDebug = @json($savedData);
console.log('recipemaster.savedCount =', savedDataCount, 'savedData=', savedDataDebug);

$(document).ready(function () {

    // Build raw item options once
    var rawOptions = '<option value="">-- Select Raw Item --</option>';
    rawItemsData.forEach(function(item) {
        rawOptions += '<option value="' + item.code + '" data-unit="' + (item.wtunit || '') + '">' + item.name + '</option>';
    });

    // Add Item row
    $('#additem').on('click', function () {
        var tbody  = $('#itemtable tbody');
        var count  = tbody.find('tr').length + 1;
        // Update totalitem
        $('#totalitem').val(count);

        var tr = '<tr>'
            + '<td>'
            +   '<select class="form-control rawitemsel" name="rawitem' + count + '" id="rawitem' + count + '" required>'
            +   rawOptions
            +   '</select>'
            +   '<input type="hidden" name="rawunit' + count + '" id="rawunit' + count + '">'
            + '</td>'
            + '<td><input type="text" class="form-control wtunitshow" id="wtunitshow' + count + '" readonly></td>'
            + '<td><input type="number" class="form-control rawqtyinput" name="rawqty' + count + '" id="rawqty' + count + '" min="0" step="0.001" placeholder="0.000" required></td>'
            + '<td><input type="number" class="form-control rawcostinput" name="rawcost' + count + '" id="rawcost' + count + '" min="0" step="0.01" placeholder="0.00"></td>'
            + '<td><input type="text" class="form-control" name="rawtotal' + count + '" id="rawtotal' + count + '" readonly placeholder="0.00"></td>'
            + '<td><span class="removerow" style="cursor:pointer;color:red;font-size:18px;"><i class="fa-solid fa-eraser"></i></span></td>'
            + '</tr>';

        tbody.append(tr);
    });

    // Auto-calculate Total = Qty * Cost
    $(document).on('input', '.rawqtyinput, .rawcostinput', function () {
        var row   = $(this).closest('tr');
        var idx   = row.find('.rawqtyinput').attr('id').replace('rawqty', '');
        var qty   = parseFloat($('#rawqty'  + idx).val() || 0);
        var cost  = parseFloat($('#rawcost' + idx).val() || 0);
        $('#rawtotal' + idx).val((qty * cost).toFixed(2));
    });

    // Raw item change → fill unit
    $(document).on('change', '.rawitemsel', function () {
        var unit = $(this).find('option:selected').data('unit') || '';
        var idx  = $(this).attr('id').replace('rawitem', '');
        $('#wtunitshow' + idx).val(unit);
        $('#rawunit'    + idx).val(unit);
    });

    // Remove row
    $(document).on('click', '.removerow', function () {
        $(this).closest('tr').remove();
        // Re-number all rows
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

    // Update Print/Excel URLs when finishcode changes
    function updateExportLinks() {
        var finishcode = $('#finishcode').val();
        var printBtn = $('#printBtn');
        var excelBtn = $('#excelBtn');

        if (finishcode) {
            printBtn.attr('href', printBtn.data('base-url') + '?finishcode=' + encodeURIComponent(finishcode));
            excelBtn.attr('href', excelBtn.data('base-url') + '?finishcode=' + encodeURIComponent(finishcode));
        } else {
            // No filter — print/export all data
            printBtn.attr('href', printBtn.data('base-url'));
            excelBtn.attr('href', excelBtn.data('base-url'));
        }
        // Always keep buttons visible and enabled
        printBtn.removeClass('disabled');
        excelBtn.removeClass('disabled');
    }

    $('#finishcode').on('change', function () {
        updateExportLinks();
    });

    // Initialize export links state on page load
    updateExportLinks();

    // Form submit validation
    $('#recipemasterform').on('submit', function (e) {
        if (!$('#finishcode').val()) {
            e.preventDefault();
            alert('Please select a Finish Item.');
            return;
        }
        if ($('#itemtable tbody tr').length < 1) {
            e.preventDefault();
            alert('Please add at least one raw item.');
            return;
        }
        // Prevent double submit
        $('#submitBtn').prop('disabled', true).text('Saving...');
    });

    // Remove any DataTables export buttons injected by global initializers
    var dtBtnRemover = setInterval(function () {
        var btns = $('#recipetable_wrapper .dt-buttons');
        if (btns.length) {
            btns.remove();
            clearInterval(dtBtnRemover);
        }
    }, 200);
    // stop trying after 3 seconds
    setTimeout(function () { clearInterval(dtBtnRemover); }, 3000);

   
});
</script>
@endsection
