@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center">
                                <h3>List of Folio</h3>
                                <span class="text-danger font-weight-bold h4">Run Merge Folio Only at the time of checkout</span>

                                <div class="table-responsive mt-3">
                                    <table id="mergefoliotbl" class="table table-payshow">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>..</th>
                                                <th>Foliono</th>
                                                <th>Name</th>
                                                <th>Roomno</th>
                                                <th>Checkin</th>
                                                <th>Dep</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>

                                <div class="mt-3">
                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="selectfolio" class="col-form-label">Select Folio</label>
                                                <select name="selectfolio" id="selectfolio" class="form-control">
                                                    <option value="">Select</option>
                                                    @foreach ($bookedroomdata as $item)
                                                        <option data-roomno="{{ $item->roomno }}" data-foliono="{{ $item->folioNo }}" value="{{ $item->docid }}">{{ $item->folioNo . ' - ' . $item->name . ' - ' . $item->roomno }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="text-center mt-4">
                                                <button id="mergebtn" class="btn btn-success" disabled>Merge Folio</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $.ajax({
                url: "mergeroomdata",
                method: "GET",
                success: function(response) {
                    let bookedroomdata = response.bookedroomdata;
                    let tbody = $('#mergefoliotbl tbody');
                    tbody.empty();
                    let trdata = ``;
                    if (Array.isArray(bookedroomdata)) {
                        bookedroomdata.forEach((tdata, index) => {
                            trdata += `<tr data-foliono="${tdata.folioNo}">
                                <td><input type="checkbox" value="${tdata.docid}" class="custom-check foliochk" name="foliocheck" id="foliocheck" disabled></td>
                                <td>${tdata.folioNo}</td>
                                <td>${tdata.name}</td>
                                <td>${tdata.roomno}</td>
                                <td>${dmy(tdata.chkindate)}</td>
                                <td>${dmy(tdata.depdate)}</td>
                            </tr>`;
                        });
                    }

                    tbody.append(trdata);
                },
                error: function(xhr) {
                    console.error("Error:", xhr.responseText);
                }
            });

            localStorage.setItem('pastmerdocid', '');
            localStorage.setItem('merdocid', '');
            localStorage.setItem('merroomno', '');
            $(document).on('change', '#selectfolio', function() {
                let foliono = $(this).find('option:selected').data('foliono');
                let roomno = $(this).find('option:selected').data('roomno');
                let docid = $(this).val();
                if (localStorage.getItem('pastmerdocid') != '' && localStorage.getItem('pastmerdocid') != docid) {
                    $(this).val(localStorage.getItem('pastmerdocid'));
                    return;
                }
                localStorage.setItem('pastmerdocid', docid);
                localStorage.setItem('merdocid', docid);
                localStorage.setItem('merroomno', roomno);
                $('#mergefoliotbl tbody tr[data-foliono="' + foliono + '"]').css({
                    'color': 'white',
                    'background': '#c93939'
                });
                $('#mergebtn').prop('disabled', false);
                $('.foliochk').prop('disabled', false);

                $('#mergefoliotbl tbody tr[data-foliono="' + foliono + '"]').find('input[type="checkbox"]').prop('disabled', true);
            });

            $(document).on('click', '#mergebtn', function() {
                let foliochk = $('.foliochk').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                if (foliochk.length === 0) {
                    Swal.fire({
                        title: 'Merge Folio',
                        text: 'Please Select any folio',
                        icon: 'info',
                        confirmButtonText: 'ok'
                    });
                    return;
                }

                let merdocid = localStorage.getItem('merdocid');
                let merroomno = localStorage.getItem('merroomno');

                $.ajax({
                    url: 'mergeroompost',
                    type: 'POST',
                    data: {
                        foliochk: foliochk,
                        merdocid: merdocid,
                        merroomno: merroomno
                    },
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        if (response.success == true) {
                            Swal.fire({
                                title: 'Merge Folio',
                                text: response.message,
                                icon: 'success',
                                confirmButtonText: 'ok'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.reload();
                                }
                            });
                        }
                    },
                    error: function(xhr) {
                        console.error(xhr.responseText);
                        Swal.fire({
                            title: 'Merge Folio',
                            text: xhr.responseText,
                            icon: 'error',
                            confirmButtonText: 'ok'
                        })
                    }
                });


            });
        });
    </script>
@endsection
