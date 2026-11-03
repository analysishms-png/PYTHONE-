@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <style>
        .modal-content {
            box-shadow: 0 0 15px #e5e8e9, 0px 0px 20px pink, inset 0px 0px 5px #1ba5dd, 0px 0px 20px #17c5ff;
            border-radius: 10px;
            backdrop-filter: drop-shadow(2px 4px 6px black);
            background: #bbb5b517;
            margin-top: 25px;
        }

        .modal.show .modal-dialog {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        #reservationlist td,
        #reservationlist th {
            vertical-align: middle;
            white-space: nowrap;
        }

        #reservationlist td.ins {
            white-space: normal !important;
            min-width: 220px;
        }

        #reservationlist .action-buttons {
            display: flex !important;
            flex-wrap: nowrap;
            align-items: center;
            justify-content: flex-start;
            gap: 6px;
        }

        #reservationlist .action-buttons .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            white-space: nowrap;
        }

        div.dataTables_processing {
            z-index: 2;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="reservationlist" class="table table-striped table-bordered w-100">
                                    <thead>
                                        <tr>
                                            <th>Sn</th>
                                            <th>Book No.</th>
                                            <th>Reg. On</th>
                                            <th>Guest Name</th>
                                            <th>ArrDate</th>
                                            <th>DepDate</th>
                                            <th>Room No</th>
                                            <th>Advance</th>
                                            <th>Cancel</th>
                                            <th>Ref. Id</th>
                                            <th>Uname</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(function() {
            const table = $('#reservationlist').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                pageLength: 15,
                order: [
                    [1, 'desc']
                ],
                lengthMenu: [
                    [15, 25, 50, 100],
                    [15, 25, 50, 100]
                ],
                scrollX: true,
                autoWidth: false,
                ajax: {
                    url: "{{ route('reservationlist.data') }}",
                    type: 'GET',
                    beforeSend: function() {
                        if (typeof showLoader === 'function') {
                            showLoader();
                        }
                    },
                    dataSrc: function(json) {
                        if (typeof hideLoader === 'function') {
                            hideLoader();
                        }

                        return json.data || [];
                    },
                    error: function(xhr) {
                        if (typeof hideLoader === 'function') {
                            setTimeout(hideLoader, 1000);
                        }

                        const message = xhr.responseJSON && xhr.responseJSON.message ?
                            xhr.responseJSON.message :
                            'Failed to load reservation list.';

                        Swal.fire({
                            title: 'Error',
                            text: message,
                            icon: 'error'
                        });
                    }
                },
                columns: [
                    {
                        data: 'sn',
                        name: 'sn',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'book_no',
                        name: 'booking.BookNo'
                    },
                    {
                        data: 'reg_on',
                        name: 'booking.vdate'
                    },
                    {
                        data: 'guest_name',
                        name: 'grpbookingdetails.GuestName'
                    },
                    {
                        data: 'arr_date',
                        name: 'grpbookingdetails.ArrDate'
                    },
                    {
                        data: 'dep_date',
                        name: 'grpbookingdetails.DepDate'
                    },
                    {
                        data: 'room_no',
                        name: 'grpbookingdetails.RoomNo'
                    },
                    {
                        data: 'advance',
                        name: 'amtcr'
                    },
                    {
                        data: 'cancel',
                        name: 'grpbookingdetails.Cancel'
                    },
                    {
                        data: 'ref_id',
                        name: 'booking.RefBookNo'
                    },
                    {
                        data: 'u_name',
                        name: 'grpbookingdetails.U_Name'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false,
                        className: 'ins'
                    }
                ],
                createdRow: function(row, data) {
                    $(row).attr('data-booking-docid', data.booking_docid || '');
                    $(row).attr('data-sno', data.sno || '');
                    $(row).attr('data-cancel', data.cancel || '');
                },
                language: {
                    processing: 'Loading reservation data...'
                }
            });

            table.on('preXhr.dt', function() {
                if (typeof showLoader === 'function') {
                    showLoader();
                }
            });

            table.on('xhr.dt', function() {
                if (typeof hideLoader === 'function') {
                    hideLoader();
                }
            });

            $(document).on('click', '.printbtn', function() {
                let docid = $(this).attr('docid');
                let fix = docid.split('-');
                let bookno = fix[0];
                let sno = fix[2];
                let year = fix[4];
                window.open(`resletter?bookno=${bookno}&sno=${sno}&year=${year}`, '_blank');
                $(`#reslettermodal-${docid}`).modal('hide');
            });

            $(document).on('click', '.printBtnResCard', function() {
                let docid = $(this).attr('docid');
                let fix = docid.split('-');
                let bookno = fix[0];
                let sno = fix[2];
                let year = fix[4];
                window.open(`rescard?bookno=${bookno}&sno=${sno}&year=${year}`, '_blank');
                $(`#rescardmodal-${docid}`).modal('hide');
            });

            $(document).on('click', '.printbtnc', function() {
                let docid = $(this).attr('docid');
                let fix = docid.split('-');
                let bookno = fix[0];
                let sno = fix[2];
                let year = fix[4];
                window.open(`cancletter?bookno=${bookno}&sno=${sno}&year=${year}`, '_blank');
                $(`#cancletter-${docid}`).modal('hide');
            });

            $(document).on('click', '.mailbtn', function() {
                let docid = $(this).attr('docid');
                let fix = docid.split('-');
                let bookno = fix[0];
                let sno = fix[2];
                let $btn = $(this);
                let $modal = $btn.closest('.modal');

                $modal.modal('hide');

                Swal.fire({
                    title: 'Sending Mail...',
                    text: 'Please wait while we connect to property mail server',
                    allowOutsideClick: false,
                    allowEscapeKey: false,
                    didOpen: () => {
                        Swal.showLoading();
                    }
                });

                $.ajax({
                    url: "{{ route('resmailposting') }}",
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    },
                    contentType: 'application/json',
                    data: JSON.stringify({ bookno: bookno, sno: sno }),
                    success: function(response) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: response.message || 'Reservation Confirmation Letter sent successfully.'
                        });
                    },
                    error: function(xhr) {
                        let msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Failed to send reservation mail.';
                        Swal.fire({
                            icon: 'error',
                            title: 'Mail Failed',
                            text: msg
                        });
                    }
                });
            });

        });
    </script>
@endsection