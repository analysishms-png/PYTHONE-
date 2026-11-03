function calcper(amount, percentage) {
    return ((amount * percentage) / 100).toFixed(2);
}

function calculateamt() {
    setTimeout(() => {
        index = 1;
        let tbodyLength = $('#itemtable tbody tr').length;
        let totalamount = 0;
        let taxableamt = 0;
        let fixtaxableamt;
        $('#taxableamt').val('0.00');
        let discountinput = parseFloat($('#discountfix').val()) || 0.00;
        let totalTaxAmount = 0;
        for (let i = 1; i <= tbodyLength; i++) {
            let itemrate = parseFloat($('#amount' + i).val()) ?? 0.00;
            if (isNaN(itemrate)) {
                continue;
            }
            let taxeditemrate = parseFloat($('#amount' + i).val());
            let newitemrate = (itemrate - (itemrate * discountinput) / 100);
            taxeditemrate = newitemrate.toFixed(2);
            $(`#discamt${i}`).val(taxeditemrate);
            itemrate = Math.floor(itemrate * 100) / 100;
            totalamount += parseFloat(itemrate);

            $('input[data-revcode]').val('0.00');
            let taxcodes = $('#taxcode' + i).val() ?? '';
            let taxrates = $('#taxrate' + i).val() ?? '';

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

            let taxAmounts = {};

            for (let taxCode in taxMapping) {
                let rate = taxMapping[taxCode];
                let taxAmount = (taxeditemrate * rate) / 100;
                taxAmounts[taxCode] = taxAmount;
                totalTaxAmount += taxAmount;
                let input = $('input[data-revcode="' + taxCode + '"]');

                if (input.length) {
                    input.val(taxAmount.toFixed(2));
                }
            }

            index++;
        }

        fixtaxableamt = totalTaxAmount.toFixed(2);
        $('#taxableamt').val(fixtaxableamt);
        let totalamounts = sumofamounts('.amounts') || 0.00;
        let discountper = parseFloat($('#discountfix').val()) || 0.00;
        let additionamount = parseFloat($('#additionamount').val()) || 0.00;
        let deductionamount = parseFloat($('#deductionamount').val()) || 0.00;
        $('#totalamount').val(totalamounts.toFixed(2));
        let discamount = (totalamounts * discountper) / 100 || 0.00;
        $('#discountsundry').val(discamount.toFixed(2));
        let totalAmount = parseFloat($('#totalamount').val()) || 0;
        let finalAmount = (totalAmount + totalTaxAmount + additionamount) - deductionamount;
        let integervalue = Math.ceil(finalAmount) || 0.00;
        let decimalvalue = integervalue - finalAmount || 0.00;
        $('#roundoffamount').val(decimalvalue.toFixed(2));
        $('#netamount').val(integervalue.toFixed(2));
    }, 200);
}
