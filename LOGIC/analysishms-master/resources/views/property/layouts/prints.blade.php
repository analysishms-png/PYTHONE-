<input type="hidden" value="{{ $printdata['billno'] }}" name="vnoup" id="vnoup">
<input type="hidden" value="{{ $printdata['vdate'] }}" name="vdatesale1" id="vdatesale1">
<input type="hidden" value="{{ $printdata['vtype'] }}" name="vtype" id="vtype">
<input type="hidden" value="{{ $printdata['docid'] }}" name="sale1docid" id="sale1docid">
<input type="hidden" value="{{ $printdata['addeddocid'] }}" name="addeddocid" id="addeddocid">
<input type="hidden" value="{{ $printdata['waiter'] }}" name="waiter" id="waiter">
<input type="hidden" value="{{ $printdata['departname'] }}" name="departname" id="departname">
<input type="hidden" value="{{ $printdata['departnature'] }}" name="departnature" id="departnature">
<input type="hidden" value="{{ $printdata['kotno'] }}" name="kotno" id="kotno">
<input type="hidden" value="{{ $printdata['roomno'] }}" name="roomno" id="roomno">
<input type="hidden" value="{{ $printdata['outletcode'] }}" name="outletcode" id="outletcode">
<input type="hidden" value="{{ $page }}" name="page" id="page">
<input type="hidden" value="{{ $printdata['printsetup']->description }}" name="printdescription" id="printdescription">


{{-- secound set of hidden inputs for merged bill --}}

<input type="hidden" value="{{ $printdata['billno2'] }}" name="vnoup2" id="vnoup2">
<input type="hidden" value="{{ $printdata['vdate2'] }}" name="vdatesale2" id="vdatesale2">
<input type="hidden" value="{{ $printdata['vtype2'] }}" name="vtype2" id="vtype2">
<input type="hidden" value="{{ $printdata['docid2'] }}" name="sale2docid" id="sale2docid">
<input type="hidden" value="{{ $printdata['addeddocid2'] }}" name="addeddocid2" id="addeddocid2">
<input type="hidden" value="{{ $printdata['waiter2'] }}" name="waiter2" id="waiter2">
<input type="hidden" value="{{ $printdata['departname2'] }}" name="departname2" id="departname2">
<input type="hidden" value="{{ $printdata['departnature2'] }}" name="departnature2" id="departnature2">
<input type="hidden" value="{{ $printdata['kotno2'] }}" name="kotno2" id="kotno2">
<input type="hidden" value="{{ $printdata['roomno2'] }}" name="roomno2" id="roomno2">
<input type="hidden" value="{{ $printdata['outletcode2'] }}" name="outletcode2" id="outletcode2">

