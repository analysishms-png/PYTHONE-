@include('property.salebillprint2css')
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analysis Bill Receipt</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
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
    <div class="receipt">
        <div class="cancel-overlay">
            <div class="cancel-text">Cancelled Cancelled Cancelled</div>
        </div>
        <header>
            <div style="display: flex;justify-content: space-between;">
                <img style="width: 70px; height:fit-content;" src="" id="logo" name="logo" alt="Hotel Logo"
                    style="display: none">
                <div id="addCompany">

                </div>
            </div>
            <p><strong></strong> <span id="address1"></span></p>
            <p><strong></strong> <span id="address2"></span></p>
            <p><strong></strong> <span id="city"></span></p>
            <p><strong>Mob:</strong> <span id="mobile"></span></p>
            <p><strong>Email:</strong> <span id="email"></span></p>
            <p><strong>Website: </strong><span id="website"></span></p>
            <p><strong>GSTIN: </strong><span id="gstin"></span><strong> SAC Code: </strong><span>996332</span></p>
            <p style="display: none;"><strong>FSSAI : </strong><span id="fssai"></span></p>
        </header>
        <div class="line"></div>
        <section class="receipt-details">
            <div class="details-row">
                <p><strong>Bill No:</strong> <span id="billnoshow"></span></p>
                <p><strong><span id="tableorroom"></span>:</strong> <span id="tableroom"></span></p>
            </div>
            <div class="details-row">
                <p><strong>Bill Date:</strong> <span id="fixvdate"></span> <span id="curtime"></span></p>
                <p id="kotno"></p>
            </div>
        </section>
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
        <div id="companydiv">
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
        <div class="line"></div>
        <table id="items" class="table">
            <thead style="border-bottom: 1px dashed;margin: 4px 0 4px 0;">
                <tr>
                    <th>Particulars</th>
                    <th class="right-align">Qty</th>
                    <th class="right-align">Rate</th>
                    <th class="right-align">Amount</th>
                </tr>
            </thead>
            <tbody style="border-bottom: 1px dashed;margin: 4px 0 4px 0;">

            </tbody>
            <tfoot>
            </tfoot>
        </table>

        <div class="cancel-overlay">
            <div class="cancel-text">Cancelled Cancelled Cancelled</div>
        </div>
        <div class="line"></div>
        <div id="grouptaxes" style="margin: 4px 0;" class="d-flex text-center">
            <div class="line"></div>
        </div>
        <footer>
            <p><strong>Steward Name:</strong> <span id="waiter"></span></p>
            <p><strong>Cashier:</strong> <span id="cashier"></span></p>
            <div class="line"></div>
            <h4 id="totalamountStatus"></h4>
            <h3 style="margin-top:-17px;">Grand Total : <span id="totalamount" style="font-weight: bolder;"></span></h3>
            <b id="payments"></b>
            <p>Analysis Software Services - 9161380170</p>
            <p class="bold">Guest Signature: _________________________</p>
            <div id="slogan">

            </div>
            <div id="paymentqrbox" style="display:none; text-align:center; margin-top:10px;">
                <p style="margin-bottom: 6px;">Pay Using UPI</p>
                <p class="bold" id="upi-id"></p>
                <div id="qr-container">
                    <img id="qr-image" src="" class="img-fluid" style="max-width:200px;">
                </div>
            </div>
            <div class="line"></div>
        </footer>
        <button id="printBtn">🖨️ Print</button>
    </div>

</body>

