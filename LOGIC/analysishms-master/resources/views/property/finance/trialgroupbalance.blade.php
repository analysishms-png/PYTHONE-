@extends('property.layouts.main')

@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <style>
        h1.report-title {
            text-align: center;
            font-size: 2rem;
            margin: 20px 0;
        }

        .dt-buttons {
            margin-bottom: 10px;
        }

        tfoot tr th {
            background-color: #f8f9fa;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Trial Balance</h5>
                        </div>
                        <div class="card-body">
                            <div class="row justify-content-around">
                                <div class="">
                                    <div class="form-group">
                                        <label for="fromdate" class="col-form-label">From Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date"
                                            class="form-control fromdate" name="fromdate"
                                            id="fromdate">
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <label for="todate" class="col-form-label">To Date <i
                                                class="fa-regular fa-calendar mb-1"></i></label>
                                        <input type="date"
                                            class="form-control todate" name="todate"
                                            id="todate">
                                    </div>
                                </div>
                                <div style="margin-top: 30px;" class="ml-5">
                                    <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">Refresh <i class="fa-solid fa-arrows-rotate"></i></button>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <input type="checkbox" name="openingbalance" id="openingbalance" class="form-check-input" value="openingbalance" checked>
                                        <label for="openingbalance" class="col-form-check">Opening Balance</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <input type="checkbox" name="detaileddata" id="detaileddata" class="form-check-input" value="detaileddata">
                                        <label for="detaileddata" class="col-form-check">Detailed</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <input type="checkbox" class="form-check-input amtreflex" value="debit" checked>
                                        <label for="debitshow" class="col-form-check">Debit Show</label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="form-group">
                                        <input type="checkbox" class="form-check-input amtreflex" value="credit" checked>
                                        <label for="debitshow" class="col-form-check">Credit Show</label>
                                    </div>
                                </div>
                                <div class="">
                                    <button style="width: -webkit-fill-available;" type="button"
                                        class="btn rhead btn-outline-primary" name="propertylistbtn"
                                        id="propertylistbtn">Properties <i class="fa-solid fa-angle-down"></i></button>
                                    <ul class="checkul" id="listedproperty" style="display:none;">
                                        <li> <input type="checkbox" id="checkallproperties">
                                            <span>Select All <span class="tcount">{{ count(myproperties()) }}</span></span>
                                        </li>
                                        <li><input type="text" placeholder="Enter Property Name..." class="form-control propertysearch"></li>
                                        @foreach (myproperties() as $item)
                                            <li data-propertyname="{{ $item->comp_name }}" class="propertynameli">
                                                <input class="propertycheckbox" value="{{ $item->propertyid }}"
                                                    type="checkbox" {{ Auth::user()->propertyid == $item->propertyid ? 'checked' : '' }}>
                                                <span>{{ $item->comp_name }}</span>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <p class="unassigned-room p-1 rounded-left font-weight-bold">From Date <span id="startdate"></span> To <span id="enddate"></span></p>
                            <div class="row mb-3">
                                <div class="col-md-3">
                                    <button id="backbutton" class="btn btn-sm btn-danger">Back</button>
                                    <button id="nextbutton" class="btn btn-sm btn-danger">Next</button>
                                </div>
                                <div class="col-md-3 offset-5">
                                    <span id="companyname" class="text-success font-weight-bold"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="table-responsive">

                                        <table id="main-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>AC Name</th>
                                                    <th class="amountcell" style="display:none;">Amount</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody id="table-body">

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td id="totaldebitmincredit"></td>
                                                    <td class="amountcell text-end" style="display:none;"></td>
                                                    <td class="debitcell text-end" id="total-debit">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div style="display: none;" id="secondtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatem2" id="fromdatem2">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatem2" id="todatem2">
                                            </div>
                                        </div>
                                        <table id="second-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit5">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit5">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="fifthtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate5" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdate5" id="fromdate5">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate5" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todate5" id="todate5">
                                            </div>
                                        </div>
                                        <table id="fifth-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit6">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit6">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="thirdtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatem" id="fromdatem">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatem" id="todatem">
                                            </div>
                                        </div>
                                        <table id="third-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Month</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                    <th>Balance</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="debitcell text-end" id="total-debit2">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit2">0.00</td>
                                                    <td id="total-balance" class="text-end">0.00</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    <div style="display: none;" id="fourthtablediv" class="table-responsive">
                                        <div class="mb-3 d-flex align-items-center flex-wrap gap-2 justify-content-around">
                                            <div class="form-group">
                                                <label for="fromdate" class="col-form-label">From Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control fromdate" name="fromdatemr" id="fromdatemr">
                                            </div>
                                            <div class="form-group">
                                                <label for="todate" class="col-form-label">To Date <i class="fa-regular fa-calendar mb-1"></i></label>
                                                <input type="date" class="form-control todate" name="todatemr" id="todatemr">
                                            </div>
                                        </div>
                                        <table id="fourth-table" class="table table-bordered table-striped table-hover">
                                            <thead class="bg-black">
                                                <tr>
                                                    <th>Date</th>
                                                    <th>Vr. No.</th>
                                                    <th>Name</th>
                                                    <th class="debitcell">Debit</th>
                                                    <th class="creditcell">Credit</th>
                                                    <th>Balance</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                            <tfoot class="bg-light fw-bold">
                                                <tr>
                                                    <td colspan="3">Total</td>
                                                    <td class="debitcell text-end" id="total-debit3">0.00</td>
                                                    <td class="creditcell text-end" id="total-credit3">0.00</td>
                                                    <td id="total-balance" class="text-end">0.00</td>
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
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $('#checkallproperties').change(function() {
                let isChecked = $(this).is(':checked');
                $('.propertycheckbox').prop('checked', isChecked);
            });
            dynamicSearch('.propertysearch', 'propertyname', '.propertynameli');

            toggleList("#propertylistbtn", "#listedproperty");
            checkAllCheckboxes("#checkallproperties", ".propertycheckbox");

            $.ajax({
                url: '/yearmanage',
                method: 'GET',
                success: function(response) {
                    $('#startdate').text(dmy(response.finyearreal.start));
                    $('#enddate').text(dmy(response.mtd.end));
                    $('.fromdate').val(response.finyearreal.start);
                    $('.todate').val(response.mtd.end);
                },
                error: function(xhr) {
                    console.log("Error fetching year:", xhr.responseText);
                }
            });

            $.ajaxSetup({
                headers: {
                    'X_CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            function getOpeningBalanceFlag() {
                return $('#openingbalance').is(':checked') ? 'checked' : 'not checked';
            }

            function removeOpeningBalanceRows(tableSelector) {
                if ($.fn.DataTable && $.fn.DataTable.isDataTable(tableSelector)) {
                    const dt = $(tableSelector).DataTable();
                    dt.rows('.opening-balance-row').remove().draw(false);
                } else {
                    $(`${tableSelector} tbody tr.opening-balance-row`).remove();
                }
            }

            $(document).on('change', '#fromdate, #todate, #openingbalance, #detaileddata', function() {
                showLoader();
                fetchtrialfirst();
            });

            $(document).on('change', '#fromdatem2, #todatem2, .propertycheckbox', function() {
                showLoader();
                fetchsubgrouprows('fromdatem2', 'todatem2');
            });

            $(document).on('change', '#fromdatem, #todatem, .propertycheckbox', function() {
                showLoader();
                fetchTrialData('fromdatem', 'todatem');
            });

            $(document).on('change', '#fromdatemr, #todatemr', function() {
                showLoader();
                fetchdocrodata('fromdatemr', 'todatemr', 1);
            });

            $(document).on('click', '#fetchbutton', function() {
                showLoader();
                fetchtrialfirst();
            });

            function fetchtrialfirst() {
                if ($.fn.DataTable.isDataTable('#main-table')) {
                    $('#main-table').DataTable().destroy();
                }
                $('#startdate').text(dmy($('#fromdate').val()));
                $('#enddate').text(dmy($('#todate').val()));
                $('#companyname').text('');
                $('#main-table tbody').html('');
                $('#total-debit').text('0.00');
                $('#total-credit').text('0.00');

                $('#fromdatem, #fromdatemr').val($('#fromdate').val());
                $('#todatem, #todatemr').val($('#todate').val());

                let openingbalance = getOpeningBalanceFlag();
                let detaileddata = $('#detaileddata').is(':checked') ? 'checked' : 'not checked';

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    url: '{{ route('trialgroupmainquery') }}',
                    type: 'POST',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        'fromdate': $('#fromdate').val(),
                        'todate': $('#todate').val(),
                        'openingbalance': openingbalance,
                        'allproperties': allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);
                        if (response.success === false) {
                            Swal.fire({
                                icon: 'warning',
                                title: 'No Data Found',
                                text: response.message
                            });
                            return;
                        }

                        $('#third-table tbody').empty();
                        $('#thirdtablediv').fadeOut('500');
                        $('#fourth-table tbody').empty();
                        $('#fourthtablediv').fadeOut(500);
                        $('#fifth-table tbody').empty();
                        $('#fifthtablediv').fadeOut(500);

                        let rows = '';
                        let totalDebit = 0;
                        let totalCredit = 0;
                        let maindata = response.mainrows;
                        let subgroupDetails = response.subgroupDetails;
                        let detailedDataChecked = (detaileddata == 'checked');

                        // Group main data by main group name to avoid duplicates
                        let groupedData = {};
                        maindata.forEach(row => {
                            if (!groupedData[row.name]) {
                                groupedData[row.name] = {
                                    name: row.name,
                                    docid: row.docid,
                                    vtype: row.vtype,
                                    vdate: row.vdate,
                                    maingroupcode: row.maingroupcode,
                                    group_code: row.group_code,
                                    balance: 0,
                                    subgroups: []
                                };
                            }
                            groupedData[row.name].balance += parseFloat(row.balance);

                            // Add subgroups for this row
                            let subgroupInfo = subgroupDetails[row.group_code] || [];
                            groupedData[row.name].subgroups.push(...subgroupInfo);
                        });

                        Object.values(groupedData).forEach(row => {
                            let debit = 0;
                            let credit = 0;
                            let bal = parseFloat(row.balance);

                            if (bal < 0) {
                                credit = Math.abs(bal).toFixed(2);
                            } else {
                                debit = bal.toFixed(2);
                            }

                            if (!detailedDataChecked) {
                                totalDebit += parseFloat(debit);
                                totalCredit += parseFloat(credit);

                                rows += `<tr class="clickable-row-main"
                                            data-docid="${row.docid}" 
                                            data-vtype="${row.vtype}" 
                                            data-vdate="${row.vdate}"
                                            data-maingroupcode="${row.maingroupcode}"
                                            data-compname="${row.name}"
                                            data-group_code="${row.group_code}">
                                            <td>${row.name}</td>
                                            <td class="amountcell" style="display:none;"></td>
                                            <td class="text-end debitcell">${debit}</td>
                                            <td class="text-end creditcell">${credit}</td>
                                        </tr>`;
                            } else {
                                // Add main group totals in detailed view
                                totalDebit += parseFloat(debit);
                                totalCredit += parseFloat(credit);

                                let subgroupRows = '';

                                // Sort subgroups alphabetically by name
                                row.subgroups.sort((a, b) => a.name.localeCompare(b.name));

                                row.subgroups.forEach(subgroup => {
                                    let subDebit = 0;
                                    let subCredit = 0;
                                    let subBal = parseFloat(subgroup.balance);
                                    let subAmount = Math.abs(subBal).toFixed(2);
                                    let subDrCr = subBal < 0 ? 'Cr' : 'Dr';

                                    if (subBal < 0) {
                                        subCredit = Math.abs(subBal).toFixed(2);
                                    } else {
                                        subDebit = subBal.toFixed(2);
                                    }
                                    // console.log(subgroup)
                                    subgroupRows += `<tr class="clickable-row"
                                                        data-groupfetch="${subgroup.groupynvalue}"
                                                        data-docid="${subgroup.docid}" 
                                                        data-vtype="${subgroup.vtype}" 
                                                        data-vdate="${subgroup.vdate}"
                                                        data-sub_code="${subgroup.subcode}"
                                                        data-compname="${subgroup.name}"
                                                        data-acgroupcode="${subgroup.acgroupcode}"
                                                        data-group_code="${row.group_code}"
                                                        data-rowyear="${row.year}">
                                                        <td style="padding-left: 30px;">${subgroup.name}</td>
                                                        <td class="text-end amountcell">${subAmount} <small>(${subDrCr})</small></td>
                                                        <td class="text-end debitcell"></td>
                                                        <td class="text-end creditcell"></td>
                                                    </tr>`;
                                });

                                rows += `<tr class="clickable-row-main table-primary"
                                            data-docid="${row.docid}" 
                                            data-vtype="${row.vtype}" 
                                            data-vdate="${row.vdate}"
                                            data-maingroupcode="${row.maingroupcode}"
                                            data-compname="${row.name}"
                                            data-group_code="${row.group_code}">
                                            <td><strong>${row.name}</strong></td>
                                            <td class="amountcell"></td>
                                            <td class="text-end debitcell"><strong>${debit}</strong></td>
                                            <td class="text-end creditcell"><strong>${credit}</strong></td>
                                        </tr>${subgroupRows}`;
                            }
                        });

                        $('#main-table tbody').html(rows);
                        $('#total-debit').text(totalDebit.toFixed(2));
                        $('#total-credit').text(totalCredit.toFixed(2));
                        let ttlamt = totalDebit - totalCredit;
                        $('#totaldebitmincredit').text(`Total: ${Math.abs(ttlamt.toFixed(2))} ${ttlamt < 0 ? 'Cr' : 'Dr'}`);

                        // Show/hide Amount column based on detailed view
                        if (detailedDataChecked) {
                            $('.amountcell').show();
                        } else {
                            $('.amountcell').hide();
                        }

                        // Always initialize DataTable (after destroying it if it exists)
                        let totalbalance = totalDebit - totalCredit;
                        let drcr = totalbalance < 0 ? 'Cr' : 'Dr';
                        totalbalance = `${Math.abs(totalbalance).toFixed(2)} ${drcr}`;

                        $('#main-table').DataTable({
                            dom: 'Bfrtip',
                            ordering: true,
                            order: [],
                            footerCallback: function(row, data, start, end, display) {
                                $(this.api().column(2).footer()).html();
                            },
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: 'Trial Balance',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const headerLines = buildExportHeaderLines();
                                        addExcelHeaderRows(xlsx, headerLines);
                                        const sheet = xlsx.xl.worksheets['sheet1.xml'];
                                        const rows = $('row', sheet);
                                        const lastRow = rows.last();
                                        const totalRowIndex = parseInt(lastRow.attr('r')) + 1;

                                        const debitTotal = totalDebit.toFixed(2);
                                        const creditTotal = totalCredit.toFixed(2);
                                        const netBalance = `${Math.abs(totalDebit - totalCredit).toFixed(2)} ${totalDebit - totalCredit < 0 ? 'Cr' : 'Dr'}`;

                                        const newRowXml = `
                                                        <row r="${totalRowIndex}">
                                                            <c r="A${totalRowIndex}" t="inlineStr"><is><t></t></is></c>
                                                            <c r="B${totalRowIndex}" t="inlineStr"><is><t><b>Total</b></t></is></c>
                                                            <c r="C${totalRowIndex}" t="inlineStr"><is><t>${debitTotal}</t></is></c>
                                                            <c r="D${totalRowIndex}" t="inlineStr"><is><t>${creditTotal}</t></is></c>
                                                            <c r="E${totalRowIndex}" t="inlineStr"><is><t>${netBalance}</t></is></c>
                                                        </row>
                                                    `;

                                        const sheetData = $('sheetData', sheet);
                                        sheetData.append($.parseXML(newRowXml).documentElement);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const headerLines = buildExportHeaderLines();
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });

                                        const tableBody = doc.content.find(c => c.table);
                                        if (tableBody && tableBody.table) {
                                            const colCount = tableBody.table.body[0].length;
                                            tableBody.table.widths = Array(colCount).fill('*');
                                        }

                                        const dateStr = new Date().toLocaleDateString('en-GB');
                                        doc.header = function() {
                                            return {
                                                columns: [{
                                                        text: ''
                                                    },
                                                    {
                                                        text: '',
                                                        alignment: 'center'
                                                    },
                                                    {
                                                        text: `Date: ${dateStr}\nPage No: 1`,
                                                        alignment: 'right',
                                                        margin: [0, 10, 10, 0],
                                                        fontSize: 9
                                                    }
                                                ],
                                                margin: [10, 10, 10, 0]
                                            };
                                        };

                                        doc.footer = function(currentPage, pageCount) {
                                            if (currentPage === pageCount) {
                                                return {
                                                    margin: [10, 0, 10, 20],
                                                    columns: [{
                                                            text: `Net Balance: ₹${totalbalance}`,
                                                            bold: true,
                                                            alignment: 'left'
                                                        },
                                                        {
                                                            text: 'Generated By {{ Auth::user()->name }}',
                                                            alignment: 'right',
                                                            fontSize: 9
                                                        }
                                                    ]
                                                };
                                            }
                                            return {};
                                        };
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: '',
                                    customize: function(win) {
                                        const headerLines = buildExportHeaderLines();
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);

                                        $(win.document.body).append(`
                                                <div style="margin-top:30px;">
                                                    <strong>Total Balance: ₹${totalbalance}</strong><br/>
                                                    <span style="font-size:12px;">Generated by {{ Auth::user()->name }}</span>
                                                </div>
                                            `);

                                        $(win.document.body).find('table')
                                            .addClass('compact')
                                            .css({
                                                'width': '100%',
                                                'font-size': 'inherit'
                                            });
                                    }
                                }
                            ]
                        });

                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON.message
                        });
                    }
                });
            }
            setTimeout(() => {
                $('#fromdate').trigger('change');
            }, 1500);

            var dataTableInitialized2 = false;
            var dataTableInitialized3 = false;

            function fetchTrialData(fromdateId, todateId) {
                const selectedRow = $('.clickable-row.table-success');
                if (!selectedRow.length) return;

                const sub_code = selectedRow.data('sub_code');
                const companyname = selectedRow.data('compname');

                $('#companyname').text(companyname);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                if ($.fn.DataTable.isDataTable('#third-table')) {
                    $('#third-table').DataTable().destroy();
                }
                $.ajax({
                    type: 'POST',
                    url: '{{ route('monthwisetrialfetch') }}',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        sub_code: sub_code,
                        fromdate: $(`#${fromdateId}`).val(),
                        todate: $(`#${todateId}`).val(),
                        allproperties: allproperties,
                        openingbalance: getOpeningBalanceFlag(),
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (response.data.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let tr = '';
                        let totaldebit2 = 0;
                        let totalcredit2 = 0;
                        let openingbalance = parseFloat(response.openingbalance);

                        let amtdr = openingbalance >= 0 ? Math.abs(openingbalance) : 0.00;
                        let amtcr = openingbalance < 0 ? Math.abs(openingbalance) : 0.00;

                        if (amtdr || amtcr) {
                            let openingbal = amtdr ? `${amtdr.toFixed(2)} Dr` : `${amtcr.toFixed(2)} Cr`;
                            tr += `<tr class="opening-balance-row">
                                <td>Opening Balance</td>
                                <td class="text-end debitcell">${amtdr.toFixed(2)}</td>
                                <td class="text-end creditcell">${amtcr.toFixed(2)}</td>
                                <td class="text-end">${openingbal}</td>
                            </tr>`;
                        }

                        let runningBalance = openingbalance;

                        response.data.forEach(row => {
                            let dr = parseFloat(row.totalamtdr) || 0.00;
                            let cr = parseFloat(row.totalamtcr) || 0.00;
                            runningBalance += dr - cr;

                            let balanceLabel = runningBalance > 0 ? `${Math.abs(runningBalance).toFixed(2)} Dr` :
                                runningBalance < 0 ? `${Math.abs(runningBalance).toFixed(2)} Cr` : '0.00';

                            tr += `<tr class="secondtr" 
                                    data-month_number="${row.month_number}" 
                                    data-sub_code="${row.subcode}" 
                                    data-vprefix="${row.vprefix}"
                                    data-rowyear="${row.year}"
                                    >
                                    <td>${row.month_year}</td>
                                    <td class="text-end debitcell">${dr.toFixed(2)}</td>
                                    <td class="text-end creditcell">${cr.toFixed(2)}</td>
                                    <td class="text-end">${balanceLabel}</td>
                                </tr>`;

                            totaldebit2 += dr;
                            totalcredit2 += cr;
                        });

                        let finalBalance = totaldebit2 - totalcredit2;
                        let totalBalanceLabel = finalBalance > 0 ? `${Math.abs(finalBalance).toFixed(2)} Dr` :
                            finalBalance < 0 ? `${Math.abs(finalBalance).toFixed(2)} Cr` : '0.00';

                        $('#third-table tbody').html(tr);
                        if (getOpeningBalanceFlag() !== 'checked') {
                            removeOpeningBalanceRows('#third-table');
                        }
                        $('#total-debit2').text(totaldebit2.toFixed(2));
                        $('#total-credit2').text(totalcredit2.toFixed(2));
                        $('#total-balance').text(totalBalanceLabel);
                        $('#thirdtablediv').hide().removeClass('d-none').fadeIn(300);

                        let totalbalance = totaldebit2 - totalcredit2;
                        let drcr = totalbalance < 0 ? 'Cr' : 'Dr';
                        totalbalance = `${Math.abs(totalbalance).toFixed(2)} ${drcr}`;

                        $('#third-table').DataTable({
                            dom: 'Bfrtip',
                            ordering: true,
                            order: [],
                            footerCallback: function(row, data, start, end, display) {
                                $(this.api().column(2).footer()).html();
                            },
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: 'Trial Balance (Ledger)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines(ledgerTitle);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines(ledgerTitle);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });

                                        const tableBody = doc.content.find(c => c.table);
                                        if (tableBody && tableBody.table) {
                                            const colCount = tableBody.table.body[0].length;
                                            tableBody.table.widths = Array(colCount).fill('*');
                                        }

                                        const dateStr = new Date().toLocaleDateString('en-GB');
                                        doc.header = function() {
                                            return {
                                                columns: [{
                                                        text: ''
                                                    },
                                                    {
                                                        text: '',
                                                        alignment: 'center'
                                                    },
                                                    {
                                                        text: `Date: ${dateStr}\nPage No: 1`,
                                                        alignment: 'right',
                                                        margin: [0, 10, 10, 0],
                                                        fontSize: 9
                                                    }
                                                ],
                                                margin: [10, 10, 10, 0]
                                            };
                                        };

                                        doc.footer = function(currentPage, pageCount) {
                                            if (currentPage === pageCount) {
                                                return {
                                                    margin: [10, 0, 10, 20],
                                                    columns: [{
                                                            text: `Net Balance: ₹${totalbalance}`,
                                                            bold: true,
                                                            alignment: 'left'
                                                        },
                                                        {
                                                            text: 'Generated By {{ Auth::user()->name }}',
                                                            alignment: 'right',
                                                            fontSize: 9
                                                        }
                                                    ]
                                                };
                                            }
                                            return {};
                                        };
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: '',
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const headerLines = buildExportHeaderLines(ledgerTitle);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);

                                        $(win.document.body).append(`
                                                <div style="margin-top:30px;">
                                                    <strong>Total Balance: ₹${totalbalance}</strong><br/>
                                                    <span style="font-size:12px;">Generated by {{ Auth::user()->name }}</span>
                                                </div>
                                            `);

                                        $(win.document.body).find('table')
                                            .addClass('compact')
                                            .css({
                                                'width': '100%',
                                                'font-size': 'inherit'
                                            });
                                    }
                                }
                            ]
                        });

                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON.message
                        });
                    }
                });
            }

            $('#fromdatem, #todatem').on('change', function() {
                fetchTrialData('fromdatem', 'todatem');
            });

            $(document).on('click', '.clickable-row', function() {
                $('.clickable-row').removeClass('table-success');
                $(this).addClass('table-success');
                let groupynvalue = $(this).data('groupfetch');
                let acgroupcode = $(this).data('acgroupcode');
                if (groupynvalue == 0) {
                    fetchTrialData('fromdatem', 'todatem');
                } else {
                    fetchsubdata2('fromdate5', 'todate5', acgroupcode);
                }
            });

            $(document).on('click', '.clickable-row-main', function() {
                $('.clickable-row-main').removeClass('table-success');
                $(this).addClass('table-success');
                fetchsubgrouprows('fromdate', 'todate');
            });


            let dataTableInitialized6 = false;

            function fetchsubdata2(fromdateId, todateId, acgroupcode) {
                // const selectedRow = $('.clickable-row-main.table-success');
                // if (!selectedRow.length) return;
                console.log(acgroupcode)
                // const companyname = selectedRow.data('compname');
                $('#companyname').text(companyname);
                $('#third-table tbody').empty();
                $('#thirdtablediv').fadeOut(500);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                $('#fifth-table tbody').empty();
                $('#fifthtablediv').fadeIn(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('fetchsubgroupdetails2') }}",
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        acgroupcode: acgroupcode,
                        fromdate: $('#fromdate5').val(),
                        todate: $('#todate5').val(),
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (response.success === false || !response.subgroups || response.subgroups.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let totalDebit = 0;
                        let totalCredit = 0;
                        let totalAmount = 0;

                        let rows = '';
                        response.subgroups.forEach(row => {
                            let debit = 0;
                            let credit = 0;
                            let bal = parseFloat(row.balance);
                            let amount = Math.abs(bal).toFixed(2);

                            if (bal < 0) {
                                credit = Math.abs(bal).toFixed(2);
                                totalCredit += Math.abs(bal);
                            } else {
                                debit = bal.toFixed(2);
                                totalDebit += bal;
                            }
                            totalAmount += Math.abs(bal);

                            rows += `<tr class="clickable-row"
                                        data-groupfetch="0"
                                        data-acgroupcode="${row.acgroupcode}"
                                        data-docid="${row.docid}"
                                        data-vtype="${row.vtype}"
                                        data-vdate="${row.vdate}"
                                        data-sub_code="${row.subcode}"
                                        data-compname="${row.name}"
                                        data-rowyear="${row.year}"
                                        >
                                        <td>${row.name}</td>
                                        <td class="text-end debitcell">${debit}</td>
                                        <td class="text-end creditcell">${credit}</td>
                                    </tr>`;
                        });
                        // console.log(totalDebit)

                        $('#fifth-table tbody').html(rows);
                        $('#total-debit6').text(totalDebit.toFixed(2));
                        $('#total-credit6').text(totalCredit.toFixed(2));
                        $('#fifthtablediv').hide().removeClass('d-none').fadeIn(300);

                        if (!dataTableInitialized6) {
                            $('#fifth-table').DataTable({
                                dom: 'Bfrtip',
                                ordering: true,
                                order: [],
                                buttons: [{
                                        extend: 'excelHtml5',
                                        title: 'Trial Balance (Subgroups)',
                                        exportOptions: {
                                            columns: ':visible'
                                        },
                                        customize: function(xlsx) {
                                            const ledgerTitle = getSelectedLedgerName();
                                            const headerLines = buildExportHeaderLines(ledgerTitle);
                                            addExcelHeaderRows(xlsx, headerLines);
                                        }
                                    },
                                    {
                                        extend: 'pdfHtml5',
                                        title: 'Subgroup Details - ' + companyname,
                                        orientation: 'landscape',
                                        pageSize: 'A4',
                                        customize: function(doc) {
                                            const ledgerTitle = getSelectedLedgerName();
                                            const headerLines = buildExportHeaderLines(ledgerTitle);
                                            const headerText = headerLines.map(line => ({
                                                text: `${line}\n`,
                                                bold: line === headerLines[0],
                                                fontSize: line === headerLines[0] ? 14 : 12
                                            }));
                                            doc.content.splice(0, 0, {
                                                margin: [0, 0, 0, 12],
                                                alignment: 'center',
                                                fontSize: 12,
                                                text: headerText
                                            });
                                        }
                                    },
                                    {
                                        extend: 'print',
                                        title: 'Subgroup Details - ' + companyname,
                                        customize: function(win) {
                                            const ledgerTitle = getSelectedLedgerName();
                                            const headerLines = buildExportHeaderLines(ledgerTitle);
                                            const headerHtml = buildExportHeaderHtml(headerLines);
                                            $(win.document.body)
                                                .css('font-size', '12px')
                                                .prepend(headerHtml);
                                        }
                                    }
                                ]
                            });

                            dataTableInitialized6 = true;
                        }
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch subgroup data'
                        });
                    }
                });
            }

            let dataTableInitialized5 = false;

            function fetchsubgrouprows(fromdateId, todateId) {
                const selectedRow = $('.clickable-row-main.table-success');
                if (!selectedRow.length) return;
                const maingroupcode = selectedRow.data('maingroupcode');
                const companyname = selectedRow.data('compname');
                const group_code = selectedRow.data('group_code');
                let fromdate = $(`#${fromdateId}`).val();
                let todate = $(`#${todateId}`).val();
                $('#companyname').text(companyname);
                $('#second-table tbody').empty();
                $('#secondtablediv').fadeOut('500');
                $('#third-table tbody').empty();
                $('#thirdtablediv').fadeOut(500);
                $('#fourth-table tbody').empty();
                $('#fourthtablediv').fadeOut(500);
                $('#fifth-table tbody').empty();
                $('#fifthtablediv').fadeOut(500);
                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('fetchsubgroupdetails') }}",
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        group_code: group_code,
                        maingroupcode: maingroupcode,
                        fromdate: $('#fromdate').val(),
                        todate: todate,
                        openingbalance: getOpeningBalanceFlag(),
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);

                        if (response.success === false || !response.subgroups || response.subgroups.length < 1) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let rows = '';
                        let totalDebit = 0;
                        let totalCredit = 0;
                        let totalAmount = 0;

                        response.subgroups.forEach(row => {
                            let debit = 0;
                            let credit = 0;
                            let bal = parseFloat(row.balance);
                            let amount = Math.abs(bal).toFixed(2);

                            if (bal < 0) {
                                credit = Math.abs(bal).toFixed(2);
                                totalCredit += Math.abs(bal);
                            } else {
                                debit = bal.toFixed(2);
                                totalDebit += bal;
                            }
                            totalAmount += Math.abs(bal);

                            rows += `<tr class="clickable-row"
                                        data-groupfetch=${row.groupynvalue}
                                        data-acgroupcode="${row.acgroupcode}"
                                        data-docid="${row.docid}"
                                        data-vtype="${row.vtype}"
                                        data-vdate="${row.vdate}"
                                        data-sub_code="${row.subcode}"
                                        data-compname="${row.name}"
                                        data-rowyear="${row.year}">
                                        <td>${row.name}</td>
                                        <td class="text-end debitcell">${debit}</td>
                                        <td class="text-end creditcell">${credit}</td>
                                    </tr>`;
                        });

                        $('#second-table tbody').html(rows);
                        $('#total-debit5').text(totalDebit.toFixed(2));
                        $('#total-credit5').text(totalCredit.toFixed(2));
                        $('#secondtablediv').hide().removeClass('d-none').fadeIn(300);

                        if (!dataTableInitialized5) {
                            $('#second-table').DataTable({
                                dom: 'Bfrtip',
                                ordering: true,
                                order: [],
                                buttons: [{
                                        extend: 'excelHtml5',
                                        title: 'Trial Balance (Subgroups)',
                                        exportOptions: {
                                            columns: ':visible'
                                        },
                                        customize: function(xlsx) {
                                            const groupTitle = getSelectedMainGroupName();
                                            const headerLines = buildExportHeaderLines(groupTitle);
                                            addExcelHeaderRows(xlsx, headerLines);
                                        }
                                    },
                                    {
                                        extend: 'pdfHtml5',
                                        title: 'Subgroup Details - ' + companyname,
                                        orientation: 'landscape',
                                        pageSize: 'A4',
                                        customize: function(doc) {
                                            const groupTitle = getSelectedMainGroupName();
                                            const headerLines = buildExportHeaderLines(groupTitle);
                                            const headerText = headerLines.map(line => ({
                                                text: `${line}\n`,
                                                bold: line === headerLines[0],
                                                fontSize: line === headerLines[0] ? 14 : 12
                                            }));
                                            doc.content.splice(0, 0, {
                                                margin: [0, 0, 0, 12],
                                                alignment: 'center',
                                                fontSize: 12,
                                                text: headerText
                                            });
                                        }
                                    },
                                    {
                                        extend: 'print',
                                        title: 'Subgroup Details - ' + companyname,
                                        customize: function(win) {
                                            const groupTitle = getSelectedMainGroupName();
                                            const headerLines = buildExportHeaderLines(groupTitle);
                                            const headerHtml = buildExportHeaderHtml(headerLines);
                                            $(win.document.body)
                                                .css('font-size', '12px')
                                                .prepend(headerHtml);
                                        }
                                    }
                                ]
                            });

                            dataTableInitialized5 = true;
                        }
                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON?.message || 'Failed to fetch subgroup data'
                        });
                    }
                });
            }

            function fetchdocrodata(fromdateId, todateId, condition) {
                const selectedRow = $('.secondtr.table-success');
                if (!selectedRow.length) return;
                let ncurdate = "{{ ncurdate() }}";

                const sub_code = selectedRow.data('sub_code');
                const vprefix = selectedRow.data('vprefix');
                const rowyear = selectedRow.data('rowyear');
                const month_number = selectedRow.data('month_number');

                let fromdate = $(`#${fromdateId}`).val();
                let todate = $(`#${todateId}`).val();
                if (condition != 1) {
                    let day = '01';
                    let month = String(month_number).padStart(2, '0');
                    let formattedDate = `${rowyear}-${month}-${day}`;
                    fromdate = formattedDate;
                    $('#fromdatemr').val(formattedDate);
                    let lastdaymonth = new Date(rowyear, parseInt(month), 0).getDate();
                    let enddateofmonth = `${rowyear}-${month}-${lastdaymonth}`;
                    if (enddateofmonth > ncurdate) {
                        enddateofmonth = ncurdate;
                    }
                    todate = enddateofmonth;
                    $('#todatemr').val(enddateofmonth);
                }

                console.log(condition);

                showLoader();

                let allproperties = $('.propertycheckbox').map(function() {
                    if ($(this).is(':checked')) {
                        return $(this).val();
                    }
                }).get();

                $.ajax({
                    type: 'POST',
                    url: "{{ route('monthrowfetch') }}",
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        sub_code: sub_code,
                        vprefix: vprefix,
                        fromdate: fromdate,
                        todate: todate,
                        month_number: month_number,
                        condition: condition,
                        openingbalance: getOpeningBalanceFlag(),
                        allproperties: allproperties,
                    },
                    success: function(response) {
                        setTimeout(hideLoader, 1000);
                        if (response.data.length < 1 && response.opening_balance === 0) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: 'No Data Found'
                            });
                            return;
                        }

                        let rows = response.data;
                        let openingBalance = parseFloat(response.opening_balance || 0);
                        let totalDebit = 0;
                        let totalCredit = 0;
                        let runningBalance = openingBalance;
                        let tableRows = '';

                        if (openingBalance !== 0) {
                            tableRows += `
                                <tr class="table-warning opening-balance-row">
                                    <td></td>
                                    <td></td>
                                    <td><strong>(Opening Balance)</strong></td>
                                    <td></td>
                                    <td></td>
                                    <td>${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}</td>
                                </tr>
                            `;
                        }

                        rows.forEach(row => {
                            let debit = parseFloat(row.amtdr || 0);
                            let credit = parseFloat(row.amtcr || 0);
                            runningBalance += debit - credit;
                            totalDebit += debit;
                            totalCredit += credit;

                            tableRows += `
                                <tr class="docrow" data-docid="${row.docid}" data-vtype="${row.vtype}">
                                    <td>${dmy(row.vdate)}</td>
                                    <td>${row.docid}</td>
                                    <td>${row.narration || ''}</td>
                                    <td class="debitcell text-end">${debit ? debit.toFixed(2) : ''}</td>
                                    <td class="creditcell text-end">${credit ? credit.toFixed(2) : ''}</td>
                                    <td class="text-end">${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}</td>
                                </tr>
                            `;
                        });

                        if ($.fn.DataTable.isDataTable('#fourth-table')) {
                            $('#fourth-table').DataTable().clear().destroy();
                        }
                        $('#fourth-table tbody').html(tableRows);
                        if (getOpeningBalanceFlag() !== 'checked') {
                            removeOpeningBalanceRows('#fourth-table');
                        }
                        $('#fourthtablediv').fadeIn(500);

                        $('#total-debit3').text(totalDebit.toFixed(2));
                        $('#total-credit3').text(totalCredit.toFixed(2));
                        $('#total-balance').text(`${Math.abs(runningBalance).toFixed(2)} ${runningBalance >= 0 ? 'Dr' : 'Cr'}`);

                        let totalbalance = totalDebit - totalCredit;
                        let drcr = totalbalance < 0 ? 'Cr' : 'Dr';
                        totalbalance = `${Math.abs(totalbalance).toFixed(2)} ${drcr}`;

                        $.fn.dataTable.ext.type.order['date-dd-mm-yyyy-pre'] = function(date) {
                            var parts = date.split('-');
                            return new Date(parts[2], parts[1] - 1, parts[0]).getTime();
                        };

                        $('#fourth-table').DataTable({
                            dom: 'Bfrtip',
                            columnDefs: [{
                                type: 'date-dd-mm-yyyy',
                                targets: 0
                            }],
                            order: [
                                [0, 'asc']
                            ],
                            footerCallback: function(row, data, start, end, display) {
                                $(this.api().column(2).footer()).html();
                            },
                            buttons: [{
                                    extend: 'excelHtml5',
                                    title: '(Ledger)',
                                    exportOptions: {
                                        columns: ':visible'
                                    },
                                    customize: function(xlsx) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        addExcelHeaderRows(xlsx, headerLines);
                                    }
                                },
                                {
                                    extend: 'pdfHtml5',
                                    title: '',
                                    orientation: 'landscape',
                                    pageSize: 'A4',
                                    customize: function(doc) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        const headerText = headerLines.map(line => ({
                                            text: `${line}\n`,
                                            bold: line === headerLines[0],
                                            fontSize: line === headerLines[0] ? 14 : 12
                                        }));
                                        doc.content.splice(0, 0, {
                                            margin: [0, 0, 0, 12],
                                            alignment: 'center',
                                            fontSize: 12,
                                            text: headerText
                                        });

                                        const tableBody = doc.content.find(c => c.table);
                                        if (tableBody && tableBody.table) {
                                            const colCount = tableBody.table.body[0].length;
                                            tableBody.table.widths = Array(colCount).fill('*');
                                        }

                                        const dateStr = new Date().toLocaleDateString('en-GB');
                                        doc.header = function() {
                                            return {
                                                columns: [{
                                                        text: ''
                                                    },
                                                    {
                                                        text: '',
                                                        alignment: 'center'
                                                    },
                                                    {
                                                        text: `Date: ${dateStr}\nPage No: 1`,
                                                        alignment: 'right',
                                                        margin: [0, 10, 10, 0],
                                                        fontSize: 9
                                                    }
                                                ],
                                                margin: [10, 10, 10, 0]
                                            };
                                        };

                                        doc.footer = function(currentPage, pageCount) {
                                            if (currentPage === pageCount) {
                                                return {
                                                    margin: [10, 0, 10, 20],
                                                    columns: [{
                                                            text: `Net Balance: ₹${totalbalance}`,
                                                            bold: true,
                                                            alignment: 'left'
                                                        },
                                                        {
                                                            text: 'Generated By {{ Auth::user()->name }}',
                                                            alignment: 'right',
                                                            fontSize: 9
                                                        }
                                                    ]
                                                };
                                            }
                                            return {};
                                        };
                                    }
                                },
                                {
                                    extend: 'print',
                                    title: '',
                                    customize: function(win) {
                                        const ledgerTitle = getSelectedLedgerName();
                                        const monthTitle = getSelectedMonthName();
                                        const headerLines = buildExportHeaderLines([ledgerTitle, monthTitle]);
                                        const headerHtml = buildExportHeaderHtml(headerLines);
                                        $(win.document.body)
                                            .css('font-size', '12px')
                                            .prepend(headerHtml);

                                        $(win.document.body).append(`
                                                <div style="margin-top:30px;">
                                                    <strong>Total Balance: ₹${totalbalance}</strong><br/>
                                                    <span style="font-size:12px;">Generated by {{ Auth::user()->name }}</span>
                                                </div>
                                            `);

                                        $(win.document.body).find('table')
                                            .addClass('compact')
                                            .css({
                                                'width': '100%',
                                                'font-size': 'inherit'
                                            });
                                    }
                                }
                            ]
                        });

                    },
                    error: function(error) {
                        setTimeout(hideLoader, 1000);
                        console.error('AJAX Error:', error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON.message
                        });
                    }
                });
            }

            $(document).on('click', '.secondtr', function() {
                $('.secondtr').removeClass('table-success');
                $(this).addClass('table-success');
                showLoader();
                fetchdocrodata('fromdatem', 'todatem', 0);
            });

            $(document).on('change', '#fromdatemr, #todatemr', function() {
                showLoader();
                fetchdocrodata('fromdatemr', 'todatemr', 1);
            });

            $(document).on('change', '.amtreflex', function() {
                const debitChecked = $('.amtreflex[value="debit"]').is(':checked');
                const creditChecked = $('.amtreflex[value="credit"]').is(':checked');

                if (debitChecked && creditChecked) {
                    $('.debitcell').fadeIn('500');
                    $('.creditcell').fadeIn('500');
                } else if (debitChecked) {
                    $('.debitcell').fadeIn('500');
                    $('.creditcell').fadeOut('500');
                } else if (creditChecked) {
                    $('.debitcell').fadeOut('500');
                    $('.creditcell').fadeIn('500');
                } else {
                    $('.debitcell').fadeOut('500');
                    $('.creditcell').fadeOut('500');
                }
            });

            $(document).on('click', '#backbutton', function() {
                $('#thirdtablediv').fadeIn('500');
            });

            $(document).on('click', '#nextbutton', function() {
                $('#thirdtablediv').fadeOut('500');
            });

            $(document).on('click', '.excelfirst', function() {
                let table = $('#main-table');
            });

            $(document).on('click', '.docrow', function() {
                const docd = $(this).data('docid');
                const vtype = $(this).data('vtype');

                if (!docd || !vtype) return;

                let url = '';

                if (['PMT', 'CPV', 'CRV', 'RCT', 'CNT', 'JV'].some(t => vtype.includes(t))) {
                    url = `editvoucherentry/${docd}`;
                } else if (vtype === 'IDC') {
                    url = `banquetbilling?docid=${docd}`;
                } else if (vtype !== 'HPOST') {
                    url = `updatepurchasebill?docid=${docd}`;
                }

                if (url) {
                    window.open(url, '_blank', 'noopener,noreferrer');
                } else {
                    pushNotify('error', 'Not Allowed');
                }
            });

        });

        function getSelectedMainGroupName() {
            const selected = $('.clickable-row-main.table-success');
            if (selected.length) {
                return (selected.data('compname') || selected.find('td:first').text() || '').trim();
            }
            return '';
        }

        function getSelectedLedgerName() {
            const selected = $('.clickable-row.table-success');
            if (selected.length) {
                return (selected.data('compname') || selected.find('td:first').text() || '').trim();
            }
            return getSelectedMainGroupName();
        }

        function getSelectedMonthName() {
            const selected = $('.secondtr.table-success');
            if (selected.length) {
                return (selected.find('td:first').text() || '').trim();
            }
            return '';
        }

        function buildExportHeaderLines(extraLines = []) {
            const from = dmy($('#fromdate').val());
            const to = dmy($('#todate').val());
            const lines = [
                '{{ companydata()->comp_name }}',
                '{{ companydata()->address1 }} {{ companydata()->address2 }} - {{ companydata()->state }}-{{ companydata()->city }}-{{ companydata()->pin }}',
                'Trial Balance',
                `From ${from} To ${to}`
            ];
            const extras = Array.isArray(extraLines) ? extraLines : [extraLines];
            return lines.concat(extras.filter(line => line && String(line).trim()));
        }

        function buildExportHeaderHtml(headerLines) {
            const extrasHtml = headerLines
                .slice(4)
                .map(line => `<div style="margin-top:6px;"><strong>${line}</strong></div>`)
                .join('');
            return `
                <div style="text-align:center; margin-bottom:20px;">
                    <h3>${headerLines[0] || ''}</h3>
                    <div>${headerLines[1] || ''}</div>
                    <div><strong>${headerLines[2] || ''}</strong></div>
                    <div><em>${headerLines[3] || ''}</em></div>
                    ${extrasHtml}
                </div>
            `;
        }

        function escapeXml(value) {
            return String(value)
                .replace(/&/g, '&amp;')
                .replace(/</g, '&lt;')
                .replace(/>/g, '&gt;')
                .replace(/"/g, '&quot;')
                .replace(/'/g, '&apos;');
        }

        function addExcelHeaderRows(xlsx, headerLines) {
            if (!headerLines || !headerLines.length) return;

            const sheet = xlsx.xl.worksheets['sheet1.xml'];
            const sheetData = $('sheetData', sheet);
            const rows = $('row', sheetData);
            const headerCount = headerLines.length;

            rows.each(function() {
                const $row = $(this);
                const rowIndex = parseInt($row.attr('r'), 10);
                $row.attr('r', rowIndex + headerCount);
                $row.find('c').each(function() {
                    const $cell = $(this);
                    const ref = $cell.attr('r');
                    const col = ref.replace(/[0-9]/g, '');
                    const row = parseInt(ref.replace(/[A-Z]/g, ''), 10);
                    $cell.attr('r', col + (row + headerCount));
                });
            });

            for (let i = headerLines.length - 1; i >= 0; i -= 1) {
                const rowIndex = i + 1;
                const text = escapeXml(headerLines[i]);
                const rowXml = `<row r="${rowIndex}"><c r="A${rowIndex}" t="inlineStr"><is><t>${text}</t></is></c></row>`;
                sheetData.prepend($.parseXML(rowXml).documentElement);
            }
        }

        function initTableExporter({
            tableId,
            buttons,
            columns,
            headerHTML = '',
            footerHTML = '',
            excelSheetName = 'Sheet1'
        }) {
            const $table = $('#' + tableId);

            $(buttons.excel).on('click', function() {
                let wb = XLSX.utils.book_new();
                let ws = XLSX.utils.table_to_sheet($table[0], {
                    raw: true
                });
                XLSX.utils.book_append_sheet(wb, ws, excelSheetName);
                XLSX.writeFile(wb, 'table_export.xlsx');
            });

            $(buttons.pdf).on('click', function() {
                const data = [columns];

                $table.find('tbody tr').each(function() {
                    const row = [];
                    $(this).find('td').each(function() {
                        row.push($(this).text().trim());
                    });
                    data.push(row);
                });

                const $tfoot = $table.find('tfoot tr');
                if ($tfoot.length) {
                    const row = [];
                    $tfoot.find('td').each(function() {
                        row.push({
                            text: $(this).text().trim(),
                            bold: true
                        });
                    });
                    data.push(row);
                }

                const headerLines = headerHTML.split('\n').map(line => ({
                    text: line.trim(),
                    alignment: 'center',
                    fontSize: 12,
                    margin: [0, 2]
                }));

                const footerLines = footerHTML.split('\n').map(line => ({
                    text: line.trim(),
                    alignment: 'right',
                    fontSize: 10,
                    margin: [0, 2]
                }));

                const docDefinition = {
                    content: [
                        ...headerLines,
                        {
                            text: '\n'
                        },
                        {
                            table: {
                                headerRows: 1,
                                widths: Array(columns.length).fill('*'),
                                body: data
                            }
                        },
                        {
                            text: '\n'
                        },
                        ...footerLines
                    ]
                };

                pdfMake.createPdf(docDefinition).download('table_export.pdf');
            });


            $(buttons.print).on('click', function() {
                let html = `
                        <html>
                        <head>
                            <title>Print</title>
                            <style>
                                table { border-collapse: collapse; width: 100%; }
                                th, td { border: 1px solid #000; padding: 6px; text-align: right; }
                                td:first-child, th:first-child { text-align: left; }
                                th { background-color: #f0f0f0; }
                            </style>
                        </head>
                        <body>
                            ${headerHTML}
                            <br>
                            ${$table[0].outerHTML}
                            <br>
                            ${footerHTML}
                        </body>
                        </html>
                    `;

                const printWindow = window.open('', '', 'width=900,height=700');
                printWindow.document.write(html);
                printWindow.document.close();
                printWindow.focus();
                setTimeout(() => printWindow.print(), 500);
            });
        }

        $(document).ready(function() {

            initTableExporter({
                tableId: 'main-table',
                buttons: {
                    excel: '#export-excel',
                    pdf: '#export-pdf',
                    print: '#export-print'
                },
                columns: ['AC Name', 'Debit', 'Credit'],
                headerHTML: `{{ companydata()->comp_name }}
                {{ companydata()->address2 }}
                {{ companydata()->state }} - {{ companydata()->city }} - {{ companydata()->pin }}
                Ledger`,

                footerHTML: `Prepared By: {{ Auth::user()->name }}
                            Date: {{ ncurdate() }}`,
                excelSheetName: 'Trial Balance Report'
            });

            initTableExporter({
                tableId: 'third-table',
                buttons: {
                    excel: '#export-excel2',
                    pdf: '#export-pdf2',
                    print: '#export-print2'
                },
                columns: ['Month', 'Debit', 'Credit', 'Balance'],
                headerHTML: `{{ companydata()->comp_name }}
                {{ companydata()->address2 }}
                {{ companydata()->state }} - {{ companydata()->city }} - {{ companydata()->pin }}
                Trial Balance Ledger`,

                footerHTML: `Prepared By: {{ Auth::user()->name }}
                            Date: {{ ncurdate() }}`,
                excelSheetName: 'Trial Balance Report'
            });

            initTableExporter({
                tableId: 'fourth-table',
                buttons: {
                    excel: '#export-excel3',
                    pdf: '#export-pdf3',
                    print: '#export-print3'
                },
                columns: ['Date', 'Vr. No.', 'Name', 'Debit', 'Credit', 'Balance'],
                headerHTML: `{{ companydata()->comp_name }}
                {{ companydata()->address2 }}
                {{ companydata()->state }} - {{ companydata()->city }} - {{ companydata()->pin }}
                Trial Balance Ledger`,

                footerHTML: `Prepared By: {{ Auth::user()->name }}
                            Date: {{ ncurdate() }}`,
                excelSheetName: 'Trial Balance Report'
            });
        });
    </script>
@endsection
