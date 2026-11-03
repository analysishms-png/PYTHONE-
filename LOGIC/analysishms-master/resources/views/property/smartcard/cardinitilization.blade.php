@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="mb-3">

                                <form action="{{ route('smartcard.cardinitialization.store') }}" method="post">
                                    @csrf
                                    <span class="badge bg-secondary text-white font-weight-bold p-1">Opening</span>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="purchbillno">Purchase Bill No</label>
                                                <input type="text" class="form-control" name="purchbillno" id="purchbillno">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="purchsmartcard">Purchase Smart Card</label>
                                                <input type="text" class="form-control" name="purchsmartcard" id="purchsmartcard">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="insertedsmartcard">Inserted Smart Card</label>
                                                <input type="text" class="form-control" name="insertedsmartcard" id="insertedsmartcard">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="inusername">User Name</label>
                                                <input type="text" value="{{ Auth::user()->name }}" class="form-control" name="inusername" id="inusername" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="entrydate">Entry Date</label>
                                                <input type="text" value="{{ ncurdate() }}" class="form-control" name="entrydate" id="entrydate" readonly>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="text-center">
                                        <button class="btn btn-sm btn-success" type="submit">Submit</button>
                                        <button class="btn btn-sm btn-info" type="button"><i class="fa-regular fa-credit-card"></i> Insert</button>
                                        <button class="btn btn-sm btn-danger" type="button"><i class="fa-solid fa-xmark"></i> Exit</button>
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
