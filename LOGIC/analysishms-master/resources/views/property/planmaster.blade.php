@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
     <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css">
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('planststore') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">

                                        <label class="col-form-label" for="planname">Plan Name</label>
                                        <input type="text" name="planname" id="planname" class="form-control" required>
                                        <div id="namelist"></div>
                                        @error('planname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="tarrif">Tarrif</label>
                                        <select id="tarrif" name="tarrif" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="A.P.">A.P.</option>
                                            <option value="C.P.">C.P.</option>
                                            <option value="E.P.">E.P.</option>
                                            <option value="M.A.P.">M.A.P.</option>
                                        </select>
                                        @error('tarrif')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="room_cat">Room Category</label>
                                        <select id="room_cat" name="room_cat" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($roomcat as $list)
                                                <option value="{{ $list->cat_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('room_cat')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="room_tax_stru">Room Tax Structure</label>
                                        <select id="room_tax_stru" name="room_tax_stru" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($taxstrudata as $list)
                                                <option value="{{ $list->str_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('room_tax_stru')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="adults">Adult</label>
                                        <input type="text" name="adults" id="adults"
                                            oninput="Submiton();UpdateTotal();CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');checkNumMax(this, 2)"
                                            class="form-control" required>
                                        @error('adults')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="childs">Child</label>
                                        <input type="text" name="childs" id="childs"
                                            oninput="Submiton();UpdateTotal();CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');checkNumMax(this, 2)"
                                            class="form-control">
                                        @error('childs')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="childs">Map Code</label>
                                        <input type="text" name="map_code" id="map_code" class="form-control">
                                        @error('map_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                    </div>

                                    <div class="col-md-6">

                                        <label class="col-form-label" for="package_amount">Plan Amount</label>
                                        <input style="width: 100%;" name="package_amount" id="package_amount"
                                            class="decimal-input form-control"
                                            oninput="Submiton();UpdateTotal();CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');LoadNext2(this, 'show2', 'room_rate', 'room_per');checkNumMax(this, 8)"
                                            step="0.01" min="0.00" max="9999999.99" placeholder="0.00"
                                            type="number">
                                        @error('package_amount')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <div id="show2" class="none">
                                            <label class="col-form-label" for="room_rate">Net Room Rate</label>
                                            <input class="form-control" type="number" name="room_rate" id="room_rate"
                                                oninput="Submiton();UpdateTotal();CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount', 'childprice');
                                                CalcPercent(this, 'package_amount', 'room_per');
                                                checkNumMax(this, 10);
                                                DisplayTable('room_rate', 'gridtaxstructure');">
                                            @error('room_rate')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror

                                            <label class="col-form-label" for="room_per">Room Percent</label>
                                            <input type="number" name="room_per" id="room_per"
                                                oninput="Submiton();UpdateTotal();CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');
                                                checkNumMax(this, 5); CalcAmount(this, 'package_amount', 'room_rate');
                                                DisplayTable('room_rate', 'gridtaxstructure');"
                                                class="form-control">
                                            @error('room_per')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>

                                        <label class="col-form-label" for="disc_appYN">Discount Applicable </label>
                                        <select id="disc_appYN" onchange="LoadNext(this, 'show', 'disc_appON')"
                                            name="disc_appYN" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>

                                        <div id="show" class="none">
                                            <label class="col-form-label" for="disc_appON">Discount Applicable
                                                On</label>
                                            <select id="disc_appON" name="disc_appON" class="form-control">
                                                <option value="">Select</option>
                                                <option value="Discount On Food">Discount On Food</option>
                                                <option value="Discount On Room">Discount On Room</option>
                                                <option value="Discount On Both">Discount On Both</option>
                                            </select>
                                            @error('disc_appON')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>

                                        <label class="col-form-label" for="rrinc_tax">Room Tax Include In Plan
                                            Amount </label>
                                        <select id="rrinc_tax" name="rrinc_tax" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Y">Yes</option>
                                            <option value="N">No</option>
                                        </select>

                                        <label class="col-form-label" for="activeYN">Active YN</label>
                                        <select class="form-control" name="activeYN" id="activeYN" required>
                                            <option value="Y">Active</option>
                                            <option value="Y">Active</option>
                                            <option value="N">Inactive</option>
                                        </select>

                                        <label for="desc1" class="col-form-label">Desc 1</label>
                                        <input type="text" class="form-control" name="desc1" id="desc1"
                                            class="form-control">

                                        <label for="desc2" class="col-form-label">Desc 2</label>
                                        <input type="text" class="form-control" name="desc2" id="desc2"
                                            class="form-control">

                                    </div>

                                    <table class="table-hover none" id="gridtaxstructure">
                                        <thead>
                                            <tr>
                                                <th>Sn</th>
                                                <th>Fixed Charge</th>
                                                <th>Tax Inc.</th>
                                                <th>Fix Rate</th>
                                                <th>Adult</th>
                                                <th>Child</th>
                                                <th>Percentage</th>
                                                <th>Net Amt</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td id="serial">1</td>
                                                <td style="text-align: center" id="serial">
                                                    <select id="rev_code" name="rev_code1" class="form-control sl"
                                                        required>
                                                        <option value="">Select</option>
                                                        @foreach ($chargedata as $list)
                                                            <option value="{{ $list->rev_code }}">{{ $list->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control sl" name="tax_inc1" id="tax_inc">
                                                        <option value="">Select</option>
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control sl"
                                                        onchange="RemoveRead(this, 'plan_per', 'adultprice', 'childprice')"
                                                        name="fix_rate1" id="fix_rate">
                                                        <option value="">Select</option>
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="number" name="adultprice1" id="adultprice"
                                                        oninput="CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');checkNumMax(this, 10);Submiton();UpdateTotal();"
                                                        class="form-control sl" readonly>
                                                </td>
                                                <td>
                                                    <input type="text" name="childprice1" id="childprice"
                                                        oninput="CalcPercent2('adultprice', 'package_amount', 'plan_per', 'net_amount','childprice');checkNumMax(this, 10);Submiton();UpdateTotal();"
                                                        class="form-control sl" readonly>
                                                </td>
                                                <td>
                                                    <input name="plan_per1" id="plan_per"
                                                        class="decimal-input form-visible" onkeydown="addNewRow(event)"
                                                        step="0.01" min="0.00" max="99999.99" placeholder="0.00"
                                                        oninput="handleDecimalInput(event); CalcPercent3('plan_per', 'package_amount', 'net_amount');
                                                        Submiton();UpdateTotal();"
                                                        type="text" readonly>
                                                </td>
                                                <td><input oninput="Submiton();UpdateTotal();" type="text"
                                                        name="net_amount1" id="net_amount" class="form-control sl"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="end offset-9">
                                        <span>Net Amount</span>
                                        <input type="text" name="totalroomrate" id="totalroomrate" readonly>
                                    </div>

                                    <div class="end offset-9">
                                        <span>Total</span>
                                        <input type="text" name="lasttotal" oninput="Submiton()" id="lasttotal"
                                            readonly>
                                    </div>

                                    <div class="col-7 mt-4 mb-4 ml-auto">
                                        <button type="submit" id="plansubmit" class="btn btn-primary" disabled>Submit <i
                                                class="fa-solid fa-file-export"></i></button>
                                    </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="plan_mast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Plan Code</th>
                                        <th>Map Code</th>
                                        <th>Name</th>
                                        <th>Category Name</th>
                                        <th>Package </th>
                                        <th>Adults/Child</th>
                                        <th>Room Rate</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->pcode }}</td>
                                            <td>{{ $row->map_code }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->catname }}</td>
                                            <td>{{ $row->package_amount }}</td>
                                            <td>{{ $row->adults }}/{{ $row->childs }}</td>
                                            <td>{{ $row->room_rate }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updateplanmast?id={{ base64_encode($row->id) }}&pcode={{ base64_encode($row->pcode) }}">
                                                    <button
                                                        class="btn
                                                    btn-success btn-sm"><i
                                                            class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deletplanmast?id={{ base64_encode($row->id) }}&pcode={{ base64_encode($row->pcode) }}">
                                                    <button class="btn btn-danger btn-sm"><i
                                                            class="fa-solid fa-trash"></i>
                                                        Delete
                                                    </button>
                                                </a>
                                            </td>
                                        </tr>
                                        @php $sn++; @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
    <script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script>
        $(document).ready(function() {
            if ($.fn.DataTable.isDataTable('#plan_mast')) {
                $('#plan_mast').DataTable().destroy();
            }
            new DataTable('#plan_mast', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    { extend: 'excelHtml5', text: 'Excel' },
                    { extend: 'pdfHtml5',   text: 'PDF'   },
                    { extend: 'print',      text: 'Print' }
                ]
            });
            $('.dt-buttons .dt-button').each(function() {
                if ($(this).text().trim().toLowerCase().includes('csv')) {
                    $(this).hide();
                }
            });
        });
    </script>
