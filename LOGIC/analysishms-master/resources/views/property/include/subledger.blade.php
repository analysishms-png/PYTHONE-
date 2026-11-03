@if ($update == false)
    <input type="hidden" value="1" name="totalrows" id="totalrows">
    <div class="container-fluid mt-2">
        <table class="table table-bordered form-table" id="ledger-table">
            <thead class="table-light text-center">
                <tr>
                    <th>S.No</th>
                    <th>Ref. Date</th>
                    <th>Narration</th>
                    <th>Amount</th>
                    <th>Cr/Dr</th>
                </tr>
            </thead>
            <tbody>
                <tr data-index="1">
                    <td class="text-center">1</td>
                    <td><input type="date" class="form-control form-control-sm" name="refdate1" id="refdate1"></td>
                    <td><input type="text" class="form-control form-control-sm" name="narration1" id="narration1"></td>
                    <td>
                        <input type="text" class="form-control form-control-sm amount"
                            name="amount1" id="amount1" min="0" max="100000000" step="any">
                    </td>
                    <td>
                        <select name="crdr1" id="crdr1" class="form-control form-control-sm crdr">
                            <option value="">Select</option>
                            <option value="Cr">Cr</option>
                            <option value="Dr">Dr</option>
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
@else
    <input type="hidden" value="{{ count($ledgerdatasub) == 0 ? '1' : count($ledgerdatasub) }}" name="totalrows" id="totalrows">
    <div class="container-fluid mt-2">
        <table class="table table-bordered form-table" id="ledger-table">
            <thead class="table-light text-center">
                <tr>
                    <th>S.No</th>
                    <th>Ref. Date</th>
                    <th>Narration</th>
                    <th>Amount</th>
                    <th>Cr/Dr</th>
                </tr>
            </thead>
            <tbody>
                @if ($ledgerdatasub->isNotEmpty())
                    @foreach ($ledgerdatasub as $item)
                        <tr data-index="{{ $item->vsno }}">
                            <td class="text-center">{{ $item->vsno }}</td>
                            <td><input type="date" value="{{ $item->vdate }}" class="form-control form-control-sm" name="refdate{{ $item->vsno }}" id="refdate{{ $item->vsno }}"></td>
                            <td><input type="text" value="{{ $item->narration }}" class="form-control form-control-sm" name="narration{{ $item->vsno }}" id="narration{{ $item->vsno }}"></td>
                            <td><input type="text" value="{{ $item->amtdr == '0.00' ? $item->amtcr : $item->amtdr }}" class="form-control form-control-sm amount" name="amount{{ $item->vsno }}" id="amount{{ $item->vsno }}"></td>
                            <td>
                                <select name="crdr{{ $item->vsno }}" id="crdr{{ $item->vsno }}" class="form-control form-control-sm crdr">
                                    <option value="">Select</option>
                                    <option value="Cr" {{ $item->amtdr == '0.00' ? 'selected' : '' }}>Cr</option>
                                    <option value="Dr" {{ $item->amtcr == '0.00' ? 'selected' : '' }}>Dr</option>
                                </select>
                            </td>
                        </tr>
                    @endforeach
                @else
                    <tr data-index="1">
                        <td class="text-center">1</td>
                        <td><input type="date" class="form-control form-control-sm" name="refdate1" id="refdate1"></td>
                        <td><input type="text" class="form-control form-control-sm" name="narration1" id="narration1"></td>
                        <td><input type="text" class="form-control form-control-sm amount" name="amount1" id="amount1"></td>
                        <td>
                            <select name="crdr1" id="crdr1" class="form-control form-control-sm crdr">
                                <option value="">Select</option>
                                <option value="Cr">Cr</option>
                                <option value="Dr">Dr</option>
                            </select>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
    </div>
@endif

<script>
    $(document).ready(function() {
        function updateOpeningBalance() {
            let amtdrsum = 0;
            let amtcrsum = 0;

            $('#ledger-table tbody tr').each(function() {
                let amount = parseFloat($(this).find('.amount').val()) || 0;
                let crdrRaw = $(this).find('.crdr').val();
                let crdr = crdrRaw ? crdrRaw.toUpperCase() : '';

                if (crdr === 'DR') {
                    amtdrsum += amount;
                } else if (crdr === 'CR') {
                    amtcrsum += amount;
                }
            });

            let openingBalance = amtdrsum - amtcrsum;
            $('#openingbalance').val(Math.abs(openingBalance).toFixed(2));
            if (openingBalance < 0) {
                $('#balancebadge').text('Cr');
            } else {
                $('#balancebadge').text('Dr');
            }
        }

        $(document).on('change', '.crdr', function() {
            updateOpeningBalance();
        });

        $(document).on('keydown', '.amount', function(e) {
            let currentRow = $(this).closest('tr');
            let openingbalance = $('#openingbalance').val();

            if (e.key === 'Enter') {
                e.preventDefault();
                let index = parseInt(currentRow.data('index')) + 1;

                let newRow = `
                            <tr data-index="${index}">
                                <td class="text-center">${index}</td>
                                <td><input type="date" class="form-control form-control-sm" name="refdate${index}" id="refdate${index}"></td>
                                <td><input type="text" class="form-control form-control-sm" name="narration${index}" id="narration${index}"></td>
                                <td>
                                <input type="text" class="form-control form-control-sm amount" 
                                name="amount${index}" id="amount${index}" 
                                min="0" max="100000000" step="0.01">
                                </td>
                                <td>
                                    <select name="crdr${index}" id="crdr${index}" class="form-control form-control-sm crdr">
                                        <option value="">Select</option>
                                        <option value="Cr">Cr</option>
                                        <option value="Dr">Dr</option>
                                    </select>
                                </td>
                            </tr>`;
                currentRow.after(newRow);
                $(`#refdate${index}`).focus();
                updateAllRowIndices();
                updateOpeningBalance();
            }

            if ((e.ctrlKey || e.shiftKey) && e.key.toLowerCase() === 'd') {
                e.preventDefault();
                if ($('#ledger-table tbody tr').length > 1) {
                    currentRow.remove();
                    updateAllRowIndices();
                    updateOpeningBalance();
                }
            }
        });

        $(document).on('input', '.amount', function() {
            updateOpeningBalance();
        });

        function updateAllRowIndices() {
            $('#ledger-table tbody tr').each(function(i) {
                let index = i + 1;
                $(this).attr('data-index', index);
                $(this).find('td:first').text(index);

                $(this).find('input').each(function() {
                    let field = $(this).attr('name')?.replace(/[0-9]+$/, '') || '';
                    let newName = field + index;
                    $(this).attr('name', newName).attr('id', newName);
                });
            });

            $('#totalrows').val($('#ledger-table tbody tr').length);
        }
    });
</script>
