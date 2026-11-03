@extends('property.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <div class="heading-container">
                                <h4 class="heading">Channel Rates</h4>
                            </div>

                            <form method="POST" id="roomrateinventry" class="mt-2">
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
                                                <option value="{{ $item->cat_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="plancode">Plan</label>
                                        <select name="plancode" id="plancode" class="form-control" required>
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="planrate">Plan Rate</label>
                                        <input type="number" class="form-control" placeholder="Plan Rate" name="planrate" id="planrate" readonly>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Rates</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            var csrftoken = "{{ csrf_token() }}";
            $('#roomrateinventry').on('submit', function(e) {
                e.preventDefault();
                var formData = $(this).serialize();
                $('#myloader').removeClass('none');

                $.ajax({
                    url: '/channelratesubmit',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        if (response.success) {
                            $('#myloader').addClass('none');
                            pushNotify('success', 'Success', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
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
            $(document).on('change', '#roomcode', function() {
                $('#planrate').val('');
                $('#planrate').prop('readonly', true);
                let room_cat = $(this).val();
                if (room_cat != '') {
                    $('#myloader').removeClass('none');
                    const froom = {
                        'room_cat': room_cat
                    };

                    const options = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': csrftoken
                        },
                        body: JSON.stringify(froom)
                    };

                    fetch('/fecthplanbyroom', options)
                        .then(response => response.json())
                        .then(data => {
                            let plans = data.data;
                            let opt;
                            if (plans.length > 0) {
                                $('#plancode').html('');
                                opt = '<option value="">Select</option>';
                                plans.forEach((item, index) => {
                                    opt += `<option package_amount="${item.package_amount}" value="${item.pcode}">${item.name}</option>`;
                                })
                            }
                            $('#plancode').append(opt);
                            $('#myloader').addClass('none');
                        })
                        .catch(error => {
                            console.log(error);
                            $('#myloader').addClass('none');
                        })
                } else {
                    $('#plancode').html('<option value="">Select</option>');
                }
            });

            $(document).on('change', '#plancode', function() {
                let package_amount = $(this).find('option:selected').attr('package_amount');
                $('#planrate').val(package_amount);
                $('#planrate').prop('readonly', false);
            });

            $(document).on('change', '#forwhich', function() {
                $('#ratestatustable tbody').empty();
                let value = $(this).val();
                if (value != '') {
                    $('#myloader').removeClass('none');
                    let post = {
                        'forwhich': value
                    };
                    let options = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': csrftoken,
                        },
                        body: JSON.stringify(post)
                    };
                    fetch('/retcodefetch', options)
                        .then(response => response.json())
                        .then(data => {
                            let codes = data.data;
                            if (codes.length > 0) {
                                $('#updatecode').html('');
                                let opt = '<option value="">Select</option>';
                                codes.forEach((item, index) => {
                                    opt += `<option forwhich="${item.name}" value="${item.retcode}">${item.retcode} - Room : ${item.rcode} - Dt: ${dmy(item.vdate)}</option>`;
                                });
                                $('#updatecode').append(opt);
                                $('#myloader').addClass('none');
                            }
                        })
                        .catch(error => {
                            console.log(error);
                            $('#myloader').addClass('none');
                        })
                } else {
                    $('#updatecode').html('<option value="">Select</option>');
                }
            });

            $(document).on('change', '#updatecode', function() {
                $('#ratestatustable tbody').empty();
                let updatecode = $(this).val();

                if (updatecode != '') {
                    $('#myloader').removeClass('none');
                    let post = {
                        'updatecode': updatecode
                    };
                    const options = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': csrftoken
                        },
                        body: JSON.stringify(post)
                    };

                    destroyDataTable('#ratestatustable');

                    fetch('/channelupdate', options)
                        .then(response => response.json())
                        .then(data => {
                            let tdata = '';
                            let res = JSON.parse(data.data);

                            res.forEach((item, index) => {
                                tdata += `<tr>
                        <td>${item.ChannelCode}</td>
                        <td>${item.UpdateStatusId}</td>
                        <td>${item.UpdateStatus}</td>
                        </tr>`;
                            });

                            $('#ratestatustable tbody').html(tdata);
                            $('#myloader').addClass('none');

                            exportTable().then(() => {
                                const buttonsToShow = ['excel', 'csv', 'pdf', 'print'];
                                downloadTable('ratestatustable', 'Channel Rates Data', [0, 1, 2], [1, 2], buttonsToShow);
                            });
                        })
                        .catch(error => {
                            console.log(error);
                            $('#myloader').addClass('none');
                        });
                }
            });

        });
    </script>
@endsection
