@extends('property.layouts.main')
@section('main-container')
    <style>
        #availabilityHead tr th {
            border: 1px solid #00000066;
        }

        #availabilityBody tr td {
            border: 1px solid #00000066;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow-sm">
                        <div class="card-body">

                            {{-- Month/Year Selection --}}
                            <div class="row justify-content-around">
                                <div>
                                    <div class="form-group">
                                        <label for="year" class="col-form-label">
                                            Year <i class="fa-regular fa-calendar mb-1"></i>
                                        </label>
                                        <select name="year" id="year" class="form-control">
                                            @php
                                                $years = [];
                                                foreach ($hallbook as $item) {
                                                    $years[] = $item->vprefix;
                                                }
                                                for ($i = 0; $i < 10; $i++) {
                                                    $years[] = date('Y') + $i;
                                                }
                                                $years = array_unique($years);
                                                sort($years);
                                            @endphp
                                            @foreach ($years as $year)
                                                <option value="{{ $year }}">{{ $year }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div>
                                    @php
                                        for ($m = 1; $m <= 12; $m++) {
                                            $shortMonth = date('M', mktime(0, 0, 0, $m, 1));
                                            echo "<button type='button' data-month='{$m}' class='btn month-btn bg-info text-white m-1'>{$shortMonth}</button>";
                                        }
                                    @endphp
                                </div>
                            </div>
                            <p id="partydt" class="text-left text-info p-1 font-weight-bold"></p>
                            <hr>

                            {{-- Availability Table --}}
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead id="availabilityHead"></thead>
                                    <tbody id="availabilityBody"></tbody>
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
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });

            $(document).on('click', '.month-btn', function() {
                let year = $('#year').val();
                let month = $(this).data('month');

                showLoader();

                $.ajax({
                    url: "{{ url('availablitybanquetdaywise') }}",
                    method: "POST",
                    data: {
                        month: month,
                        year: year
                    },
                    success: function(res) {
                        let data = (typeof res === 'string') ? JSON.parse(res) : res;
                        let daysInMonth = new Date(year, month, 0).getDate();

                        // Table Head
                        let thead = '<tr><th>Venue</th>';
                        for (let d = 1; d <= daysInMonth; d++) {
                            let dateObj = new Date(year, month - 1, d);
                            let dayName = dateObj.toLocaleString('en-us', {
                                weekday: 'short'
                            });
                            thead += `<th>${String(d).padStart(2, '0')}<br>${dayName}</th>`;
                        }
                        thead += '</tr>';
                        $('#availabilityHead').html(thead);

                        let tbody = '';
                        data.venuemast.forEach(venue => {
                            let bookingsByDate = {};
                            for (let d = 1; d <= daysInMonth; d++) {
                                let dateStr = `${year}-${String(month).padStart(2, '0')}-${String(d).padStart(2, '0')}`;
                                bookingsByDate[dateStr] = data.repdata.filter(b =>
                                    b.venucode === venue.code && b.fromdate.startsWith(dateStr)
                                );
                            }

                            let maxRows = Math.max(...Object.values(bookingsByDate).map(arr => arr.length || 1));

                            for (let rowIndex = 0; rowIndex < maxRows; rowIndex++) {
                                tbody += '<tr>';
                                if (rowIndex === 0) {
                                    tbody += `<td rowspan="${maxRows}">${venue.name}</td>`;
                                }
                                for (let d = 1; d <= daysInMonth; d++) {
                                    let dateStr = `${year}-${String(month).padStart(2, '0')}-${String(d).padStart(2, '0')}`;
                                    let booking = bookingsByDate[dateStr][rowIndex];

                                    if (booking) {
                                        tbody += `<td class="booking-box ${booking.advancesum > 0 ? 'bg-info' : 'bg-danger'}"
                                            data-partyname="${booking.partyname}"
                                            data-advancesum="${booking.advancesum}"
                                            data-expatt="${booking.expatt}"
                                            data-guaratt="${booking.guaratt}"
                                            data-coverrate="${booking.coverrate}"
                                            data-fromtime="${booking.fromtime}"
                                            data-totime="${booking.totime}"
                                            title="Party: ${booking.partyname}&#10;Pax: ${booking.expatt}&#10;Advance: ₹${booking.advancesum}">
                                            ${booking.partyname.substring(0, 3)}
                                        </td>`;
                                    } else {
                                        tbody += `<td class="emptybook"
                                                title="Double Click To Open ${venue.name} Booking"
                                                data-venuecode="${venue.code}"
                                                data-clickdate="${dateStr}">
                                            </td>`;
                                    }
                                }
                                tbody += '</tr>';
                            }
                        });


                        $('#availabilityBody').html(tbody);
                        setTimeout(hideLoader, 500);

                        if (data.repdata.length == 0) {
                            pushNotify('info', 'Banquet Availability', 'No booking found for selected month!', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                        }
                    },
                    error: function(err) {
                        console.error(err);
                        setTimeout(hideLoader, 500);
                    }
                });
            });

            $(document).on('mouseenter', '.booking-box', function() {
                let partyname = $(this).data('partyname');
                let advancesum = $(this).data('advancesum');
                let expatt = $(this).data('expatt');
                let coverrate = $(this).data('coverrate');
                let fromtime = $(this).data('fromtime');
                let totime = $(this).data('totime');

                let dtstring = `Party Detail : ${partyname}, Pax : ${expatt}, Advance : Rs. ${advancesum}, From : ${fromtime}, To : ${totime}`;
                $('#partydt').text(dtstring);
            });

            $(document).on('dblclick', '.emptybook', function() {
                let clicktime = '06:00:00';
                let venuecode = $(this).data('venuecode');
                let fromdate = $(this).data('clickdate');

                window.location.href = `{{ url('banquetbooking') }}?clicktime=${clicktime}&venuecode=${venuecode}&fromdate=${fromdate}`;
            });
        });
    </script>
@endsection
