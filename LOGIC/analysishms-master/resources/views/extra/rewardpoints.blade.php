@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

    <style>
        /* Scrollable list */
        #usernames {
            max-height: 30em;
            overflow-y: auto;
            position: relative;
            z-index: 50;
            margin-top: 1rem;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            font-weight: 600;
            text-align: center;
            padding: 6px;
        }

        #usernames ul li {
            padding: 6px 10px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        #usernames ul li:hover {
            background-color: #f0f0f0;
        }

        /* Scrollbar */
        #usernames::-webkit-scrollbar {
            width: 5px;
        }

        #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        #usernames::-webkit-scrollbar-track {
            background-color: #e0e0e0;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .card-header h3 {
                font-size: 1.2rem;
                text-align: center;
            }

            .form-group label {
                font-size: 0.9rem;
            }

            .btn {
                width: 100%;
                margin-top: 10px;
            }

            #designationmast {
                font-size: 0.85rem;
            }

            #usernames {
                position: relative;
                left: auto;
                top: auto;
                max-width: 100%;
            }
        }

        /* Mobile adjustments */
        @media (max-width: 576px) {
            div.dt-buttons {
                justify-content: center;
            }

            div.dt-buttons .btn {
                width: 100%;
                text-align: center;
            }
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Reward Points Master</h3>
                                </div>
                                <div class="col-lg-6">

                                </div>
                            </div>
                            <form class="form" method="POST" action="javascript:void(0)" autocomplete="off"
                                name="addRewardPointsForm" id="addRewardPointsForm" enctype="multipart/form-data">
                                @csrf

                                <div class="row mb-3">
                                    <div class="col-md-3">
                                        <label class="form-label" for="restcode">Outlet</label>
                                        <select class="form-control" name="restcode" id="restcode" required>
                                            <option value="">Select</option>
                                            @foreach ($outlet as $item)
                                                <option value="{{ $item->dcode }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-3">
                                        <label for="validupto">Valid Upto</label>
                                        <input type="date" class="form-control" value="{{ ncurdate() }}" name="validupto" id="validupto" required>
                                    </div>

                                    <div class="col-md-3">
                                        <label for="activeyn">Active YN</label>
                                        <select class="form-control" name="activeyn" id="activeyn" required>
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    </div>

                                    <div class="col-md-3">
                                        <label for="minamtreedem">Min Amt Reedem</label>
                                        <input type="text" class="form-control amountrow" value="1.00" name="minamtreedem" id="minamtreedem" required>
                                    </div>

                                    <div class="col-md-3 mt-3">
                                        <button type="submit" id="submitBtn" class="btn btn-primary w-100">
                                            Submit +
                                        </button>
                                    </div>
                                </div>

                                <div class="table-responsive">
                                    <table class="table table-bordered align-middle">
                                        <thead class="table-light">
                                            <tr>
                                                <th>Category</th>
                                                <th>Type</th>
                                                <th>First Per.</th>
                                                <th>Repeat Per.</th>
                                                <th>Points On Amount</th>
                                                <th>Points</th>
                                                <th>Per Point Value</th>
                                                <th>Lower Limit</th>
                                                <th>Comparison</th>
                                                <th>Upper Limit</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><input type="text" id="category" name="category" class="form-control"
                                                        placeholder="Enter Category"></td>
                                                <td><select name="type" id="type" class="form-control">
                                                        <option value="value" selected>Value</option>
                                                        <option value="percentage">Percentage</option>
                                                    </select></td>
                                                <td><input type="text" name="firstpervalue" id="firstpervalue" class="form-control amountrow"
                                                        placeholder="0" readonly></td>
                                                <td><input type="text" name="pervalue" id="pervalue" class="form-control amountrow"
                                                        placeholder="0" readonly="readonly"></td>
                                                <td><input type="text" name="rpointonamt" class="form-control amountrow"
                                                        placeholder="0"></td>
                                                <td><input type="text" name="rpoint" class="form-control amountrow" placeholder="0">
                                                </td>
                                                <td><input type="text" name="rpointvalue" class="form-control amountrow"
                                                        placeholder="0.00"></td>
                                                <td><input type="text" name="limitlow" class="form-control amountrow"
                                                        placeholder="0"></td>
                                                <td>
                                                    <select class="form-control" name="compoperator" class="form-select">
                                                        <option value=">"> > </option>
                                                        <option value=">="> >= </option>
                                                        <option value="<">
                                                            < </option>
                                                        <option value="<=">
                                                            <= </option>
                                                        <option value="="> = </option>
                                                        <option value="between" selected> Between </option>
                                                    </select>
                                                </td>
                                                <td><input type="number" name="limitup" class="form-control"
                                                        placeholder="0"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>

                            <div class="table-responsive mt-4">
                                <table id="rewardPointsTable"
                                    class="table table-hover table-striped table-bordered align-middle">
                                    <thead class="table-dark">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Outlet</th>
                                            <th>Category</th>
                                            <th>Points On Amount</th>
                                            <th>Points</th>
                                            <th>Per Point Value</th>
                                            <th>Lower Limit</th>
                                            <th>Comparison</th>
                                            <th>Upper Limit</th>
                                            <th>Action</th>
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
        $(document).ready(function () {
            $('#type').on('change', function() {
                if ($(this).val() === 'percentage') {
                    $('#firstpervalue, #pervalue').prop('readonly', false);
                } else {
                    $('#firstpervalue, #pervalue').prop('readonly', true).val('0');
                }
            });
        });
        // document.addEventListener('DOMContentLoaded', () => {
        //     // Select all inputs and textareas on the page
        //     const elements = document.querySelectorAll('input, textarea, select');

        //     const observer = new MutationObserver(mutations => {
        //         mutations.forEach(m => {
        //             if (m.target.hasAttribute('readonly')) {
        //                 m.target.removeAttribute('readonly');
        //             }
        //         });
        //     });

        //     elements.forEach(el => {
        //         el.removeAttribute('readonly'); // remove if already set
        //         observer.observe(el, {
        //             attributes: true,
        //             attributeFilter: ['readonly']
        //         });
        //     });
        // });

        $(document).on('click', '.editBtn', function() {
            let id = $(this).data('id');
            let restcode = $(this).data('restcode');
            let type = $(this).data('type');
            let firstpervalue = $(this).data('firstpervalue');
            let pervalue = $(this).data('pervalue');
            let validupto = $(this).data('validupto');
            let activeyn = $(this).data('activeyn');
            let minamtreedem = $(this).data('minamtreedem');
            let category = $(this).data('category');
            let rpointonamt = $(this).data('rpointonamt');
            let rpoint = $(this).data('rpoint');
            let rpointvalue = $(this).data('rpointvalue');
            let limitlow = $(this).data('limitlow');
            let limitup = $(this).data('limitup');
            let comoperator = $(this).data('comoperator');

            if ($('#update_id').length === 0) {
                $('#addRewardPointsForm').append('<input type="hidden" id="update_id" name="sn">');
            }

            // ✅ Set all field values
            $('#update_id').val(id);
            $('#restcode').val(restcode);
            $('#type').val(type);
            $('#firstpervalue').val(firstpervalue);
            $('#pervalue').val(pervalue);
            $('#validupto').val(validupto);
            $('#activeyn').val(activeyn);
            $('#minamtreedem').val(minamtreedem);
            $('#category').val(category);
            $("input[name='rpointonamt']").val(rpointonamt);
            $("input[name='rpoint']").val(rpoint);
            $("input[name='rpointvalue']").val(rpointvalue);
            $("input[name='limitlow']").val(limitlow);
            $("input[name='limitup']").val(limitup);
            $("select[name='compoperator']").val(comoperator);

            // ✅ Change form mode to Update
            $('#addRewardPointsForm').attr('id', 'updateRewardPointsForm');
            $('#submitBtn')
                .attr('id', 'updateSubmit')
                .removeClass('btn-primary')
                .addClass('btn-success')
                .text('Update');
            if ($('#cancelBtn').length === 0) {
                // Note: "ms-3" Bootstrap class = margin-start 1rem (space between buttons)
                $('#updateSubmit').after(
                    ' <button type="button" id="cancelBtn" class="btn btn-secondary ms-3">Cancel</button>'
                );
            }

            // ✅ Scroll to top of page
            $('html, body').animate({
                scrollTop: 0
            }, 'slow');
        });

        // ✅ Cancel Button Click → Reset form to Add Mode
        $(document).on('click', '#cancelBtn', function() {
            resetFormToAddMode();
        });

        // ✅ Reset Function
        function resetFormToAddMode() {
            // Remove update-specific elements
            $('#updateRewardPointsForm').attr('id', 'addRewardPointsForm');
            $('#updateSubmit')
                .attr('id', 'submitBtn')
                .removeClass('btn-success')
                .addClass('btn-primary')
                .text('Submit +');
            $('#cancelBtn').remove(); // remove cancel button
            $('#update_id').remove(); // remove hidden id
            $('#addRewardPointsForm')[0].reset(); // reset all fields
        }


        $(document).ready(function() {
            var fpnoColors = {};
            var fpnoColorIndex = 0;

            var table = $('#rewardPointsTable').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                responsive: true, // ✅ responsive plugin enable
                autoWidth: false, // prevent overflow issues

                ajax: {
                    url: '{{ route('rewardpointsdata') }}',
                    type: 'GET',
                    error: function(xhr) {
                        let msg = 'Error loading data.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        }
                        pushNotify('error', msg);
                    }
                },

                columns: [{
                        data: 'id',
                        name: 'id',
                        className: 'align-middle'
                    },
                    {
                        data: 'name',
                        name: 'name',
                        className: 'align-middle'
                    },
                    {
                        data: 'category',
                        name: 'category',
                        className: 'align-middle'
                    },
                    {
                        data: 'rpointonamt',
                        name: 'rpointonamt',
                        className: 'text-end align-middle'
                    },
                    {
                        data: 'rpoint',
                        name: 'rpoint',
                        className: 'text-end align-middle'
                    },
                    {
                        data: 'rpointvalue',
                        name: 'rpointvalue',
                        className: 'text-end align-middle'
                    },
                    {
                        data: 'limitlow',
                        name: 'limitlow',
                        className: 'text-end align-middle'
                    },
                    {
                        data: 'comoperator',
                        name: 'comoperator',
                        className: 'text-center align-middle'
                    },
                    {
                        data: 'limitup',
                        name: 'limitup',
                        className: 'text-end align-middle'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false,
                        className: 'text-center align-middle'
                    }
                ],

                dom: '<"d-flex flex-wrap justify-content-between align-items-center mb-2"Bf>rt<"d-flex justify-content-between align-items-center"lip>',

                buttons: [{
                        text: '<i class="fa fa-file-excel-o"></i> CSV',
                        className: 'btn btn-success btn-sm me-2 mb-2',
                        action: function() {
                            window.location.href = '/rewardpointsexport';
                        }
                    },
                    {
                        extend: 'print',
                        text: '<i class="fa-solid fa-print"></i> Print',
                        className: 'btn btn-primary btn-sm mb-2',
                        title: 'Reward Points Master',
                        filename: 'Reward Points Master',
                        footer: true,
                        customize: function(win) {
                            $(win.document.body).find('th')
                                .removeClass('sorting sorting_asc sorting_desc');
                            $(win.document.body).find('table')
                                .css('margin-top', '100px');
                            $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                            const style = `
                        <style>
                            .none { display: none !important; }
                            table { border-collapse: collapse; width: 100%; font-size: 12px; }
                            th, td { border: 1px solid #ccc; padding: 6px; }
                        </style>`;
                            $(win.document.head).append(style);
                        },
                        action: function(e, dt, button, config) {
                            exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.print.action);
                        }
                    }
                ]
            });


            $(document).on('submit', '#addRewardPointsForm, #updateRewardPointsForm', function(e) {
                e.preventDefault();

                // current form id le lo
                let formId = $(this).attr('id');

                if (formId === 'addRewardPointsForm') {
                    console.log('🟢 Add Mode: New record insert होगा');
                    addRewardPoints();
                    // AJAX call for Add (Insert)
                } else if (formId === 'updateRewardPointsForm') {
                    console.log('🟠 Update Mode: Existing record update होगा');
                    updateRewardPoints();
                    // AJAX call for Update
                }
            });

            function exportAllData(e, dt, button, config, exportAction) {
                var oldStart = dt.settings()[0]._iDisplayStart;

                dt.one('preXhr', function(e, s, data) {

                    data.start = 0;
                    data.length = 2147483647;

                    dt.one('preDraw', function(e, settings) {
                        exportAction(e, dt, button, config);
                        settings._iDisplayStart = oldStart;
                        data.start = oldStart;

                        dt.one('preDraw', function(e, settings) {
                            dt.settings()[0]._iDisplayStart = oldStart;
                            dt.draw(false);
                        });

                        return false;
                    });
                });

                // Trigger reload
                dt.ajax.reload();
            }

            ///////////////  Submit Form //////////////

            function addRewardPoints() {

                // $('#addRewardPointsForm').on('submit', function (e) {
                // e.preventDefault();

                $('span.error-text').text('');
                let formData = $('#addRewardPointsForm').serialize();

                $.ajax({
                    url: "{{ route('addrewardpoints') }}", // 
                    method: "POST",
                    data: formData,
                    // processData: false,
                    // contentType: false,
                    beforeSend: function() {
                        $('#submitBtn').prop('disabled', true).text('Submitting...');
                    },
                    success: function(response) {
                        $('#submitBtn').prop('disabled', false).text('Submit +');

                        if (response.status == 1) {
                            // Success
                            pushNotify('success', response.msg);
                            $('#addRewardPointsForm')[0].reset();
                            table.ajax.reload();
                            // location.reload();
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function(xhr) {
                        $('#submitBtn').prop('disabled', false).text('Submit +');

                        if (xhr.status === 422) {
                            // Laravel validation error
                            $.each(xhr.responseJSON.errors, function(key, value) {
                                $('span.' + key + '_error').text(value[0]);
                                pushNotify('error', value[0]);
                            });
                        } else {
                            pushNotify('error', 'Something went wrong! Please try again.');
                        }
                    }
                });
            }


            ///////////////  Update Form //////////////

            function updateRewardPoints() {

                // $('#updateRewardPointsForm').on('submit', function (e) {
                // e.preventDefault();

                $('span.error-text').text(''); // Clear previous errors
                let formData = $('#updateRewardPointsForm').serialize();

                $.ajax({
                    url: "{{ route('updateRewardPoints') }}", // Laravel route for update
                    method: "POST",
                    data: formData,
                    // processData: false,
                    // contentType: false,
                    beforeSend: function() {
                        $('#updateSubmit').prop('disabled', true).text('Updating...');
                    },
                    success: function(response) {
                        $('#updateSubmit').prop('disabled', false).text('Update');

                        if (response.status == 1) {
                            // Success
                            pushNotify('success', response.msg);
                            resetFormToAddMode();
                            table.ajax.reload(); // Refresh DataTable
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function(xhr) {
                        $('#updateSubmit').prop('disabled', false).text('Update');

                        if (xhr.status === 422) {
                            // Laravel validation error
                            $.each(xhr.responseJSON.errors, function(key, value) {
                                $('span.' + key + '_error').text(value[0]);
                                pushNotify('error', value[0]);
                            });
                        } else {
                            pushNotify('error', 'Something went wrong! Please try again.');
                        }
                    }
                });
            }


            //////////// Delete ////////////////

            $(document).on('click', '.deleteBtn', function() {
                let id = $(this).data('id'); // Button me data-id attribute hona chahiye

                if (confirm('Are you sure you want to delete this reward?')) {
                    $.ajax({
                        url: "{{ route('deleterewardpoints') }}", // Laravel route
                        type: 'POST',
                        data: {
                            'sn': id,
                            _token: "{{ csrf_token() }}"
                        },
                        beforeSend: function() {
                            // Optional: disable button or show loader
                            $('.deleteBtn[data-id="' + id + '"]').prop('disabled', true).text('Deleting...');
                        },
                        success: function(response) {
                            $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');

                            if (response.status == 1) {
                                pushNotify('success', response.msg);
                                table.ajax.reload(); // Refresh DataTable
                            } else {
                                pushNotify('error', response.msg);
                            }
                        },
                        error: function(xhr) {
                            $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');
                            pushNotify('error', 'Something went wrong! Please try again.');
                        }
                    });
                }
            });
        });
    </script>
@endsection
