function wantprint() {
    let checkbox = $('#printreceipt');
    let charge = $('#charge').val();

    var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
    var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

    function inWords(num) {
        if ((num = num.toString()).length > 9) return 'overflow';
        n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
        if (!n) return; var str = '';
        str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
        str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
        str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
        str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
        str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
        return str;
    }

    if (checkbox.prop('checked') && charge != '') {
        let compname = $('#compname').val();
        let address = $('#address').val();
        let name = $('#name').val();
        let mob = $('#compmob').val();
        let email = $('#email').val();
        let roomno = $('#rooomoccroomno').val();
        let nature = $('#nature').val();
        let u_name = $('#u_name').val();
        let logo = 'storage/admin/property_logo/' + $('#logo').val();
        let filetoprint = 'roomsettleprint';
        let curdate = new Date().toLocaleDateString('en-IN', { day: '2-digit', month: '2-digit', year: 'numeric' });
        let tbody = $('#chargeadded tbody');
        let rows = tbody.find('tr');
        let hiddenValues = [];
        rows.each(function (index) {
            let rowData = {};
            let sno = $(this).find('input[name^="sno"]').val();
            let chargetype = $(this).find('input[name^="chargetype"]').val();
            let amtrow = $(this).find('input[name^="amtrow"]').val();
            let fixamt = parseFloat(amtrow);
            fixamt = Math.round(fixamt);
            let textamount = inWords(Math.abs(fixamt));
            rowData['sno'] = sno;
            rowData['chargetype'] = chargetype;
            rowData['amtrow'] = amtrow;
            hiddenValues.push(rowData);
            let newWindow = window.open(filetoprint, '_blank');
            newWindow.onload = function () {
                $('#compname', newWindow.document).text(compname);
                $('#address', newWindow.document).text(address);
                $('#name', newWindow.document).text(name);
                $('#phone', newWindow.document).text(mob);
                $('#email', newWindow.document).text(email);
                $('#roomno', newWindow.document).text(roomno);
                $('#amount', newWindow.document).text(fixamt);
                $('#textamount', newWindow.document).text(textamount);
                $('#curdate', newWindow.document).text(curdate);
                $('#nature', newWindow.document).text(chargetype);
                $('#u_name', newWindow.document).text(u_name);
                $('#complogo', newWindow.document).attr('src', logo);
                $('#compname2', newWindow.document).text(compname);
                $('#address2', newWindow.document).text(address);
                $('#name2', newWindow.document).text(name);
                $('#phone2', newWindow.document).text(mob);
                $('#email2', newWindow.document).text(email);
                $('#roomno2', newWindow.document).text(roomno);
                $('#amount2', newWindow.document).text(fixamt);
                $('#textamount2', newWindow.document).text(textamount);
                $('#curdate2', newWindow.document).text(curdate);
                $('#nature2', newWindow.document).text(chargetype);
                $('#u_name2', newWindow.document).text(u_name);
                $('#complogo2', newWindow.document).attr('src', logo);
            };
        });
    }
}