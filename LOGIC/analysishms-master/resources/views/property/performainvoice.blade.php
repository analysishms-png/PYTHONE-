@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')

    <?php  $docid = isset($_GET['docid']) ? $_GET['docid'] : ''; ?>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="modal fade" id="settlementmodal" tabindex="-1" role="dialog"
                                aria-labelledby="settlementmodalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="settlementmodalLabel">Settlement | <span class="ADA"
                                                    id="partrynamemodal"></span></h5>
                                            <h5 style="right: 3rem;" class="modal-title absolute-element"
                                                id="changeprofilemodalLabel">Deposit No.:
                                                <span class="BANX" id="vnomodal"></span> &nbsp;&nbsp;&nbsp; Deposit Date:
                                                <span class="BANX" id="vdatemd"></span>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <iframe id="settlementiframe" src="" frameborder="0"
                                                style="width: 100%; height: 37em;"></iframe>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form id="banquetbillform" name="banquetbillform" action="{{ url('performainvoicesubmit') }}"
                                method="post">
                                @csrf
                                <input type="hidden" name="bookingdocid" id="bookingdocid">
                                <input type="hidden" name="oldhalldocid" id="oldhalldocid">
                                <input type="hidden" name="totalitem" id="totalitem">
                                <div class="row">
                                    <div class="col-md-12 d-flex align-items-center" style="gap: 20px;">
                                        <p class="mb-0">EST No. <span id="billnospan"></span></p>
                                        <p class="mb-0 d-flex align-items-center nowrap" style="gap: 8px;">
                                            EST Date

                                            {{-- <input type="date" value="{{ ncurdate() }}"
                                                class="form-control form-control-sm" id="booking_date" name="booking_date">
                                            --}}
                                            <input type="date" class="form-control form-control-sm" id="booking_date"
                                                name="booking_date" <?= $readonly ?>>
                                        </p>

                                        <div>
                                            <label for="oldbillno" class="none">Old Bill No.</label>
                                            <select class="form-control select2-multiple" name="oldbillno" id="oldbillno">
                                                <option value="">Old Bill No.</option>
                                                @foreach ($oldBill as $col)
                                                    <option value="{{ $col->docId }}" {{ $col->docId == $docid ? 'selected' : '' }}>{{ $col->vno }} {{ $col->party }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <button id="submitbtn" type="submit" class="btn btn-sm btn-success">Submit</button>
                                        {{-- <button disabled data-toggle="modal" data-target=""
                                            class="btn mt-1 btn-sm btn-success" name="settlement" id="settlement"
                                            type="button">Settlement</button> --}}
                                        <button disabled class="btn mt-1 btn-sm btn-info" name="billprint" id="billprint"
                                            type="button">Print</button>
                                        <button disabled class="btn mt-1 btn-sm btn-danger" name="billdelete"
                                            id="billdelete" type="button">Delete</button>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6 mb-1">
                                                <label for="booking_no">Booking No. <span
                                                        id="booking_no_span"></span></label>
                                                <select class="form-control select2-multiple" name="booking_no"
                                                    id="booking_no">
                                                    <option value="">Select</option>
                                                    @foreach (hallbookbillest() as $item)
                                                        <option value="{{ $item->docid }}">{{ $item->vno }} |
                                                            {{ $item->partyname }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="partyname">Party Name</label>
                                                <input type="text" class="form-control" name="partyname" id="partyname"
                                                    readonly>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="company_name">Company Name</label>
                                                <select class="form-control select2" name="company_name" id="company_name">
                                                    <option value="">Select</option>
                                                    @foreach (companiessubgroup() as $col)
                                                        <option value="{{ $col->sub_code }}">{{ $col->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="totalpax">No. of Paxes</label>
                                                <input type="text" class="form-control" name="totalpax" id="totalpax">
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="paxrate">Pax @ Rate</label>
                                                <input type="text" class="form-control" name="paxrate" id="paxrate">
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="particular">Particular</label>
                                                <input type="text" value="Cooked Food" class="form-control"
                                                    name="particular" id="particular">
                                            </div>
                                            <div class="col-md-6 mb-1">
                                                <label for="remark">Remark</label>
                                                <input type="text" class="form-control" name="remark" id="remark">
                                            </div>
                                            <table class="table table-bordered mt-2" id="venueTable">
                                                <thead>
                                                    <tr>
                                                        <th>Sn</th>
                                                        <th>Venue Name</th>
                                                        <th>From Date</th>
                                                        <th>From Time</th>
                                                        <th>To Date</th>
                                                        <th>To Time</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="venueTbody">
                                                </tbody>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="itemshow">
                                            <div class="addbtn text-end  mb-2">
                                                <button id="additem" type="button" class="btn btn-outline-primary">Add Item
                                                    <i class="fa-solid fa-square-plus"></i></button>
                                            </div>
                                            <table id="itemtable" class="table table-itemshow table-hover">
                                                <thead class="thead-muted">
                                                    <tr>
                                                        <th>Item</th>
                                                        <th>Remark</th>
                                                        <th>Qty</th>
                                                        <th>Rate</th>
                                                        <th>Amount</th>
                                                        <th><i class="fa-solid fa-square-caret-down"></i></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="midsection">
                                            <table id="bottomcalc" class="table">
                                                <thead>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            setTimeout(() => {
                let docidd = $('#oldbillno').val();
                if (docidd) {
                    $('#oldbillno').trigger('change');
                }
            }, 300); // thoda delay
        });
    </script>
    <script>

        $(document).ready(function () {
            var restcode;
            var totalamt;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });
            let serverDate = "{{ ncurdate() }}";
            let bookingDateInput = document.getElementById("booking_date");
            bookingDateInput.value = serverDate;
            bookingDateInput.setAttribute("max", serverDate);
            $(document).on('change', '#booking_no', function () {
                let docid = $(this).val();
                $.ajax({
                    url: `hallbookfetch/${docid}`,
                    method: 'GET',
                    success: function (response) {
                        let hallbook = response.hallbook;
                        let venue = response.venues;
                        let sundrytype = response.sundrytype;
                        let depart = response.depart;
                        restcode = depart.dcode;
                        localStorage.setItem('banqrestcode', restcode);
                        // alert(hallbook.vdate);
                        $('#partyname').val(hallbook.partyname);
                        $('#totalpax').val(hallbook.guaratt);
                        $('#paxrate').val(hallbook.coverrate);
                        $('#remark').val(hallbook.remark);
                        $('#bookingdocid').val(hallbook.docid);
                        $('#company_name').val(hallbook.companycode).change();

                        // $('#booking_date').val(vdate);
                        // $('#booking_date').attr('max', vdate);
                        let paychargeh = response.paychargeh;
                        let advsum = paychargeh.reduce((sum, a) => sum + parseFloat(a.amtcr || 0), 0);
                        $('#venueTbody').empty();
                        $('#venueTable tfoot').empty();


                        console.log('Hall Bill No ' + hallbook.vno);
                        let tr = '';
                        venue.forEach((tdata, index) => {
                            tr += `<tr>
                                                                <td>${tdata.sno}</td>
                                                                <td>
                                                                    <select data-selected="${tdata.venucode}" class="form-control select2-multiple venunames" name="venue_name${tdata.sno}" id="venue_name${tdata.sno}" required>
                                                                        <option value="">Select</option>
                                                                            @foreach (venuemast() as $col)
                                                                                <option value="{{ $col->code }}" ${tdata.venucode == {{ $col->code }} ? 'selected' : ''} >{{ $col->name }}</option>
                                                                            @endforeach
                                                                    </select>
                                                                </td>
                                                                <td><input type="date" value="${tdata.fromdate}" class="form-control" name="from_date${tdata.sno}" id="from_date${tdata.sno}" readonly></td>
                                                                <td><input type="text" value="${tdata.dromtime}" class="form-control timeinput" name="from_time${tdata.sno}" id="from_time${tdata.sno}" readonly></td>
                                                                <td><input type="date" value="${tdata.todate}" class="form-control" name="to_date${tdata.sno}" id="to_date${tdata.sno}" readonly></td>
                                                                <td><input type="text" value="${tdata.totime}" class="form-control timeinput" name="to_time${tdata.sno}" id="to_time${tdata.sno}" readonly></td>
                                                            </tr>`
                        });
                        $('#venueTbody').append(tr);
                        let totalnetamount = 0.00;
                        function renderSundry(depart, sundrytype, prefix) {
                            let html = `<p class="h4 text-danger">${prefix != '' ? depart.name + ' (Extras)' : depart.name}</p>`;
                            sundrytype.forEach((item, index) => {
                                const disp = item.disp_name ? item.disp_name.trim().toLowerCase() : '';
                                const nature = item.nature ? item.nature.trim().toLowerCase() : '';
                                const bold = item.bold === 'Y' ? 'font-weight-bold' : '';
                                const automanual = item.automanual;
                                if (index === 0) {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                                                    <div class="${bold}">${item.disp_name}</div>
                                                                                                    <div id="${prefix}${item.vtype}totalamount"></div>
                                                                                                </div>`;
                                }
                                if (nature === 'discount') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                                                    <div class="d-flex ${bold}">
                                                                                                        <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                                                        <input type="text" value="0.00" class="form-control discountfixm fiveem" name="${prefix}${item.vtype}discountfix" id="${prefix}${item.vtype}discountfix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                                                    </div>
                                                                                                    <div>
                                                                                                        <input type="text" class="form-control discountsundry" name="${prefix}${item.vtype}discountsundry" id="${prefix}${item.vtype}discountsundry" ${automanual == 'A' ? 'readonly' : ''}>
                                                                                                    </div>
                                                                                                </div>`;
                                }
                                if (nature === 'service charge') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                                                    <div class="d-flex ${bold}">
                                                                                                        <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                                                        <input type="text" class="form-control servicechargefix" name="${prefix}${item.vtype}servicechargefix" id="${prefix}${item.vtype}servicechargefix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                                                    </div>
                                                                                                    <div>
                                                                                                        <input type="text" class="form-control servicechargeamount" name="${prefix}${item.vtype}servicechargeamount" id="${prefix}${item.vtype}servicechargeamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                                                    </div>
                                                                                                </div>`;
                                }
                                if (nature === 'cgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                        <div class="d-flex ${bold}">
                                                                            <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                        ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                        </div>
                                                                        <div>
                                                                            <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}cgstrate" id="${prefix}${item.vtype}cgstrate">
                                                                            <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" class="form-control sevenem cgstamount" name="${prefix}${item.vtype}cgstamount" id="${prefix}${item.vtype}cgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                        </div>
                                                                    </div>`;
                                }
                                if (nature === 'sgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                        <div class="d-flex ${bold}">
                                                                            <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                            ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                        </div>
                                                                        <div>
                                                                            <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}sgstrate" id="${prefix}${item.vtype}sgstrate">
                                                                            <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" class="form-control sevenem sgstamount" name="${prefix}${item.vtype}sgstamount" id="${prefix}${item.vtype}sgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                        </div>
                                                                    </div>`;
                                }
                                if (nature === 'sale tax') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                        <div class="d-flex ${bold}">
                                                                            <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                        </div>
                                                                        <div>
                                                                            <input type="text" class="form-control sevenem vatamount" name="${prefix}${item.vtype}vatamount" id="${prefix}${item.vtype}vatamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                        </div>
                                                                    </div>`;
                                }
                                if (nature === 'round off') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                        <div class="d-flex ${bold}">
                                                                            <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                        </div>
                                                                        <div>
                                                                            <input type="text" class="form-control sevenem roundoffamount" name="${prefix}${item.vtype}roundoffamount" id="${prefix}${item.vtype}roundoffamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                        </div>
                                                                    </div>`;
                                }
                                if (nature === 'net amount') {
                                    totalnetamount += parseFloat(item.amount);
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                        <div class="d-flex ${bold}">
                                                                            <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                        </div>
                                                                        <div>
                                                                            <input type="text" class="form-control sevenem netamount" name="${prefix}${item.vtype}netamount" id="${prefix}${item.vtype}netamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                            <input type="hidden" class="form-control totalamount" name="${prefix}${item.vtype}totalamountoutlet" id="${prefix}${item.vtype}totalamountoutlet" value="0.00">
                                                                            <input type="hidden" value="${sundrytype.length}" name="${prefix}${item.vtype}sundrycount" id="${prefix}${item.vtype}sundrycount">
                                                                            <input type="hidden" name="${prefix}${item.vtype}totaltaxable" id="${prefix}${item.vtype}totaltaxable" value="0.00">
                                                                            <input type="hidden" name="${prefix}${item.vtype}totalnontaxable" id="${prefix}${item.vtype}totalnontaxable" value="0.00">
                                                                        </div>
                                                                    </div>`;
                                }
                            });
                            return html;
                        }
                        let tfootHTML = `<tfoot class="bg-gallery salebilltfoot"><tr><td colspan="6"><div class="row">`;
                        tfootHTML += `<div class="col-md-6">` + renderSundry(depart, sundrytype, '') + `</div>`;
                        tfootHTML += `<div class="col-md-6">` + renderSundry(depart, sundrytype, 's') + `</div>`;
                        tfootHTML += `</div></td></tr></tfoot>`;
                        $('#venueTable tfoot').remove();
                        $('#venueTable').append(tfootHTML);
                        $('#bottomcalc thead').empty();
                        let rowsp = `
                                                            <tr>
                                                                <th class="p-2">Total Amount</th>
                                                                <td><input type="text" class="form-control fiveem" name="totalamt" id="totalamt" readonly></td>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-2">Advance</th>
                                                                <td><input type="text" class="form-control fiveem" value="${advsum.toFixed(2)}" name="paidamt" id="paidamt" readonly></td>
                                                            </tr>
                                                            <tr>
                                                                <th class="p-2">Balance</th>
                                                                <td><input type="text" class="form-control fiveem" name="balanceamt" id="balanceamt" readonly></td>
                                                            </tr>`;
                        $('#bottomcalc thead').append(rowsp);
                        calculatetaxes('percent');
                    },
                    error: function (error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Whatsapp Enviro',
                            text: error.responseJSON.message
                        });
                    }
                });
            });
            $(document).on('input', '.discountfixm', function () {
                let value = parseFloat($(this).val().trim()) || 0;
                if (value < 0 || value > 100) {
                    value = 0;
                }
                setTimeout(() => {
                    $(this).val(value.toFixed(2));
                    calculatetaxes('percent');
                }, 500);
            });
            $(document).on('input', '.discountfix', function () {
                let value = parseFloat($(this).val().trim()) || 0;
                if (value < 0 || value > 100) {
                    value = 0;
                }
                setTimeout(() => {
                    $(this).val(value.toFixed(2));
                    calculatetaxes('percent');
                }, 500);
            });
            $(document).on('input', `.discountsundry`, function () {
                calculatetaxes('amount');
            });
            $(document).on('input', '#totalpax, #paxrate', function () {
                calculatetaxes('percent');
            });
            function calculatetaxes(source = 'percent') {
                let totalpax = parseFloat($('#totalpax').val().trim()) || 0;
                let paxrate = parseFloat($('#paxrate').val().trim()) || 0;
                let cgsel = $(`#${restcode}cgstrate`);
                let sgsel = $(`#${restcode}sgstrate`);

                let cgstrate = cgsel.length ? parseFloat((cgsel.val() || "0").trim()) : 0;
                let sgstrate = sgsel.length ? parseFloat((sgsel.val() || "0").trim()) : 0;

                let totalamount = totalpax * paxrate;
                $(`#${restcode}totalamount`).text(totalamount.toFixed(2));
                $(`#${restcode}totalamountoutlet`).val(totalamount.toFixed(2));
                let df = $(`#${restcode}discountfix`);
                let ds = $(`#${restcode}discountsundry`);

                let discountpercent = df.length ? parseFloat((df.val() || "0").trim()) : 0;
                let discountamount = ds.length ? parseFloat((ds.val() || "0").trim()) : 0;

                if (source === 'percent') {
                    discountamount = (totalamount * discountpercent) / 100;
                    $(`#${restcode}discountsundry`).val(discountamount.toFixed(2));
                } else if (source === 'amount') {
                    discountpercent = (totalamount > 0) ? (discountamount / totalamount) * 100 : 0;
                    $(`#${restcode}discountfix`).val(discountpercent.toFixed(2));
                }
                let taxableamount = totalamount - discountamount;
                taxableamount = taxableamount < 0 ? 0 : taxableamount;
                let nontaxable = totalamount - taxableamount;
                nontaxable = nontaxable < 0 ? 0 : nontaxable;
                let cgstamount = parseFloat(((taxableamount * cgstrate) / 100).toFixed(2));
                let sgstamount = parseFloat(((taxableamount * sgstrate) / 100).toFixed(2));
                let netamount = taxableamount + cgstamount + sgstamount;
                $.ajax({
                    url: "{{ url('calculateroundbanquet') }}",
                    method: "POST",
                    data: {
                        amount: netamount,
                        restcode: restcode
                    },
                    success: function (response) {
                        let integervalue = response.billamt || 0.00;
                        let decimalvalue = response.roundoff || 0.00;
                        $(`#${restcode}cgstamount`).val(cgstamount.toFixed(2));
                        $(`#${restcode}sgstamount`).val(sgstamount.toFixed(2));
                        $(`#${restcode}roundoffamount`).val(decimalvalue.toFixed(2));
                        $(`#${restcode}netamount`).val(integervalue.toFixed(2));
                        $(`#${restcode}totaltaxable`).val(taxableamount.toFixed(2));
                        $(`#${restcode}totalnontaxable`).val(nontaxable.toFixed(2));
                        // $('#totalamt').val(integervalue.toFixed(2));
                    },
                    error: function (err) {
                        console.error("Roundoff error:", err);
                    }
                });
                // let rounded = Math.ceil(netamount);
                // let roundoff = +(rounded - netamount).toFixed(2);
                // let net = rounded;
                // Set calculated values
                setfinalamounts();
            }
            $(document).on('focus', '.venunames', function () {
                $(this).attr('data-prev', $(this).val());
            }).on('change', '.venunames', function () {
                $(this).val($(this).attr('data-prev'));
            });
            $(document).on('change', '#booking_date', function () {
                if ($(this).val() < $(this).data('bookingdate')) {
                    $(this).val("{{ ncurdate() }}");
                }
            });
            let vtype = 'IDC';
            var xhrvtype = new XMLHttpRequest();
            xhrvtype.open("POST", "{{ route('getmaxvtype') }}");
            xhrvtype.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhrvtype.onreadystatechange = function () {
                if (xhrvtype.readyState === 4 && xhrvtype.status === 200) {
                    var data = JSON.parse(xhrvtype.responseText);
                    $("#billnospan").text(data);
                }
            };
            xhrvtype.send(`vtype=${vtype}&_token={{ csrf_token() }}`);
            $(document).on('click', '#additem', function () {
                let tbody = $('#itemtable tbody');
                fetch('banquetitems')
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.items.length > 0) {
                            let items = data.items;
                            let rowCount = tbody.find('tr').length;
                            let newIndex = rowCount + 1;
                            $('#totalitem').val(newIndex);
                            let tr = `<tr>
                                                            <td><select class='form-control items' name='item${newIndex}' id='item${newIndex}' required>
                                                                <option value=''>Select Item</option>
                                                                ${items.map(item => `<option data-accode=${item.AcCode} data-strcode='${item.str_code}' data-taxrate='${item.taxrate}' data-taxcode='${item.taxcodes}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                                                            </select>
                                                            <input type='hidden' class='form-control taxrates' name='taxrate${newIndex}' id='taxrate${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input type='hidden' class='form-control taxeamts' name='taxamt${newIndex}' id='taxamt${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input type='hidden' class='form-control taxcodes' name='taxcode${newIndex}' id='taxcode${newIndex}' placeholder='Tax Code' readonly>
                                                            <input type='hidden' class='form-control taxedrates' name='taxedrate${newIndex}' id='taxedrate${newIndex}' placeholder='Tax Code' readonly>
                                                            <input type='hidden' class='form-control taxrate_sums' name='taxrate_sum${newIndex}' id='taxrate_sum${newIndex}' placeholder='Tax Code' readonly>
                                                            </td>
                                                            <td><input readonly name="description${newIndex}" placeholder="Enter" id="description${newIndex}" class="form-control description inone" type="text"></td>
                                                            <td><input value='1' autocomplete="off" type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' placeholder='Item. Qty.'></td>
                                                            <td><input type='text' autocomplete="off" class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                                            <td>
                                                                <input type='text' autocomplete="off" class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount' readonly>
                                                                <input type='hidden' class='form-control discamts' name='discamt${newIndex}' id='discamt${newIndex}' placeholder='Amount'>
                                                            </td>
                                                            <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                        </tr>`;
                            $('#itemtable tbody').append(tr);
                            $('#exmrnodiv').fadeOut(1500);
                            calculatetaxes();
                            $('.billing-container').fadeIn(1500);
                        } else {
                            pushNotify('error', 'Banquet Billing', 'Items Not Found', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'right top');
                            $('#exmrnodiv').fadeIn(1500);
                        }
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });
            });
            $(document).on('click', '.removerow', function () {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();
                $('#itemtable tbody tr').each(function (index) {
                    let adjustedIndex = index + 1;
                    $('#totalitem').val(adjustedIndex);
                    console.log(adjustedIndex)
                    $(this).find('select, input').each(function () {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
                if ($('#itemtable tbody tr').length == 0) {
                    $('#totalitem').val('0');
                }
                wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                calculateamt('percent');
                calculatetaxes('percent');
            });
            // Description input
            $(document).on('click', '.description', function () {
                var inputElement = $(this);
                let currow = inputElement.closest('tr');
                let title = `Enter Description For`;
                var currentValue = inputElement.val();
                Swal.fire({
                    title: title,
                    input: 'text',
                    inputValue: currentValue,
                    inputPlaceholder: 'Enter your value here',
                    showCancelButton: true,
                    showDenyButton: true,
                    confirmButtonText: 'OK',
                    denyButtonText: 'Clear',
                    cancelButtonText: 'Cancel',
                    inputValidator: (value) => {
                        return null;
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        var newValue = result.value;
                        inputElement.val(newValue);
                        inputElement.prop('readonly', true);
                    } else if (result.isDenied) {
                        inputElement.val('');
                        inputElement.prop('readonly', true);
                    }
                });
            });


            $(document).on('change', '#oldbillno', function () {
                let docid = $(this).val();
                $.ajax({
                    url: `performahallsalefetch/${docid}`,
                    method: 'GET',
                    success: function (response) {
                        let hallbook = response.hallbook;
                        let hallsale1 = response.hallsale1;
                        let venue = response.venues;
                        let sundrytype = response.sundrytype;
                        let sundrytype2 = response.sundrytype2;
                        let depart = response.depart;
                        let stockitems = response.stockitems;
                        restcode = depart.dcode;
                        $('#partyname').val(hallsale1.party);
                        $('#totalpax').val(hallsale1.noofpax);
                        $('#paxrate').val(hallsale1.rateperpax);
                        $('#remark').val(hallsale1.remark);
                        $('#booking_date').attr('data-bookingdate', hallbook?.vdate);
                        $('#bookingdocid').val(hallbook?.docid);
                        $('#oldhalldocid').val(hallsale1.docId);
                        $('#particular').val(hallsale1.narration);
                        $('#company_name').val(hallsale1.comp_code).change();
                        let paychargeh = response.paychargeh;
                        let advsum = paychargeh.reduce((sum, a) => sum + parseFloat(a.amtcr || 0), 0);
                        $('#venueTbody').empty();
                        $('#venueTable tfoot').empty();
                        $('#itemtable tbody').empty();
                        $('#itemtable tfoot').empty();
                        $('#banquetbillform').attr('action', "{{ url('performainvoiceupdate') }}");
                        $('#submitbtn').text('Update');
                        $('#booking_no').prop('disabled', true);
                        $("#settlement").prop('disabled', false);
                        $('#billprint').prop('disabled', false);
                        // $('#settlement').attr('data-target', '#settlementmodal');
                        $('#vnomodal').text(hallsale1.vno);
                        $('#vdatemd').text(dmy(hallsale1.vdate));
                        $('#partrynamemodal').text(hallsale1.party);
                        $('#billdelete').prop('disabled', false);

                        $('#booking_no_span').text(hallbook?.vno);

                        let vdate = new Date(hallsale1.vdate).toISOString().split("T")[0];
                        let bookingDateInput = document.getElementById("booking_date");
                        bookingDateInput.value = vdate;
                        bookingDateInput.setAttribute("max", vdate);

                        let tr = '';
                        venue.forEach((tdata, index) => {
                            tr += `<tr>
                                                        <td>${tdata.sno}</td>
                                                        <td>
                                                            <select data-selected="${tdata.venucode}" class="form-control select2-multiple venunames" name="venue_name${tdata.sno}" id="venue_name${tdata.sno}" required>
                                                                <option value="">Select</option>
                                                                    @foreach (venuemast() as $col)
                                                                        <option value="{{ $col->code }}" ${tdata.venucode == {{ $col->code }} ? 'selected' : ''} >{{ $col->name }}</option>
                                                                    @endforeach
                                                            </select>
                                                        </td>
                                                        <td><input type="date" value="${tdata.fromdate}" class="form-control" name="from_date${tdata.sno}" id="from_date${tdata.sno}" readonly></td>
                                                        <td><input type="text" value="${tdata.dromtime}" class="form-control timeinput" name="from_time${tdata.sno}" id="from_time${tdata.sno}" readonly></td>
                                                        <td><input type="date" value="${tdata.todate}" class="form-control" name="to_date${tdata.sno}" id="to_date${tdata.sno}" readonly></td>
                                                        <td><input type="text" value="${tdata.totime}" class="form-control timeinput" name="to_time${tdata.sno}" id="to_time${tdata.sno}" readonly></td>
                                                    </tr>`
                        });
                        $('#venueTbody').append(tr);
                        let totalnetamount = 0.00;
                        function renderSundry(depart, sundrytype, prefix) {
                            let html = `<p class="h4 text-danger">${prefix != '' ? depart.name + ' (Extras)' : depart.name}</p>`;
                            sundrytype.forEach((item, index) => {
                                const disp = item.disp_name ? item.disp_name.trim().toLowerCase() : '';
                                const nature = item.nature ? item.nature.trim().toLowerCase() : '';
                                const bold = item.bold === 'Y' ? 'font-weight-bold' : '';
                                const automanual = item.automanual;
                                if (index === 0) {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="${bold}">${item.disp_name}</div>
                                                                <div id="${prefix}${item.vtype}totalamount">${item.amount}</div>
                                                            </div>`;
                                }
                                if (nature === 'discount') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    <input type="text" value="${item.svalue}" class="form-control discountfix fiveem" name="${prefix}${item.vtype}discountfix" id="${prefix}${item.vtype}discountfix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                                <div>
                                                                    <input type="text" value="${item.amount}" class="form-control discountsundry" name="${prefix}${item.vtype}discountsundry" id="${prefix}${item.vtype}discountsundry" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'service charge') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    <input type="text" class="form-control servicechargefix" name="${prefix}${item.vtype}servicechargefix" id="${prefix}${item.vtype}servicechargefix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control servicechargeamount" name="${prefix}${item.vtype}servicechargeamount" id="${prefix}${item.vtype}servicechargeamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'cgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                </div>
                                                                <div>
                                                                    <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}cgstrate" id="${prefix}${item.vtype}cgstrate">
                                                                    <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" value="${item.amount}" class="form-control sevenem cgstamount" name="${prefix}${item.vtype}cgstamount" id="${prefix}${item.vtype}cgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'sgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                    <div class="d-flex ${bold}">
                                                                        <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                        ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                    </div>
                                                                    <div>
                                                                        <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}sgstrate" id="${prefix}${item.vtype}sgstrate">
                                                                        <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" value="${item.amount}" class="form-control sevenem sgstamount" name="${prefix}${item.vtype}sgstamount" id="${prefix}${item.vtype}sgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                    </div>
                                                                </div>`;
                                }
                                if (nature === 'sale tax') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control sevenem vatamount" name="${prefix}${item.vtype}vatamount" id="${prefix}${item.vtype}vatamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'round off') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" value="${item.amount}" class="form-control sevenem roundoffamount" name="${prefix}${item.vtype}roundoffamount" id="${prefix}${item.vtype}roundoffamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'net amount') {
                                    totalnetamount += parseFloat(item.amount);
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" value="${item.amount}" class="form-control sevenem netamount" name="${prefix}${item.vtype}netamount" id="${prefix}${item.vtype}netamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                    <input type="hidden" class="form-control totalamount" name="${prefix}${item.vtype}totalamountoutlet" id="${prefix}${item.vtype}totalamountoutlet" value="0.00">
                                                                    <input type="hidden" value="${sundrytype.length}" name="${prefix}${item.vtype}sundrycount" id="${prefix}${item.vtype}sundrycount">
                                                                    <input type="hidden" name="${prefix}${item.vtype}totaltaxable" id="${prefix}${item.vtype}totaltaxable" value="0.00">
                                                                    <input type="hidden" name="${prefix}${item.vtype}totalnontaxable" id="${prefix}${item.vtype}totalnontaxable" value="0.00">
                                                                </div>
                                                            </div>`;
                                }
                            });
                            return html;
                        }
                        function renderSundryempty(depart, sundrytype, prefix) {
                            let html = `<p class="h4 text-danger">${prefix != '' ? depart.name + ' (Extras)' : depart.name}</p>`;
                            sundrytype.forEach((item, index) => {
                                const disp = item.disp_name ? item.disp_name.trim().toLowerCase() : '';
                                const nature = item.nature ? item.nature.trim().toLowerCase() : '';
                                const bold = item.bold === 'Y' ? 'font-weight-bold' : '';
                                const automanual = item.automanual;
                                if (index === 0) {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="${bold}">${item.disp_name}</div>
                                                                <div id="${prefix}${item.vtype}totalamount"></div>
                                                            </div>`;
                                }
                                if (nature === 'discount') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    <input type="text" value="0.00" class="form-control discountfixm fiveem" name="${prefix}${item.vtype}discountfix" id="${prefix}${item.vtype}discountfix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control discountsundry" name="${prefix}${item.vtype}discountsundry" id="${prefix}${item.vtype}discountsundry" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'service charge') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    <input type="text" class="form-control servicechargefix" name="${prefix}${item.vtype}servicechargefix" id="${prefix}${item.vtype}servicechargefix" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control servicechargeamount" name="${prefix}${item.vtype}servicechargeamount" id="${prefix}${item.vtype}servicechargeamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'cgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                </div>
                                                                <div>
                                                                    <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}cgstrate" id="${prefix}${item.vtype}cgstrate">
                                                                    <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" class="form-control sevenem cgstamount" name="${prefix}${item.vtype}cgstamount" id="${prefix}${item.vtype}cgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'sgst') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                    ${prefix == '' ? `<input type="text" value="${item.svalue}" class="form-control fiveem" readonly>` : ''}
                                                                </div>
                                                                <div>
                                                                    <input type="hidden" value="${item.svalue}" name="${prefix}${item.vtype}sgstrate" id="${prefix}${item.vtype}sgstrate">
                                                                    <input type="text" data-${prefix}revcode="${prefix}${item.revcode}" class="form-control sevenem sgstamount" name="${prefix}${item.vtype}sgstamount" id="${prefix}${item.vtype}sgstamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'sale tax') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control sevenem vatamount" name="${prefix}${item.vtype}vatamount" id="${prefix}${item.vtype}vatamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'round off') {
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control sevenem roundoffamount" name="${prefix}${item.vtype}roundoffamount" id="${prefix}${item.vtype}roundoffamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                </div>
                                                            </div>`;
                                }
                                if (nature === 'net amount') {
                                    totalnetamount += parseFloat(item.amount);
                                    html += `<div class="d-flex justify-content-between mb-2">
                                                                <div class="d-flex ${bold}">
                                                                    <span class="mt-2 mr-1">${item.disp_name}</span>
                                                                </div>
                                                                <div>
                                                                    <input type="text" class="form-control sevenem netamount" name="${prefix}${item.vtype}netamount" id="${prefix}${item.vtype}netamount" ${automanual == 'A' ? 'readonly' : ''}>
                                                                    <input type="hidden" class="form-control totalamount" name="${prefix}${item.vtype}totalamountoutlet" id="${prefix}${item.vtype}totalamountoutlet" value="0.00">
                                                                    <input type="hidden" value="${sundrytype.length}" name="${prefix}${item.vtype}sundrycount" id="${prefix}${item.vtype}sundrycount">
                                                                    <input type="hidden" name="${prefix}${item.vtype}totaltaxable" id="${prefix}${item.vtype}totaltaxable" value="0.00">
                                                                    <input type="hidden" name="${prefix}${item.vtype}totalnontaxable" id="${prefix}${item.vtype}totalnontaxable" value="0.00">
                                                                </div>
                                                            </div>`;
                                }
                            });
                            return html;
                        }
                        let tfootHTML = `<tfoot class="bg-gallery salebilltfoot"><tr><td colspan="6"><div class="row">`;
                        tfootHTML += `<div class="col-md-6">` + renderSundry(depart, sundrytype, '') + `</div>`;
                        if (sundrytype2.length == 0) {
                            tfootHTML += `<div class="col-md-6">` + renderSundryempty(depart, sundrytype, 's') + `</div>`;
                        } else {
                            tfootHTML += `<div class="col-md-6">` + renderSundry(depart, sundrytype2, 's') + `</div>`;
                        }
                        tfootHTML += `</div></td></tr></tfoot>`;
                        $('#venueTable tfoot').remove();
                        $('#venueTable').append(tfootHTML);
                        $('#bottomcalc thead').empty();
                        if (stockitems.length > 0) {
                            let items = response.items;
                            $('#totalitem').val(stockitems.length);
                            let tr = '';
                            stockitems.forEach((sitems, index) => {
                                let newIndex = index + 1;
                                tr += `<tr>
                                                            <td><select class='form-control items' name='item${newIndex}' id='item${newIndex}' required>
                                                                <option value=''>Select Item</option>
                                                                ${items.map(item => `<option  data-accode="${item.AcCode}"  data-strcode="${item.str_code}"  data-taxrate="${item.taxrate}"  data-taxcode="${item.taxcodes}"  data-convratio="${item.ConvRatio}"  data-unit="${item.Unit}" data-issueunit="${item.IssueUnit}"  data-purchrate="${item.PurchRate}"  data-srate="${sitems.rate}" value="${item.Code}"  ${sitems.item == item.Code ? 'selected' : ''}> ${item.Name} </option> `).join('')}
                                                            </select>
                                                            <input type='hidden' value='${sitems.taxper}' class='form-control taxrates' name='taxrate${newIndex}' id='taxrate${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input type='hidden' class='form-control taxeamts' name='taxamt${newIndex}' id='taxamt${newIndex}' placeholder='Tax Rate' readonly>
                                                            <input type='hidden' class='form-control taxcodes' name='taxcode${newIndex}' id='taxcode${newIndex}' placeholder='Tax Code' readonly>
                                                            <input type='hidden' class='form-control taxedrates' name='taxedrate${newIndex}' id='taxedrate${newIndex}' placeholder='Tax Code' readonly>
                                                            <input type='hidden' class='form-control taxrate_sums' name='taxrate_sum${newIndex}' id='taxrate_sum${newIndex}' placeholder='Tax Code' readonly>
                                                            </td>
                                                            <td><input readonly value="${sitems.remarks}" name="description${newIndex}" placeholder="Enter" id="description${newIndex}" class="form-control description inone" type="text"></td>
                                                            <td><input value='${sitems.qtyiss}' autocomplete="off" type='text' class='form-control qtyisss' name='qtyiss${newIndex}' id='qtyiss${newIndex}' placeholder='Item. Qty.'></td>
                                                            <td><input type='text' value="${sitems.rate}" autocomplete="off" class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                                            <td>
                                                                <input type='text' value="${sitems.amount}" autocomplete="off" class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'>
                                                            </td>
                                                            <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                        </tr>`;
                            })
                            $('#itemtable tbody').append(tr);
                            calculatetaxes();
                            $('.items').trigger('change');
                        }
                        let rowsp = `
                                                    <tr>
                                                        <th class="p-2">Total Amount</th>
                                                        <td><input type="text" class="form-control fiveem" name="totalamt" id="totalamt" readonly></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="p-2">Advance</th>
                                                        <td><input type="text" class="form-control fiveem" value="${advsum.toFixed(2)}" name="paidamt" id="paidamt" readonly></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="p-2">Balance</th>
                                                        <td><input type="text" class="form-control fiveem" name="balanceamt" id="balanceamt" readonly></td>
                                                    </tr>`;
                        $('#bottomcalc thead').append(rowsp);
                        calculatetaxes('percent');
                    },
                    error: function (error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Banquet Billing',
                            text: error.responseJSON.message
                        });
                    }
                });
            });
            $('#settlementmodal').on('show.bs.modal', function (event) {
                var iframe = document.getElementById("settlementiframe");
                let oldhalldocid = $('#oldhalldocid').val();
                iframe.src = `{{ url('hallbillsettle') }}/${oldhalldocid}`;
            });
            $(document).on('click', '#billprint', function () {
                let oldhalldocid = $('#oldhalldocid').val();
                window.open(`{{ url('performainvoiceprint') }}/${oldhalldocid}`)
            });
            $(document).on('change', '.items', async function () {
                let index = $(this).closest('tr').index() + 1;
                let value = $(this).val();
                let taxcode = $(this).find('option:selected').data('taxcode');
                let taxrate = $(this).find('option:selected').data('taxrate');
                let strcode = $(this).find('option:selected').data('strcode');
                let purchrate = $(this).find('option:selected').data('purchrate');
                let srate = $(this).find('option:selected').data('srate');
                let taxratesum = 0;
                if (parseFloat(taxrate) > 0) {
                    taxratesum = taxrate
                        .split(',')
                        .map(Number)
                        .reduce((acc, val) => acc + val, 0);
                }
                $(`#taxrate_sum${index}`).val(taxratesum);
                $(`#taxcode${index}`).val(taxcode);
                $(`#taxrate${index}`).val(taxrate);
                if (typeof srate == 'undefined') {
                    $(`#itemrate${index}`).val(purchrate);
                } else {
                    $(`#itemrate${index}`).val(srate);
                }
                $(`#taxstructure${index}`).val(strcode);
                wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                calculateamt('percent');
            });
            $('#billdelete').on('click', function () {
                let docid = $("#oldhalldocid").val();
                if (!docid) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Banquet Bill Entry',
                        text: 'Unknown Vno'
                    });
                    return;
                }
                Swal.fire({
                    icon: 'info',
                    title: 'Are you sure?',
                    text: 'Delete this bill',
                    showCancelButton: true,
                    confirmButtonText: 'Delete',
                    cancelButtonText: 'Cancel',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        let deletebill = new XMLHttpRequest();
                        deletebill.open('POST', 'deleteperformainvoice', true);
                        deletebill.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                        deletebill.onreadystatechange = function () {
                            if (deletebill.readyState === 4 && deletebill.status === 200) {
                                let results = JSON.parse(deletebill.responseText);
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Banquet Bill Entry',
                                    text: results.message || 'Deleted Successfully'
                                }).then(() => {
                                    location.reload();
                                });
                            }
                        };
                        let token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
                        deletebill.send(`docid=${docid}&_token=${encodeURIComponent(token)}`);
                    }
                });
            });
            const sumofamounts = (selector) => {
                let total = 0;
                $(selector).each(function () {
                    total += parseFloat($(this).val()) || 0.00;
                });
                return total;
            }
            function wtqty(accqty, index, rate) {
                let amount = parseFloat(accqty) * parseFloat(rate) || 0.00;
                $(`#amount${index}`).val(amount.toFixed(2));
                $(`#discamt${index}`).val(amount.toFixed(2));
                $(`#s${localStorage.getItem('banqrestcode')}totalamount`).text(sumofamounts('.amounts'));
            }
            $(document).on('input', `#s${localStorage.getItem('banqrestcode')}discountfix`, function () {
                if ($(this).val() < 0 || isNaN($(this).val()) || $(this).val() > 90) {
                    $(this).val('0.00');
                }
                calculateamt('percent');
            });
            let disctime;
            $(document).on('input', `#s${localStorage.getItem('banqrestcode')}discountsundry`, function () {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                clearTimeout(disctime);
                disctime = setTimeout(() => {
                    let discountamount = parseFloat($(this).val());
                    let amount = sumofamounts('.discamts') || 0.00;
                    let discountPercentage = (discountamount / amount) * 100;
                    $(`#s${localStorage.getItem('banqrestcode')}discountfix`).val(discountPercentage.toFixed(2));
                    setTimeout(() => {
                        calculateamt('amount');
                    }, 1000);
                }, 2000);
            });
            $(document).on('input', '#additionamount', function () {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculateamt('percent');
            });
            $(document).on('input', '.rates', function () {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                calculateamt('percent');
            });
            $(document).on('input', '.qtyisss', function () {
                let index = $(this).closest('tr').index() + 1;
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                setTimeout(() => {
                    if (parseFloat($(this).val()) > parseFloat($(`#fixqty${index}`).val())) {
                        $(this).val('0.00');
                    }
                    wtqty($(`#qtyiss${index}`).val(), index, $(`#itemrate${index}`).val());
                    calculateamt('percent');
                }, 100);
            });
            $(document).on('input', '#deductionamount', function () {
                if ($(this).val() < 0 || isNaN($(this).val())) {
                    $(this).val('0.00');
                }
                calculateamt('percent');
            });
            function calcper(amount, percentage) {
                return ((amount * percentage) / 100).toFixed(2);
            }
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            });
            function calculateamt(source = 'percent') {
                setTimeout(() => {
                    index = 1;
                    let tbodyLength = $('#itemtable tbody tr').length;
                    let totalamount = 0;
                    let taxable = 0;
                    let nontaxable = 0;
                    let discountinput = parseFloat($(`#s${localStorage.getItem('banqrestcode')}discountfix`).val()) || 0.00;
                    let totalTaxAmount = 0;
                    $('input[data-srevcode]').val('0.00');
                    for (let i = 1; i <= tbodyLength; i++) {
                        let itemrate = parseFloat($('#amount' + i).val()) ?? 0.00;
                        if (isNaN(itemrate)) continue;
                        let taxeditemrate = parseFloat($('#amount' + i).val());
                        let newitemrate = (itemrate - (itemrate * discountinput) / 100);
                        taxeditemrate = newitemrate.toFixed(2);
                        $(`#discamt${i}`).val(taxeditemrate);
                        itemrate = Math.floor(itemrate * 100) / 100;
                        totalamount += parseFloat(itemrate);
                        let taxcodes = $('#taxcode' + i).val() ?? '';
                        let taxrates = $('#taxrate' + i).val() ?? '';
                        let trate = parseFloat($(`#taxrate${i}`).val()) || 0;
                        let taxcodesArray = taxcodes.split(',');
                        let taxratesArray = taxrates.split(',');
                        let totalTaxcodes = taxcodesArray.length;
                        let taxMapping = {};
                        for (let j = 0; j < totalTaxcodes; j++) {
                            let taxCode = taxcodesArray[j]?.trim();
                            let taxRate = parseFloat(taxratesArray[j]?.trim() ?? 0);
                            if (taxCode && !isNaN(taxRate)) {
                                taxMapping[taxCode] = taxRate;
                            }
                        }
                        if (trate > 0) {
                            taxable += itemrate;
                            $(`#taxedrate${i}`).val(itemrate);
                        } else {
                            nontaxable += itemrate;
                            $(`#taxedrate${i}`).val('0.00');
                        }
                        for (let taxCode in taxMapping) {
                            let rate = taxMapping[taxCode];
                            let taxAmount = (taxeditemrate * rate) / 100;
                            totalTaxAmount += taxAmount;
                            $(`#taxamt${i}`).val(taxAmount);
                            let input = $(`input[data-srevcode="s${taxCode}"]`);
                            if (input.length) {
                                let existingTax = parseFloat(input.val()) || 0;
                                input.val((existingTax + taxAmount).toFixed(2));
                            }
                        }
                        index++;
                    }
                    let discountpercent = parseFloat($(`#s${localStorage.getItem('banqrestcode')}discountfix`).val().trim()) || 0;
                    let discountamount = parseFloat($(`#s${localStorage.getItem('banqrestcode')}discountsundry`).val().trim()) || 0;
                    $(`#s${localStorage.getItem('banqrestcode')}totaltaxable`).val(taxable);
                    $(`#s${localStorage.getItem('banqrestcode')}totalnontaxable`).val(nontaxable);
                    let totalamounts = sumofamounts('.amounts') || 0.00;
                    $(`#s${localStorage.getItem('banqrestcode')}totalamountoutlet`).val(totalamounts.toFixed(2));
                    let totalAmount = parseFloat($(`#s${localStorage.getItem('banqrestcode')}totalamountoutlet`).val()) || 0;
                    if (source === 'percent') {
                        discountamount = (totalAmount * discountpercent) / 100;
                        $(`#s${localStorage.getItem('banqrestcode')}discountsundry`).val(discountamount.toFixed(2));
                    } else if (source === 'amount') {
                        discountpercent = (totalAmount > 0) ? (discountamount / totalAmount) * 100 : 0;
                        $(`#s${localStorage.getItem('banqrestcode')}discountfix`).val(discountpercent.toFixed(2));
                    }
                    let finalAmount = (totalAmount - discountamount + totalTaxAmount);
                    $.ajax({
                        url: "{{ url('calculateroundbanquet') }}",
                        method: "POST",
                        data: {
                            amount: finalAmount,
                            restcode: localStorage.getItem('banqrestcode')
                        },
                        success: function (response) {
                            let integervalue = response.billamt || 0.00;
                            let decimalvalue = response.roundoff || 0.00;
                            // $('#roundoffamount').val(decimalvalue.toFixed(2));
                            // $('#netamount').val(integervalue.toFixed(2));
                            $(`#s${localStorage.getItem('banqrestcode')}roundoffamount`).val(decimalvalue.toFixed(2));
                            $(`#s${localStorage.getItem('banqrestcode')}netamount`).val(integervalue.toFixed(2));
                        },
                        error: function (err) {
                            console.error("Roundoff error:", err);
                        }
                    });
                    // let integervalue = Math.ceil(finalAmount) || 0.00;
                    // let decimalvalue = integervalue - finalAmount || 0.00;
                    // $(`#s${localStorage.getItem('banqrestcode')}roundoffamount`).val(decimalvalue.toFixed(2));
                    // $(`#s${localStorage.getItem('banqrestcode')}netamount`).val(integervalue.toFixed(2));
                    setfinalamounts();
                }, 200);
            }
            function setfinalamounts() {
                setTimeout(() => {
                    let firstnetamount = parseFloat($(`#${localStorage.getItem('banqrestcode')}netamount`).val()) || 0.00;
                    let secondnetamount = parseFloat($(`#s${localStorage.getItem('banqrestcode')}netamount`).val()) || 0.00;
                    let paid = parseFloat($('#paidamt').val()) || 0;
                    let totalamt = firstnetamount + secondnetamount;
                    let balance = firstnetamount + secondnetamount - paid;
                    $('#totalamt').val(totalamt.toFixed(2));
                    $('#balanceamt').val(balance.toFixed(2));
                }, 1000);
            }
        });
    </script>
@endsection