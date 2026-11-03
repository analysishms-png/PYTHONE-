@extends('property.layouts.main')
@section('main-container')
    @php
        use Illuminate\Support\Facades\Date;
    @endphp
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card ">
                        <div class="card-body">
                            <form action="{{ route('banqsundrysetstore') }}" name="banqsundrysettingform" id="banqsundrysettingform" method="post">
                                @csrf
                                <input type="hidden" name="dcodechanged" id="dcodechanged" value="dcodechanged">
                                <div class="row">
                                    <div class="">
                                        <div class="form-group">
                                            <label for="vtype" class="col-form-label">Voucher Type</label>
                                            <select name="vtype" id="vtype" class="form-control" required>
                                                <option value="{{ $vtypes->dcode }}">{{ $vtypes->name }}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="applicablefrom" class="col-form-label">Applicable From</label>
                                            <input type="date" name="applicablefrom" id="applicablefrom"
                                                class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="table-responsive">
                                        <table id="sundrysetting" class="table table-hover table-striped">
                                            <thead class="table-info">
                                                <tr>
                                                    <th>Sn</th>
                                                    <th>Name</th>
                                                    <th>Display Name</th>
                                                    <th>Calc Formula</th>
                                                    <th>P/A</th>
                                                    <th>Value</th>
                                                    <th>Bold</th>
                                                    <th>Revenue Charge</th>
                                                    <th>A/M</th>
                                                    <th>Post</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="text-xl-right">
                                    <button type="button" name="addrow" id="addrow" class="btn btn-outline-dark">Add Row <i
                                            class="fa-solid fa-arrow-down"></i></button>
                                </div>
                                <div class="text-center mt-3 mb-3">
                                    <button type="submit" id="submitBtn" name="submitBtn" class="btn btn-success">Submit</button>
                                </div>
                            </form>

                            <div class="table-responsive">
                                <table id="sundrysettable"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Vtype</th>
                                            <th>App Date</th>
                                            <th>Action</th>
                                            <th class="none">code</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $sn }}</td>
                                                <td>{{ $row->departname }}</td>
                                                <td>{{ Date::Parse($row->appdate)->format('d-m-Y') }}</td>
                                                <td>
                                                    <a
                                                        href="updatebanquetsundrysetting?id={{ base64_encode($row->id) }}&vtype={{ base64_encode($row->vtype) }}">
                                                        <button class="btn
                                 btn-success btn-sm"><i class="fa-regular fa-pen-to-square"></i>Edit
                                                        </button>
                                                    </a>
                                                </td>
                                                <td class="none">{{ $row->id }}</td>
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
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function() {
            // handleFormSubmission('#purchsundrysettingform', '#submitBtn', 'purcsundrysetstore');
            let adjustedIndex = 1;
            $('#vtype').on('change', function() {
                let tbody = $('#sundrysetting tbody');
                let dcode = $(this).val();
                $('#dcodechanged').val(dcode);
                if (dcode != '') {
                    tbody.empty();
                    let sundrysettingxhr = new XMLHttpRequest();
                    sundrysettingxhr.open('POST', 'fetchsundrytype', true);
                    sundrysettingxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    sundrysettingxhr.onreadystatechange = function() {
                        if (sundrysettingxhr.readyState === 4 && sundrysettingxhr.status === 200) {
                            let responseData = JSON.parse(sundrysettingxhr.responseText);
                            let results = responseData.sundrytype;
                            let revmast = responseData.revmast;
                            let sundrynames = responseData.sundrynames;
                            if (Array.isArray(results)) {
                                results.forEach(function(item, index) {
                                    let row = $('<tr>');
                                    adjustedIndex = index + 1;
                                    let data = `
                                <td><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span> <p style="display: contents;">${adjustedIndex}</p></td>
                                <td>
                                 <select name="sundryname${adjustedIndex}" id="sundryname${adjustedIndex}" class="form-control sundryname w-auto">
                                    <option value="">Select</option>
                                    ${sundrynames.map(sun => `<option value="${sun.sundry_code}" ${sun.sundry_code == item.sundry_code ? 'selected' : ''}>${sun.name}</option>`).join('')}
                                 </select>
                                </td>
                                <td><input type="text" class="form-control" name="dispname${adjustedIndex}" id="dispname${adjustedIndex}" value="${item.disp_name}"></td>
                                <td><input type="text" class="form-control calcformula" name="calcformula${adjustedIndex}" id="calcformula${adjustedIndex}" value="${item.calcformula}"></td>
                                <td style="max-width: 1rem !important;"><input readonly type="text" class="form-control peroramt" name="peroramt${adjustedIndex}" id="peroramt${adjustedIndex}" value="${item.peroramt}"></td>
                                <td style="max-width: 5rem !important;"><input oninput="handlesundval(event)" type="text" class="form-control sundval" name="vals${adjustedIndex}" id="vals${adjustedIndex}" value="${item.vals}"></td>
                                <td style="max-width: 4rem !important;"><input readonly type="text" class="form-control boldyn" name="boldyn${adjustedIndex}" id="boldyn${adjustedIndex}" value="Yes"></td>
                                <td>
                                    <select name="revenuecharge${adjustedIndex}" id="revenuecharge${adjustedIndex}" class="form-control">
                                        <option value="">Select</option>
                                        ${revmast.map(rev => `<option value="${rev.rev_code}">${rev.name}</option>`).join('')}
                                    </select>
                                </td>
                                <td style="max-width: 6rem !important;"><input readonly type="text" class="form-control automan" name="automan${adjustedIndex}" id="automan${adjustedIndex}" value="Manual"></td>
                                <td style="max-width: 6rem !important;"><input readonly type="text" class="form-control postyn" name="postyn${adjustedIndex}" id="postyn${adjustedIndex}" value="Yes"></td>`;
                                    row.append(data);
                                    tbody.append(row);
                                });
                            } else {
                                console.error('Received data is not an array:', results);
                            }
                        }
                    }
                    sundrysettingxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                } else {
                    tbody.empty();
                }
            });

            $('#addrow').on('click', function() {
                let tbody = $('#sundrysetting tbody');
                let dcode = $('#dcodechanged').val();
                let sundrysettingxhr = new XMLHttpRequest();
                sundrysettingxhr.open('POST', 'fetchsundrytype', true);
                sundrysettingxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                sundrysettingxhr.onreadystatechange = function() {
                    if (sundrysettingxhr.readyState === 4 && sundrysettingxhr.status === 200) {
                        let responseData = JSON.parse(sundrysettingxhr.responseText);
                        let results = responseData.sundrytype;
                        let revmast = responseData.revmast;
                        let sundrynames = responseData.sundrynames;
                        let rowCount = tbody.find('tr').length;
                        let newIndex = rowCount + 1;
                        let newRow = `
                <tr>
                    <td><span><button type="button" class="removeItem"><i class="fa-regular fa-circle-xmark"></i></button></span><p style="display: contents;">${newIndex}</p></td>
                    <td>
                     <select name="sundryname${newIndex}" id="sundryname${newIndex}" class="form-control sundryname w-auto">
                                    <option value="">Select</option>
                     ${sundrynames.map(sun => `<option value="${sun.sundry_code}">${sun.name}</option>`).join('')}
                     </select>
                     </td>
                    <td><input type="text" class="form-control dispname" name="dispname${newIndex}" id="dispname${newIndex}" value=""></td>
                    <td><input type="text" class="form-control calcformula" name="calcformula${newIndex}" id="calcformula${newIndex}" value=""></td>
                    <td style="max-width: 1rem !important;"><input readonly type="text" class="form-control peroramt" name="peroramt${newIndex}" id="peroramt${newIndex}" value="A"></td>
                    <td style="max-width: 5rem !important;"><input oninput="handlesundval(event)" type="text" class="form-control sundval" name="vals${newIndex}" id="vals${newIndex}" value="0.000"></td>
                    <td style="max-width: 4rem !important;"><input readonly type="text" class="form-control boldyn" name="boldyn${newIndex}" id="boldyn${newIndex}" value="Yes"></td>
                    <td>
                     <select name="revenuecharge${newIndex}" id="revenuecharge${newIndex}" class="form-control">
                                        <option value="">Select</option>
                                        ${revmast.map(rev => `<option value="${rev.rev_code}">${rev.name}</option>`).join('')}
                                    </select>
                     </td>
                    <td style="max-width: 6rem !important;"><input readonly type="text" class="form-control automan" name="automan${newIndex}" id="automan${newIndex}" value="Manual"></td>
                    <td style="max-width: 6rem !important;"><input readonly type="text" class="form-control postyn" name="postyn${newIndex}" id="postyn${newIndex}" value="Yes"></td>
                </tr>
            `;
                        tbody.append(newRow);
                    }

                };
                sundrysettingxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                // Append the new row to the tbody

            });

            $(document).on('change', '.sundryname', function() {
                let sundrytext = $(this).find('option:selected').text();
                let row = $(this).closest('tr');
                let rowindex = row.index() + 1;
                let dispname = $('#dispname' + rowindex).val(sundrytext);
            });

            $(document).on('input', '.calcformula', function() {
                let regex = /^[0-9+\-]+$/;
                let value = $(this).val();
                if (!regex.test(value)) {
                    $(this).val(value.replace(/[^0-9+\-]/g, ''));
                }
            });

            $(document).on('click', '.peroramt', function() {
                let input = $(this);
                if (input.val() === 'P') {
                    input.val('A');
                } else {
                    input.val('P');
                }
            });

            $(document).on('click', '.boldyn', function() {
                let input = $(this);
                if (input.val() === 'Yes') {
                    input.val('No');
                } else {
                    input.val('Yes');
                }
            });

            $(document).on('click', '.automan', function() {
                let input = $(this);
                if (input.val() === 'Manual') {
                    input.val('Auto');
                } else {
                    input.val('Manual');
                }
            });

            $(document).on('click', '.postyn', function() {
                let input = $(this);
                if (input.val() === 'Yes') {
                    input.val('No');
                } else {
                    input.val('Yes');
                }
            });

            //  $('#sundrysetting tbody').on('click', '.removeItem', function () {
            //  let row = $(this).closest('tr');
            //  let rowIndex = row.index();
            //  console.log(rowIndex + 1);
            //  row.remove();
            //  adjustedIndex--;
            // });

            $('#sundrysetting tbody').on('click', '.removeItem', function() {
                let row = $(this).closest('tr');
                let rowIndex = row.index();
                console.log(rowIndex + 1);
                row.remove();

                // Adjust indices of subsequent rows
                $('#sundrysetting tbody tr').each(function(index) {
                    let adjustedIndex = index + 1;
                    $(this).find('td:first p').text(index + 1);
                    $(this).find('select, input').each(function() {
                        let originalName = $(this).attr('name');
                        let originalId = $(this).attr('id');
                        let newName = originalName.replace(/\d+$/, adjustedIndex);
                        let newId = originalId.replace(/\d+$/, adjustedIndex);
                        $(this).attr('name', newName);
                        $(this).attr('id', newId);
                    });
                });
            });


            setTimeout(() => {
                $('.nav-control').trigger('click');
                $('#vtype option:eq(0)').prop('selected', true).trigger('change');
            }, 500);

            $('#banqsundrysettingform').on('submit', function(e) {
                e.preventDefault();

                let isValid = true;

                $('.postyn').each(function(index, element) {
                    let totalElements = $('.postyn').length;

                    if (index === 0 || index === totalElements - 1) {
                        return;
                    }

                    if ($(element).val() === 'Yes') {
                        let indexnew = index + 1;
                        if ($(`#revenuecharge${indexnew}`).val() == '') {
                            Swal.fire({
                                title: 'Error',
                                text: 'Please select revenue charge for ' + $(`#dispname${indexnew}`).val(),
                                icon: 'error',
                                confirmButtonText: 'Ok'
                            });
                            isValid = false;
                            return false;
                        }
                    }
                });

                if (isValid) {
                    this.submit();
                }
            });
        });
    </script>
@endsection