</html>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
    $(document).ready(function() {
        setTimeout(() => {
            let titleHtml = '';
            let outletcompany = '';
            let outeletaddress = '';
            let hasFinalLogo = false;
            let outletProcessed = false;
            let companyProcessed = false;
            var sale1docid = $('#sale1docid').text();

            function applyTitle() {
                if (outletProcessed && companyProcessed) {

                    // Center ONLY if no logo from both sources
                    if (!hasFinalLogo) {
                        titleHtml = `<center>${titleHtml}</center>`;
                    }

                    // Write final title
                    $('#addCompany').html(titleHtml);

                    // Apply margin only when centered
                    if (!hasFinalLogo) {
                        $('#comp_name, #departname').css('margin-left', '80px');
                    }
                }
            }
            var paymentqr = '';
            var divcode = '';
            /* ---------- OUTLET REQUEST ---------- */
            const outletxhr = new XMLHttpRequest();
            outletxhr.open('POST', '/getoutletdetails', true);
            outletxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            outletxhr.onreadystatechange = function() {
                if (outletxhr.readyState === 4 && outletxhr.status === 200) {

                    let r = JSON.parse(outletxhr.responseText);
                    outletcompany = r.companyname;
                    divcode = r.divcode ?? '';
                    outletProcessed = true;
                    let paymentqrdisplay = "{{ posparameter()->paymentqrdisplay }}";
                    if (paymentqrdisplay == 'Y') {
                        $('#upi-id').text(r.paymentqr ? `${r.paymentqr}` : '');
                    }

                    // Build title based on outlet
                    if (r.outlet_title == 'Y') {
                        titleHtml = `<h3 id="departname">${r.name}</h3>`;
                    } else if (r.company_title == 'Y') {
                        titleHtml = `<h2 id="comp_name">${r.companyname}</h2>`;
                    }

                    if (r.fssaicode) {
                        $('#fssai').text(r.fssaicode);
                        $('p:contains("FSSAI")').show();
                    }

                    // If outlet has logo → lock logo + title, DO NOT center later
                    if (r.logo) {
                        hasFinalLogo = true;
                    }
                    outeletaddress = r.companyaddress;
                    $('#email').text(r.email);
                    $('#mobile').text(r.mobile_no);
                    $('#comp_name').text(outletcompany);
                    $('#gstin').text(r.gstin);
                    $('#logo')
                        .attr('src', `storage/admin/property_logo/${r.logo}`)
                        .css('display', r.logo ? 'block' : 'none');

                    $('#slogan').append(`
                            <p>${r.slogan1 ?? ''}</p>
                            <p>${r.slogan2 ?? ''}</p>
                        `);

                    applyTitle();
                }
            };

            outletxhr.send(`dcode=${$('#outletcode').text()}&_token={{ csrf_token() }}`);


            /* ---------- COMPANY REQUEST (Fallback) ---------- */
            const compdetailxhr = new XMLHttpRequest();
            compdetailxhr.open('GET', '/getcompdetail', true);

            compdetailxhr.onreadystatechange = function() {
                if (compdetailxhr.readyState === 4 && compdetailxhr.status === 200) {

                    let r = JSON.parse(compdetailxhr.responseText).comp;
                    companyProcessed = true;

                    // Only override when outlet had NO company assigned
                    if (outletcompany === '') {

                        $('#gstin').text(r.gstin);
                        $('#logo')
                            .attr('src', `storage/admin/property_logo/${r.logo}`)
                            .css('display', r.logo ? 'block' : 'none');

                        titleHtml = `<h2 id="comp_name">${r.comp_name}</h2>`;

                        // If company has logo → mark final logo, DO NOT center
                        if (r.logo) {
                            hasFinalLogo = true;
                        }
                    }

                    // Common address block
                    $('#address1').text(outeletaddress || r.address1);
                    $('#address2').text(r.address2 ?? '');
                    $('#city').text(r.city);
                    $('#state').text(r.state);

                    const existingMobile = ($('#mobile').text() ?? '').trim();
                    const existingEmail = ($('#email').text() ?? '').trim();
                    if (!existingMobile && r.mobile) $('#mobile').text(r.mobile);
                    if (!existingEmail && r.email) $('#email').text(r.email);
                    $('#website').text(r.website);

                    applyTitle();
                }
            };

            compdetailxhr.send();

            let roomno = $('#roomno').text();

            let billno = $('#billno').text();
            let vdate = $('#vdate').text();
            let vtype = $('#vtype').text();
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

                        $('#companyaddress').text(result.address ?? '');
                        if (!result.address) {
                            $('#companyaddressth').css('display', 'none');
                        }

                        $('#compcityname').text(result.compcityname ?? '');
                        if (!result.compcityname) {
                            $('#compcitynameth').css('display', 'none');
                        }
                    } else {
                        $('#companydiv').addClass('none');
                    }
                }
            }
            fetchcompdt.send(`sale1docid=${sale1docid}&vtype=${vtype}&_token={{ csrf_token() }}`);

            $('#fixvdate').text(dmy($('#vdate').text()));
            let str = '';

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

                    let paymentqrdisplay = "{{ posparameter()->paymentqrdisplay }}";
                    if (paymentqrdisplay == 'Y') {
                        $.ajax({
                            url: '/getpaymentqr',
                            type: 'POST',
                            data: {
                                sale1docid: sale1docid,
                                _token: '{{ csrf_token() }}'
                            },
                            xhrFields: {
                                responseType: 'blob'
                            },
                            success: function(response) {
                                let url = URL.createObjectURL(response);
                                $('#qr-image').attr('src', url);
                                $('#paymentqrbox').show();
                            },
                            error: function() {
                                $('#qr-image').attr('src', '');
                                $('#paymentqrbox').hide();
                            }
                        });
                    }

                    $.get("/yearmanage/" + results.sale1.vprefix, function(response) {
                        yearmanage = response;
                        let prefix = vtype;

                        if (divcode != '') {
                            prefix = divcode;
                        }
                        if (departnature.toLowerCase() == 'outlet') {
                            str = `${prefix}/${yearmanage.hf.start}-${parseInt(yearmanage.hf.end)}/${billno}`;
                            billdisplaytext = 'Table';
                            $('#tableroom').text(roomno);
                        } else if (departnature.toLowerCase() == 'room service') {
                            str = `${prefix}/${yearmanage.hf.start}-${parseInt(yearmanage.hf.end)}/${billno}`;
                            billdisplaytext = 'Room';
                            $('#tableroom').text(roomno);
                        }
                        $('#billdisplaytext').text(billdisplaytext);
                        $('#billnoshow').text(str);
                    }, "json");

                    sale1NetAmopunt = results.sale1.netamt;
                    let addeddocid = $('#addeddocid').text();
                    let guestdtxhr = new XMLHttpRequest();
                    guestdtxhr.open('POST', '/guestdtfetch', true);
                    guestdtxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    guestdtxhr.onreadystatechange = function() {
                        if (guestdtxhr.readyState === 4 && guestdtxhr.status === 200) {
                            let results = JSON.parse(guestdtxhr.responseText);
                            let guestdetails = results.guestdetails;

                            // $('#roomnoshow').html(results.roomstring);

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
                    if (results.sale1.delflag == 'Y') {
                        $('.cancel-overlay').css('display', 'flex');
                    }

                    $('#tableorroom').text(results.tbro);

                    $('#curtime').text(results.sale1.vtime);
                    let rows = '';
                    let items = results.items;
                    let taxes = results.taxes;
                    let suntran = results.suntran;
                    let itemwisediscountprint = "{{ posparameter()->itemwisediscountprint }}";
                    items.forEach((data) => {
                        if (parseFloat(data.amt) > 0) {
                            rows += `<tr>
                            <td>${data.itemname} ${itemwisediscountprint === 'Y' && data.discper > 0 ? `(${data.discper}%)` : ''}</td>
                            <td class="right-align">${data.qty}</td>
                            <td class="right-align">${data.rate}</td>
                            <td class="right-align">${data.amt}</td>
                        </tr>`;
                        }
                    });
                    tbody.append(rows);
                    let suntranrow = '';
                    let tfootRows = '';
                    suntran.forEach(d => tfootRows += (+d.amount > 0 || d.sundrynature.toLowerCase() === 'net amount') ? `
                                    <tr ${d.sundrynature.toLowerCase() === 'round off' ? 'style="border-bottom:1px dashed;"' : ''}>
                                        <td colspan="3">${
                                            d.sundrynature.toLowerCase() === 'net amount'
                                                ? 'Net Amount'
                                                : ['discount','service charge'].includes(d.sundrynature.toLowerCase())
                                                    ? `${d.dispname} ${d.baseamount}%`
                                                    : d.sundrynature.toLowerCase() === 'round off'
                                                        ? 'Round Off'
                                                        : d.dispname
                                        }</td>
                                        <td class="right-align" style="font-weight:bold;">
                                            ${d.sundrynature.toLowerCase() === 'net amount' ? sale1NetAmopunt : d.amount}
                                        </td>
                                    </tr>
                                    ${d.sundrynature.toLowerCase() === 'net amount' ? `
                                    <tr>
                                        <td colspan="3">In Words</td>
                                        <td style="font-weight:bold;">${inWords(+sale1NetAmopunt)}</td>
                                    </tr>` : ''}` : '');
                    tfoot.append(tfootRows);
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
        }, 4000);
    });

    function dmy(dateString) {
        var parts = dateString.split('-');
        var newDate = parts[2] + '-' + parts[1] + '-' + parts[0];
        return newDate;
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

    // setTimeout(() => {
    //     //window.print();
    // }, 3000);
    const printBtn = document.getElementById('printBtn');

    // Pehle button hide rahe (CSS se bhi ho raha hai, ye extra safety hai)
    printBtn.style.display = 'none';

    // 3 second baad button show ho
    setTimeout(() => {
        printBtn.style.display = 'inline-block';
    }, 3000);

    // Button click par print chale
    printBtn.addEventListener('click', () => {
        // Pehle button hide karo (print se pehle)
        printBtn.style.display = 'none';

        // Thoda delay dekar print open karo
        setTimeout(() => {
            window.print();

            // Print cancel karne par ya complete hone par button wapas show ho
            setTimeout(() => {
                printBtn.style.display = 'inline-block';
            }, 1000);
        }, 200);
    });
</script>
