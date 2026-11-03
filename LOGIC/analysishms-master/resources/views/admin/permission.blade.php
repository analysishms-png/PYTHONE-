@extends('admin.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container mt-3">
            <form class="form" action="{{ route('submipermusermodule') }}" name="permform" id="permform" method="POST">
                @csrf
                <div class="form-group">
                    <label for="propertyid">Select Company:</label>
                    <select class="form-control select2-multiple" id="propertyid" required name="propertyid">
                        <option value="">Select Company</option>
                        @foreach ($companies as $item)
                            <option value="{{ $item->propertyid }}">{{ $item->comp_name }} - {{ $item->propertyid }}</option>
                        @endforeach
                    </select>
                </div>
                <h2>Permissions</h2>
                <code class="none"></code>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="mainsetup" name="mainsetup" id="mainsetup">
                    <label class="form-check-label" for="mainsetup">
                        Main Setup
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="reservation" name="reservation" id="reservation">
                    <label class="form-check-label" for="reservation">
                        Reservation
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="frontoffice" name="frontoffice" id="frontoffice">
                    <label class="form-check-label" for="frontoffice">
                        Front Office
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="housekeeping" name="housekeeping" id="housekeeping">
                    <label class="form-check-label" for="housekeeping">
                        House Keeping
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="inventory" name="inventory" id="inventory">
                    <label class="form-check-label" for="inventory">
                        Inventory
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="pointofsale" name="pointofsale" id="pointofsale">
                    <label class="form-check-label" for="pointofsale">
                        Point Of Sale
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="banquet" name="banquet" id="banquet">
                    <label class="form-check-label" for="banquet">
                        Banquet
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="finance" name="finance" id="finance">
                    <label class="form-check-label" for="finance">
                        Finance
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="membersmgmt" name="membersmgmt" id="membersmgmt">
                    <label class="form-check-label" for="membersmgmt">
                        Members Mgmt
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="maintenance" name="maintenance" id="maintenance">
                    <label class="form-check-label" for="maintenance">
                        Maintenance
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="mallmanagement" name="mallmanagement" id="mallmanagement">
                    <label class="form-check-label" for="mallmanagement">
                        Mall Management
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="nightaudit" name="nightaudit" id="nightaudit">
                    <label class="form-check-label" for="nightaudit">
                        Night Audit
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="hrpayroll" name="hrpayroll" id="hrpayroll">
                    <label class="form-check-label" for="hrpayroll">
                        HR/Payroll
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="extras" name="extras" id="extras">
                    <label class="form-check-label" for="extras">
                        Extras
                    </label>
                </div>

                <div class="col-7 mt-4 ml-auto">
                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i class="fa-solid fa-file-export"></i></button>
                </div>
            </form>
        </div>
    </div>
    {{-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}

    <script>
        $(document).ready(function() {
            $(document).on('change', '#propertyid', function() {
                let menunames = ['mainsetup', 'reservation', 'frontoffice', 'housekeeping', 'inventory', 'pointofsale', 'banquet',
                    'finance', 'membersmgmt', 'maintenance', 'mallmanagement', 'nightaudit', 'hrpayroll', 'extras'
                ];
                let propertyid = $('#propertyid').val();
                menunames.forEach((name, index) => {
                    $(`#${name}`).prop('checked', false);
                    let xhr = new XMLHttpRequest();
                    xhr.open('POST', '/validatecheck', true);
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            let results = JSON.parse(xhr.responseText);
                            if (results == '1') {
                                $(`#${name}`).prop('checked', true);
                            }
                        }
                    }
                    xhr.send(`name=${name}&propertyid=${propertyid}&_token={{ csrf_token() }}`);
                });
            });
        });
    </script>
@endsection
