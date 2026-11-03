@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ url('mrentrysubmit') }}" name="mrentryform" id="mrentryform"
                                method="POST">
                                @csrf
                                <input type="hidden" name="totalitem" id="totalitem">
                                <input type="hidden" name="selectedpos" id="selectedpos">
                                <div class="row">
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <label for="mrno" class="col-form-label">MR.No</label>
                                            <input type="number" class="form-control" name="mrno" id="mrno"
                                                placeholder="Enter M.R No." required readonly>
                                            @error('mrno')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="type" class="col-form-label">Type</label>
                                            <select class="form-control" name="vtype" id="vtype" required>
                                                <option value="">Select</option>
                                                <option value="MRCR">M.R. Entry Credit</option>
                                                <option value="MRCH">M.R. Entry Cash</option>
                                            </select>
                                            @error('vtype')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="vdate" class="col-form-label">Date</label>
                                            <input type="date" value="{{ $ncurdate }}" class="form-control"
                                                name="vdate" id="vdate" required
                                                @if (($enviroinv->allow_future_date_pr ?? 'Y') == 'N') max="{{ date('Y-m-d') }}" @endif>
                                            @error('vdate')
                                                <span class="text-danger"> {{ $message }} </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div id="partydiv" class="form-group">
                                            <label for="partycode" class="col-form-label">Party</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="pono" class="col-form-label">P.O. No.</label>
                                            <div id="ponodiv"> </div>
                                            <small id="selectedposdisplay"
                                                style="color: #28a745; font-weight: bold;"></small>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="chalno" class="col-form-label">Challan No.</label>
                                            <input type="text" class="form-control" name="chalno" id="chalno"
                                                placeholder="Challan No." required readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="chaldate" class="col-form-label">Challan Dt.</label>
                                            <input type="date" class="form-control" name="chaldate" id="chaldate"
                                                required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="meminvno" class="col-form-label">Inv. No.</label>
                                            <input type="text" class="form-control" name="meminvno" id="meminvno"
                                                placeholder="Inv. No." readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="meminvdate" class="col-form-label">Inv. Date</label>
                                            <input type="date" class="form-control" name="meminvdate" id="meminvdate">
                                        </div>
                                    </div>
                                    <input type="hidden" class="form-control" name="indentno" id="indentno"
                                        placeholder="Indent No.">
                                    {{-- <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="indentno" class="col-form-label">Indent No.</label>
                                            <input type="text" class="form-control" name="indentno" id="indentno"
                                                placeholder="Indent No.">
                                        </div>
                                    </div> --}}
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="inspectedby" class="col-form-label">Inspected By</label>
                                            <input type="text" class="form-control" name="inspectedby"
                                                id="inspectedby" placeholder="Inspected By" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="approvedby" class="col-form-label">Approved By</label>
                                            <input type="text" class="form-control" name="approvedby" id="approvedby"
                                                placeholder="Approved By" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="remark" class="col-form-label">Remark</label>
                                            <input type="text" class="form-control" name="remark" id="remark"
                                                placeholder="Remark">
                                        </div>
                                    </div>
                                </div>
                                <div class="itemshow">
                                    <div class="addbtn text-end  mb-2">
                                        <button id="additem" type="button" class="btn btn-outline-primary">Add Item <i
                                                class="fa-solid fa-square-plus"></i></button>

                                    </div>
                                    <table id="itemtable" class="table table-itemshow table-hover">
                                        <thead class="thead-muted">
                                            <tr>
                                                <th>SR.</th>
                                                <th>Item</th>
                                                <th>Specification</th>
                                                <th>Unit</th>
                                                <th>Chal. Qty</th>
                                                <th>Recd. Qty</th>
                                                <th>Rej Qty.</th>
                                                <th>Acc. Qty</th>
                                                <th>Rate</th>
                                                <th>Amount</th>
                                                <th>Godown</th>
                                                <th id="th-batch" style="display:none;">Batch No.</th>
                                                <th id="th-mfg" style="display:none;">Mfg. Date</th>
                                                <th id="th-expiry" style="display:none;">Expiry Date</th>
                                                <th><i class="fa-solid fa-square-caret-down"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                                <div class="col-md-4 mt-3 ml-auto">
                                    <div class="form-group">
                                        <label><b>Total Amount</b></label>
                                        <input type="text" class="form-control" id="totalamount" name="totalamount"
                                            readonly value="0.00">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            {{-- Data ab PHP foreach se render nahi hota — DataTable AJAX (server-side) se load hota hai --}}
                            <table id="mrentrytable"
                                class="table table-hover table-download-with-search table-hover table-striped w-100">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Vno</th>
                                        <th>Type</th>
                                        <th>Date</th>
                                        <th>Party</th>
                                        <th>Chal No.</th>
                                        <th>Chal Date</th>
                                        <th>Total Amount</th>
                                        <th>Item</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        function getPendingPo(partycode) {

            if (!partycode) return;

            fetch(`pendingpo?partycode=${partycode}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {

                    let ponoDiv = $('#ponodiv');
                    ponoDiv.html('');

                    if (Array.isArray(data) && data.length > 0) {

                        let html = `<select class="form-control" name="pono" id="pono" onchange="getPoDetails(this.value)" required>
                                        <option value="">Select P.O. No.</option>`;

                        data.forEach(po => {
                            html += `<option value="${po.vno}">${po.vno}</option>`;
                        });

                        html += `</select>`;

                        ponoDiv.html(html);

                    } else {
                        ponoDiv.html(`
                                <input type="text"
                                       class="form-control"
                                       name="pono"
                                       id="pono"
                                       placeholder="P.O. No.">
                            `);
                    }

                })
                .catch(error => {
                    console.error('Fetch error:', error);
                });
        }

        let selectedPOs = []; // Track selected POs

        function handlePartyChange(partycode) {
            selectedPOs = []; // Reset selected POs when party changes
            $('#pono').val(''); // Reset PO select
            $('#itemtable tbody').html(''); // Clear items
            $('#totalitem').val('0');
            $('#selectedpos').val(''); // Clear selected POs field
            $('#selectedposdisplay').text(''); // Clear POs display
            getPendingPo(partycode);
        }

        function getPoDetails(ponono) {

            if (!ponono) return;

            // Check if same PO is selected again
            if (selectedPOs.includes(ponono)) {
                pushNotify('warning', 'MR Entry', 'Items from this PO already added!', 'fade', 300, '', '',
                    true, true, true, 2000, 20, 20, 'outline', 'right top');
                return;
            }

            // Check if items already exist from another PO
            let tbody = $('#itemtable tbody');
            let currentItems = tbody.find('tr').length;

            if (currentItems > 0) {
                // Show confirmation dialog
                Swal.fire({
                    title: 'Add More Items?',
                    text: 'Items from another PO already exist. Do you want to add items from this PO as well?',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Add Items',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        addPoItems(ponono);
                    } else {
                        // Reset the select to previous value
                        $('#pono').val('');
                    }
                });
            } else {
                // First PO selection - add items directly
                addPoItems(ponono);

            }
        }

        function addPoItems(ponono) {
            $.ajax({
                url: 'pendingpoitems',
                type: 'GET',
                data: {
                    ponono: ponono
                },
                dataType: 'json',

                success: async function(data) {
                    if (!Array.isArray(data)) {
                        return;
                    }

                    try {
                        let response = await fetch('purchaseitems');
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        let lookup = await response.json();

                        let items = lookup.items || [];
                        let godown = lookup.godown || [];
                        let units = lookup.units || [];
                        envinventory = lookup.envinventory || {};

                        let tbody = $('#itemtable tbody');
                        let rowCount = tbody.find('tr').length;

                        data.forEach((row, index) => {
                            let newIndex = rowCount + index + 1;
                            let tr = `<tr>
                                        <td class='sr-col text-center'>${newIndex}</td>
                                        <td><select class='form-control items' name='item${newIndex}' id='item${newIndex}' required>
                                            <option value=''>Select Item</option>
                                            ${items.map(item => `<option data-expiry='${item.expiry_applicable}' data-lpurrate='${item.LPurRate}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                                        </select>
                                        <input type='hidden' name='unithidden${newIndex}' id='unithidden${newIndex}'>
                                        <input type='hidden' name='wtunithidden${newIndex}' id='wtunithidden${newIndex}'>
                                        <input type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                                        </td>
                                        <td><input type='text' class='form-control specification' name='specification${newIndex}' id='specification${newIndex}' placeholder='Enter Specification'></td>
                                        <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                                            <option value=''>Select Unit</option>
                                        ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                        <td class='none'><select class='form-control wtunits' name='wtunit${newIndex}' id='wtunit${newIndex}'>
                                            <option value=''>Select Wt. Unit</option>
                                        ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                        <td><input type='text' class='form-control chalqtys' name='chalqty${newIndex}' id='chalqty${newIndex}' placeholder='Chal. Qty.' readonly></td>
                                        <td><input type='text' class='form-control recdqtys' name='recdqty${newIndex}' id='recdqty${newIndex}' placeholder='Recd. Qty.'></td>
                                        <td><input type='text' class='form-control rejqtys' name='rejqty${newIndex}' id='rejqty${newIndex}' placeholder='Rej. Qty.'></td>
                                        <td><input type='text' class='form-control accqtys' name='accqty${newIndex}' id='accqty${newIndex}' placeholder='Acc. Qty.' readonly></td>
                                        <td class='none'><input type='hidden' class='form-control wtqtys' name='wtqty${newIndex}' id='wtqty${newIndex}' placeholder='Wt. Qty.'></td>
                                        <td><input type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                        <td><input type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'></td>
                                        <td><select class='form-control godowns' name='godown${newIndex}' id='godown${newIndex}' required>
                                            <option value=''>Select Godown</option>
                                        ${godown.map(row => `<option value='${row.scode}' ${envinventory.purchasegodown == row.scode ? 'selected' : ''}>${row.name}</option>`).join('')}</select></td>
                                        <td><input type='text' class='form-control batch_nos' name='batch_no${newIndex}' id='batch_no${newIndex}' placeholder='Batch No.' style='display:none;'></td>
                                        <td><input type='date' class='form-control mfg_dates' name='mfg_date${newIndex}' id='mfg_date${newIndex}' style='display:none;'></td>
                                        <td><input type='date' class='form-control expiry_dates' name='expiry_date${newIndex}' id='expiry_date${newIndex}' style='display:none;'></td>
                                        <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                        </tr>`;
                            tbody.append(tr);

                            $(`#item${newIndex}`).val(row.itemcode).trigger('change');
                            $(`#specification${newIndex}`).val(row.specification || '');
                            $(`#unit${newIndex}`).val(row.unit);
                            $(`#unithidden${newIndex}`).val(row.unit);
                            $(`#chalqty${newIndex}`).val(row.qty);
                            $(`#recdqty${newIndex}`).val(row.qty);
                            $(`#accqty${newIndex}`).val(row.qty);
                            $(`#rejqty${newIndex}`).val('0');
                            $(`#itemrate${newIndex}`).val(row.rate);
                            $(`#amount${newIndex}`).val(row.amount);
                        });

                        // Update total items and add PO to selected list
                        let totalRows = tbody.find('tr').length;
                        $('#totalitem').val(totalRows);
                        selectedPOs.push(ponono);

                        // Update hidden field with selected PO numbers
                        $('#selectedpos').val(selectedPOs.join(','));

                        // Update display of selected POs
                        $('#selectedposdisplay').text('Selected POs: ' + selectedPOs.join(', '));
                        calculateGrandTotal();
                        pushNotify('success', 'MR Entry', 'Items added from PO: ' + ponono, 'fade', 300, '', '',
                            true, true, true, 2000, 20, 20, 'outline', 'right top');

                    } catch (error) {
                        console.error('Fetch error:', error);
                    }
                },

                error: function(xhr, status, error) {
                    console.error('AJAX error:', error);
                }
            });
        }



        $(document).ready(function() {

            // ================= MR ENTRY LIST TABLE (Server-side AJAX DataTable) =================
            let mrTable = new DataTable('#mrentrytable', {
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                pageLength: 15,
                lengthMenu: [
                    [15, 25, 50, 100],
                    [15, 25, 50, 100]
                ],
                order: [
                    [0, 'desc']
                ],
                scrollX: true,
                autoWidth: false,
                ajax: {
                    url: "{{ route('mrentry.data') }}",
                    type: 'GET',
                    beforeSend: function() {
                        if (typeof showLoader === 'function') {
                            showLoader();
                        }
                    },
                    dataSrc: function(json) {
                        if (typeof hideLoader === 'function') {
                            hideLoader();
                        }
                        return json.data || [];
                    },
                    error: function(xhr) {
                        if (typeof hideLoader === 'function') {
                            setTimeout(hideLoader, 1000);
                        }
                        const message = xhr.responseJSON && xhr.responseJSON.message ?
                            xhr.responseJSON.message :
                            'Failed to load MR entry list.';

                        Swal.fire({
                            title: 'Error',
                            text: message,
                            icon: 'error'
                        });
                    }
                },
                columns: [{
                        data: 'vno',
                        name: 'gin.vno'
                    },
                    {
                        data: 'vtype_label',
                        name: 'gin.vtype'
                    },
                    {
                        data: 'vdate_display',
                        name: 'gin.vdate'
                    },
                    {
                        data: 'subname',
                        name: 'subname'
                    },
                    {
                        data: 'chalno',
                        name: 'gin.chalno'
                    },
                    {
                        data: 'chaldate_display',
                        name: 'gin.chaldate'
                    },
                    {
                        data: 'total_amount',
                        name: 'total_amount',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'itemcount',
                        name: 'itemcount',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false,
                        className: 'ins'
                    }
                ],
                createdRow: function(row, data) {
                    $(row).attr('data-docid', data.docid);
                },
                language: {
                    processing: 'Loading MR entry data...'
                }
            });

            mrTable.on('preXhr.dt', function() {
                if (typeof showLoader === 'function') {
                    showLoader();
                }
            });

            mrTable.on('xhr.dt', function() {
                if (typeof hideLoader === 'function') {
                    hideLoader();
                }
            });

            // Delete confirmation for AJAX-rendered delete buttons
            $(document).on('click', '.delete-btn', function(e) {
                e.preventDefault();
                const deleteUrl = $(this).attr('href');
                Swal.fire({
                    title: 'Are you sure?',
                    text: 'Are you sure you want to delete this record?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#6c757d',
                    confirmButtonText: 'Yes, delete it',
                    cancelButtonText: 'No'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = deleteUrl;
                    }
                });
            });
            // ================= END MR ENTRY LIST TABLE =================

            let envinventory = @json(inventoryparameter());
            // console.log(envinventory);
            $(document).on('change', '#vtype', function() {
                let vtype = $(this).val();
                $('#partydiv').html('');
                selectedPOs = []; // Reset selected POs when type changes
                $('#pono').val(''); // Reset PO select
                $('#itemtable tbody').html(''); // Clear items
                $('#selectedpos').val(''); // Clear selected POs field
                $('#selectedposdisplay').text(''); // Clear POs display

                const postdata = {
                    'vtype': vtype
                };
                const options = {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}",
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify(postdata)
                };
                fetch('mrentryparty', options)
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();
                    })
                    .then(data => {
                        $('#mrno').val(data.mrno);
                        if (data.subgroup.length > 0) {
                            if (vtype == 'MRCR') {
                                let opt = `<label for="partycode" class="col-form-label">Party</label><select class="form-control" id="partycode" onchange="handlePartyChange(this.value)" name="partycode" required>
                                                    <option value=''>Select Party</option>`;
                                data.subgroup.forEach((row) => {
                                    opt +=
                                        `<option value='${row.sub_code}'>${row.name}</option>`;
                                });
                                opt += '</select>';
                                $('#partydiv').html(opt);
                                $('#chalno').prop('readonly', false);
                                $('#meminvno').prop('readonly', false);
                            } else {
                                let input =
                                    `<label for="partycode" class="col-form-label">Party</label>
                                                <input type="text" placeholder="Enter Party Name" class="form-control" onchange="handlePartyChange(this.value)" id="partycode" name="partycode" required>`;
                                $('#partydiv').html(input);
                                $('#chalno').prop('readonly', false);
                                $('#meminvno').prop('readonly', false);
                            }
                        } else {
                            pushNotify('error', 'MR Entry', 'Party Not Found', 'fade', 300, '', '',
                                true, true, true, 2000, 20, 20, 'outline', 'right top');
                        }
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });

            });

            let timer;
            $(document).on('input', '#chalno', function() {
                clearTimeout(timer);
                timer = setTimeout(() => {
                    let chalno = $(this).val();
                    if (chalno != '' && $('#partycode').val() != '') {
                        let postdata = {
                            'chalno': chalno,
                            'partycode': $('#partycode').val()
                        };
                        const options = {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': "{{ csrf_token() }}"
                            },
                            body: JSON.stringify(postdata)
                        };

                        fetch('checkduplicatechalan', options)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                if (data.duplicate === true) {
                                    $(this).val('');
                                    pushNotify('error', 'MR Entry', 'Chalan No. Already Exists',
                                        'fade', 300, '', '', true, true, true, 2000, 20, 20,
                                        'outline', 'right top');
                                }
                            })
                            .catch(error => {
                                console.error('There was a problem with the fetch operation:',
                                    error);
                            });
                    }
                }, 1000);
            });

            let timerinv;
            $(document).on('input', '#meminvno', function() {
                clearTimeout(timerinv);
                timerinv = setTimeout(() => {
                    let invoiceno = $(this).val();
                    if (invoiceno != '' && $('#partycode').val() != '') {
                        let postdata = {
                            'invoiceno': invoiceno,
                            'partycode': $('#partycode').val()
                        };
                        const options = {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': "{{ csrf_token() }}"
                            },
                            body: JSON.stringify(postdata)
                        };

                        fetch('checkduplicatememinvno', options)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                if (data.duplicate === true) {
                                    $(this).val('');
                                    pushNotify('error', 'MR Entry',
                                        'Invoice No. Already Exists', 'fade', 300, '', '',
                                        true, true, true, 2000, 20, 20, 'outline',
                                        'right top');
                                }
                            })
                            .catch(error => {
                                console.error('There was a problem with the fetch operation:',
                                    error);
                            });
                    }
                }, 1000);
            });

            $(document).on('click', '#additem', function() {
                let tbody = $('#itemtable tbody');
                fetch('purchaseitems')
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.items.length > 0) {
                            let items = data.items;
                            let godown = data.godown;
                            let units = data.units;
                            let rowCount = tbody.find('tr').length;
                            let newIndex = rowCount + 1;
                            // envinventory = data.envinventory;
                            $('#totalitem').val(newIndex);
                            let tr = `<tr>
                                                <td class='sr-col text-center'>${newIndex}</td>
                                                <td><select class='form-control items' name='item${newIndex}' id='item${newIndex}' required>
                                                    <option value=''>Select Item</option>
                                                    ${items.map(item => `<option data-expiry='${item.expiry_applicable}' data-lpurrate='${item.LPurRate}' data-convratio='${item.ConvRatio}' data-unit='${item.Unit}' data-issueunit='${item.IssueUnit}' data-purchrate='${item.PurchRate}' value='${item.Code}'>${item.Name}</option>`).join('')}
                                                </select>
                                                <input type='hidden' name='unithidden${newIndex}' id='unithidden${newIndex}'>
                                                <input type='hidden' name='wtunithidden${newIndex}' id='wtunithidden${newIndex}'>
                                                <input type='hidden' name='convratio${newIndex}' id='convratio${newIndex}'>
                                                </td>
                                                <td><input type='text' class='form-control specification' name='specification${newIndex}' id='specification${newIndex}' placeholder='Enter Specification'></td>
                                                <td><select class='form-control readonly units' name='unit${newIndex}' id='unit${newIndex}' required>
                                                    <option value=''>Select Unit</option>
                                                ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                                <td class='none'><select class='form-control wtunits' name='wtunit${newIndex}' id='wtunit${newIndex}'>
                                                    <option value=''>Select Wt. Unit</option>
                                                ${units.map(row => `<option value='${row.ucode}'>${row.name}</option>`).join('')}</select></td>
                                                <td><input type='text' class='form-control chalqtys' name='chalqty${newIndex}' id='chalqty${newIndex}' placeholder='Chal. Qty.'></td>
                                                <td><input type='text' class='form-control recdqtys' name='recdqty${newIndex}' id='recdqty${newIndex}' placeholder='Recd. Qty.'></td>
                                                <td><input type='text' class='form-control rejqtys' name='rejqty${newIndex}' id='rejqty${newIndex}' placeholder='Rej. Qty.'></td>
                                                <td><input type='text' class='form-control accqtys' name='accqty${newIndex}' id='accqty${newIndex}' placeholder='Acc. Qty.' readonly></td>
                                                <td class='none'><input type='hidden' class='form-control wtqtys' name='wtqty${newIndex}' id='wtqty${newIndex}' placeholder='Wt. Qty.'></td>
                                                <td><input type='text' class='form-control rates' name='itemrate${newIndex}' id='itemrate${newIndex}' placeholder='Enter Rate'></td>
                                                <td><input type='text' class='form-control amounts' name='amount${newIndex}' id='amount${newIndex}' placeholder='Amount'></td>
                                                <td><select class='form-control godowns' name='godown${newIndex}' id='godown${newIndex}' required>
                                                    <option value=''>Select Godown</option>
                                                ${godown.map(row => `<option value='${row.scode}' ${envinventory.purchasegodown == row.scode ? 'selected' : ''}>${row.name}</option>`).join('')}</select></td>
                                                <td><input type='text' class='form-control batch_nos' name='batch_no${newIndex}' id='batch_no${newIndex}' placeholder='Batch No.' style='display:none;' minlength='1'></td>
                                                <td><input type='date' class='form-control mfg_dates' name='mfg_date${newIndex}' id='mfg_date${newIndex}' style='display:none;'></td>
                                                <td><input type='date' class='form-control expiry_dates' name='expiry_date${newIndex}' id='expiry_date${newIndex}' style='display:none;'></td>
                                                <td><span class='removerow'><i class="fa-solid fa-eraser"></i></span></td>
                                                </tr>`;
                            $('#itemtable tbody').append(tr);

                            let el = $(`#item${newIndex}`);
                            el.select2({
                                width: '100%'
                            });
                            el.val('').trigger('change');

                            calculateGrandTotal();
                        } else {
                            pushNotify('error', 'MR Entry', 'Items Not Found', 'fade', 300, '', '',
                                true, true, true, 2000, 20, 20, 'outline', 'right top');
                        }
                    })
                    .catch(error => {
                        console.error('There was a problem with the fetch operation:', error);
                    });
            });

            $(document).on('click', '.removerow', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                row.remove();
                calculateGrandTotal();

                $('#itemtable tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $('#totalitem').val(adjustedIndex);
                    $(this).find('td.sr-col').text(index + 1);
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
                checkExpiryColumns();
            });

            $(document).on('change', '.items', async function() {
                let index = $(this).closest('tr').index() + 1;
                let value = $(this).val();

                // Agar koi item select nahi hua to skip
                if (!value || value === '') {
                    checkExpiryColumns();
                    return;
                }
                let unit = $(this).find('option:selected').data('unit');
                let issueunit = $(this).find('option:selected').data('issueunit');
                let purchrate = $(this).find('option:selected').data('purchrate');
                let convratio = $(this).find('option:selected').data('convratio');
                let lpurrate = $(this).find('option:selected').data('lpurrate');
                let expiryApplicable = $(this).find('option:selected').data('expiry');

                // Show/hide batch no, mfg date, expiry date based on expiry_applicable
                if (parseInt(expiryApplicable) === 1) {
                    $(`#batch_no${index}`).show().attr('required', true);
                    $(`#mfg_date${index}`).show();
                    $(`#expiry_date${index}`).show().attr('required', true);
                    Swal.fire({
                        title: 'Expiry Applicable Item',
                        html: `
                            <p style="text-align:left;margin-bottom:12px;">
                                Item <b>${$(this).find('option:selected').text()}</b> requires batch and expiry details.
                            </p>
                            <div style="text-align:left;margin-bottom:8px;">
                                <label style="font-weight:600;font-size:13px;">Batch No. <span style="color:#e74c3c;">*</span></label>
                                <input type="text" id="swal-batch" class="swal2-input" placeholder="Enter Batch No." style="margin:4px 0 0 0;width:100%;">
                            </div>
                            <div style="text-align:left;margin-bottom:8px;">
                                <label style="font-weight:600;font-size:13px;">Mfg. Date</label>
                                <input type="date" id="swal-mfg" class="swal2-input" style="margin:4px 0 0 0;width:100%;">
                            </div>
                            <div style="text-align:left;margin-bottom:4px;">
                                <label style="font-weight:600;font-size:13px;">Expiry Date</label>
                                <input type="date" id="swal-expiry" class="swal2-input" style="margin:4px 0 0 0;width:100%;">
                            </div>`,
                        icon: 'info',
                        confirmButtonText: 'Save & Continue',
                        confirmButtonColor: '#3085d6',
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                        preConfirm: () => {
                            const batch = document.getElementById('swal-batch').value.trim();
                            const expiry = document.getElementById('swal-expiry').value.trim();
                            if (!batch) {
                                Swal.showValidationMessage('Batch No. is required.');
                                return false;
                            }
                            return {
                                batch: batch,
                                mfg: document.getElementById('swal-mfg').value.trim(),
                                expiry: expiry
                            };
                        }
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $(`#batch_no${index}`).val(result.value.batch);
                            $(`#mfg_date${index}`).val(result.value.mfg);
                            $(`#expiry_date${index}`).val(result.value.expiry);
                        }
                    });
                } else {
                    $(`#batch_no${index}`).hide().removeAttr('required').val('');
                    $(`#mfg_date${index}`).hide().val('');
                    $(`#expiry_date${index}`).hide().removeAttr('required').val('');
                }
                checkExpiryColumns();

                let itemratep = 0.00;

                if (envinventory.itemratemrbasedon === 'Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Last Purchase Rate') {
                    itemratep = purchrate;
                } else if (envinventory.itemratemrbasedon === 'Party Wise Last Purchase Rate') {
                    let postdatap = {
                        itemcode: value,
                        partycode: $('#partycode').val()
                    };

                    const postdata = {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': "{{ csrf_token() }}",
                        },
                        body: JSON.stringify(postdatap)
                    };

                    try {
                        let response = await fetch('partywiserate', postdata);
                        let data = await response.json();

                        if (data.status === 'error') {
                            itemratep = purchrate;
                        } else {
                            itemratep = data.stock.rate;
                        }
                    } catch (error) {
                        console.log(error);
                    }
                }

                $(`#unit${index}`).val(unit);
                $(`#unithidden${index}`).val(unit);
                $(`#wtunit${index}`).val(issueunit);
                $(`#wtunithidden${index}`).val(issueunit);
                $(`#itemrate${index}`).val(itemratep);
                $(`#convratio${index}`).val(convratio);
            });

            function sameval(firstinput, secondinput) {
                $(document).on('change', firstinput, function() {
                    let index = $(this).closest('tr').index() + 1;
                    let curval = $(`#${secondinput}${index}`).val();
                    if ($(this).val() != curval) {
                        $(this).val(curval);
                    }
                });
            }

            sameval('.units', 'unithidden');
            sameval('.wtunits', 'wtunithidden');

            // Expiry columns (header + cells) show/hide based on whether ANY row has expiry item selected
            function checkExpiryColumns() {
                let hasExpiry = false;
                $('#itemtable tbody tr').each(function() {
                    let exp = parseInt($(this).find('.items option:selected').data('expiry')) || 0;
                    if (exp === 1) {
                        hasExpiry = true;
                        return false;
                    } // break
                });
                if (hasExpiry) {
                    $('#th-batch, #th-mfg, #th-expiry').show();
                } else {
                    $('#th-batch, #th-mfg, #th-expiry').hide();
                }
            }

            function wtqty(convratio, accqty, index, rate) {
                let wtqty = parseFloat(convratio) * parseFloat(accqty);
                let amount = parseFloat(accqty) * parseFloat(rate);
                $(`#wtqty${index}`).val(wtqty.toFixed(2));
                $(`#amount${index}`).val(amount.toFixed(2));
                calculateGrandTotal();
            }

            $(document).on('input', '.chalqtys', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let chalqty = $(this).val();
                $(`#recdqty${index}`).val(chalqty);
                $(`#accqty${index}`).val(chalqty);
                $(`#rejqty${index}`).val('0');
                wtqty($(`#convratio${index}`).val(), $(`#accqty${index}`).val(), index, $(
                    `#itemrate${index}`).val());
            });

            $(document).on('input', '.rejqtys', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let rejqty = $(this).val();
                let chalqty = parseFloat($(`#chalqty${index}`))
                let newrecdqty = parseFloat($(`#chalqty${index}`).val()) - parseFloat(rejqty);
                $(`#recdqty${index}`).val(newrecdqty);
                $(`#accqty${index}`).val(newrecdqty);
                wtqty($(`#convratio${index}`).val(), $(`#accqty${index}`).val(), index, $(
                    `#itemrate${index}`).val())
            });

            $(document).on('input', '.recdqtys', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                let recdqty = $(this).val();
                let chalqty = parseFloat($(`#chalqty${index}`).val());
                let rejqty = chalqty - recdqty;
                $(`#rejqty${index}`).val(rejqty);
                $(`#accqty${index}`).val(recdqty);
                wtqty($(`#convratio${index}`).val(), $(`#accqty${index}`).val(), index, $(
                    `#itemrate${index}`).val())
            });

            $(document).on('input', '.rates', function() {
                if ($(this).val() < 0) {
                    $(this).val('0.00');
                }
                let index = $(this).closest('tr').index() + 1;
                wtqty($(`#convratio${index}`).val(), $(`#accqty${index}`).val(), index, $(
                    `#itemrate${index}`).val())
            });


            $(document).on('mousedown', '.units, .wtunits', function(e) {
                e.preventDefault();
            });

            $('#mrentryform').on('submit', function(e) {
                calculateGrandTotal();
                e.preventDefault();
                let itemtable = $('#itemtable tbody tr').length;

                if (itemtable < 1) {
                    Swal.fire({
                        title: 'Validation Error',
                        text: 'Atleast Select 1 Item to Submit!',
                        icon: 'error',
                        confirmButtonText: 'Okay'
                    });
                    return;
                }

                // Expiry applicable items ka batch/expiry check
                let expiryError = [];
                $('#itemtable tbody tr').each(function(index) {
                    let rowNo = index + 1;
                    let selectedOption = $(this).find('.items option:selected');
                    let expiryApplicable = parseInt(selectedOption.data('expiry')) || 0;

                    if (expiryApplicable === 1) {
                        let batchNo = $.trim($(`#batch_no${rowNo}`).val());
                        let expiryDate = $.trim($(`#expiry_date${rowNo}`).val());

                        if (batchNo === '' || expiryDate === '') {
                            expiryError.push(`<b>Row ${rowNo} — ${itemName}:</b> Batch No. and Expiry Date are required.`);
                        }
                    }
                });

                if (expiryError.length > 0) {
                    Swal.fire({
                        title: '⚠️ Expiry Details Missing!',
                        html: '<div style="text-align:left;font-size:14px;">' + expiryError.join('<br>') + '</div><br><span style="color:#e74c3c;font-weight:600;">Please fill in Batch No. and Expiry Date for the above items before submitting.</span>',
                        icon: 'warning',
                        confirmButtonText: 'OK, I will fill the details',
                        confirmButtonColor: '#e74c3c',
                        allowOutsideClick: false,
                        allowEscapeKey: false,
                    });
                    return;
                }

                this.submit();
            });


        });

        function calculateGrandTotal() {
            let grandTotal = 0;
            $('.amounts').each(function() {
                let val = parseFloat($(this).val()) || 0;
                grandTotal += val;
            });
            $('#totalamount').val(grandTotal.toFixed(2));
        }
    </script>
@endsection
