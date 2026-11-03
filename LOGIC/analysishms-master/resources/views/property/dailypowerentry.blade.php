@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h4 class="card-title mb-0">Daily Power Entry</h4>
                            <div class="d-flex align-items-center">
                                <input type="month" id="monthSelect" class="form-control" value="{{ $month }}" style="width: 200px;">
                                <button type="button" class="btn btn-success ml-2" id="saveAll">Save</button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped" id="powerTable">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Date</th>
                                            <th>KESCO</th>
                                            <th>Solar</th>
                                            <th>DG</th>
                                            <th>TOTAL</th>
                                            <th>KESCO%</th>
                                            <th>SOLAR%</th>
                                            <th>DG%</th>
                                            <th>HSD</th>
                                            <th>KESCO(H)</th>
                                            <th>DG(H)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($data as $row)
                                            <tr data-date="{{ $row['date'] }}">
                                                <td>{{ date('d-m-Y', strtotime($row['date'])) }}</td>
                                                <td><input type="number" step="any" class="form-control kesco" value="{{ $row['kesco'] }}"></td>
                                                <td><input type="number" step="any" class="form-control solar" value="{{ $row['solar'] }}"></td>
                                                <td><input type="number" step="any" class="form-control dg" value="{{ $row['dg'] }}"></td>
                                                <td><input type="number" step="any" class="form-control total" readonly value="{{ $row['total'] }}"></td>
                                                <td><input type="number" step="any" class="form-control kesco_per" readonly value="{{ $row['kesco_per'] }}"></td>
                                                <td><input type="number" step="any" class="form-control solar_per" readonly value="{{ $row['solar_per'] }}"></td>
                                                <td><input type="number" step="any" class="form-control dg_per" readonly value="{{ $row['dg_per'] }}"></td>
                                                <td><input type="number" step="any" class="form-control hsd" value="{{ $row['hsd'] }}"></td>
                                                <td><input type="time" step="60" class="form-control kesco_h" value="{{ $row['kesco_h'] ? (strpos($row['kesco_h'],':')!==false ? (substr_count($row['kesco_h'],':')==2 ? substr($row['kesco_h'],0,5) : $row['kesco_h']) : gmdate('H:i', $row['kesco_h']*3600)) : '00:00' }}"></td>
                                                <td><input type="text" class="form-control dg_h" value="{{ $row['dg_h'] ? (strpos($row['dg_h'],':')!==false ? (substr_count($row['dg_h'],':')==2 ? substr($row['dg_h'],0,5) : $row['dg_h']) : (is_numeric($row['dg_h']) ? gmdate('H:i', ($row['dg_h']%24)*3600 + floor($row['dg_h'])*0) : $row['dg_h'])) : '00:00' }}" readonly></td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr class="bg-dark text-white font-weight-bold" id="totalRow">
                                            <td><strong>Total</strong></td>
                                            <td id="tot_kesco">0.00</td>
                                            <td id="tot_solar">0.00</td>
                                            <td id="tot_dg">0.00</td>
                                            <td id="tot_total">0.00</td>
                                            <td id="tot_kesco_per">0.00</td>
                                            <td id="tot_solar_per">0.00</td>
                                            <td id="tot_dg_per">0.00</td>
                                            <td id="tot_hsd">0.00</td>
                                            <td id="tot_kesco_h">00:00</td>
                                            <td id="tot_dg_h">00:00</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script>
        function timeToMinutes(t) {
            if (!t) return 0;
            var parts = t.split(':');
            var h = parseInt(parts[0]) || 0;
            var m = parseInt(parts[1]) || 0;
            var s = parseInt(parts[2]) || 0;
            return h * 60 + m + s / 60;
        }
        function minutesToTime(mins) {
            if (mins < 0) mins = 0;
            if (mins >= 24 * 60) mins = mins % (24 * 60);
            var totalMin = Math.round(mins);
            var h = Math.floor(totalMin / 60) % 24;
            var m = totalMin % 60;
            return String(h).padStart(2, '0') + ':' + String(m).padStart(2, '0');
        }
        function calcTotals() {
            var totKesco = 0, totSolar = 0, totDg = 0, totTotal = 0, totHsd = 0;
            var totKescoMin = 0, totDgMin = 0;
            $('#powerTable tbody tr').each(function() {
                var tr = $(this);
                totKesco += parseFloat(tr.find('.kesco').val()) || 0;
                totSolar += parseFloat(tr.find('.solar').val()) || 0;
                totDg    += parseFloat(tr.find('.dg').val()) || 0;
                totTotal += parseFloat(tr.find('.total').val()) || 0;
                totHsd   += parseFloat(tr.find('.hsd').val()) || 0;
                totKescoMin += timeToMinutes(tr.find('.kesco_h').val());
                totDgMin    += timeToMinutes(tr.find('.dg_h').val());
            });
            $('#tot_kesco').text(totKesco.toFixed(2));
            $('#tot_solar').text(totSolar.toFixed(2));
            $('#tot_dg').text(totDg.toFixed(2));
            $('#tot_total').text(totTotal.toFixed(2));
            $('#tot_hsd').text(totHsd.toFixed(2));
            // Percentages: recalculate from summed values
            if (totTotal > 0) {
                $('#tot_kesco_per').text(((totKesco / totTotal) * 100).toFixed(2));
                $('#tot_solar_per').text(((totSolar / totTotal) * 100).toFixed(2));
                $('#tot_dg_per').text(((totDg / totTotal) * 100).toFixed(2));
            } else {
                $('#tot_kesco_per').text('0.00');
                $('#tot_solar_per').text('0.00');
                $('#tot_dg_per').text('0.00');
            }
            // Time totals: sum all minutes then convert (allow > 24h)
            var kh = Math.floor(totKescoMin / 60);
            var km = Math.round(totKescoMin % 60);
            $('#tot_kesco_h').text(String(kh).padStart(2,'0') + ':' + String(km).padStart(2,'0'));
            var dh = Math.floor(totDgMin / 60);
            var dm = Math.round(totDgMin % 60);
            $('#tot_dg_h').text(String(dh).padStart(2,'0') + ':' + String(dm).padStart(2,'0'));
        }

        function calcRow(tr) {
            var kesco = parseFloat(tr.find('.kesco').val()) || 0;
            var solar = parseFloat(tr.find('.solar').val()) || 0;
            var dg = parseFloat(tr.find('.dg').val()) || 0;
            var total = kesco + solar + dg;
            tr.find('.total').val(total.toFixed(2));
            if (total > 0) {
                tr.find('.kesco_per').val(((kesco / total) * 100).toFixed(2));
                tr.find('.solar_per').val(((solar / total) * 100).toFixed(2));
                tr.find('.dg_per').val(((dg / total) * 100).toFixed(2));
            } else {
                tr.find('.kesco_per').val('0.00');
                tr.find('.solar_per').val('0.00');
                tr.find('.dg_per').val('0.00');
            }
            var kescoMin = timeToMinutes(tr.find('.kesco_h').val());
            var dgMin = (24 * 60) - kescoMin;
            if (dgMin < 0) dgMin = 0;
            tr.find('.dg_h').val(minutesToTime(dgMin));
            calcTotals();
        }
        $(document).on('input', '.kesco, .solar, .dg, .kesco_h', function() {
            calcRow($(this).closest('tr'));
        });
        $('#monthSelect').on('change', function() {
            var month = $(this).val();
            if (month) {
                window.location.href = '{{ route("dailypowerentry") }}?month=' + month;
            }
        });
        $('#saveAll').on('click', function() {
            var btn = $(this);
            // Double click se duplicate submit rokne ke liye
            if (btn.prop('disabled')) {
                return false;
            }

            var entries = [];
            var filledCount = 0;
            $('#powerTable tbody tr').each(function() {
                var tr = $(this);
                var kesco = tr.find('.kesco').val();
                var solar = tr.find('.solar').val();
                var dg    = tr.find('.dg').val();
                var hsd   = tr.find('.hsd').val();

                // Sirf wahi rows lo jisme kuch bhi fill hua ho
                if (kesco !== '' || solar !== '' || dg !== '' || hsd !== '') {
                    filledCount++;
                    entries.push({
                        date:      tr.data('date'),
                        kesco:     kesco || 0,
                        solar:     solar || 0,
                        dg:        dg    || 0,
                        total:     tr.find('.total').val()     || 0,
                        kesco_per: tr.find('.kesco_per').val() || 0,
                        solar_per: tr.find('.solar_per').val() || 0,
                        dg_per:    tr.find('.dg_per').val()    || 0,
                        hsd:       hsd   || 0,
                        kesco_h:   tr.find('.kesco_h').val()   || '00:00',
                        dg_h:      tr.find('.dg_h').val()      || '00:00',
                    });
                }
            });

            // Koi row fill nahi ki to save mat karo
            if (filledCount === 0) {
                Swal.fire({
                    icon: 'warning',
                    title: 'No Data!',
                    text: 'Pehle koi entry fill karo phir save karo.',
                    confirmButtonText: 'OK'
                });
                return false;
            }

            btn.prop('disabled', true).text('Saving...');

            $.ajax({
                url: '{{ route("savedailypowerentry") }}',
                type: 'POST',
                data: {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    entries: entries
                },
                success: function(res) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Saved!',
                        text: res.message || 'Saved successfully',
                        timer: 1500,
                        showConfirmButton: false
                    });
                },
                error: function(xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Error saving data'
                    });
                },
                complete: function() {
                    // AJAX complete hone ke baad button wapas enable
                    btn.prop('disabled', false).text('Save');
                }
            });
        });
        $(document).ready(function() {
            $('#powerTable tbody tr').each(function() {
                calcRow($(this));
            });
            calcTotals();
        });
    </script>
@endsection
