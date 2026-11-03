@extends('property.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <div class="heading-container">
                                <h4 class="heading">Channel Derived Pricing</h4>
                            </div>

                            <form method="POST" id="derivedpricingform" class="mt-2">
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
                                        <label for="baseprice">Base Price</label>
                                        <input type="number" value="4500" placeholder="Enter Price" class="form-control" name="baseprice" id="baseprice" required>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Pricing</button>
                            </form>

                            <div class="heading-container">
                                <h4 class="heading">Channel Wise Status</h4>
                            </div>
                            <div class="row mt-3">
                                <div class="form-group">
                                    <label for="updatecode">Update Code</label>
                                    <select class="form-control" name="updatecode" id="updatecode">
                                        <option value="">Select</option>
                                        @foreach ($retcode as $item)
                                            <option value="{{ $item->retcode }}">{{ $item->retcode }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table id="derivedtable" class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Channel Id</th>
                                            <th>Channel Name</th>
                                            <th>Status Id</th>
                                            <th>Status Message</th>
                                        </tr>
                                    </thead>
                                    <tbody>

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
            var csrftoken = "{{ csrf_token() }}";
            $('#derivedpricingform').on('submit', function(e) {
                e.preventDefault();
                $('#myloader').removeClass('none');
                var formData = $(this).serialize();

                if ($('#baseprice').val() == '') {
                    pushNotify('error', 'Error', 'Base price is required', 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    return;
                }

                $.ajax({
                    url: '/channelderivedsubmit',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        if (response.success) {
                            $('#myloader').addClass('none');
                            pushNotify('success', 'Success', response.message, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                            $('#derivedpricingform')[0].reset();
                        } else {
                            Swal.fire({
                                title: 'Channel Pricing',
                                icon: 'info',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        $('#myloader').addClass('none');
                        var errorMessage = xhr.responseJSON.message || 'An error occurred while updating Derived Pricing.';
                        pushNotify('error', 'Error', errorMessage, 'fade', 300, '', '', true, true, true, 5000, 20, 20, 'outline', 'right top');
                    }
                });
            });

            $(document).on('change', '#updatecode', function() {
                $('#derivedtable tbody').empty();
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

                    destroyDataTable('#derivedtable');

                    fetch('/channelupdatederived', options)
                        .then(response => response.json())
                        .then(data => {
                            let tdata = '';
                            let res = JSON.parse(data.data);

                            console.log(res);

                            res.forEach((item, index) => {
                                tdata += `<tr>
                        <td>${item.ChannelId}</td>
                        <td>${item.ChannelName}</td>
                        <td>${item.StatusId}</td>
                        <td>${item.StatusMessage}</td>
                        </tr>`;
                            });

                            $('#derivedtable tbody').html(tdata);
                            $('#myloader').addClass('none');

                            exportTable().then(() => {
                                const buttonsToShow = ['excel', 'csv', 'pdf', 'print'];
                                downloadTable('derivedtable', 'Channel Rates Data', [0, 1, 2], [1, 2], buttonsToShow);
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


    <script src="{{ asset('admin/js/datatable.js') }}"></script>
    <script>
        exportTable().then(() => {
            const buttonsToShow = ['excel', 'csv', 'pdf', 'print'];
            downloadTable('derivedtable', 'Channel Rooms Data', [0, 1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], buttonsToShow);
        });
    </script>
@endsection
