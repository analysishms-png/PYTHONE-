@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="mb-3">
                                <form action="{{ route('smartcard.cardrecharge.store') }}" method="post">
                                    @csrf
                                    <div class="text-center">
                                        <button class="btn btn-success" type="button"><i class="fa-solid fa-credit-card"></i> Scan For Refund</button>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="rechargedate">Recharge Date</label>
                                                <input type="date" class="form-control" name="rechargedate" id="rechargedate" required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="receiptno">Receipt No.</label>
                                                <input type="text" class="form-control" name="receiptno" id="receiptno" required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="validupto">Valid Up To</label>
                                                <input type="date" class="form-control" name="validupto" id="validupto" required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="card_type">Card Type</label>
                                                <select class="form-control select2-multiple" name="card_type" id="card_type">
                                                    <option value="">Select</option>
                                                    <option value="member">Member</option>
                                                    <option value="cashcard">Cash Card</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="issue_date">Issue Date</label>
                                                <input type="date" class="form-control" name="issue_date" id="issue_date">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="blockedyn">Blocked</label>
                                                <select class="form-control select2-multiple" name="blockedyn" id="blockedyn">
                                                    <option value="">Select</option>
                                                    <option value="y">Yes</option>
                                                    <option value="n">No</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="membermast">Member Name</label>
                                                <select class="form-control select2-multiple" name="membermast" id="membermast" required>
                                                    <option value="">Select</option>
                                                    @foreach (membermast() as $item)
                                                        <option value="{{ $item->sub_code }}">{{ $item->name }} - {{ $item->member_id }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="name">Account Name</label>
                                                <select class="form-control select2-multiple" name="membermast" id="membermast" required>
                                                    <option value="">Select</option>
                                                    @foreach ($subgroupdata as $item)
                                                        <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <textarea class="form-control" name="address" id="address" rows="2" placeholder="Enter Full Address"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="mobile">Mobile</label>
                                                <input type="text" class="form-control" name="mobile" id="mobile">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="current_balance">Current Balance</label>
                                                <input type="text" class="form-control" name="current_balance" id="current_balance">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="recharge_amount">Recarge Amount</label>
                                                <input type="text" class="form-control" name="recharge_amount" id="recharge_amount">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="current_security_balance">Current Security Balance</label>
                                                <input type="text" class="form-control" name="current_security_balance" id="current_security_balance">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="security_amount">Security Amount</label>
                                                <input type="text" class="form-control" name="security_amount" id="security_amount">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-sm btn-success" type="submit"><i class="fa-regular fa-floppy-disk"></i> Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
