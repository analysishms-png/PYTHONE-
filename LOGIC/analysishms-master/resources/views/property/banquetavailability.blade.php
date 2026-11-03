@extends('property.layouts.main')
@section('main-container')
    <style>
        #availabilityTable thead tr th {
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
                            <div class="row justify-content-around">
                                <div class="">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date" value="{{ ncurdate() }}" class="form-control" name="fromdate" id="fromdate">
                                    </div>
                                </div>

                                <div style="margin-top: 30px;" class="">
                                    <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                </div>
                            </div>
                        </div>

                        <table class="table table-bordered text-center align-middle mt-4" id="availabilityTable">
                            <thead class="table-light">
                                <tr>
                                    <th>Venue <span class="text ADA font-weight-bold"> (Time <i class="fa-regular fa-clock"></i>)</span> =></th>
                                    @for ($h = 0; $h < 24; $h++)
                                        <th>{{ str_pad($h, 2, '0', STR_PAD_LEFT) }}</th>
                                    @endfor
                                </tr>
                            </thead>
                            <tbody id="availabilityBody">

                            </tbody>
                        </table>

                        <div class="d-flex justify-content-md-around">
                            <p id="partydt" class="text-left text-info p-1 font-weight-bold"></p>
                            <p class="bg-danger p-1 rounded">Booked</p>
                            <p class="bg-info p-1 rounded">Booked With Advance</p>
                            <p class="bg-white p-1 rounded">Vacant</p>
                            <div class="d-flex">
                                <p class="bg-secondary cursor-pointer dayleftbtn p-1 rounded me-2">
                                    <i class="fa-solid fa-arrow-left"></i> Days
                                </p>
                                <p class="bg-secondary cursor-pointer dayrightbtn p-1 rounded">
                                    <i class="fa-solid fa-arrow-right"></i> Days
                                </p>
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

            $(document).on('change', '#fromdate', function() {
                validateFinancialYear('#fromdate');
            });

            setTimeout(() => {
                $('#fetchbutton').trigger('click');
            }, 500);

            $(document).on('click', '#fetchbutton', function() {
                let fromdate = $('#fromdate').val();

                if (fromdate != '') {
                    showLoader();
                    $.ajax({
                        url: "{{ url('availablitybanquet') }}",
                        method: "POST",
                        data: {
                            fromdate: fromdate
                        },
                        success: function(res) {
                            let data = (typeof res === 'string') ? JSON.parse(res) : res;

                            let tbody = '';
                            setTimeout(hideLoader, 500);
                            if (data.repdata.length == 0) {
                                pushNotify('info', 'Banquet Availability', 'No booking found for selected date!', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            }
                            data.venuemast.forEach(venue => {
                                tbody += `<tr>`;
                                tbody += `<td>${venue.name}</td>`;


                                for (let h = 0; h < 24; h++) {
                                    let booked = data.repdata.find(b => {
                                        if (b.venucode !== venue.code) return false;

                                        let startH = parseInt(b.fromtime.split(':')[0]);
                                        let endH = parseInt(b.totime.split(':')[0]);

                                        return h >= startH && h <= endH;
                                    });

                                    if (booked) {
                                        tbody += `<td class="partytd ${booked.advancesum > 0 ? 'bg-info' : 'bg-danger'} text-white" data-partyname="${booked.partyname}" data-advancesum="${booked.advancesum}" data-expatt="${booked.expatt}" data-guaratt="${booked.guaratt}"
                                            data-coverrate="${booked.coverrate}" title="${booked.partyname}">${booked.partyname.substring(0,3)}</td>`;
                                    } else {
                                        let hourStr = h.toString().padStart(2, '0') + ':00:00';
                                        tbody += `<td title="Double Click To Open ${venue.name} Booking" data-venuecode="${venue.code}" data-clicktime="${hourStr}" class="emptybook"></td>`;
                                    }
                                }

                                tbody += `</tr>`;
                            });

                            $('#availabilityBody').html(tbody);
                        },
                        error: function(response) {
                            setTimeout(hideLoader, 500);
                            console.log(error);
                        }
                    });
                }
            });

            $(document).on('mouseenter', '.partytd', function() {
                let partyname = $(this).data('partyname');
                let advancesum = $(this).data('advancesum');
                let expatt = $(this).data('expatt');
                let coverrate = $(this).data('coverrate');

                let dtstring = `Party Detail : ${partyname}, Pax : ${expatt}, Advance : Rs. ${advancesum}`;
                $('#partydt').text(dtstring);
            });

            $(document).on('dblclick', '.emptybook', function() {
                let clicktime = $(this).data('clicktime');
                let venuecode = $(this).data('venuecode');
                let fromdate = $('#fromdate').val();

                window.location.href = `{{ url('banquetbooking') }}?clicktime=${clicktime}&venuecode=${venuecode}&fromdate=${fromdate}`;
            });

            // Move 1 day back
            $(document).on('click', '.dayleftbtn', function() {
                let fromdate = $('#fromdate').val();
                if (fromdate) {
                    let date = new Date(fromdate);
                    date.setDate(date.getDate() - 1); // minus 1 day
                    let newDate = date.toISOString().split('T')[0];
                    $('#fromdate').val(newDate).trigger('change');
                    $('#fetchbutton').trigger('click');
                }
            });

            // Move 1 day forward
            $(document).on('click', '.dayrightbtn', function() {
                let fromdate = $('#fromdate').val();
                if (fromdate) {
                    let date = new Date(fromdate);
                    date.setDate(date.getDate() + 1); // plus 1 day
                    let newDate = date.toISOString().split('T')[0];
                    $('#fromdate').val(newDate).trigger('change');
                    $('#fetchbutton').trigger('click');
                }
            });


        });
    </script>
@endsection