{{-- Total Amout --}}
<input type="hidden" value="{{ $printdata['totalAmt'] }}" name="totalamount" id="totalamount">
<input type="hidden" value="{{ $printdata['invoiceStatus'] }}" name="invoiceStatus" id="invoiceStatus">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {
        let vnoup = $('#vnoup').val();
        let vdatesale1 = $('#vdatesale1').val();
        let vtype = $('#vtype').val();
        let departname = $('#departname').val();
        let kotno = $('#kotno').val();
        let waiter = $('#waiter').val();
        let outletcode = $('#outletcode').val();
        let departnature = $('#departnature').val();
        let sale1docid = $('#sale1docid').val();
        let addeddocid = $('#addeddocid').val();
        let roomno = $('#roomno').val();


        //////////////  Secound Bill Details ///////////////

        let vnoup2 = $('#vnoup2').val();
        let vdatesale2 = $('#vdatesale2').val();
        let vtype2 = $('#vtype2').val();
        let waiter2 = $('#waiter2').val();
        let departname2 = $('#departname2').val();
        let kotno2 = $('#kotno2').val();
        let outletcode2 = $('#outletcode2').val();
        let departnature2 = $('#departnature2').val();
        let sale2docid = $('#sale2docid').val();
        let addeddocid2 = $('#addeddocid2').val();
        let roomno2 = $('#roomno2').val();

        ////////////// Total Amount /////////////////

        let totalamount = $('#totalamount').val();
        totalamount = parseFloat(totalamount).toFixed(2);

        let totalamountStatus = $('#invoiceStatus').val();

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            }
        });

        let filetoopen;
        if ($('#printdescription').val() == 'Bill Windows Plain Paper 1') {
            filetoopen = 'salebillprint';
            let openfile = window.open(filetoopen, '_blank');
            openfile.onload = function() {
                $(openfile.document).ready(function() {
                    $('#roomno', openfile.document).text(roomno);
                    $('#vdate', openfile.document).text(vdatesale1);
                    $('#billno', openfile.document).text(vnoup);
                    $('#vtype', openfile.document).text(vtype);
                    $('#departname', openfile.document).text(departname);
                    $('#kotno', openfile.document).text(kotno);
                    $('#waiter', openfile.document).text(waiter);
                    $('#outletcode', openfile.document).text(outletcode);
                    $('#departnature', openfile.document).text(departnature);
                    $('#addeddocid', openfile.document).text(addeddocid);
                    $('#sale1docid', openfile.document).text(sale1docid);
                });
            };
            setTimeout(() => {
                window.location.href = `${$('#page').val()}?dcode=${outletcode}&roomno=${$('#roomno').val()}`;
            }, 2000);
        } else if ($('#printdescription').val() == 'Bill Windows Plain Paper 2') {
            filetoopen = 'salebillprinttype2';
            let openfile = window.open(filetoopen, '_blank');
            openfile.onload = function() {
                $(openfile.document).ready(function() {
                    $('#roomno', openfile.document).text(roomno);
                    $('#vdate', openfile.document).text(vdatesale1);
                    $('#billno', openfile.document).text(vnoup);
                    $('#vtype', openfile.document).text(vtype);
                    $('#departname', openfile.document).text(departname);
                    $('#kotno', openfile.document).text(kotno);
                    $('#waiter', openfile.document).text(waiter);
                    $('#outletcode', openfile.document).text(outletcode);
                    $('#departnature', openfile.document).text(departnature);
                    $('#addeddocid', openfile.document).text(addeddocid);
                    $('#sale1docid', openfile.document).text(sale1docid);
                });
            };
            setTimeout(() => {
                window.location.href = `${$('#page').val()}?dcode=${outletcode}&roomno=${$('#roomno').val()}`;
            }, 2000);
        } else if ($('#printdescription').val() == '3 Inch Running Paper Windows Print 1') {
            filetoopen = 'salebillprint2';

            let openfile1 = window.open(filetoopen, '_blank');
            openfile1.onload = function() {
                setTimeout(() => {
                    $('#roomno', openfile1.document).text(roomno);
                    $('#vdate', openfile1.document).text(vdatesale1);
                    $('#billno', openfile1.document).text(vnoup);
                    $('#vtype', openfile1.document).text(vtype);
                    $('#departname', openfile1.document).text(departname);
                    $('#kotno', openfile1.document).text(kotno);
                    $('#waiter', openfile1.document).text(waiter);
                    $('#outletcode', openfile1.document).text(outletcode);
                    $('#departnature', openfile1.document).text(departnature);
                    $('#addeddocid', openfile1.document).text(addeddocid);
                    $('#sale1docid', openfile1.document).text(sale1docid);
                    $('#totalamount', openfile1.document).text(totalamount);
                    $('#totalamountStatus', openfile1.document).text(totalamountStatus);
                }, 2000);

            };

            if (outletcode2 != null && outletcode2 !== '') {
                // 👉 2️⃣ After delay (5–9 seconds), open another print tab
                // setTimeout(() => {
                let openfile2 = window.open(filetoopen, '_blank');
                openfile2.onload = function() {
                    $('#roomno', openfile2.document).text(roomno2);
                    $('#vdate', openfile2.document).text(vdatesale2);
                    $('#billno', openfile2.document).text(vnoup2);
                    $('#vtype', openfile2.document).text(vtype2);
                    $('#departname', openfile2.document).text(departname2);
                    $('#kotno', openfile2.document).text(kotno2);
                    $('#waiter', openfile2.document).text(waiter2);
                    $('#outletcode', openfile2.document).text(outletcode2);
                    $('#departnature', openfile2.document).text(departnature2);
                    $('#addeddocid', openfile2.document).text(addeddocid2);
                    $('#sale2docid', openfile2.document).text(sale2docid);

                    $('#totalamount', openfile2.document).text(totalamount);
                    $('#totalamountStatus', openfile2.document).text(totalamountStatus);
                };
                // }, 4000); // delay 7 seconds (you can adjust between 5000–9000)
            }
            setTimeout(() => {
                window.location.href = `${$('#page').val()}?dcode=${outletcode}&roomno=${$('#roomno').val()}`;
            }, 8000);
        } else if ($('#printdescription').val() == '3 Inch Running Paper Windows Print 2') {
            filetoopen = 'salebillprint2type2';

            let openfile1 = window.open(filetoopen, '_blank');
            openfile1.onload = function() {
                setTimeout(() => {
                    $('#roomno', openfile1.document).text(roomno);
                    $('#vdate', openfile1.document).text(vdatesale1);
                    $('#billno', openfile1.document).text(vnoup);
                    $('#vtype', openfile1.document).text(vtype);
                    $('#departname', openfile1.document).text(departname);
                    $('#kotno', openfile1.document).text(kotno);
                    $('#waiter', openfile1.document).text(waiter);
                    $('#outletcode', openfile1.document).text(outletcode);
                    $('#departnature', openfile1.document).text(departnature);
                    $('#addeddocid', openfile1.document).text(addeddocid);
                    $('#totalamount', openfile1.document).text(totalamount);
                    $('#totalamountStatus', openfile1.document).text(totalamountStatus);
                }, 2000);

            };

            if (outletcode2 != null && outletcode2 !== '') {
                // 👉 2️⃣ After delay (5–9 seconds), open another print tab
                // setTimeout(() => {
                let openfile2 = window.open(filetoopen, '_blank');
                openfile2.onload = function() {
                    $('#roomno', openfile2.document).text(roomno2);
                    $('#vdate', openfile2.document).text(vdatesale2);
                    $('#billno', openfile2.document).text(vnoup2);
                    $('#vtype', openfile2.document).text(vtype2);
                    $('#departname', openfile2.document).text(departname2);
                    $('#kotno', openfile2.document).text(kotno2);
                    $('#waiter', openfile2.document).text(waiter2);
                    $('#outletcode', openfile2.document).text(outletcode2);
                    $('#departnature', openfile2.document).text(departnature2);
                    $('#addeddocid', openfile2.document).text(addeddocid2);
                    $('#totalamount', openfile2.document).text(totalamount);
                    $('#totalamountStatus', openfile2.document).text(totalamountStatus);
                    $('#sale1docid', openfile2.document).text(sale2docid);
                };
                // }, 4000); // delay 7 seconds (you can adjust between 5000–9000)
            }
            setTimeout(() => {
                window.location.href = `${$('#page').val()}?dcode=${outletcode}&roomno=${$('#roomno').val()}`;
            }, 8000);
        } else if ($('#printdescription').val() == '3 Inch Running Paper DOS Print') {
            $.ajax({
                url: 'salebillprintthermal',
                data: {
                    docid: sale1docid
                },
                method: "POST",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    setTimeout(() => {
                        window.location.href = `${$('#page').val()}?dcode=${outletcode}&roomno=${$('#roomno').val()}`;
                    }, 500);
                },
                error: function(error) {
                    console.log(error);
                }
            })
        }

    });
</script>
