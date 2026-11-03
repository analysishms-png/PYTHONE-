@extends('property.layouts.main')
@section('main-container')
    <style>
        table#moduleshow th,
        table#moduleshow td {
            padding: 0.5rem;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="modal fade" tabindex="-1" id="posdetailmodal" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="posModalLabel">Point Of Sale</h5>
                                            <button id="modalclosebtn" type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="row g-3">
                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="posdiscountallowupto" class="form-label">Discount Allow Upto</label>
                                                            <input type="number" class="form-control" id="posdiscountallowupto" name="posdiscountallowupto">
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="possettlementyn" class="form-label">Settlement Allow</label>
                                                            <select class="form-control" id="possettlementyn" name="possettlementyn">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="editelementinkot" class="form-label">Change KOT Item/Qty</label>
                                                            <select class="form-control" id="editelementinkot" name="editelementinkot">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="freeitemkot" class="form-label">Free Item Allow KOT</label>
                                                            <select class="form-control" id="freeitemkot" name="freeitemkot">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="freeitemsale" class="form-label">Free Item Allow Sale</label>
                                                            <select class="form-control" id="freeitemsale" name="freeitemsale">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="discappsale" class="form-label">Discount Application on Sale</label>
                                                            <select class="form-control" id="discappsale" name="discappsale">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="refundcashcardamt" class="form-label">Refund Cash Card Amt</label>
                                                            <select class="form-control" id="refundcashcardamt" name="refundcashcardamt">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="allowchkouttimechange" class="form-label">Allow Checkout Time Change</label>
                                                            <select class="form-control" id="allowchkouttimechange" name="allowchkouttimechange">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="allowadvancechargeedit" class="form-label">Allow Advance Charge Edit</label>
                                                            <select class="form-control" id="allowadvancechargeedit" name="allowadvancechargeedit">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="voucherverify" class="form-label">Verify Voucher</label>
                                                            <select class="form-control" id="voucherverify" name="voucherverify">
                                                                <option value="1">Yes</option>
                                                                <option value="0">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="billcancel" class="form-label">Cancel Bill</label>
                                                            <select class="form-control" id="billcancel" name="billcancel">
                                                                <option value="1">Yes</option>
                                                                <option value="0">No</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-sm-6 col-lg-4">
                                                        <div class="form-group">
                                                            <label for="deleteguestcharges" class="form-label">Delete Guest Charges</label>
                                                            <select class="form-control" id="deleteguestcharges" name="deleteguestcharges">
                                                                <option value="Y">Yes</option>
                                                                <option value="N">No</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button id="posusrsave" type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 p-3 border rounded">
                                <h5 class="mb-3">Copy User Permission</h5>
                                <div class="row align-items-end">
                                    <div class="col-12 col-md-4">
                                        <label for="copyfromusername" class="col-form-label">Username</label>
                                        <select id="copyfromusername" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($users as $item)
                                                <option value="{{ $item->u_name }}">{{ $item->name }} - {{ $item->u_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <label for="copytousername" class="col-form-label">To Copy User</label>
                                        <select id="copytousername" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($users as $item)
                                                <option value="{{ $item->u_name }}">{{ $item->name }} - {{ $item->u_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-12 col-md-2">
                                        <button id="copyuserpermissionbtn" type="button" class="btn btn-outline-primary" disabled>
                                            Copy User
                                            <i class="fa-solid fa-copy"></i>
                                        </button>
                                    </div>
                                </div>
                                <small id="copyuserpermissionmsg" class="text-danger d-none"></small>
                            </div>

                            <form action="{{ route('userparamsubmit') }}" method="post">
                                @csrf
                                <input type="hidden" name="validatecheckbox" id="validatecheckbox">
                                <input type="hidden" name="compcode" id="compcode">
                                <div id="maininputs" class="row justify-content-around mb-1">
                                    <div class="">
                                        <label for="username" class="col-form-label">Username</label>
                                        <select name="username" id="username" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($users as $item)
                                                <option value="{{ $item->u_name }}">{{ $item->name }} - {{ $item->u_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="firms" class="col-form-label">Firm Name</label>
                                        <select name="firms" id="firms" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($firms as $item)
                                                <option data-compcode="{{ $item->comp_code }}" value="{{ $item->propertyid }}" selected>{{ $item->comp_name }} {{ $item->cfyear }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="sections" class="col-form-label">Section</label>
                                        <select name="sections" id="sections" class="form-control" disabled required>
                                            <option value="">Select</option>
                                            @foreach ($sections as $item)
                                                <option value="{{ $item->opt1 }}">{{ $item->module }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="sections" class="col-form-label">‎ </label></br>
                                        <button style="height: 32px; padding:0.375rem 0.75rem;" type="submit"
                                            class="btn btn-outline-primary" name="userperamsubmit"
                                            id="userperamsubmit">Submit
                                            <i class="fa-solid fa-file-export"></i></button>
                                    </div>
                                    <div id="posadddiv" class="none">
                                        <label for="posbtn" class="col-form-label">‎ </label></br>
                                        <button id="posdetailbtn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#posModal">
                                            Additional
                                        </button>
                                    </div>
                                </div>
                                <div id="btngroup" class="row none d-flex justify-content-around mt-2 mb-1">
                                    <button type="button" id="allowallbtn"
                                        class="btn mb-1 btn-outline-success allowallbtn">View All</button>
                                    <button type="button" id="addallbtn"
                                        class="btn mb-1 btn-outline-secondary addallbtn">Add All</button>
                                    <button type="button" id="editallbtn"
                                        class="btn mb-1 btn-outline-warning editallbtn">Edit All</button>
                                    <button type="button" id="deletebtn"
                                        class="btn mb-1 btn-outline-danger deletebtn">Delete All</button>
                                    <button type="button" id="printallbtn"
                                        class="btn mb-1 btn-outline-dark printallbtn">Print All</button>
                                    <button type="button" id="revokeallbtn"
                                        class="btn mb-1 btn-outline-info revokeallbtn">Revoke All</button>
                                </div>
                                <table id="moduleshow" class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Sr.</th>
                                            <th>Name</th>
                                            <th>View</th>
                                            <th>Insert</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                            <th>Print</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            function validateCopyUserPermission() {
                let fromUser = $('#copyfromusername').val();
                let toUser = $('#copytousername').val();
                let message = '';

                if (!fromUser || !toUser) {
                    message = 'Select both users to copy permissions.';
                } else if (fromUser === toUser) {
                    message = 'Username and To Copy User cannot be same.';
                }

                $('#copyuserpermissionbtn').prop('disabled', message !== '');
                $('#copyuserpermissionmsg').toggleClass('d-none', message === '').text(message);
            }

            $(document).on('change', '#copyfromusername, #copytousername', validateCopyUserPermission);

            $(document).on('click', '#copyuserpermissionbtn', function() {
                let fromUser = $('#copyfromusername').val();
                let toUser = $('#copytousername').val();

                validateCopyUserPermission();

                if ($(this).prop('disabled')) {
                    return;
                }

                Swal.fire({
                    title: 'Copy User Permission',
                    text: `Copy permissions from ${fromUser} to ${toUser}? Existing permissions for ${toUser} will be replaced.`,
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Copy',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (!result.isConfirmed) {
                        return;
                    }

                    $('#copyuserpermissionbtn').prop('disabled', true).text('Copying...');

                    $.ajax({
                        url: "{{ route('copyuserpermission') }}",
                        type: 'POST',
                        data: {
                            from_username: fromUser,
                            to_username: toUser,
                            _token: '{{ csrf_token() }}'
                        },
                        success: function(response) {
                            Swal.fire({
                                title: 'Copy User Permission',
                                text: response.message || 'User permissions copied successfully.',
                                icon: 'success',
                                timer: 2500
                            }).then(() => {
                                window.location.reload();
                            });
                        },
                        error: function(xhr) {
                            let message = xhr.responseJSON?.message || 'Unable to copy user permissions.';
                            Swal.fire('Copy User Permission', message, 'error');
                            $('#copyuserpermissionbtn').text('Copy User');
                            validateCopyUserPermission();
                        }
                    });
                });
            });

            $('#posdetailbtn').click(function() {
                $('#posdetailmodal').modal('show');
                // Fetch existing data and populate the fields
                let username = $('#username').val();
                let compcode = $('#firms').val();
                // ajax
                $.ajax({
                    url: '/getposuserdetails',
                    type: 'POST',
                    data: {
                        username: username,
                        compcode: compcode,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(response) {
                        $('#posdiscountallowupto').val(response.userpermission.posdiscountallowupto);
                        $('#possettlementyn').val(response.userpermission.possettlementyn);
                        $('#editelementinkot').val(response.userpermission.editelementinkot);
                        $('#freeitemallow').val(response.userpermission.freeitemallow);
                        $('#refundcashcardamt').val(response.userpermission.refundcashcardamt);
                        $('#voucherverify').val(response.userpermission.voucherverify);
                        $('#billcancel').val(response.userpermission.billcancel);
                        $('#deleteguestcharges').val(response.userpermission.deleteguestcharges ?? 'Y');
                        $('#allowchkouttimechange').val(response.userpermission.allowchkouttimechange ?? 'N');
                        $('#allowadvancechargeedit').val(response.userpermission.allowadvancechargeedit ?? 'N');
                        $('#freeitemkot').val(response.userdata.freeitemkot);
                        $('#freeitemsale').val(response.userdata.freeitemsale);
                        $('#discappsale').val(response.userdata.discappsale);
                    },
                    error: function(xhr, status, error) {
                        console.error('Error fetching POS user details:', error);
                    }
                });

            });
            $(document).on('click', '#posusrsave', function() {
                let updateposuserxhr = new XMLHttpRequest();
                let username = $('#username').val();
                let posdiscountallowupto = $('#posdiscountallowupto').val();
                let possettlementyn = $('#possettlementyn').val();
                let editelementinkot = $('#editelementinkot').val();
                let freeitemallow = $('#freeitemallow').val();
                let refundcashcardamt = $('#refundcashcardamt').val();
                let allowchkouttimechange = $('#allowchkouttimechange').val();
                let allowadvancechargeedit = $('#allowadvancechargeedit').val();
                let billcancel = $('#billcancel').val();
                let freeitemkot = $('#freeitemkot').val();
                let freeitemsale = $('#freeitemsale').val();
                let discappsale = $('#discappsale').val();
                let voucherverify = $('#voucherverify').val();
                let deleteguestcharges = $('#deleteguestcharges').val();

                let posData = {
                    username: username,
                    posdiscountallowupto: posdiscountallowupto,
                    possettlementyn: possettlementyn,
                    editelementinkot: editelementinkot,
                    freeitemallow: freeitemallow,
                    refundcashcardamt: refundcashcardamt,
                    allowchkouttimechange: allowchkouttimechange,
                    allowadvancechargeedit: allowadvancechargeedit,
                    billcancel: billcancel,
                    deleteguestcharges: deleteguestcharges,
                    freeitemkot: freeitemkot,
                    freeitemsale: freeitemsale,
                    discappsale: discappsale,
                    voucherverify: voucherverify,
                    _token: $('meta[name="csrf-token"]').attr('content')
                };

                let pospost = JSON.stringify(posData);

                updateposuserxhr.open('POST', '/updateposuserxhr', true);
                updateposuserxhr.setRequestHeader('Content-type', 'application/json');
                updateposuserxhr.onreadystatechange = function() {
                    if (updateposuserxhr.readyState === 4) {
                        if (updateposuserxhr.status === 200) {
                            let resultpos = JSON.parse(updateposuserxhr.responseText);
                            pushNotify('success', 'User Permission', resultpos.message, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            $('#posdetailmodal').modal('hide');

                        } else {
                            console.error('Error:', updateposuserxhr.statusText);
                        }
                    }
                };
                updateposuserxhr.send(pospost);
            });

            $(document).on('change', '#username', function() {
                let uname = $(this).val();
                let tbody = $('#moduleshow tbody');
                tbody.empty();
                if (uname != '') {
                    $('#sections').prop('disabled', false);
                    $('#sections').val('');
                } else {
                    $('#sections').prop('disabled', true);
                    $('#sections').val('');
                    $('#btngroup').addClass('none');
                }
            });

            $(document).on('change', '#sections', function() {
                let opt1 = $(this).val();
                let unamesend = $('#username').val();
                if (opt1 != '') {
                    $('#btngroup').removeClass('none');
                } else {
                    $('#btngroup').addClass('none');
                }
                // if (opt1 == '17') {
                $('#posadddiv').removeClass('none');
                // } else {
                // $('#posadddiv').addClass('none');
                // }

                let compcode = $('#firms').find('option:selected').data('compcode');
                $('#compcode').val(compcode);
                let maintext = $(this).text();
                let maininputs = $('#maininputs');
                let menuxhr = new XMLHttpRequest();
                let tbody = $('#moduleshow tbody');
                let thead = $('#moduleshow thead');
                tbody.empty();
                menuxhr.open('POST', '/menulist', true);
                menuxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                menuxhr.onreadystatechange = function() {
                    if (menuxhr.readyState === 4 && menuxhr.status === 200) {
                        let results = JSON.parse(menuxhr.responseText);
                        let userparam = results.userparam;
                        $('#posdiscountallowupto').val(userparam.posdiscountallowupto);
                        $('#possettlementyn').val(userparam.possettlementyn);
                        $('#editelementinkot').val(userparam.editelementinkot);
                        $('#freeitemallow').val(userparam.freeitemallow);
                        $('#refundcashcardamt').val(userparam.refundcashcardamt);
                        $('#allowchkouttimechange').val(userparam.allowchkouttimechange ?? 'N');
                        $('#allowadvancechargeedit').val(userparam.allowadvancechargeedit ?? 'N');
                        $('#billcancel').val(userparam.billcancel);
                        $('#deleteguestcharges').val(userparam.deleteguestcharges ?? 'Y');
                        let menus = results.menus;
                        let menuuser = results.userchecked;
                        tdata = '';
                        let sn = 1;
                        menus.forEach((data) => {
                            let code = '';
                            menuuser.forEach((chkdata) => {
                                if (chkdata.code == data.code) {
                                    code = chkdata.code;
                                    ins = chkdata.ins;
                                    edit = chkdata.edit;
                                    del = chkdata.del;
                                    print = chkdata.print;
                                }
                            });
                            tdata += `
                                    <tr>
                                        <td class="font-weight-semi-bold">${data.opt3 == 0 ? sn++ : ''}</td>
                                        <td class="${data.opt3 == 0 ? 'font-weight-semi-bold text-purple' : 'font-weight-light'}">${data.module}</td>
                                        <td><input ${data.code == code ? 'checked' : ''} type="checkbox" data-id="${data.opt1}${data.opt2}" class="viewclass ${data.opt3 == 0 ? 'menucheckbox' : ''}" name="view${data.code}" id="view${data.code}"></td>
                                        <td>${data.opt3 != 0 ? `<input ${data.code == code && ins == 1 ? 'checked' : ''} type="checkbox" data-id="${data.opt1}${data.opt2}" class="insertclass" name="insert${data.code}" id="insert${data.code}">` : ''}</td>
                                        <td>${data.opt3 != 0 ? `<input ${data.code == code && edit == 1 ? 'checked' : ''} type="checkbox" data-id="${data.opt1}${data.opt2}" class="editclass" name="edit${data.code}" id="edit${data.code}">` : ''}</td>
                                        <td>${data.opt3 != 0 ? `<input ${data.code == code && del == 1 ? 'checked' : ''} type="checkbox" data-id="${data.opt1}${data.opt2}" class="deleteclass" name="delete${data.code}" id="delete${data.code}">` : ''}</td>
                                        <td>${data.opt3 != 0 ? `<input ${data.code == code && print == 1 ? 'checked' : ''} type="checkbox" data-id="${data.opt1}${data.opt2}" class="printclass" name="print${data.code}" id="print${data.code}">` : ''}</td>
                                    </tr>
                                `;
                        });
                        tbody.append(tdata);
                    }
                };
                menuxhr.send(`compcode=${compcode}&opt1=${opt1}&uname=${unamesend}&_token={{ csrf_token() }}`);
            });

            $(document).on('change', '.menucheckbox', function() {
                let isChecked = $(this).is(':checked');
                let dataId = $(this).data('id');
                $(`input[type="checkbox"][data-id="${dataId}"]`).prop('checked', isChecked);
            });

            let clickcount = 0;
            $(document).on('click', '.allowallbtn', function() {
                clickcount++;
                let isChecked = clickcount % 2 === 1;
                $(`input[id^="view"]`).prop('checked', isChecked);
            });
            let clickcount2 = 0;
            $(document).on('click', '.editallbtn', function() {
                clickcount2++;
                let isChecked = clickcount2 % 2 === 1;
                $(`input[id^="edit"]`).prop('checked', isChecked);
            });
            let clickcount3 = 0;
            $(document).on('click', '.deletebtn', function() {
                clickcount3++;
                let isChecked = clickcount3 % 2 === 1;
                $(`input[id^="delete"]`).prop('checked', isChecked);
            });
            let clickcount4 = 0;
            $(document).on('click', '.printallbtn', function() {
                clickcount4++;
                let isChecked = clickcount4 % 2 === 1;
                $(`input[id^="print"]`).prop('checked', isChecked);
            });
            let clickcount5 = 0;
            $(document).on('click', '.addallbtn', function() {
                clickcount5++;
                let isChecked = clickcount5 % 2 === 1;
                $(`input[id^="insert"]`).prop('checked', isChecked);
            });
            let clickcount6 = 0;
            $(document).on('click', '.revokeallbtn', function() {
                clickcount6++;
                let isChecked = clickcount6 % 2 === 1;
                $(`input[type="checkbox"]`).prop('checked', isChecked);
            });

            $(document).on('change', '.viewclass', function() {
                let dataid = $(this).data('id');
                let viewchk = $(this);
                let idnumber = viewchk.attr('id').toString().match(/\d+/)[0];
                if (viewchk.is(':checked') == false) {
                    $(`#insert${idnumber}`).prop('checked', false);
                    $(`#edit${idnumber}`).prop('checked', false);
                    $(`#delete${idnumber}`).prop('checked', false);
                    $(`#print${idnumber}`).prop('checked', false);
                } else {
                    $(`input[type="checkbox"].menucheckbox[data-id="${dataid}"]`).prop('checked', true);
                    $(`#insert${idnumber}`).prop('checked', true);
                    $(`#edit${idnumber}`).prop('checked', true);
                    $(`#delete${idnumber}`).prop('checked', true);
                    $(`#print${idnumber}`).prop('checked', true);
                }
            });


            $(document).on('change', '.insertclass, .editclass, .deleteclass, .printclass', function() {
                let dataid = $(this).data('id');
                let ischeck = $(this);
                let idnumber = ischeck.attr('id').toString().match(/\d+/)[0];
                if (ischeck.is(':checked')) {
                    $(`input[type="checkbox"].menucheckbox[data-id="${dataid}"]`).prop('checked', true);
                    $(`#view${idnumber}`).prop('checked', true);
                }
            });

            setInterval(function() {
                if ($('input[type="checkbox"]:checked').length > 0) {
                    $('#validatecheckbox').val('checked');
                } else {
                    $('#validatecheckbox').val('not checked');
                }
            }, 1000);
        });
    </script>
@endsection
