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
        .refresh-button-container {
            position: absolute;
            top: 70px;
            right: 50px;
        }

        #taxesnames {
            position: absolute;
            top: 150px;
            left: 50px;
            background-color: white;
            border: 1px solid #ccc;
            padding: 10px;
            z-index: 1000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-height: 400px;
            overflow-y: auto;
        }

        @media print {
            .none {
                display: none !important;
            }

            .titlep {
                display: block !important;
                text-align: center !important;
            }

            #fomtax thead th.none {
                display: none !important;
            }

            #fomtax tbody td.none {
                display: none !important;
            }
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body fomtaxdetail">
                            <form action="" method="post">
                                <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                <input type="hidden" value="{{ $company->propertyid }}" id="propertyid" name="propertyid">
                                <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                <input type="hidden" value="{{ $company->pin }}" id="pin" name="pin">
                                <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
                                <div class="text-center titlep">
                                    <h3>{{ $company->comp_name }}</h3>
                                    <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                    <p style="margin-top:-10px; font-size:16px;">
                                        {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                    </p>
                                    <p style="margin-top:-10px; font-size:16px;">FOM Tax Details</p>
                                    <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                            id="fromdatep"></span> To Date:
                                        <span id="todatep"></span>
                                    </p>
                                </div>
                                <div class="row">
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="taxnamebtn" class="col-form-label">‎ </label>
                                        <div class="form-group">
                                            <button type="button" class="btn btn-outline-success btn-success"
                                                name="taxnamebtn" id="taxnamebtn">Taxes</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="refresh-button-container">
                                    <button type="button" id="refreshbutton" class="btn btn-primary">Refresh</button>
                                </div>

                            </form>

                            <div id="tableshowdiv" class="row table-responsive">
                                <table id="fomtax" class=" table table-border table-hover table striped border rounded">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Guest Name</th>
                                            <th>Folio No.</th>
                                            <th id="billnoth">Bill No.</th>
                                            <th>Room No.</th>
                                            <th>Bill Amt</th>
                                            <th>Goods 2.5%</th>
                                            <th>Goods 6%</th>
                                            <th>Goods 9%</th>
                                            <th>CGST 2.5%</th>
                                            <th>SGST 2.5%</th>
                                            <th>CGST 6%</th>
                                            <th>SGST 6%</th>
                                            <th>CGST 9%</th>
                                            <th>SGST 9%</th>
                                            <th>Till Tax Amt</th>
                                            <th>Company</th>
                                            <th>GSTIN</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>

                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="none" id="taxesnames"></div>
    </div>

    <script>
        $(document).ready(function () {
            let selectedTaxes = []; // array of paycode strings/numbers selected
            let table = null;

            // helper to coerce value to number (strip thousand separators / non-numeric chars)
            function num(v) {
                if (v === null || typeof v === 'undefined') return 0;
                if (typeof v === 'number') return isNaN(v) ? 0 : v;
                const s = String(v).replace(/,/g, '').replace(/[^\d\.\-]/g, '');
                const n = Number(s);
                return isNaN(n) ? 0 : n;
            }

            function initDataTable() {
                if (table) {
                    table.destroy();
                    $('#fomtax tbody').empty();
                    $('#fomtax thead').html('');
                    $('#fomtax tfoot').html('');
                }

                let compname = $('#compname').val();

                // Build fixed header for "only 6% columns" view
                const theadHtml = `<tr>
                                                    <th>Date</th>
                                                    <th>Guest Name</th>
                                                    <th>Folio No.</th>
                                                    <th id="billnoth">Bill No.</th>
                                                    <th>Room No.</th>
                                                    <th>Bill Amt</th>
                                                    <th>Goods 2.5%</th>
                                                    <th>Goods 6%</th>
                                                    <th>CGST 2.5%</th>
                                                    <th>SGST 2.5%</th>
                                                    <th>CGST 6%</th>
                                                    <th>SGST 6%</th>
                                                    <th>Till Tax Amt</th>
                                                    <th>Company</th>
                                                    <th>GSTIN</th>
                                                </tr>`;
                $('#fomtax thead').html(theadHtml);

                table = $('#fomtax').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: false,
                    lengthChange: true,
                    pageLength: 15,
                    dom: 'Bfrtip',
                    ajax: {
                        url: '/fetchfomtaxdata',
                        type: 'POST',
                        data: function (d) {
                            d.fromdate = $('#fromdate').val();
                            d.todate = $('#todate').val();
                            d.taxes = selectedTaxes; // send array of tax paycodes
                            d._token = '{{ csrf_token() }}';
                        },
                        dataSrc: function (json) {
                            let rows = json.data || [];

                            // totals initialize
                            let totalbillamt = 0;
                            let totalbase2_5 = 0;
                            let totalcgst2_5 = 0;
                            let totalsgst2_5 = 0;
                            let totalbase1 = 0;
                            let totalcgst6 = 0;
                            let totalsgst6 = 0;
                            let totaltilltax = 0;

                            // loop all rows
                            rows.forEach(r => {
                                totalbillamt += num(r.billamount);
                                totalbase2_5 += num(r.BASEVALUE5);
                                totalcgst2_5 += num(r.TAXAMT5);
                                totalsgst2_5 += num(r.TAXAMT6);
                                totalbase1 += num(r.BASEVALUE1);
                                totalcgst6 += num(r.TAXAMT1);
                                totalsgst6 += num(r.TAXAMT3);
                                totaltilltax += num(r.ETAXAMT);
                            });

                            // footer totals set karo
                            let tfoot = `<tr class="font-weight-bold">
                                                <td colspan="5">Total</td>
                                                <td>${totalbillamt.toFixed(2)}</td>
                                                <td>${totalbase2_5.toFixed(2)}</td>
                                                <td>${totalbase1.toFixed(2)}</td>
                                                <td>${totalcgst2_5.toFixed(2)}</td>
                                                <td>${totalsgst2_5.toFixed(2)}</td>
                                                <td>${totalcgst6.toFixed(2)}</td>
                                                <td>${totalsgst6.toFixed(2)}</td>
                                                <td>${totaltilltax.toFixed(2)}</td>
                                                <td colspan="2"></td>
                                            </tr>`;
                            $('#fomtax tfoot').html(tfoot);

                            if (json.recordsFiltered === 0) {
                                pushNotify('info', 'No Data Found', 'No Data Found for the Selected Dates');
                            }
                            // return the data array for DataTables rendering
                            return json.data || [];
                        },
                        error: function (xhr, status, err) {
                            hideLoader();
                            pushNotify('error', 'Error fetching data');
                        }
                    },
                    columns: [
                        { data: 'settledate', render: function (data) { return data ? dmy(data) : ''; } },
                        { data: 'GuestName', defaultContent: '' },
                        { data: 'foliono', defaultContent: '' },
                        { data: 'BILL_NO', defaultContent: '' },
                        { data: 'RoomNo', defaultContent: '' },
                        { data: 'billamount', render: $.fn.dataTable.render.number(',', '.', 2, '') },
                        { data: 'BASEVALUE5', render: $.fn.dataTable.render.number(',', '.', 2, '') }, // Goods 2.5%
                        { data: 'BASEVALUE1', render: $.fn.dataTable.render.number(',', '.', 2, '') }, // Goods 6%
                        { data: 'TAXAMT5', render: $.fn.dataTable.render.number(',', '.', 2, '') },   // CGST 2.5%
                        { data: 'TAXAMT6', render: $.fn.dataTable.render.number(',', '.', 2, '') },   // SGST 2.5%
                        { data: 'TAXAMT1', render: $.fn.dataTable.render.number(',', '.', 2, '') },   // CGST 6%
                        { data: 'TAXAMT3', render: $.fn.dataTable.render.number(',', '.', 2, '') },   // SGST 6%
                        { data: 'ETAXAMT', render: $.fn.dataTable.render.number(',', '.', 2, '') },   // Till Tax Amt
                        { data: 'companyname', defaultContent: '' },
                        { data: 'companygstin', defaultContent: '' }
                    ],
                    order: [[3, 'asc']], // order by BILL_NO
                    buttons: [
                        {
                            text: 'Excel <i class="fa fa-file-excel-o"></i>',
                            className: 'btn btn-success',
                            action: function (e, dt, button, config) {
                                // collect filters
                                let fromdate = $('#fromdate').val();
                                let todate = $('#todate').val();
                                let taxes = selectedTaxes;

                                // make query string
                                let qs = $.param({
                                    fromdate: fromdate,
                                    todate: todate,
                                    taxes: taxes
                                });

                                // redirect to controller route that returns excel file
                                window.location.href = '/download-fom-tax-excel?' + qs;
                            }
                        },
                        // {
                        //     extend: 'csvHtml5',
                        //     text: 'Csv <i class="fa-solid fa-file-csv"></i>',
                        //     title: compname,
                        //     filename: 'Fom Tax Report',
                        //     footer: true,
                        //     action: function (e, dt, button, config) {
                        //         exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.csvHtml5.action);
                        //     }
                        // },
                        {
                            extend: 'print',
                            text: 'Print <i class="fa-solid fa-print"></i>',
                            title: 'Fom Tax Report',
                            filename: 'Fom Tax Report',
                            footer: true,
                            customize: function (win) {
                                $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
                                $(win.document.body).find('table').css('margin-top', '100px');
                                $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                                var style = '<style>';
                                style += '.none { display: none !important; }';
                                style += '</style>';
                                $(win.document.head).append(style);
                            },
                            action: function (e, dt, button, config) {
                                exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.print.action);
                            }
                        }
                    ],
                    drawCallback: function (settings) {
                        hideLoader();
                    }
                });

                // keep xhr.dt handler minimal (no dynamic column toggles required since header is fixed for 6% view)
                $('#fomtax').off('xhr.dt').on('xhr.dt', function (e, settings, json, xhr) {
                    // nothing else needed here for column visibility
                });
            }

            function exportAllData(e, dt, button, config, exportAction) {
                var oldStart = dt.settings()[0]._iDisplayStart;

                dt.one('preXhr', function (e, s, data) {

                    data.start = 0;
                    data.length = 2147483647;

                    dt.one('preDraw', function (e, settings) {
                        exportAction(e, dt, button, config);
                        settings._iDisplayStart = oldStart;
                        data.start = oldStart;

                        dt.one('preDraw', function (e, settings) {
                            dt.settings()[0]._iDisplayStart = oldStart;
                            dt.draw(false);
                        });

                        return false;
                    });
                });

                // Trigger reload
                dt.ajax.reload();
            }





            // init once on load
            initDataTable();

            // Refresh button -> reload server-side table
            $(document).on('click', '#refreshbutton', function () {
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                if (fromdate > todate) {
                    pushNotify('error', 'From Date should not be greater than To Date');
                    $('#fromdate').val($('#start_dt').val());
                    $('#todate').val($('#end_dt').val());
                    return;
                }
                showLoader();
                pushNotify('info', 'FOM Tax Details', 'Fetching Report, Please Wait...', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                $('#fromdatep').text(dmy(fromdate));
                $('#todatep').text(dmy(todate));
                if (!table) initDataTable();
                table.ajax.reload();
            });

            // Fetch Tax Names (unchanged except we ensure selectedTaxes updated and table reloads)
            $(document).on('click', '#taxnamebtn', function () {
                let divbus = $('#taxesnames');
                let fromdate = $('#fromdate').val();
                let todate = $('#todate').val();
                divbus.html('');
                showLoader();
                let setforxhr = new XMLHttpRequest();
                setforxhr.open('POST', '/fetchtaxesnames', true);
                setforxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                setforxhr.onreadystatechange = function () {
                    if (setforxhr.readyState === 4) {
                        hideLoader();
                        if (setforxhr.status === 200) {
                            let results = JSON.parse(setforxhr.responseText);
                            if (results.length < 1) {
                                divbus.addClass('none');
                                pushNotify('error', 'No data found');
                            } else {
                                divbus.removeClass('none');
                                let data = `<ul id="taxnameul"><li class="text-center movableli">Taxes<button style="top:2px;" class="btn btn-sm btn-danger" id="closeBtn"><i class="fa-regular fa-circle-xmark"></i></button></li><li><input class="menucheckbox" id="allcheckbox" checked value="All" type="checkbox"> All</li>`;
                                results.forEach((item, index) => {
                                    data += `<li data-id="${item.paycode}"><input class="menucheckbox" checked value="${item.paycode}" type="checkbox"> ${item.name}</li>`;
                                });
                                data += '</ul>';
                                divbus.html(data);

                                // initialize selectedTaxes from the returned list
                                selectedTaxes = results.map(r => r.paycode);
                            }
                        } else {
                            pushNotify('error', 'Error fetching tax names');
                        }
                    }
                };
                setforxhr.send(`fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`);
            });

            // draggable handler (unchanged)
            let offsetX, offsetY;
            let isDragging = false;
            $(document).on('mousedown', '.movableli', function (e) {
                isDragging = true;
                offsetX = e.clientX - $(this).offset().left;
                offsetY = e.clientY - $(this).offset().top;
            });
            $(document).on('mouseup', function () { isDragging = false; });
            $(document).on('mousemove', function (e) {
                if (isDragging) {
                    $('#taxesnames').css({ left: e.clientX - offsetX, top: e.clientY - offsetY });
                }
            });

            // checkbox handlers: update selectedTaxes and reload the table
            $(document).on('change', '#allcheckbox', function () {
                let checked = $(this).prop('checked');
                $('.menucheckbox').prop('checked', checked);
                $('.menucheckbox').trigger('change');
            });

            $(document).on('change', '.menucheckbox', function () {
                // rebuild selectedTaxes from checked boxes (exclude "All" value)
                selectedTaxes = [];
                $('.menucheckbox').each(function () {
                    let val = $(this).val();
                    if (val !== 'All' && $(this).prop('checked')) selectedTaxes.push(val);
                });
                // reload server side table with new filters
                if (table) {
                    showLoader();
                    table.ajax.reload();
                }
            });

            $(document).on('click', '#closeBtn', function () {
                $('#taxesnames').addClass('none');
            });

        });
    </script>
@endsection