<table class="table-hover reservation-multi table-responsive" id="gridtaxstructure">
    <thead>
        <th>Sn.</th>
        <th>Arr. Date</th>
        <th>Time</th>
        <th>Days</th>
        <th>Dep. Date</th>
        <th>Time</th>
        <th>Room Type</th>
        <th>No Of Rooms</th>
        <th>Plans</th>
        <th>Room</th>
        <th>Adult</th>
        <th>Child</th>
        <th>Rate Rs.</th>
        <th>Tax Inc.</th>
        <th id="thlast">Action</th>
        <th>Other</th>
        <th class="none">Msg</th>
    </thead>
    <tbody class="gridstrutbody">
        @foreach ($data as $dbrow)
        </select>
        <tr class="data-row">
            <td class="text-center font-weight-bold">{{ $dbrow->Sno }}</td>
            <td>
                <input type="date" onchange="validateDates2()"
                    onfocus="this.showPicker()" name="arrivaldate{{ $dbrow->Sno }}"
                    class="form-control arrivaldate low alibaba" value="{{ $dbrow->ArrDate }}"
                    id="arrivaldate{{ $dbrow->Sno }}" required>
            </td>
            <td>
                <input style="width: 5.9em;" onfocus="this.showPicker()"
                    value="{{ $dbrow->ArrTime }}" type="time"
                    id="arrivaltime{{ $dbrow->Sno }}" name="arrivaltime{{ $dbrow->Sno }}"
                    class="form-control arrivaltime low" required>
            </td>
            <td>
                <input onchange="DisplayCheckout2()" style="width: 4rem;" type="number"
                    oninput="ValidateNum(this, '1', '100', '3')" name="stay_days{{ $dbrow->Sno }}"
                    id="stay_days{{ $dbrow->Sno }}" class="form-control staydays stays" value="{{ $dbrow->NoDays }}"
                    required>
            </td>
            <td>
                <input onchange="validateDates2()" onfocus="this.showPicker()"
                    type="date" value="{{ $dbrow->DepDate }}" name="checkoutdate{{ $dbrow->Sno }}"
                    class="form-control low alibaba" id="checkoutdate{{ $dbrow->Sno }}" required>
                <span class="text-danger alert-light checkoutdate absolute-element"
                    id="date-error{{ $dbrow->Sno }}"></span>
            </td>

            <td>
                <input style="width: 5.9em;" onfocus="this.showPicker()" type="time"
                    value="{{ $dbrow->DepTime }}" id="checkouttime{{ $dbrow->Sno }}"
                    name="checkouttime{{ $dbrow->Sno }}" class="form-control low" required>
            </td>
            <td>
                <select id="cat_code{{ $dbrow->Sno }}" name="cat_code{{ $dbrow->Sno }}"
                    class="form-control sl" required>
                    @if (empty($dbrow->RoomCat))
                    <option value="" selected>Select</option>
                    @else
                    <option value="">Select</option>
                    @endif
                    @foreach ($roomcat as $list)
                    <option value="{{ $list->cat_code }}" {{ $dbrow->RoomCat == $list->cat_code ? 'selected' : '' }}>{{ $list->name }}</option>
                    @endforeach
                </select>
                <input type="hidden" value="{{ $dbrow->planedit }}" class="form-control" name="planedit{{ $dbrow->Sno }}" id="planedit{{ $dbrow->Sno }}" readonly>
            </td>
            <td>
                <input type="text" class="form-control foureem" value="1" name="roomcount{{ $dbrow->Sno }}" id="roomcount{{ $dbrow->Sno }}" readonly>
            </td>
            <td><select id="planmaster{{ $dbrow->Sno }}" name="planmaster{{ $dbrow->Sno }}" class="form-control planmastclass sl">
                    <option value="">Select</option>
                    @foreach ($planmaster as $item)
                    <option value="{{ $item->pcode }}" {{ $dbrow->Plan_Code == $item->pcode ? 'selected' : '' }}>
                        {{ $item->name }} <span style="color: red;">Trf.</span> {{ $item->tarrif }}
                    </option>
                    @endforeach
                </select>
                <span data-sn="{{ $dbrow->Sno }}" class="text-center planviewbtn ARK font-weight-bold">View Plan</span>
            </td>
            <td><select id="roommast{{ $dbrow->Sno }}" name="roommast{{ $dbrow->Sno }}" class="form-control sl" required>
                    <option value="">Select</option>
                    <option value="{{ $dbrow->RoomNo }}" selected>{{ $dbrow->RoomNo }}</option>
                    @foreach ($rooms as $item)
                    <option value="{{ $item->rcode }}" {{ $dbrow->RoomNo == $item->rcode ? 'selected' : '' }}>{{ $item->rcode }}</option>
                    @endforeach
                </select></td>
            <td><select style="width: 3.5em;" id="adult{{ $dbrow->Sno }}" name="adult{{ $dbrow->Sno }}"
                    class="form-control sl" required>
                    @if (empty($dbrow->Adults))
                    <option value="" selected>Select</option>
                    @else
                    <option value="">Select</option>
                    @endif
                    <option value="1" {{ $dbrow->Adults == '1' ? 'selected' : '' }}>1</option>
                    <option value="2" {{ $dbrow->Adults == '2' ? 'selected' : '' }}>2</option>
                    <option value="3" {{ $dbrow->Adults == '3' ? 'selected' : '' }}>3</option>
                    <option value="4" {{ $dbrow->Adults == '4' ? 'selected' : '' }}>4</option>
                    <option value="5" {{ $dbrow->Adults == '5' ? 'selected' : '' }}>5</option>
                </select></td>
            <td><select style="width: 3.5em;" id="child{{ $dbrow->Sno }}" name="child{{ $dbrow->Sno }}"
                    class="form-control sl" required>
                    @if (empty($dbrow->Childs))
                    <option value="0" selected>0</option>
                    @else
                    <option value="0" {{ $dbrow->Childs == '0' ? 'selected' : '' }}>0</option>
                    <option value="1" {{ $dbrow->Childs == '1' ? 'selected' : '' }}>1</option>
                    <option value="2" {{ $dbrow->Childs == '2' ? 'selected' : '' }}>2</option>
                    @endif
                </select></td>
            <td><input style="width:6em;" placeholder="Enter Rate" type="number"
                    name="rate{{ $dbrow->Sno }}" value="{{ $dbrow->Tarrif }}" id="rate{{ $dbrow->Sno }}"
                    oninput="checkNumMax(this, 10); handleDecimalInput(event);"
                    class="form-control ratechk sp" required {{ $dbrow->planedit == 'Y' ? 'readonly' : '' }}>
            </td>
            <td>
                <select style="width: 4em;" class="form-control taxchk sl"
                    name="tax_inc{{ $dbrow->Sno }}" id="tax_inc{{ $dbrow->Sno }}">
                    <option value="" {{ empty($dbrow->IncTax) ? 'selected' : '' }}>Select</option>
                    <option value="Y" {{ $dbrow->IncTax == 'Y' ? 'selected' : '' }}>Yes</option>
                    <option value="N" {{ $dbrow->IncTax == 'N' ? 'selected' : '' }}>No</option>
                </select>
            </td>
            <td>
                @if ($dbrow->Sno > 1)
                <img src="admin/icons/flaticon/remove.gif" alt="remove icon" class="remove-icon">
                @endif
                <img src="admin/icons/flaticon/copy.gif" alt="copy icon"
                    class="copy-icon">
            </td>
            <td><select class="form-control sup sl" name="extraadd{{ $dbrow->Sno }}" id="extraadd{{ $dbrow->Sno }}">
                    @if (empty($dbrow->extraadd))
                    <option value="" selected>Select</option>
                    @else
                    <option value="">Select</option>
                    @endif
                    <option value="Remarks" {{ $dbrow->extraadd == 'Remarks' ? 'selected' : '' }}>Remarks ✍️</option>
                    <option value="Pick Up/Drop Off" {{ $dbrow->extraadd == 'Pick Up/Drop Off' ? 'selected' : '' }}>Pick Up/Drop Off 🚗</option>
                </select>
            </td>
            <td id="remaktd{{ $dbrow->Sno }}">
                <div class="modal fade" id="remarksModal{{ $dbrow->Sno }}" tabindex="-1" role="dialog" aria-labelledby="remarksModalLabel{{ $dbrow->Sno }}" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="remarksModalLabel{{ $dbrow->Sno }}">Enter Remarks</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <textarea class="form-control" id="remarksarea{{ $dbrow->Sno }}" name="remarksarea{{ $dbrow->Sno }}" rows="5">{{ $dbrow->Remarksdn }}</textarea>
                            </div>
                            <div class="d-flex justify-content-lg-around mb-3">
                                <button type="button" class="btn btn-success" id="saveRemarks{{ $dbrow->Sno }}" data-dismiss="modal">Save</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td>
                @if ($dbrow->planedit == 'Y')
                <div class="">
                    <div style="display: none;" id="table-planmast{{ $dbrow->Sno }}" class="table-responsive table-planmast">
                        <h3 class="text-center adc">Plan Details</h3>
                        <div class="row">
                            <div class="col-md-3">
                                <label id="plannamelabel" class="col-form-label" for="planname">Plan</label>
                                <input type="text" value="{{ $dbrow->chargename }}" class="form-control" name="planname{{ $dbrow->Sno }}" id="planname{{ $dbrow->Sno }}" readonly>
                            </div>
                            <div class="col-md-2">
                                <label id="plankaamountlabel" class="col-form-label" for="plankaamount">Plan Amount</label>
                                <input autocomplete="off" type="text" value="{{ $dbrow->bnetplanamt }}" class="form-control planrow" name="plankaamount{{ $dbrow->Sno }}" id="plankaamount{{ $dbrow->Sno }}">
                            </div>
                            <div class="col-md-2">
                                <label id="taxincplanroomratelabel" class="col-form-label" for="taxincplanroomrate">Inc. In Room Rate</label>
                                <input type="text" value="{{ $dbrow->btaxinc }}" class="form-control" name="taxincplanroomrate{{ $dbrow->Sno }}" id="taxincplanroomrate{{ $dbrow->Sno }}" readonly>
                            </div>
                            <div class="col-md-2">
                                <label id="roomratelabel" class="col-form-label" for="roomrate">Room Rate</label>
                                <input type="text" value="{{ $dbrow->broom_rate_before_tax }}" class="form-control" name="roomrate{{ $dbrow->Sno }}" id="roomrate{{ $dbrow->Sno }}" readonly>
                            </div>
                            <div class="col-md-2">
                                <label id="netroomratelabel" class="col-form-label" for="netroomrate">Net Room Rate</label>
                                <input type="text" value="{{ $dbrow->bnetplanamt - $dbrow->bamount }}" class="form-control" name="netroomrate{{ $dbrow->Sno }}" id="netroomrate{{ $dbrow->Sno }}" readonly>
                                <input type="hidden" value="{{ $dbrow->btotal_rate }}" class="form-control" name="plansumrate{{ $dbrow->Sno }}" id="plansumrate{{ $dbrow->Sno }}">
                                <input type="hidden" value="{{ $dbrow->btaxstru }}" class="form-control" name="taxstruplan{{ $dbrow->Sno }}" id="taxstruplan{{ $dbrow->Sno }}">
                                <input type="hidden" value="{{ $dbrow->room_perplan }}" class="form-control" name="planpercent{{ $dbrow->Sno }}" id="planpercent{{ $dbrow->Sno }}">
                                <input type="hidden" value="{{ $dbrow->pcode }}" class="form-control" name="plancodeplan{{ $dbrow->Sno }}" id="plancodeplan{{ $dbrow->Sno }}" readonly>
                            </div>
                        </div>
                        <div class="mt-3 d-flex justify-content-around">
                            <table id="planmasttable{{ $dbrow->Sno }}" class="table">
                                <thead>
                                    <tr>
                                        <th>Sn</th>
                                        <th>Fixed Charge</th>
                                        <th>Amount</th>
                                        <th>Percentage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{{ $dbrow->Sno }}</td>
                                        <td>{{ $dbrow->chargename }}</td>
                                        <td><input autocomplete="off" type="text" value="{{ $dbrow->bamount }}" class="form-control rowdamount" name="rowdamount{{ $dbrow->Sno }}" id="rowdamount{{ $dbrow->Sno }}"></td>
                                        <td>
                                            <input type="text" value="{{ $dbrow->bplanper }}" class="form-control" name="rowdplan_per{{ $dbrow->Sno }}" id="rowdplan_per{{ $dbrow->Sno }}" readonly>
                                            <input type="hidden" value="{{ $dbrow->bfixrate }}" class="form-control" name="rowdplanfixrate{{ $dbrow->Sno }}" id="rowdplanfixrate{{ $dbrow->Sno }}" readonly>
                                            <input type="hidden" value="{{ $dbrow->brev_code }}" class="form-control" name="rowsrev_code{{ $dbrow->Sno }}" id="rowsrev_code{{ $dbrow->Sno }}" readonly>
                                            <input type="hidden" value="{{ $dbrow->btaxstru }}" class="form-control" name="rowstax_stru{{ $dbrow->Sno }}" id="rowstax_stru{{ $dbrow->Sno }}" readonly>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="offset-10">
                                <input type="text" value="{{ $dbrow->bnetplanamt }}" class="form-control" name="totalnetamtplan{{ $dbrow->Sno }}" id="totalnetamtplan{{ $dbrow->Sno }}" readonly>
                            </div>
                        </div>
                        <div id="okbtnlabel{{ $dbrow->Sno }}" class="text-center">
                            <button id="okbtnplan{{ $dbrow->Sno }}" name="okbtnplan{{ $dbrow->Sno }}" type="button" class="btn okbtncls btn-success btn-sm"><i class="fa-regular fa-circle-check"></i> OK</button>
                            <button id="closebtnplan{{ $dbrow->Sno }}" name="closebtnplan{{ $dbrow->Sno }}" type="button" class="btn closebtncls btn-danger btn-sm"><i class="fa-regular fa-circle-xmark"></i> Cancel</button>
                        </div>
                        <div id="resizeHandle{{ $dbrow->Sno }}" class="resizeHandle"></div>
                    </div>
                </div>
                @endif
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
<script>
    let sns = [];
    $(document).on('click', '.remove-icon', function() {
        var row = $(this).closest('tr');
        let firsttd = row.find('td:first').text();
        let sn = firsttd;
        sns.push(sn);
        $('#sns').val('');
        $('#sns').val(sns.toString());

        var rowIndex = row.index();
        row.remove();

        $('#gridtaxstructure tbody.gridstrutbody tr').each(function(index) {
            $(this).find('select, input').each(function() {
                this.id = this.id.replace(/\d+$/, index + 1);
                this.name = this.name.replace(/\d+$/, index + 1);
            });
        });
    });
</script>