@endsection
<script>
    // Business Source Name
    document.addEventListener('DOMContentLoaded', function() {
        var name = document.getElementById('planname');
        var namelist = document.getElementById('namelist');
        var currentLiIndex = -1;
        name.addEventListener('keydown', function(event) {
            if (event.key === 'ArrowDown') {
                event.preventDefault();
                var liElements = namelist.querySelectorAll('li');
                currentLiIndex = (currentLiIndex + 1) % liElements.length;
                if (liElements.length > 0) {
                    name.value = liElements[currentLiIndex].textContent;
                }
            }
        });
        name.addEventListener('keyup', function() {
            var cid = this.value;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/getroomnames', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    namelist.innerHTML = xhr.responseText;
                    namelist.style.display = 'block';
                }
            };
            xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');

        });
        $(document).on('click', function(event) {
            if (!$(event.target).closest('li').length) {
                namelist.style.display = 'none';
            }
        });
        $(document).on('click', '#namelist li', function() {
            $('#planname').val($(this).text());
            namelist.style.display = 'none';
        });
    });

    function addNewRow(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            const table = document.getElementById("gridtaxstructure");
            const newRow = table.insertRow(table.rows.length);
            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            var cell3 = newRow.insertCell(2);
            var cell4 = newRow.insertCell(3);
            var cell5 = newRow.insertCell(4);
            var cell6 = newRow.insertCell(5);
            var cell7 = newRow.insertCell(6);
            var cell8 = newRow.insertCell(7);
            const rowNumber = rowCount + 1;
            cell1.innerHTML = rowNumber;
            cell2.innerHTML = `<select id="rev_code${rowNumber}" name="rev_code${rowNumber}" class="form-control sl" required>
        <option value="">Select</option>
        @foreach ($chargedata as $list)
            <option value="{{ $list->rev_code }}">{{ $list->name }}</option>
        @endforeach
    </select>`;

            cell3.innerHTML = `<select class="form-control sl" name="tax_inc${rowNumber}" id="tax_inc${rowNumber}">
        <option value="">Select</option>
        <option value="Y">Yes</option>
        <option value="N">No</option>
    </select>`;

            cell4.innerHTML = `<select class="form-control sl" onchange="RemoveRead(this, 'plan_per${rowNumber}', 'adultprice${rowNumber}', 'childprice${rowNumber}')" name="fix_rate${rowNumber}" id="fix_rate${rowNumber}">
            <option value="">Select</option>
            <option value="Y">Yes</option>
            <option value="N">No</option>
    </select>`;

            cell5.innerHTML =
                `<input type="number" name="adultprice${rowNumber}" id="adultprice${rowNumber}" oninput="CalcPercent2('adultprice${rowNumber}', 'package_amount', 'plan_per${rowNumber}', 'net_amount${rowNumber}', 'childprice${rowNumber}'); checkNumMax(this, 10); Submiton(); UpdateTotal();" class="form-control sl" readonly>`;

            cell6.innerHTML =
                `<input type="text" name="childprice${rowNumber}" id="childprice${rowNumber}" oninput="CalcPercent2('adultprice${rowNumber}', 'package_amount', 'plan_per${rowNumber}', 'net_amount${rowNumber}', 'childprice${rowNumber}', 'net_amount${rowNumber}'); checkNumMax(this, 10); Submiton(); UpdateTotal();" class="form-control sl" readonly>`;

            cell7.innerHTML =
                `<input name="plan_per${rowNumber}" id="plan_per${rowNumber}" class="decimal-input form-visible" onkeydown="addNewRow(event)" step="0.01" min="0.00" max="99999.99" placeholder="0.00" oninput="handleDecimalInput(event);CalcPercent3('plan_per${rowNumber}', 'package_amount', 'net_amount${rowNumber}'); Submiton();UpdateTotal();" type="text" readonly>`;

            cell8.innerHTML =
                `<input oninput="Submiton();UpdateTotal();" type="text" name="net_amount${rowNumber}" id="net_amount${rowNumber}" class="form-control sl">`;
            rowCount++;
        }
    }
</script>
