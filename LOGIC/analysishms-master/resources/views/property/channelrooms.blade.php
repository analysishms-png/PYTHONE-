@extends('property.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <div class="heading-container">
                                <h4 class="heading">Channel Rooms</h4>
                            </div>

                            <form method="POST" id="inventryform" class="mt-2">
                                @csrf
                                <div class="row">
                                    <div class="form-group">
                                        <label for="datefrom">Date From</label>
                                        <input type="date" value="{{ $ncurdate }}" class="form-control" name="datefrom" id="datefrom" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="datetill">Date Till</label>
                                        <input type="date" value="{{ $ncurdate }}" class="form-control" name="datetill" id="datetill" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="roomcode">Room Category</label>
                                        <select class="form-control" name="roomcode" id="roomcode" required>
                                            <option value="">Select Room</option>
                                            @foreach ($roomcat as $item)
                                                <option value="{{ $item->map_code }}">{{ $item->name }} - {{ $item->map_code }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="availability">Availability</label>
                                        <select name="availability" id="availability" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="0">0</option>
                                            <option value="1" selected>1</option>
                                            @for ($i = 1; $i <= 50; $i++)
                                                <option value="{{ $i }}">{{ $i }}</option>
                                            @endfor
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Inventory</button>
                            </form>

                            <div class="table-responsive">
                                <table id="channelrooms" class="table table-hover table-download-with-search table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Room Code</th>
                                            <th>Room Name</th>
                                            <th>Rate Plan Code</th>
                                            <th>Rate Plan Name</th>
                                            <th>Property Rate Plan</th>
                                            <th>Min Allowed Rate</th>
                                            <th>Max Allowed Rate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (!empty($rooms))
                                            @foreach ($rooms as $room)
                                                @if (!empty($room['RatePlans']))
                                                    @foreach ($room['RatePlans'] as $rateplan)
                                                        <tr>
                                                            <td>{{ $room['RoomCode'] }}</td>
                                                            <td>{{ $room['RoomName'] }}</td>
                                                            <td>{{ $rateplan['RatePlanCode'] }}</td>
                                                            <td>{{ $rateplan['RatePlanName'] }}</td>
                                                            <td>{{ $rateplan['PropertyRatePlanName'] }}</td>
                                                            <td>{{ $rateplan['MinAllowedRate'] }}</td>
                                                            <td>{{ $rateplan['MaxAllowedRate'] }}</td>
                                                        </tr>
                                                    @endforeach
                                                @endif
                                            @endforeach
                                        @endif
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
        $(document).ready(function() {
            $('#inventryform').on('submit', function(e) {
                e.preventDefault();
                $('#myloader').removeClass('none');
                var formData = $(this).serialize();

                $.ajax({
                    url: '/channelroomsubmit',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        if (response.success) {
                            console.log(response);
                            $('#myloader').addClass('none');
                            pushNotify('success', 'Success', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            $('#inventryform')[0].reset();
                        } else {
                            pushNotify('error', 'Error', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                        }
                    },
                    error: function(xhr) {
                        $('#myloader').addClass('none');
                        var errorMessage = xhr.responseJSON.message || 'An error occurred while updating inventory.';
                        pushNotify('error', 'Error', errorMessage, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    }
                });
            });
        });
    </script>


    <script src="{{ asset('admin/js/datatable.js') }}"></script>
    <script>
        exportTable().then(() => {
            const buttonsToShow = ['excel', 'csv', 'pdf', 'print'];
            downloadTable('channelrooms', 'Channel Rooms Data', [0, 1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], buttonsToShow);
        });
    </script>
@endsection
