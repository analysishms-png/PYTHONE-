@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')

    <!-- DATATABLE CDN -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <style>
        table.dataTable thead {
            background-color: #343a40;
            color: #fff;
        }

        table.dataTable tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        table.dataTable tbody tr:nth-child(even) {
            background-color: #ffffff;
        }

        table.dataTable tbody tr:hover {
            background-color: #d6e9f9;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">

            <div class="card">
                <div class="card-body">

                    <!-- HEADER -->
                    <div style="border-bottom:2px solid #000; padding-bottom:15px; margin-bottom:15px;">
                        <h3 id="companyTitle" style="text-align:center; font-weight:bold; font-size:26px;">
                            Analysis Computer System
                        </h3>

                        <div style="font-size:15px; line-height:1.8;">
                            <p><strong>DESCRIPTION :</strong> Account Integrity Tool</p>
                            <p><strong>WRITTEN BY :</strong> HMS Team</p>
                            <p><strong>DATE :</strong> {{ \Carbon\Carbon::now()->format('d-M-Y') }}</p>
                        </div>
                    </div>

                    <!-- SELECT COMPANY -->
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label><strong>Select Company:</strong></label>
                            <select class="form-control select2" id="propertyid" style="width:100%">
                                <option value="">Search Company...</option>
                                @foreach ($companies as $item)
                                    <option value="{{ $item->propertyid }}">
                                        {{ $item->comp_name }} - {{ $item->propertyid }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <!-- TABLE 1 -->
                    <div id="table1Section" style="display:none;">
                        <h5><strong>These Ledger DocId Have Blank SubCode</strong></h5>
                        <table class="table table-bordered" id="table1">
                            <thead>
                                <tr>
                                    <th>Doc ID</th>
                                    <th>Date</th>
                                    <th>Type</th>
                                    <th>SubCode</th>
                                    <th>Contra Sub</th>
                                    <th>Credit</th>
                                    <th>Debit</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 2 -->
                    <div id="table2Section" style="display:none; margin-top:30px;">
                        <h5><strong>These Ledger Subcode(s) are not Available in Subgroup</strong></h5>
                        <table class="table table-bordered" id="table2">
                            <thead>
                                <tr>
                                    <th>Doc ID</th>
                                    <th>Date</th>
                                    <th>Type</th>
                                    <th>SubCode</th>
                                    <th>Contra Sub</th>
                                    <th>Credit</th>
                                    <th>Debit</th>
                                    <th>Subgroup Name</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 3 -->
                    <div id="table3Section" style="display:none; margin-top:30px;">
                        <h5><strong>These SUBGROUP GroupCode(s) are not Available in ACGroup</strong></h5>
                        <table class="table table-bordered" id="table3">
                            <thead>
                                <tr>
                                    <th>Sub Code</th>
                                    <th>Name</th>
                                    <th>Nature</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 4 -->
                    <div id="table4Section" style="display:none; margin-top:30px;">
                        <h5><strong>These GROUP NATURE MISMATCH</strong></h5>
                        <table class="table table-bordered" id="table4">
                            <thead>
                                <tr>
                                    <th>Sub Code</th>
                                    <th>Name</th>
                                    <th>Group Nature</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 5 -->
                    <div id="table5Section" style="display:none; margin-top:30px;">
                        <h5><strong>These ACGROUP GroupNature is Blank/Null</strong></h5>
                        <table class="table table-bordered" id="table5">
                            <thead>
                                <tr>
                                    <th>Group Code</th>
                                    <th>Name</th>
                                    <th>Nature</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 6 -->
                    <div id="table6Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; justify-content:space-between; align-items:center;">
                            <h5><strong>Opening Balance Exist in Expenditure &amp; Revenue</strong></h5>
                            <input type="date" id="fromDate6" class="form-control" style="width:200px;">
                        </div>
                        <table id="table6" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Type</th>
                                    <th>Account Name</th>
                                    <th>Nature</th>
                                    <th>Credit</th>
                                    <th>Debit</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 7 -->
                    <div id="table7Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; justify-content:space-between; align-items:center;">
                            <h5><strong>Opening Balance Difference</strong></h5>
                            <input type="date" id="fromDate7" class="form-control" style="width:200px;">
                        </div>
                        <table id="table7" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Balance</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 8 -->
                    <div id="table8Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; justify-content:space-between; align-items:center;">
                            <h5><strong>Transaction Exist in Big Date</strong></h5>
                            <input type="date" id="toDate8" class="form-control" style="width:200px;">
                        </div>
                        <table id="table8" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Type</th>
                                    <th>Account Name</th>
                                    <th>Credit</th>
                                    <th>Debit</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 9 -->
                    <div id="table9Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; justify-content:space-between; align-items:center;">
                            <h5><strong>Transaction Summary Difference</strong></h5>
                            <input type="date" id="ncurDate9" class="form-control" style="width:200px;">
                        </div>
                        <table id="table9" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Balance</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 10 -->
                    <div id="table10Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; gap:10px;">
                            <h5 style="flex:1;"><strong>Date Wise Difference in Transaction</strong></h5>
                            <input type="date" id="fromDate10" class="form-control" style="width:180px;">
                            <input type="date" id="toDate10" class="form-control" style="width:180px;">
                        </div>
                        <table id="table10" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Balance</th>
                                    <th>Type</th>
                                    <th>VNo</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                    <!-- TABLE 11 -->
                    <div id="table11Section" style="display:none; margin-top:30px;">
                        <div style="display:flex; gap:10px;">
                            <h5 style="flex:1;"><strong>DocID Wise Difference</strong></h5>
                            <input type="date" id="fromDate11" class="form-control" style="width:180px;">
                            <input type="date" id="toDate11" class="form-control" style="width:180px;">
                        </div>
                        <table id="table11" class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>DocID</th>
                                    <th>Date</th>
                                    <th>Balance</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <script>
        $(document).ready(function () {

            // ── Select2 ──────────────────────────────────────────────────────────
            $('#propertyid').select2({
                placeholder: "Search Company...",
                allowClear: true,
                width: '100%'
            });

            // ── DataTables (each declared ONCE) ──────────────────────────────────
            let table1  = $('#table1').DataTable();
            let table2  = $('#table2').DataTable();
            let table3  = $('#table3').DataTable();
            let table4  = $('#table4').DataTable();
            let table5  = $('#table5').DataTable();
            let table6  = $('#table6').DataTable();
            let table7  = $('#table7').DataTable();
            let table8  = $('#table8').DataTable();
            let table9  = $('#table9').DataTable();
            let table10 = $('#table10').DataTable();
            let table11 = $('#table11').DataTable();

            // All sections hidden on page load (already hidden via style, but explicit for safety)
            const allSections = [
                '#table1Section', '#table2Section', '#table3Section',
                '#table4Section', '#table5Section', '#table6Section',
                '#table7Section', '#table8Section', '#table9Section',
                '#table10Section', '#table11Section'
            ];

            function hideAllSections() {
                $(allSections.join(',')).hide();
            }

            function clearAllTables() {
                [table1, table2, table3, table4, table5,
                 table6, table7, table8, table9, table10, table11]
                    .forEach(t => t.clear().draw());
            }

            // ── Company change ────────────────────────────────────────────────────
            $('#propertyid').on('change', function () {

                let propertyid = $(this).val();
                let name = $("#propertyid option:selected").text();

                $('#companyTitle').text(name || 'Analysis Computer System');

                if (!propertyid) {
                    hideAllSections();
                    clearAllTables();
                    return;
                }

                loadTable1(propertyid);
                loadTable2(propertyid);
                loadTable3(propertyid);
                loadTable4(propertyid);
                loadTable5(propertyid);
                loadTable6(propertyid);
                loadTable7(propertyid);
                loadTable8(propertyid);
                loadTable9(propertyid);
                loadTable10(propertyid);
                loadTable11(propertyid);
            });

            // ── TABLE 1 ───────────────────────────────────────────────────────────
            function loadTable1(propertyid) {
                $.ajax({
                    url: "/get-ledger-blank-subcode",
                    type: "POST",
                    data: { propertyid: propertyid, _token: '{{ csrf_token() }}' },
                    success: function (res) {
                        table1.clear();
                        res.forEach(row => {
                            table1.row.add([
                                row.docid,
                                row.vdate,
                                row.vtype,
                                row.subcode   ?? '',
                                row.contrasub ?? '',
                                row.amtcr,
                                row.amtdr
                            ]);
                        });
                        table1.draw();
                        $('#table1Section').show();
                    },
                    error: function () {
                        console.error('Table 1 load failed');
                    }
                });
            }

            // ── TABLE 2 ───────────────────────────────────────────────────────────
            function loadTable2(propertyid) {
                $.ajax({
                    url: "/get-ledger-subcode-missing",
                    type: "POST",
                    data: { propertyid: propertyid, _token: '{{ csrf_token() }}' },
                    success: function (res) {
                        table2.clear();
                        res.forEach(row => {
                            table2.row.add([
                                row.docid,
                                row.vdate,
                                row.vtype,
                                row.subcode   ?? '',
                                row.contrasub ?? '',
                                row.amtcr,
                                row.amtdr,
                                row.name      ?? ''
                            ]);
                        });
                        table2.draw();
                        $('#table2Section').show();
                    },
                    error: function () {
                        console.error('Table 2 load failed');
                    }
                });
            }

            // ── TABLE 3 ───────────────────────────────────────────────────────────
            function loadTable3(propertyid) {
                $.ajax({
                    url: "/get-subgroup-missing-acgroup",
                    type: "POST",
                    data: { propertyid: propertyid, _token: '{{ csrf_token() }}' },
                    success: function (res) {
                        table3.clear();
                        res.forEach(row => {
                            table3.row.add([row.sub_code, row.name, row.nature]);
                        });
                        table3.draw();
                        $('#table3Section').show();
                    },
                    error: function () {
                        console.error('Table 3 load failed');
                    }
                });
            }

            // ── TABLE 4 ───────────────────────────────────────────────────────────
            function loadTable4(propertyid) {
                $.ajax({
                    url: "/get-group-nature-mismatch",
                    type: "POST",
                    data: { propertyid: propertyid, _token: '{{ csrf_token() }}' },
                    success: function (res) {
                        table4.clear();
                        res.forEach(row => {
                            table4.row.add([row.sub_code, row.name, row.grnat]);
                        });
                        table4.draw();
                        $('#table4Section').show();
                    },
                    error: function () {
                        console.error('Table 4 load failed');
                    }
                });
            }

            // ── TABLE 5 ───────────────────────────────────────────────────────────
            function loadTable5(propertyid) {
                $.ajax({
                    url: "/get-acgroup-null-nature",
                    type: "POST",
                    data: { propertyid: propertyid, _token: '{{ csrf_token() }}' },
                    success: function (res) {
                        table5.clear();
                        res.forEach(row => {
                            table5.row.add([row.group_code, row.name, row.nature ?? '']);
                        });
                        table5.draw();
                        $('#table5Section').show();
                    },
                    error: function () {
                        console.error('Table 5 load failed');
                    }
                });
            }

            // ── TABLE 6 ───────────────────────────────────────────────────────────
            function loadTable6(propertyid) {
                let fromDate = $('#fromDate6').val();

                if (!fromDate) {
                    table6.clear().row.add(['Select Date First', '', '', '', '', '']).draw();
                    $('#table6Section').show();
                    return;
                }

                $.post("/get-table6", {
                    propertyid: propertyid,
                    fromDate: fromDate,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table6.clear();
                    if (res.length === 0) {
                        table6.row.add(['No Data Found', '', '', '', '', '']);
                    } else {
                        res.forEach(r => {
                            table6.row.add([
                                r.vdate,
                                r.vtype,
                                r.name   ?? '',
                                r.nature ?? '',
                                r.amtcr,
                                r.amtdr
                            ]);
                        });
                    }
                    table6.draw();
                    $('#table6Section').show();
                }).fail(function () {
                    console.error('Table 6 load failed');
                });
            }

            $('#fromDate6').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable6(propertyid);
            });

            // ── TABLE 7 ───────────────────────────────────────────────────────────
            function loadTable7(propertyid) {
                let fromDate = $('#fromDate7').val();

                if (!fromDate) {
                    table7.clear().row.add(['Select Date First']).draw();
                    $('#table7Section').show();
                    return;
                }

                $.post("/get-table7", {
                    propertyid: propertyid,
                    fromDate: fromDate,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table7.clear();
                    table7.row.add([res.bal ?? 0]);
                    table7.draw();
                    $('#table7Section').show();
                }).fail(function () {
                    console.error('Table 7 load failed');
                });
            }

            $('#fromDate7').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable7(propertyid);
            });

            // ── TABLE 8 ───────────────────────────────────────────────────────────
            function loadTable8(propertyid) {
                let toDate = $('#toDate8').val();

                if (!toDate) {
                    table8.clear().row.add(['Select Date First', '', '', '', '']).draw();
                    $('#table8Section').show();
                    return;
                }

                $.post("/get-table8", {
                    propertyid: propertyid,
                    toDate: toDate,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table8.clear();
                    if (res.length === 0) {
                        table8.row.add(['No Data', '', '', '', '']);
                    } else {
                        res.forEach(r => {
                            table8.row.add([r.vdate, r.vtype, r.name, r.amtcr, r.amtdr]);
                        });
                    }
                    table8.draw();
                    $('#table8Section').show();
                }).fail(function () {
                    console.error('Table 8 load failed');
                });
            }

            $('#toDate8').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable8(propertyid);
            });

            // ── TABLE 9 ───────────────────────────────────────────────────────────
            function loadTable9(propertyid) {
                let ncurDate = $('#ncurDate9').val();

                if (!ncurDate) {
                    table9.clear().row.add(['Select Date First']).draw();
                    $('#table9Section').show();
                    return;
                }

                $.post("/get-table9", {
                    propertyid: propertyid,
                    ncurDate: ncurDate,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table9.clear();
                    table9.row.add([res.bal ?? 0]);
                    table9.draw();
                    $('#table9Section').show();
                }).fail(function () {
                    console.error('Table 9 load failed');
                });
            }

            $('#ncurDate9').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable9(propertyid);
            });

            // ── TABLE 10 ──────────────────────────────────────────────────────────
            function loadTable10(propertyid) {
                let f = $('#fromDate10').val();
                let t = $('#toDate10').val();

                if (!f || !t) {
                    table10.clear().row.add(['Select Dates', '', '', '']).draw();
                    $('#table10Section').show();
                    return;
                }

                $.post("/get-table10", {
                    propertyid: propertyid,
                    fromDate: f,
                    toDate: t,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table10.clear();
                    if (res.length === 0) {
                        table10.row.add(['No Difference', '', '', '']);
                    } else {
                        res.forEach(r => {
                            table10.row.add([r.vdate, r.bal, r.vtype, r.vno]);
                        });
                    }
                    table10.draw();
                    $('#table10Section').show();
                }).fail(function () {
                    console.error('Table 10 load failed');
                });
            }

            $('#fromDate10, #toDate10').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable10(propertyid);
            });

            // ── TABLE 11 ──────────────────────────────────────────────────────────
            function loadTable11(propertyid) {
                let f = $('#fromDate11').val();
                let t = $('#toDate11').val();

                if (!f || !t) {
                    table11.clear().row.add(['Select Dates', '', '']).draw();
                    $('#table11Section').show();
                    return;
                }

                $.post("/get-table11", {
                    propertyid: propertyid,
                    fromDate: f,
                    toDate: t,
                    _token: '{{ csrf_token() }}'
                }, function (res) {
                    table11.clear();
                    if (res.length === 0) {
                        table11.row.add(['No Difference', '', '']);
                    } else {
                        res.forEach(r => {
                            table11.row.add([r.docid, r.vdate, r.bal]);
                        });
                    }
                    table11.draw();
                    $('#table11Section').show();
                }).fail(function () {
                    console.error('Table 11 load failed');
                });
            }

            $('#fromDate11, #toDate11').on('change', function () {
                let propertyid = $('#propertyid').val();
                if (propertyid) loadTable11(propertyid);
            });

        });
    </script>
@endsection