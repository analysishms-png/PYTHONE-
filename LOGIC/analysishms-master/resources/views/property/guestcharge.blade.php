<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Pignose Calender -->
    <link href="{{ asset('admin/plugins/pg-calendar/css/pignose.calendar.min.css') }}" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist/css/chartist.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Stylesheet -->
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
    <link
        href="{{ asset('admin/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css') }}"
        rel="stylesheet">
    <!-- Color picker plugins css -->
    <link href="{{ asset('admin/plugins/jquery-asColorPicker-master/css/asColorPicker.css') }}" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <!-- Notify CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@include('cdns.datatable')
@if (isset($message))
    <script>
        Swal.fire({
            icon: '{{ $type }}',
            title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
            text: '{{ $message }}',
            timer: 5000,
            showConfirmButton: true
        });
    </script>
@endif

@if (session('success'))
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: '{{ session('success') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif
@if (session('error'))
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: '{{ session('error') }}',
        });
        setTimeout(function() {
            Swal.close();
        }, 5000);
    </script>
@endif

<body>
    <div style="font-size: small;" class="col-md-12">
        <input type="hidden" name="docid" id="docid" value="{{ $docid }}">
        <input type="hidden" name="sno1" id="sno1" value="{{ $sno1 }}">
        <h3 class="text-center BCH-alt border-bottom-1">Guest Charges Summary</h3>
        <div class="table-responsive">
            <table id="guestchargetable" class="table table-bordered table-sm">
                <thead class="thead-light">
                    <tr>
                        <th style="width: 40px;"></th>
                        <th>Particulars</th>
                        <th class="text-right">Debit</th>
                        <th class="text-right">Credit</th>
                        <th class="text-right">Balance</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($data as $item)
                        <tr data-revcode="{{ $item->rev_code }}">
                            <td class="text-center">
                                <input class="revcheckbox" type="checkbox" name="rev_codes[]" value="{{ $item->rev_code }}">
                            </td>
                            <td>{{ $item->particular }}</td>
                            <td class="text-right debit-cell"></td>
                            <td class="text-right credit-cell"></td>
                            <td class="text-right balance-cell"></td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="text-center text-muted">No particulars found.</td>
                        </tr>
                    @endforelse
                </tbody>
                <tfoot>
                    <tr style="font-weight: 600;">
                        <td></td>
                        <td>Total</td>
                        <td class="text-right" id="totalDebit">0.00</td>
                        <td class="text-right" id="totalCredit">0.00</td>
                        <td class="text-right" id="totalBalance">0.00 Dr</td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</body>

</html>

<script>
    $(document).ready(function() {
        let table = new DataTable('#guestchargetable', {
            dom: 'Bfrtip',
            ordering: true,
            order: [],
            buttons: [
                {
                    extend: 'excel',
                    title: 'Guest Charges Summary'
                },
                {
                    extend: 'pdf',
                    title: 'Guest Charges Summary'
                },
                {
                    extend: 'print',
                    title: 'Guest Charges Summary'
                }
            ]
        });
        const selectedRevCodes = new Set();

        $('.revcheckbox').on('change', function() {
            var revCode = $(this).val();
            if ($(this).is(':checked')) {
                selectedRevCodes.add(revCode);
            } else {
                selectedRevCodes.delete(revCode);
            }

            fetchchargessum(Array.from(selectedRevCodes));
        });

        function fetchchargessum(revcodes) {
            $.ajax({
                url: '/fetchchargessum',
                method: 'POST',
                data: {
                    rev_codes: revcodes,
                    docid: $('#docid').val(),
                    sno1: $('#sno1').val(),
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (!response || !response.success) {
                        return;
                    }

                    const rows = $('.table tbody tr[data-revcode]');
                    rows.find('.debit-cell, .credit-cell, .balance-cell').text('');

                    const dataByCode = {};
                    response.data.forEach(item => {
                        dataByCode[item.rev_code] = item;
                    });

                    let runningBalance = 0;
                    let totalDebit = 0;
                    let totalCredit = 0;

                    rows.each(function() {
                        const revcode = $(this).data('revcode');
                        const rowData = dataByCode[revcode];
                        if (!rowData) {
                            return;
                        }

                        const debit = parseFloat(rowData.debitamt || 0);
                        const credit = parseFloat(rowData.creditamt || 0);
                        runningBalance += debit - credit;

                        totalDebit += debit;
                        totalCredit += credit;

                        $(this).find('.debit-cell').text(debit.toFixed(2));
                        $(this).find('.credit-cell').text(credit.toFixed(2));
                        $(this).find('.balance-cell').text(`${Math.abs(runningBalance).toFixed(2)} ${runningBalance < 0 ? 'Cr' : 'Dr'}`);
                    });

                    const totalBalance = totalDebit - totalCredit;
                    $('#totalDebit').text(totalDebit.toFixed(2));
                    $('#totalCredit').text(totalCredit.toFixed(2));
                    $('#totalBalance').text(`${Math.abs(totalBalance).toFixed(2)} ${totalBalance < 0 ? 'Cr' : 'Dr'}`);

                    if (table) {
                        table.destroy();
                    }
                    table = new DataTable('#guestchargetable', {
                        dom: 'Bfrtip',
                        ordering: true,
                        order: [],
                        buttons: [
                            {
                                extend: 'excel',
                                title: 'Guest Charges Summary'
                            },
                            {
                                extend: 'pdf',
                                title: 'Guest Charges Summary'
                            },
                            {
                                extend: 'print',
                                title: 'Guest Charges Summary'
                            }
                        ]
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching charges summary:', error);
                }
            });
        }
    });
</script>

<script src="{{ asset('admin/plugins/common/common.min.js') }}"></script>
<script src="{{ asset('admin/js/custom.min.js') }}"></script>
<script src="{{ asset('admin/js/settings.js') }}"></script>
<script src="{{ asset('admin/js/gleek.js') }}"></script>
<script src="{{ asset('admin/js/styleSwitcher.js') }}"></script>
<script src="{{ asset('admin/js/dashboard/dashboard-1.js') }}"></script>

<script src="{{ asset('admin/plugins/moment/moment.js') }}"></script>
<script src="{{ asset('admin/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js') }}"></script>
<!-- Clock Plugin JavaScript -->
<script src="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.js') }}"></script>
<!-- Date Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
<!-- Date range Plugin JavaScript -->
<script src="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
<script src="{{ asset('admin/js/plugins-init/form-pickers-init.js') }}"></script>

<!-- Color Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js') }}"></script>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Notify JS -->
<script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
