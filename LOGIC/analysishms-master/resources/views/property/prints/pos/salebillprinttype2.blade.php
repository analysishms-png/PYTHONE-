<!DOCTYPE html>
<html>

<head>
    <title>Analysis Bill Receipt</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <style>
        body {
            font-size: small;
        }

        p {
            margin: 0rem;
        }

        .row {
            display: flex;
            justify-content: space-evenly;
        }

        .col-md-6 {
            max-width: 50%;
        }

        .d-contents {
            display: contents;
        }

        .d-flex {
            display: flex;
        }

        .justify-space-between {
            justify-content: space-between;
        }

        .justify-content-center {
            justify-content: center;
        }

        .bold {
            font-weight: 700;
        }

        .text-center {
            text-align: center;
        }

        .none {
            display: none;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        #customerdetail th,
        #companydetails th {
            text-align: left;
        }

        #customerdetail tr,
        #companydetails tr {
            border-bottom: 1px solid #2d2d2d;
        }

        #customerdetail td,
        #companydetails td {
            text-align: left;
        }

        .m-0 {
            margin: 0;
        }

        .nowrap {
            white-space: nowrap;
        }

        .border-b1 {
            border-bottom: 1px solid;
        }

        .col100 {
            width: 100%;
        }

        .mt-3 {
            margin-top: 3rem;
        }

        .table tr {
            /* border: 1px solid; */
        }

        .table th {
            border: 1px solid;
        }

        .table td {
            border-left: 1px solid;
            text-align: justify;
            border-right: 1px solid;
        }

        .table tr:last-child {
            border-bottom: 1px solid;
        }

        .text-end {
            text-align: end;
        }

        .mer8em {
            margin-left: 8em;
        }

        @media print {
            @page {
                margin: 0;
                size: landscape;
            }

            .mer8em {
                margin-left: 8em !important;
            }

            body,
            html {
                margin: 8px 0 0 0 !important;
                padding: 0 !important;
                width: 100% !important;
                font-size: small;
            }

            * {
                margin: 0 !important;
                padding: 0 !important;
            }
        }

        .cancel-animation {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
            display: none;
            z-index: 99;
        }

        .cancel-text {
            position: absolute;
            font-size: 48px;
            color: rgba(255, 0, 0, 0.7);
            white-space: nowrap;
            transform: rotate(-45deg);
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            transition: all 0.3s ease;
            opacity: 0.4;
        }
    </style>
</head>



