@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form action="" method="post">
                                <input type="hidden" value="{{ $depdata->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $depdata->name }}" name="departname" id="departname">
                                <input type="hidden" value="{{ $tableno }}" name="tableno" id="tableno">
                                <div class="row p-3">
                                    <div class="col-md-3">
                                        <label for="billno" class="col-form-label">{{ $label }}</label>
                                        <input value="{{ $tableno }}" autocomplete="off" aria-autocomplete="list" placeholder="Enter {{ $label }}..." type="text" class="form-control" name="billno" id="billno">
                                        <ul id="suggestions1" class="list-group suggestions-list mt-1"></ul>
                                    </div>
                                    <div id="details" class="col-md-7">
                                        <div class="head2 d-flex bubble-text stylish-border">
                                            <p id="waitername"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <button onclick="Simongoback()" style="width: -webkit-fill-available;" type="button"
                                            class="btn none ml-1 rhead btn-sm btn-info" name="goback"
                                            id="goback">Go Back</button>
                                    </div>
                                </div>
                            </form>
                            <div class="table-container">
                                <table id="billlookup" class="table table-striped table-hover">
                                    <thead class="thead-muted">
                                        <tr style="border-top: 1px solid #0000000f;">
                                            <th>Sn.</th>
                                            {{-- <th>Item</th> --}}
                                            <th>Item Name</th>
                                            <th>Unit</th>
                                            <th>Qty</th>
                                            <th>Rate</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot class="bg-gallery billlookupfoot">
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ asset('admin/js/anim.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#dcode').val()}`;
        }

        $(document).ready(function() {
            const tableno = $('#tableno').val();
            if (tableno != '') {
                setTimeout(() => {
                    const backbutton = $('#billno').val(tableno).trigger('input');
                    $('#goback').removeClass('none');
                }, 100);
            }
            let billnos = [];
            let dcode = $('#dcode').val();
            let allbillxhrkot = new XMLHttpRequest();
            allbillxhrkot.open('POST', '/allbillxhrkot', true);
            allbillxhrkot.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            allbillxhrkot.onreadystatechange = function() {
                if (allbillxhrkot.status === 200 && allbillxhrkot.readyState === 4) {
                    let results = JSON.parse(allbillxhrkot.responseText);
                    let kots = results.kots;
                    kots.forEach((data) => {
                        billnos.push(data.roomno.toString());
                    });

                    initAutoSuggest('billno', 'suggestions1', billnos);
                    if (results.length == 0 || results == null) {
                        pushNotify('info', 'No Data Found', 'No Data Found');
                        return;
                    }
                }
            }
            allbillxhrkot.send(`dcode=${dcode}&_token={{ csrf_token() }}`);

            let inputTimer;

            let lastAnimationIndex = -1;

            $(document).on('input', '#billno', function() {
                let tbody = $('#billlookup tbody');
                let tfoot = $('#billlookup tfoot');
                tbody.empty();
                tfoot.empty();
                tbody.removeClass('box animate__animated ' + animationClasses.join(' '));
                tfoot.removeClass('box animate__animated ' + animationClasses.join(' '));

                clearTimeout(inputTimer);
                inputTimer = setTimeout(() => {
                    let billno = $(this).val();
                    console.log(billno)
                    let pendingmergexhr = new XMLHttpRequest();
                    pendingmergexhr.open('POST', '/fetchpendingmergekot', true);
                    pendingmergexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    pendingmergexhr.onreadystatechange = function() {
                        if (pendingmergexhr.readyState === 4 && pendingmergexhr.status === 200) {
                            let results = JSON.parse(pendingmergexhr.responseText);
                            let items = results.items;
                            if (items.length < 1) {
                                tbody.empty();
                                tfoot.empty();
                                pushNotify('error', 'Bill Lock Up', `Invalid Bill No. ${billno}`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#waitername').html('');
                                $('#waitername').closest('div').removeClass('br');
                                $('#kottime').html('');
                                $('#sessionmast').html('');
                            } else {
                                let randomIndex;
                                do {
                                    randomIndex = Math.floor(Math.random() * animationClasses.length);
                                } while (randomIndex === lastAnimationIndex);
                                lastAnimationIndex = randomIndex;

                                let chosenAnimation = animationClasses[randomIndex];
                                tbody.addClass('box animate__animated ' + chosenAnimation);
                                tfoot.addClass('box animate__animated ' + chosenAnimation);

                                pushNotify('success', 'Bill Lock Up', items.length + ' Item Found', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                let curtime = curtimesec();
                                $('#waitername').html(`<b>Waiter: </b>${results.waitername ?? ''}`);
                                $('#waitername').closest('div').addClass('br');
                                let tdata = '';
                                let sn = 1;
                                let totalamt = 0.00;
                                items.forEach((data, index) => {
                                    totalamt += parseFloat(data.kotamount);
                                    tdata += `<tr class="openkotentry" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to Open In KOT Entry" data-docid="${data.docid}" data-roomno="${data.roomno}" data-vno="${data.vno}">
                            <td>${sn}</td>
                            <td>${data.itemname}</td>
                            <td>${data.unitname}</td>
                            <td>${data.totalqty}</td>
                            <td>${data.totalrate}</td>
                            <td>${parseFloat(data.kotamount).toFixed(2)}</td>
                            </tr>`;
                                    sn++;
                                });
                                tbody.append(tdata);
                                let tfdata = `<tr>
                                    <td colspan="2"></td>
                                    <td>Total</td>
                        <td colspan="2"></td>
                        <td>${totalamt.toFixed(2)}</td>
                        </tr>`;
                                tfoot.append(tfdata);
                            }
                        }
                    }
                    pendingmergexhr.send(`billno=${billno}&dcode=${dcode}&_token={{ csrf_token() }}`);
                }, 1000);
            });

            $(document).on('click', '.openkotentry', function() {
                let docid = $(this).data('docid');
                let roomno = $(this).data('roomno');
                let vno = $(this).data('vno');
                window.location.href = `/kotentry?dcode=${dcode}&proomno=${roomno}&pvno=${vno}&pdocid=${docid}`;
            });
        });
    </script>
@endsection
