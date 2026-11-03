@extends('property.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="mb-3">
                                <form action="{{ route('smartcard.cardregistration.store') }}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="issuedate">Issue Date</label>
                                                <input type="date" value="{{ ncurdate() }}" class="form-control" name="issuedate" id="issuedate" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="cardtype">Card Type</label>
                                                <select class="form-control select2-multiple" name="cardtype" id="cardtype" required>
                                                    <option value="">Select</option>
                                                    <option value="member">Member</option>
                                                    <option value="cashcard" selected>Cash Card</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="membermast">Member</label>
                                                <select class="form-control select2-multiple" name="membermast" id="membermast" required>
                                                    <option value="">Select</option>
                                                    @foreach (membermast() as $item)
                                                        <option value="{{ $item->sub_code }}">{{ $item->name }} - {{ $item->membercategory }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control" name="name" id="name" required>
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
                                                <label for="validupto">Valid Upto</label>
                                                <input type="date" class="form-control" name="validupto" id="validupto" required>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="blockedyn">Blocked</label>
                                                <select class="form-control select2-multiple" name="blockedyn" id="blockedyn">
                                                    <option value="y" selected>Yes</option>
                                                    <option value="n">No</option>
                                                </select>
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