<body>
    <p class="none" id="roomno"></p>
    <p class="none" id="billno"></p>
    <p class="none" id="vdate"></p>
    <p class="none" id="vtype"></p>
    <p class="none" id="outletcode"></p>
    <p class="none" id="departnature"></p>
    <p class="none" id="addeddocid"></p>
    <p class="none" id="sale1docid"></p>
    <div class="cancel-animation" id="cancelAnimation"></div>
    <div id="fullpage" class="row">
        <div id="maindiv" class="col-md-6">
            <div class="row border-b1" style="position: relative;">
                <div class="col100">
                    <p class="bold mt-3" id="departname"></p>
                    <h2 class="d-contents" id="comp_name"></h2>
                    <p><b id="address1"></b> <b id="city"> </b> <b id="state"></b> <b id="pincode"></b></p>
                    <p><strong>Ph: </strong><span id="mobile"></span></p>
                    <p><strong>E-mail: </strong><span id="email"></span> <strong>Visit Us: </strong><span id="website"></span></p>
                    <div class="d-flex nowrap">
                        @if (fomparameter()->printfoodsaccode == 'Y')
                            <p><strong>SAC Code: </strong> <span id="sascode">996332</span></p>
                        @endif
                        <p class="bold mer8em">TAX Invoice</p>
                    </div>
                    <p><strong>GSTIN: </strong><span id="gstin"></span></p>
                    <p style="display: none;"><strong>FSSAI : </strong><span id="fssai"></span></p>
                    <p id="irnnumber" style="font-size: 9px; margin-top: 3px; display: none;"></p>
                </div>
                <div style="position: absolute; top: 10px; right: 20px; text-align: center;">
                    <img style="width: 7vh;" id="logo" src="" alt="">
                    <div id="einvoiceqr" style="text-align: center; margin-top: 5px;">
                        <img id="qrcodeimage" style="height: 55px; display: none;" alt="QR Code E Invoice">
                    </div>
                </div>
            </div>
            <div id="customerdiv">
                <h3 class="text-center m-0">Customer Details</h3>
                <table id="customerdetail">
                    <tr id="guestnameth">
                        <th>Customer Name: </th>
                        <td id="guestname"></td>
                    </tr>
                    <tr id="guestaddth">
                        <th>Customer Address: </th>
                        <td id="guestadd"></td>
                    </tr>
                    <tr id="guestmobileth">
                        <th>Customer Mobile: </th>
                        <td id="guestmobile"></td>
                    </tr>
                    <tr id="guestcityth">
                        <th>Customer City: </th>
                        <td id="guestcity"></td>
                    </tr>
                </table>
            </div>
            <div id="compddiv">
                <h3 class="text-center m-0">Company Details</h3>
                <table id="companydetails">
                    <tr id="guestcompanyth">
                        <th>Company Name: </th>
                        <td id="guestcompany"></td>
                    </tr>
                    <tr id="companygstth">
                        <th>Company GSTIN: </th>
                        <td id="companygst"></td>
                    </tr>
                    <tr id="companyaddressth">
                        <th>Company Address: </th>
                        <td id="companyaddress"></td>
                    </tr>
                    <tr id="compstatenameth">
                        <th>Company State: </th>
                        <td id="compstatename"></td>
                    </tr>
                    <tr id="compstatecodeth">
                        <th>Company State Code: </th>
                        <td id="compstatecode"></td>
                    </tr>
                    <tr id="compcitynameth">
                        <th>Company City: </th>
                        <td id="compcityname"></td>
                    </tr>
                </table>
            </div>
            <div class="d-flex justify-space-between">
                <p><strong>Bill No. : </strong><span id="billnoshow"></span></p>
                <p><strong>Date: </strong><span id="fixvdate"></span></p>
                <p><strong>Time: </strong><span id="curtime"></span></p>
            </div>
            <div class="d-flex justify-space-between">
                <p><strong><span id="tableorroom"></span>: </strong><span id="tableroom"></span></p>
                <p><span id="kotno"></span></p>
                <p><strong>Waiter:</strong> <span id="waiter"></span></p>
            </div>
            <div class="d-flex justify-space-between">
                <p id="roomnoshow"></p>
            </div>
            <table id="items" class="table">
                <thead>
                    <tr>
                        <th>Sno.</th>
                        <th>Item Name</th>
                        <th>HSN Code</th>
                        <th>Qty.</th>
                        <th>Rate</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
                <tfoot>

                </tfoot>
            </table>
            <div id="totals"></div>
            <div id="grouptaxes" class="d-flex text-center">
            </div>
            <p class="text-end">Cashier: <span id="cashier"></span></p>
            <p class="bold">Guest Signature: _________________________</p>
            <div id="slogan">

            </div>
            <b id="payments"></b>
            <p>Analysis Software Services - 9161380170</p>
        </div>
        <div id="clonediv" class="col-md-6">

        </div>
    </div>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
    $(document).ready(function() {
        setTimeout(() => {
            var divcode;
            let outletcode = $('#outletcode').text();
            var outletcompany = '';
            var outeletaddress = '';
            var sale1docid = $('#sale1docid').text();
            let outletxhr = new XMLHttpRequest();
            outletxhr.open('POST', '/getoutletdetails', true);
            outletxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            outletxhr.onreadystatechange = function() {
                if (outletxhr.readyState === 4 && outletxhr.status === 200) {
                    let results = JSON.parse(outletxhr.responseText);
                    let outlet_title = results.outlet_title;
                    let company_title = results.company_title;
                    divcode = results.divcode ?? '';
                    outletcompany = results.companyname;
                    outeletaddress = results.companyaddress;
                    $('#departname').css('display', outlet_title == 'N' ? 'none' : 'block');
                    $('#comp_name').css('display', company_title == 'N' ? 'none' : 'block');
                    $('#comp_name').text(outletcompany);
                    $('#address1').html(formatAddressWithLineBreak(outeletaddress));
                    $('#gstin').text(results.gstin);
                    if (results.fssaicode) {
                        $('#fssai').text(results.fssaicode);
                        $('p:contains("FSSAI")').show();
                    }
                    $('#logo').attr('src', `storage/admin/property_logo/${results.logo}`);
                    let slogan1 = results.slogan1;
                    let slogan2 = results.slogan2;

                    let slogans = `<p>${slogan1 ?? ''}</p>
                    <p>${slogan2 ?? ''}</p>`;
                    $('#slogan').append(slogans);
                }
            }
            outletxhr.send(`dcode=${outletcode}&_token={{ csrf_token() }}`);
            let compdetailxhr = new XMLHttpRequest();
            compdetailxhr.open('GET', '/getcompdetail', true);
            compdetailxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            compdetailxhr.onreadystatechange = function() {
                if (compdetailxhr.readyState === 4 && compdetailxhr.status === 200) {
                    let results = JSON.parse(compdetailxhr.responseText);
                    results = results.comp;
                    if (outletcompany == '') {
                        $('#comp_name').text(results.comp_name);
                        $('#gstin').text(results.gstin);
                        $('#logo').attr('src', `storage/admin/property_logo/${results.logo}`);
                    }
                    $('#address1').html(formatAddressWithLineBreak(outeletaddress || `${results.address1} ${results.address2 != null ? `, ${results.address2}` : ''}`));
                    $('#city').text(results.city);
                    $('#state').text(results.state);
                    $('#pincode').text(results.pin);
                    $('#mobile').text(results.mobile);
                    $('#email').text(results.email);
                    $('#website').text(results.website);
                }
            }
            compdetailxhr.send();

            let roomno = $('#roomno').text();

            let billno = $('#billno').text();
            let vtype = $('#vtype').text();
            let vdate = $('#vdate').text();
            let departnature = $('#departnature').text();
            let fetchcompdt = new XMLHttpRequest();
            fetchcompdt.open('POST', '/fetchcompdt', true);
            fetchcompdt.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            fetchcompdt.onreadystatechange = function() {
                if (fetchcompdt.readyState === 4 && fetchcompdt.status === 200) {
                    let result = JSON.parse(fetchcompdt.responseText);
                    if (result != null) {
                        $('#guestcompany').text(result.compname ?? '');
                        if (!result.compname) {
                            $('#guestcompanyth').css('display', 'none');
                        }

                        $('#compstatename').text(result.compstatename ?? '');
                        if (!result.compstatename) {
                            $('#compstatename').css('display', 'none');
                            $('#compstatenameth').css('display', 'none');
                        }

                        $('#compstatecode').text(result.compstatecode ?? '');
                        if (!result.compstatecode) {
                            $('#compstatecodeth').css('display', 'none');
                        }

                        $('#companygst').text(result.gstin ?? '');
                        if (!result.gstin) {
                            $('#companygstth').css('display', 'none');
                        }

                        $('#companyaddress').html(formatAddressWithLineBreak(result.address ?? ''));
                        if (!result.address) {
                            $('#companyaddressth').css('display', 'none');
                        }

                        $('#compcityname').text(result.compcityname ?? '');
                        if (!result.compcityname) {
                            $('#compcitynameth').css('display', 'none');
                        }
                    } else {
                        $('#compddiv').addClass('none');
                    }
                }
            }
            fetchcompdt.send(`sale1docid=${sale1docid}&vtype=${vtype}&_token={{ csrf_token() }}`);

            $('#fixvdate').text(dmy($('#vdate').text()));
            let str = '';
            var yearmanage;
            var hrStart = '';
            var hrEnd = ''

            // Fetch Items Row
            let tbody = $('#items tbody');
            tbody.empty();
            let tfoot = $('#items tfoot');
            tfoot.empty();
            let grouptaxesdiv = $('#grouptaxes');
            grouptaxesdiv.empty();
            let itemsxhr = new XMLHttpRequest();
            itemsxhr.open('POST', '/salebillprintitems', true);
            itemsxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            itemsxhr.onreadystatechange = function() {
                if (itemsxhr.readyState === 4 && itemsxhr.status === 200) {
                    let results = JSON.parse(itemsxhr.responseText);
                    if (results.length < 1) {
                        window.location.href = 'company';
                        return;
                    }

                    $('#payments').text(results.paymentsummary ?? '');

                    $.get("/yearmanage/" + results.sale1.vprefix, function(response) {
                        yearmanage = response;
                        let prefix = vtype;

                        if (divcode != '') {
                            prefix = divcode;
                        }

                        if (departnature.toLowerCase() == 'outlet') {
                            str = `${prefix}/${yearmanage.hf.start}-${parseInt(yearmanage.hf.end)}/${billno}`;
                            billdisplaytext = 'Table';

                            hrStart = yearmanage.hf.start;
                            hrEnd = yearmanage.hf.end;
                        } else if (departnature.toLowerCase() == 'room service') {
                            str = `${prefix}/${yearmanage.hf.start}-${parseInt(yearmanage.hf.end)}/${billno}`;
                            billdisplaytext = 'Room'

                            hrStart = yearmanage.hf.start;
                            hrEnd = yearmanage.hf.end;
                        }
                        if (roomno) {
                            $('#tableroom').text(roomno);
                        }
                        $('#billdisplaytext').text(billdisplaytext);
                        $('#billnoshow').text(str);
                    }, "json");

                    sale1docid = results.sale1.docid;

                    // Fetch E-Invoice Data
                    let einvoicexhr = new XMLHttpRequest();
                    einvoicexhr.open('POST', '/fetch-einvoice-data', true);
                    einvoicexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    einvoicexhr.onreadystatechange = function() {
                        if (einvoicexhr.readyState === 4 && einvoicexhr.status === 200) {
                            let einvoicedata = JSON.parse(einvoicexhr.responseText);
                            if (einvoicedata && einvoicedata.status_cd == 1) {
                                let qrcodeimage = einvoicedata.qrcodeimage;
                                let irn = einvoicedata.irn;
                                if (qrcodeimage) {
                                    $('#qrcodeimage').attr('src', `data:image/png;base64,${qrcodeimage}`).show();
                                }
                                if (irn) {
                                    let formattedIrn = irn.match(/.{1,20}/g).join('<br>');
                                    $('#irnnumber').html(`IRN: ${formattedIrn}`).show();
                                }
                            }
                        }
                    };
                    einvoicexhr.send(`sale1docid=${sale1docid}&_token={{ csrf_token() }}`);

                    let addeddocid = $('#addeddocid').text();

                    let guestdtxhr = new XMLHttpRequest();
                    guestdtxhr.open('POST', '/guestdtfetch', true);
                    guestdtxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    guestdtxhr.onreadystatechange = function() {
                        if (guestdtxhr.readyState === 4 && guestdtxhr.status === 200) {
                            let results = JSON.parse(guestdtxhr.responseText);
                            let guestdetails = results.guestdetails;

                            $('#roomnoshow').html(results.roomstring);

                            if (guestdetails != null) {
                                $('#guestname').text(guestdetails.name ?? '');
                                if (!guestdetails.name) {
                                    $('#guestnameth').css('display', 'none');
                                }

                                let addstr = `${guestdetails.add1}${guestdetails.add2 !== '' ? ', ' + guestdetails.add2 : ''}`;
                                $('#guestadd').text(addstr);
                                if (!guestdetails.add1 && !guestdetails.add2) {
                                    $('#guestaddth').css('display', 'none');
                                }

                                $('#guestmobile').text(guestdetails.guestmobile ?? '');
                                if (!guestdetails.guestmobile) {
                                    $('#guestmobileth').css('display', 'none');
                                }

                                $('#guestcity').text(guestdetails.guestcityname ?? '');
                                if (!guestdetails.guestcityname) {
                                    $('#guestcityth').css('display', 'none');
                                }
                            } else {
                                let fetchguestprof = new XMLHttpRequest();
                                fetchguestprof.open('POST', '/fetchgguestprof', true);
                                fetchguestprof.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                                fetchguestprof.onreadystatechange = function() {
                                    if (fetchguestprof.status === 200 && fetchguestprof.readyState === 4) {
                                        let result = JSON.parse(fetchguestprof.responseText);
                                        if (result.guestprof != null) {
                                            let guestdetails = result.guestprof;
                                            $('#guestname').text(guestdetails.name ?? '');
                                            if (!guestdetails.name) {
                                                $('#guestnameth').css('display', 'none');
                                            }

                                            let addstr = `${guestdetails.add1}${guestdetails.add2 !== '' ? ', ' + guestdetails.add2 : ''}`;
                                            $('#guestadd').text(addstr);
                                            if (!guestdetails.add1 && !guestdetails.add2) {
                                                $('#guestaddth').css('display', 'none');
                                            }

                                            $('#guestmobile').text(guestdetails.mobile_no ?? '');
                                            if (!guestdetails.mobile_no) {
                                                $('#guestmobileth').css('display', 'none');
                                            }

                                            $('#guestcity').text(guestdetails.nameofcity ?? '');
                                            if (!guestdetails.nameofcity) {
                                                $('#guestcityth').css('display', 'none');
                                            }
                                        } else {
                                            $('#customerdiv').addClass('none');
                                        }
                                    }
                                }
                                fetchguestprof.send(`addeddocid=${addeddocid}&sale1docid=${sale1docid}&_token={{ csrf_token() }}`);
                            }
                        }
                    }
                    guestdtxhr.send(`addeddocid=${addeddocid}&sale1docid=${sale1docid}&roomno=${roomno}&_token={{ csrf_token() }}`);
                    console.log('roomno : ' + roomno);
                    console.log('results.tbro : ' + results.tbro);
                    if (roomno != '' && roomno != null && roomno != '.') {
                        $('#tableorroom').text(results.tbro);
                        $('#tableroom').text(roomno);
                    } else {
                        $('#tableorroom').parent().hide();
                    }

                    if (results.sale1.delflag == 'Y') {
                        let animationRunning = false;
                        const animationButton = document.getElementById('animationButton');
                        const cancelAnimation = document.getElementById('cancelAnimation');

                        function createCancelText() {
                            const cancelText = document.createElement('div');
                            cancelText.className = 'cancel-text';
                            cancelText.textContent = 'Cancelled';
                            return cancelText;
                        }

                        function animateCancelText() {
                            const containerWidth = cancelAnimation.offsetWidth;
                            const containerHeight = cancelAnimation.offsetHeight;

                            cancelAnimation.innerHTML = '';
                            for (let i = 0; i < 10; i++) {
                                const text = createCancelText();
                                text.style.left = `${Math.random() * containerWidth}px`;
                                text.style.top = `${Math.random() * containerHeight}px`;
                                text.dataset.speedX = Math.random() * 0.2 - 0.1;
                                text.dataset.speedY = Math.random() * 0.2 - 0.1;
                                cancelAnimation.appendChild(text);
                            }

                            function animate() {
                                if (!animationRunning) return;

                                const texts = cancelAnimation.getElementsByClassName('cancel-text');
                                for (let text of texts) {
                                    let left = parseFloat(text.style.left);
                                    let top = parseFloat(text.style.top);
                                    let speedX = parseFloat(text.dataset.speedX);
                                    let speedY = parseFloat(text.dataset.speedY);

                                    left += speedX;
                                    top += speedY;

                                    // Bounce off the edges
                                    if (left < 0 || left > containerWidth - text.offsetWidth) {
                                        speedX *= -1;
                                        text.dataset.speedX = speedX;
                                    }
                                    if (top < 0 || top > containerHeight - text.offsetHeight) {
                                        speedY *= -1;
                                        text.dataset.speedY = speedY;
                                    }

                                    text.style.left = `${left}px`;
                                    text.style.top = `${top}px`;

                                    // Subtle rotation and scaling
                                    text.style.transform = `rotate(${-45 + Math.sin(Date.now() / 5000) * 5}deg) scale(${0.95 + Math.sin(Date.now() / 3000) * 0.05})`;
                                }

                                requestAnimationFrame(animate);
                            }

                            animate();
                        }

                        if (animationRunning) {
                            animationRunning = false;
                            cancelAnimation.style.display = 'none';
                        } else {
                            animationRunning = true;
                            cancelAnimation.style.display = 'block';
                            animateCancelText();
                        }
                    }


                    $('#curtime').text(results.sale1.vtime);
                    let rows = '';
                    let items = results.items;
                    let taxes = results.taxes;
                    let suntran = results.suntran;
                    let sn = 1;
                    items.forEach((data, index) => {
                        rows += `<tr>
                            <td>${sn}</td>
                            <td>${data.itemname} </br><i>${data.description}</i></td>
                            <td>${data.hsncode}</td>
                            <td>${data.qty}</td>
                            <td>${data.rate}</td>
                            <td>${data.amt}</td>
                        </tr>`;
                        sn++;
                    });
                    tbody.append(rows);
                    let suntranrow = '';
                    let totals = $('#totals');
                    suntranrow = '';
                    suntran.forEach((data, index) => {
                        suntranrow += `
                                <div style="display: flex; width: 100%;">
                                    <p style="flex: 3; font-weight: bold; margin: 0; padding: 5px;">${index === suntran.length - 1 ? inWords(parseFloat(data.amount)) : ''}</p>
                                    <div style="display:${data.amount == 0.00 ? 'none' : 'flex'};flex: 2; justify-content: flex-end; margin: 0; padding: 5px;">
                                        <p style="font-weight: bold; margin: 0;">${data.dispname} <span style="display:${data.dis_print == 'N' ? 'none' : 'inline'}">${data.dispname === 'Discount' ? data.baseamount : ''} :</span></p>
                                    </div>
                                    <p style="display:${data.amount == 0.00 ? 'none' : 'block'};flex: 1; text-align: right; margin: 0; padding: 5px; ${index === 0 || index === suntran.length - 1 ? 'font-weight: bold;' : ''}">${data.amount}</p>
                                </div>`;
                    });

                    totals.html(suntranrow);
                    let taxdata = '';
                    taxes.forEach((data, index) => {
                        taxdata += `<div>
                    <p class="bold">${data.taxname}</p>
                    <p class="bold">${data.taxper}%</p>
                    <p>${data.taxamt}</p>
                    <p>${data.taxableamt}</p>
                </div>`;
                    });
                    grouptaxesdiv.html(taxdata);
                    $('#waiter').text(results.waitername?.name ?? '');
                    $('#cashier').text(results.sale1.u_name);
                }

            }
            itemsxhr.send(`vdate=${vdate}&vtype=${vtype}&billno=${billno}&_token={{ csrf_token() }}`);

        }, 2000);
    });

    $(document).ready(function() {
        setTimeout(() => {
            let maindiv = $('#maindiv').html();
            $('#clonediv').html(maindiv);
        }, 8000);
    });

    function dmy(dateString) {
        var parts = dateString.split('-');
        var newDate = parts[2] + '-' + parts[1] + '-' + parts[0];
        return newDate;
    }

    function formatAddressWithLineBreak(address, maxCharsPerLine = 35) {
        if (!address) {
            return '';
        }

        const words = address.trim().split(/\s+/);
        let lines = [];
        let currentLine = '';

        words.forEach((word) => {
            const nextLine = currentLine ? `${currentLine} ${word}` : word;

            if (nextLine.length > maxCharsPerLine && currentLine) {
                lines.push(currentLine);
                currentLine = word;
            } else {
                currentLine = nextLine;
            }
        });

        if (currentLine) {
            lines.push(currentLine);
        }

        return lines.join('<br>');
    }

    function returnvdata(dcode, fcode) {
        let menuxhr = new XMLHttpRequest();
        menuxhr.open('POST', '/menuxhrsearch', true);
        menuxhr.setRequestHeader('Content-Type', '')
    }

    var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
    var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

    function inWords(num) {
        if ((num = num.toString()).length > 9) return 'overflow';
        n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
        if (!n) return;
        var str = '';
        str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
        str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
        str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
        str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
        str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
        return str.charAt(0).toUpperCase() + str.slice(1);
    }

    setTimeout(() => {
        window.print();
    }, 10000);
</script>
