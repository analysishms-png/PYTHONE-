function calcper(amount, percentage) {
    return ((amount * percentage) / 100).toFixed(2);
}

function calculateamt() {
    setTimeout(() => {
        index = 1;
        let ncs = 0;
        let nss = 0;
        let iss = 0;
        let tbodyLength = $('#itemtable tbody tr').length;
        let totalamount = 0;
        let taxableamt = 0;
        let fixtaxableamt;
        $('#taxableamt').val('0.00');
        let discountinput = parseFloat($('#discountfix').val()) || 0.00;
        for (let i = 1; i <= tbodyLength; i++) {
            let itemrate = parseFloat($('#amount' + i).val()) ?? 0.00;
            if (isNaN(itemrate)) {
                console.error("Item rate is NaN for input field #" + i);
                continue;
            }
            let taxeditemrate = parseFloat($('#amount' + i).val());
            let newitemrate = (itemrate - (itemrate * discountinput) / 100);
            taxeditemrate = newitemrate.toFixed(2);
            $(`#discamt${i}`).val(taxeditemrate);
            itemrate = Math.floor(itemrate * 100) / 100;
            totalamount += parseFloat(itemrate);
            let trate = $('#taxrate' + i).val();
            let ttaxcodetmp = $('#taxcode' + i).val() ?? '';
            let cgst = '';
            let sgst = '';
            let igsp = '';

            ttaxcodetmp.split(',').forEach(taxcode => {
                if (taxcode.startsWith('CGST') || taxcode.startsWith('CGSP')) {
                    cgst = taxcode;
                } else if (taxcode.startsWith('SGST') || taxcode.startsWith('SGSP')) {
                    sgst = taxcode;
                } else if (taxcode.startsWith('IGST') || taxcode.startsWith('IGSP')) {
                    igsp = taxcode;
                }
            });

            let newtaxvalue = calcper(taxeditemrate, trate);
            $(`#taxamt${i}`).val(newtaxvalue);
            taxableamt += itemrate;
            let fixtaxval = newtaxvalue / 2;
            if (cgst.startsWith('CGSP')) {
                ncs += parseFloat(fixtaxval);
            }

            if (sgst.startsWith('SGSP')) {
                nss += parseFloat(fixtaxval);
            }

            if (igsp.startsWith('IGSP')) {
                iss += parseFloat(fixtaxval);
            }

            if ($('#cgstamount')) {
                $('#cgstamount').val(ncs.toFixed(2));
            }
            if ($('#sgstamount')) {
                $('#sgstamount').val(nss.toFixed(2));
            }
            if ($('#igstamount')) {
                $('#igstamount').val(iss.toFixed(2));
            }
            index++;
        }
        fixtaxableamt = taxableamt.toFixed(2);
        $('#taxableamt').val(fixtaxableamt);
        let totalqty = sumofamounts('.qtyisss') || 0.00;
        let totalrate = sumofamounts('.rates') || 0.00;
        let totalamounts = sumofamounts('.amounts') || 0.00;
        let discountper = parseFloat($('#discountfix').val()) || 0.00;
        let additionamount = parseFloat($('#additionamount').val()) || 0.00;
        let deductionamount = parseFloat($('#deductionamount').val()) || 0.00;
        let cgstamount = parseFloat($('#cgstamount').val()) || 0.00;
        let sgstamount = parseFloat($('#sgstamount').val()) || 0.00;
        let taxsum = cgstamount + sgstamount;
        $('#totalamount').val(totalamounts.toFixed(2));
        let discamount = (totalamounts * discountper) / 100 || 0.00;
        $('#discountsundry').val(discamount.toFixed(2));
        let netamount = (totalamounts + additionamount + taxsum) - (discamount + deductionamount) || 0.00;
        let integervalue = Math.ceil(netamount) || 0.00;
        let decimalvalue = integervalue - netamount || 0.00;
        $('#roundoffamount').val(decimalvalue.toFixed(2));
        $('#netamount').val(integervalue.toFixed(2));
    }, 200);
}