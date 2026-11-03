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
        #usernames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6s ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
        }

        #usernames ul:hover {
            background-color: #faf3dd;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        #usernames::-webkit-scrollbar {
            width: 3px;
            height: 3px;
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        .cashierreport #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            background-color: #84e900;
        }

        #usernames::-webkit-scrollbar-thumb:active {
            background: #2708da;
        }

        .titlep {
            display: none;
        }

        /* Taxes dropdown */
        #taxesnames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #taxesnames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6s ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #taxesnames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 5px;
        }

        #taxesnames ul:hover {
            background-color: #faf3dd;
        }

        div#taxesnames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#taxesnames ul li:hover {
            background-color: #f0f0f0;
        }

        div#taxesnames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        .none {
            display: none;
        }
    </style>

    <div class="content-body cashierreport">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>Tax Report</h3>
                                    </div>
                                </div>
                            </div>
                            <form action="" method="post">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"
                                        name="propertyid">
                                    <input type="hidden" value="{{ $banquet->companyname ?? $company->comp_name }}"
                                        id="compname">

                                    <input type="hidden" value="{{ $banquet->companyaddress ?? $company->address1 }}"
                                        id="address">

                                    <input type="hidden" value="{{ $company->city }}" id="city"> {{-- banquet me city nahi hai --}}

                                    <input type="hidden" value="{{ $company->mobile }}" id="compmob">
                                    {{-- banquet me mobile nahi hai --}}

                                    <input type="hidden" value="{{ $statename }}" id="statename">

                                    <input type="hidden" value="{{ $company->pin }}" id="pin">

                                    <input type="hidden" value="{{ $company->email }}" id="email">

                                    <input type="hidden" value="{{ $banquet->logo ?? $company->logo }}" id="logo">

                                    <input type="hidden" value="{{ $banquet->u_name ?? $company->u_name }}"
                                        id="u_name">

                                    <input type="hidden" value="{{ $banquet->gstin ?? $company->gstin }}" id="gstin">
                                    <div class="text-center titlep">
                                        <h3>{{ $banquet->comp_name ?? $company->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $banquet->address1 ?? $company->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . ($banquet->city ?? $company->city) . ' - ' . ($banquet->pin ?? $company->pin) }}
                                        </p>
                                        <p style="margin-top:-10px; font-size:16px;">Tax Report</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                                id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                name="fromdate" id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control"
                                                name="todate" id="todate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <label for="taxnamebtn" class="col-form-label">‎ </label>
                                        <div class="form-group">
                                            <button type="button" class="btn btn-outline-success btn-success"
                                                name="taxnamebtn" id="taxnamebtn">Taxes</button>
                                        </div>
                                    </div>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <div class="row table-responsive">
                                {{-- 16 columns in thead --}}
                                <table id="taxreportdata"
                                    class="table table-border table-hover table-striped border rounded">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Bill Date</th>
                                            <th>Bill No.</th>
                                            <th>Party Name</th>
                                            <th>Taxable Amount</th>
                                            <th>Non Tax Amount</th>
                                            <th>Sale 2.5%</th>
                                            <th>Sale 9%</th>
                                            <th>CGST 2.5%</th>
                                            <th>SGST 2.5%</th>
                                            <th>CGST 9%</th>
                                            <th>SGST 9%</th>
                                            <th>TTL Tax</th>
                                            <th>Round Off</th>
                                            <th>Discount</th>
                                            <th>Bill Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                        {{-- 16 th elements to match thead exactly --}}
                                        <tr>
                                            <th style="text-align:right">Total:</th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th id="taxamount"></th>
                                            <th id="nontaxamount"></th>
                                            <th id="sale2_1"></th>
                                            <th id="sale9_2"></th>
                                            <th id="cgst2_5"></th>
                                            <th id="sgst2_5"></th>
                                            <th id="cgst9"></th>
                                            <th id="sgst9"></th>
                                            <th id="ttlTaxAmt"></th>
                                            <th id="roundoff"></th>
                                            <th id="discamt"></th>
                                            <th id="total"></th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Taxes dropdown container --}}
    <div class="none" id="taxesnames"></div>

    <script>
        // ✅ FIX 1: Declare table in outer scope so all event handlers can access it
        let table = null;
        let selectedTaxes = [];

        // ✅ FIX 2: Safe loader helpers — won't crash if showLoader/hideLoader aren't globally defined
        function safeShowLoader() {
            if (typeof showLoader === 'function') showLoader();
        }

        function safeHideLoader() {
            if (typeof hideLoader === 'function') hideLoader();
        }

        $(document).ready(function() {
            var fpnoColors = {};
            var fpnoColorList = [];
            var fpnoColorIndex = 0;
            table = $('#taxreportdata').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: true,
                    paging: true,
                    ordering: true,
                    ajax: {
                        url: '{{ route('taxreportdata') }}',
                        type: 'POST',
                        data: function(d) {
                            d.fromdate = $('#fromdate').val();
                            d.todate = $('#todate').val();
                            d.taxes = selectedTaxes;
                            d._token = '{{ csrf_token() }}';
                        },
                        error: function(xhr) {
                            let msg = 'Error loading data.';
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                msg = xhr.responseJSON.message;
                            }
                            alert(msg);
                        }
                    },
                    columns: [{
                            data: 'sno',
                            name: 'sno'
                        }, // 1  S.No
                        {
                            data: 'vdate',
                            name: 'vdate'
                        }, // 2  Bill Date
                        {
                            data: 'vno',
                            name: 'vno'
                        }, // 3  Bill No.
                        {
                            data: 'party',
                            name: 'party'
                        }, // 4  Party Name
                        {
                            data: 'taxable',
                            name: 'taxable'
                        }, // 5  Taxable Amount
                        {
                            data: 'nontaxable',
                            name: 'nontaxable'
                        }, // 6  Non Tax Amount
                        {
                            data: 'basevalue1',
                            name: 'basevalue1'
                        }, // 7  Sale 2.5%
                        {
                            data: 'basevalue4',
                            name: 'basevalue4'
                        }, // 8  Sale 9%
                        {
                            data: 'taxamt1',
                            name: 'taxamt1'
                        }, // 9  CGST 2.5%
                        {
                            data: 'taxamt2',
                            name: 'taxamt2'
                        }, // 10 SGST 2.5%
                        {
                            data: 'taxamt3',
                            name: 'taxamt3'
                        }, // 11 CGST 9%
                        {
                            data: 'taxamt4',
                            name: 'taxamt4'
                        }, // 12 SGST 9%
                        {
                            data: 'etaxamt',
                            name: 'etaxamt'
                        }, // 13 TTL Tax
                        {
                            data: 'roundoff',
                            name: 'roundoff'
                        }, // 14 Round Off
                        {
                            data: 'discamt',
                            name: 'discamt'
                        }, // 15 Discount
                        {
                            data: 'netAmt',
                            name: 'netAmt'
                        }, // 16 Bill Amount
                    ],
                    dom: 'Bfrtip',
                    buttons: [
                        'excelHtml5',
                        'csvHtml5',
                        {
                            extend: 'print',
                            title: '',
                            customize: function(win) {
                                var compName = $('#compname').val();
                                var address = $('#address').val();
                                var city = $('#city').val();
                                var statename = $('#statename').val();
                                var pin = $('#pin').val();
                                var mobile = $('#compmob').val();
                                var gstin = $('#gstin').val();
                                var fromdate = $('#fromdate').val();
                                var todate = $('#todate').val();

                                // Format dates dd-mm-yyyy
                                function fmtDate(d) {
                                    if (!d) return '';
                                    var p = d.split('-');
                                    return p.length === 3 ? p[2] + '-' + p[1] + '-' + p[0] : d;
                                }

                                var header =
                                    '<div style="font-family:Arial,sans-serif; font-size:12px; margin-bottom:10px;">' +
                                    '<div style="display:flex; justify-content:space-between; align-items:flex-start;">' +
                                    '<div>' +
                                    '<h2 style="font-size:15px; font-weight:bold; text-transform:uppercase; margin:0;">' +
                                    compName + '</h2>' +
                                    '<p style="margin:2px 0;">' + address + '</p>' +
                                    '<p style="margin:2px 0;">' + statename + ' - ' + city + ' - ' +
                                    pin + '</p>' +
                                    '<p style="margin:2px 0;">Mobile: ' + mobile + '</p>' +
                                    (gstin ? '<p style="margin:2px 0;">GSTIN: ' + gstin + '</p>' : '') +
                                    '</div>' +
                                    '<div style="text-align:right;">' +
                                    '<p style="margin:2px 0;"><b>Tax Report</b></p>' +
                                    '<p style="margin:2px 0;">From: <b>' + fmtDate(fromdate) +
                                    '</b> &nbsp; To: <b>' + fmtDate(todate) + '</b></p>' +
                                    '</div>' +
                                    '</div>' +
                                    '<hr style="border:1px solid #000; margin:6px 0;">' +
                                    '<div style="text-align:center; font-size:14px; font-weight:bold; text-decoration:underline; text-transform:uppercase; letter-spacing:1px; margin-bottom:6px;">Tax Report</div>' +
                                    '<hr style="border:1px solid #000; margin:6px 0;">' +
                                    '</div>';
                                // ✅ Totals row from tfoot - copy from main page
                                var tfootHtml = '<tfoot><tr>';
                                $('#taxreportdata tfoot tr th').each(function() {
                                    tfootHtml +=
                                        '<th style="border:1px solid #ccc; padding:4px 6px; font-weight:bold; background:#f5f5f5;">' +
                                        $(this).html() + '</th>';
                                });
                                tfootHtml += '</tr></tfoot>';

                                $(win.document.body)
                                    .find('h1').remove().end()
                                    .prepend(header);

                                // ✅ Append tfoot with totals to the print table
                                $(win.document.body).find('table').append(tfootHtml);

                                $(win.document.body).find('table')
                                    .css('font-size', '11px')
                                    .find('th, td')
                                    .css({
                                        'border': '1px solid #ccc',
                                        'padding': '4px 6px'
                                    });

                            // $(win.document.body)
                            // .find('h1').remove().end()
                            // .prepend(header);

                            // Basic table styling for print
                            // $(win.document.body).find('table')
                            // .css('font-size', '11px')
                            // .find('th, td')
                            // .css({
                            //     'border': '1px solid #ccc',
                            //     'padding': '4px 6px'
                            // });
                        }
                    }
                ],
                rowCallback: function(row, data, index) {
                    var fpno = data.fpno;
                    if (fpno && !fpnoColors[fpno]) {
                        fpnoColors[fpno] = fpnoColorList[fpnoColorIndex % fpnoColorList.length];
                        fpnoColorIndex++;
                    }
                    if (fpno && fpnoColors[fpno]) {
                        $(row).css('background-color', fpnoColors[fpno]);
                    }
                },
                drawCallback: function(settings) {
                    var api = this.api();

                    var taxamount = 0,
                        nontaxamount = 0,
                        sale2_1 = 0,
                        sale9_2 = 0,
                        cgst2_5 = 0,
                        sgst2_5 = 0,
                        cgst9 = 0,
                        sgst9 = 0,
                        ttlTaxAmt = 0,
                        roundoff = 0,
                        discamt = 0,
                        total = 0;

                    api.rows({
                        page: 'current'
                    }).every(function() {
                        var d = this.data();
                        taxamount += parseFloat((d.taxable || '0').replace(/,/g, '')) || 0;
                        nontaxamount += parseFloat((d.nontaxable || '0').replace(/,/g, '')) ||
                            0;
                        sale2_1 += parseFloat((d.basevalue1 || '0').replace(/,/g, '')) || 0;
                        sale9_2 += parseFloat((d.basevalue4 || '0').replace(/,/g, '')) || 0;
                        cgst2_5 += parseFloat((d.taxamt1 || '0').replace(/,/g, '')) || 0;
                        sgst2_5 += parseFloat((d.taxamt2 || '0').replace(/,/g, '')) || 0;
                        cgst9 += parseFloat((d.taxamt3 || '0').replace(/,/g, '')) || 0;
                        sgst9 += parseFloat((d.taxamt4 || '0').replace(/,/g, '')) || 0;
                        ttlTaxAmt += parseFloat((d.etaxamt || '0').replace(/,/g, '')) || 0;
                        roundoff += parseFloat((d.roundoff || '0').replace(/,/g, '')) || 0;
                        discamt += parseFloat((d.discamt || '0').replace(/,/g, '')) || 0;
                        total += parseFloat((d.netAmt || '0').replace(/,/g, '')) || 0;
                    });

                    var fmt = {
                        minimumFractionDigits: 2,
                        maximumFractionDigits: 2
                    };
                    $('#taxamount').html(taxamount.toLocaleString(undefined, fmt));
                    $('#nontaxamount').html(nontaxamount.toLocaleString(undefined, fmt));
                    $('#sale2_1').html(sale2_1.toLocaleString(undefined, fmt));
                    $('#sale9_2').html(sale9_2.toLocaleString(undefined, fmt));
                    $('#cgst2_5').html(cgst2_5.toLocaleString(undefined, fmt));
                    $('#sgst2_5').html(sgst2_5.toLocaleString(undefined, fmt));
                    $('#cgst9').html(cgst9.toLocaleString(undefined, fmt));
                    $('#sgst9').html(sgst9.toLocaleString(undefined, fmt));
                    $('#ttlTaxAmt').html(ttlTaxAmt.toLocaleString(undefined, fmt));
                    $('#roundoff').html(roundoff.toLocaleString(undefined, fmt));
                    $('#discamt').html(discamt.toLocaleString(undefined, fmt));
                    $('#total').html(total.toLocaleString(undefined, fmt));
                }
            });

        $('#fetchbutton').on('click', function() {
            table.ajax.reload();
        });
        });

        // Taxes button — fetch available tax codes
        $(document).on('click', '#taxnamebtn', function() {
            let divbus = $('#taxesnames');
            let fromdate = $('#fromdate').val();
            let todate = $('#todate').val();
            divbus.html('');
            safeShowLoader();

            let xhr = new XMLHttpRequest();
            xhr.open('POST', '/getAlltaxCodes', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) {
                    safeHideLoader();
                    if (xhr.status === 200) {
                        let results = JSON.parse(xhr.responseText);
                        if (results.length < 1) {
                            divbus.addClass('none');
                            if (typeof pushNotify === 'function') pushNotify('error', 'No data found');
                        } else {
                            divbus.removeClass('none');
                            let html =
                                `<ul id="taxnameul">
                                <li class="movableli">Taxes
                                    <button style="top:2px;" class="btn btn-sm btn-danger" id="closeBtn">
                                        <i class="fa-regular fa-circle-xmark"></i>
                                    </button>
                                </li>
                                <li><input class="menucheckbox" id="allcheckbox" checked value="All" type="checkbox"> All</li>`;
                            results.forEach(function(item) {
                                html += `<li data-id="${item.rev_code}">
                                    <input class="menucheckbox" checked value="${item.rev_code}" type="checkbox">
                                    ${item.name}
                                </li>`;
                            });
                            html += '</ul>';
                            divbus.html(html);

                            // Initialize selectedTaxes from full list
                            selectedTaxes = results.map(r => r.rev_code);
                        }
                    } else {
                        if (typeof pushNotify === 'function') pushNotify('error', 'Error fetching tax names');
                    }
                }
            };
            xhr.send(`fromdate=${fromdate}&todate=${todate}&_token={{ csrf_token() }}`);
        });

        // Close taxes dropdown
        $(document).on('click', '#closeBtn', function() {
            $('#taxesnames').addClass('none').html('');
        });

        // Draggable taxes dropdown
        let offsetX, offsetY, isDragging = false;
        $(document).on('mousedown', '.movableli', function(e) {
            isDragging = true;
            offsetX = e.clientX - $('#taxesnames').offset().left;
            offsetY = e.clientY - $('#taxesnames').offset().top;
        });
        $(document).on('mouseup', function() {
            isDragging = false;
        });
        $(document).on('mousemove', function(e) {
            if (isDragging) {
                $('#taxesnames').css({
                    left: e.clientX - offsetX,
                    top: e.clientY - offsetY
                });
            }
        });

        // "All" checkbox — check/uncheck all
        $(document).on('change', '#allcheckbox', function() {
            let checked = $(this).prop('checked');
            $('.menucheckbox').prop('checked', checked);
            // Rebuild selectedTaxes directly without triggering per-item change
            selectedTaxes = [];
            if (checked) {
                $('.menucheckbox').each(function() {
                    let val = $(this).val();
                    if (val !== 'All') selectedTaxes.push(val);
                });
            }
            if (table) {
                safeShowLoader();
                table.ajax.reload(function() {
                    safeHideLoader();
                });
            }
        });

        // Individual checkbox change
        $(document).on('change', '.menucheckbox', function() {
            if ($(this).val() === 'All') return; // handled above

            // Rebuild selectedTaxes from all checked non-All boxes
            selectedTaxes = [];
            $('.menucheckbox').each(function() {
                let val = $(this).val();
                if (val !== 'All' && $(this).prop('checked')) selectedTaxes.push(val);
            });

            // Sync the "All" checkbox state
            let total = $('.menucheckbox').not('[value="All"]').length;
            let checked = selectedTaxes.length;
            $('#allcheckbox').prop('checked', total === checked);

            if (table) {
                safeShowLoader();
                table.ajax.reload(function() {
                    safeHideLoader();
                });
            }
        });
    </script>
@endsection
