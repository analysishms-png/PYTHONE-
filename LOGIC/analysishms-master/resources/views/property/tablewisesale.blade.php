@extends('property.layouts.main')

@section('main-container')
    <link href="https://unpkg.com/tabulator-tables@6.3.0/dist/css/tabulator.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/tabulator-tables@6.3.0/dist/js/tabulator.min.js"></script>

    <div class="content-body">
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">

                    <div class="row mb-2">
                        <div class="col-md-3">
                            <label>From Date</label>
                            <input type="date" id="fromdate" class="form-control"
                                value="{{ $fromdate ?? date('Y-m-d') }}">
                        </div>
                        <div class="col-md-3">
                            <label>To Date</label>
                            <input type="date" id="todate" class="form-control"
                                value="{{ $fromdate ?? date('Y-m-d') }}">
                        </div>
                        <div class="col-md-3 mt-4">
                            <button id="fetchbutton" class="btn btn-success">Refresh</button>
                        </div>
                    </div>
                    <div class="row mb-3">

                        <div class="col-md-3">
                            <button class="btn btn-outline-success w-100" id="departlistbtn">Outlet ▼</button>
                            <ul class="checkul" id="listeddepart" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkalldepart" checked>
                                    <b>Select All</b>
                                </li>
                                @foreach ($departs as $d)
                                    <li>
                                        <input type="checkbox" class="departcheckbox" value="{{ $d->dcode }}" checked>
                                        {{ $d->name }}
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <button class="btn btn-outline-info w-100" id="userlistbtn">Users ▼</button>
                            <ul class="checkul" id="listedusers" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkallusers" checked>
                                    <b>Select All</b>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <button class="btn btn-outline-warning w-100" id="tablelistbtn">Tables ▼</button>
                            <ul class="checkul" id="listedtables" style="display:none;">
                                <li>
                                    <input type="checkbox" id="checkalltables" checked>
                                    <b>Select All</b>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div id="tablewisesale"></div>

                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $('#departlistbtn').click(() => $('#listeddepart').toggle());
            $('#userlistbtn').click(() => $('#listedusers').toggle());
            $('#tablelistbtn').click(() => $('#listedtables').toggle());

            $('#checkalldepart').change(function() {
                $('.departcheckbox').prop('checked', this.checked);
                loadUsers();
                loadTables();
            });

            $(document).on('change', '.departcheckbox', function() {
                loadUsers();
                loadTables();
            });

            $(document).on('change', '#checkallusers', function() {
                $('.usercheckbox').prop('checked', this.checked);
            });

            function loadUsers() {
                let departcodes = $('.departcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                let $ul = $('#listedusers');
                $ul.find('li.userli').remove();

                if (departcodes.length === 0) {
                    $ul.append('<li class="userli">No Users Found</li>');
                    return;
                }

                $.post("{{ route('tablewiserepfetch') }}", {
                    _token: "{{ csrf_token() }}",
                    mode: 'users',
                    departcodes: departcodes,
                    fromdate: $('#fromdate').val(),
                    todate: $('#todate').val()
                }, function(res) {
                    if (!res.users || res.users.length === 0) {
                        $ul.append('<li class="userli">No Users Found</li>');
                        return;
                    }

                    res.users.forEach(u => {
                        $ul.append(`
                    <li class="userli">
                        <input type="checkbox" class="usercheckbox" value="${u.userid}" checked>
                        ${u.username}
                    </li>
                `);
                    });
                });
            }

            $(document).on('change', '#checkalltables', function() {
                $('.tablecheckbox').prop('checked', this.checked);
            });

            function loadTables() {
                let departcodes = $('.departcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();
                let $ul = $('#listedtables');
                $ul.find('li.tableli').remove();

                if (departcodes.length === 0) {
                    $ul.append('<li class="tableli">No Tables Found</li>');
                    return;
                }

                $.post("{{ route('tablewiserepfetch') }}", {
                    _token: "{{ csrf_token() }}",
                    mode: 'tables',
                    departcodes: departcodes,
                    fromdate: $('#fromdate').val(),
                    todate: $('#todate').val()
                }, function(res) {
                    if (!res.tables || res.tables.length === 0) {
                        $ul.append('<li class="tableli">No Tables Found</li>');
                        return;
                    }

                    res.tables.forEach(t => {
                        $ul.append(`
                    <li class="tableli">
                        <input type="checkbox" class="tablecheckbox" value="${t.tableno}" checked>
                        ${t.tableno}
                    </li>
                `);
                    });
                });
            }

            loadUsers();
            loadTables();


            $('#fetchbutton').on('click', function() {

                let departcodes = $('.departcheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                if (departcodes.length === 0) {
                    alert('Please select at least one outlet.');
                    return;
                }

                let users = $('.usercheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                let tablenos = $('.tablecheckbox:checked').map(function() {
                    return $(this).val();
                }).get();

                $('#listedusers').hide();
                $('#listedtables').hide();
                $('#listeddepart').hide();

                $.ajax({
                    url: "{{ route('tablewiserepfetch') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        mode: 'report',
                        fromdate: $('#fromdate').val(),
                        todate: $('#todate').val(),
                        departcodes: departcodes,
                        users: users,
                        tablenos: tablenos
                    },
                    success: function(response) {

                        $('#tablewisesale').show(); 

                        if (window.table) window.table.destroy(); 

                        window.table = new Tabulator("#tablewisesale", {
                            layout: "fitColumns",
                            height: "auto",
                            data: response,
                            placeholder: "No Data Available",
                            rowFormatter: function(row) {
                                let cells = row.getElement().querySelectorAll(
                                    ".tabulator-cell");
                                cells.forEach(cell => {
                                    cell.style.whiteSpace = "normal";
                                });
                            },
                            columns: [{
                                    title: "Date",
                                    field: "vdate",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Table No",
                                    field: "TABLENO",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Outlet",
                                    field: "DEPARTNAME",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Covers",
                                    field: "TotCVRS",
                                   // hozAlign: "right",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Checks",
                                    field: "TOTCHK",
                                   // hozAlign: "right",
                                    headerWordWrap: true,
                                    minWidth: 100
                                },
                                {
                                    title: "Net Sale",
                                    field: "NetSale",
                                   // hozAlign: "right",
                                    headerWordWrap: true,
                                    minWidth: 100
                                }
                            ]
                        });
                    },
                    error: function(e) {
                        console.error('Report Error', e.responseText);
                        alert('Failed to load report');
                    }
                });
            });


        });
    </script>
@endsection
