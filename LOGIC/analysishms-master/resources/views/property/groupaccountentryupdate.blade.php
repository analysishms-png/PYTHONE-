@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">

                            <form name="groupaccountentryupdate" id="groupaccountentryupdate" method="post">
                                @csrf
                                <input type="hidden" name="group_code" id="group_code" value="{{ $groupdata->group_code }}">
                                <input type="hidden" value="{{ $groupdata->maingroupname }}" name="undergroupname" id="undergroupname">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="groupname">Group Name</label>
                                            <input type="text" class="form-control" value="{{ $groupdata->group_name }}" id="groupname" name="groupname" placeholder="Enter Group Name">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="undergroup">Main Group</label>
                                            <select class="form-control" id="undergroup" name="undergroup">
                                                <option value="">Select Main Group</option>
                                                <option value="10" {{ $groupdata->maingroupcode == 10 ? 'selected' : '' }}>CAPITAL ACCOUNT</option>
                                                <option value="60" {{ $groupdata->maingroupcode == 60 ? 'selected' : '' }}>CURRENT ASSETS</option>
                                                <option value="200" {{ $groupdata->maingroupcode == 200 ? 'selected' : '' }}>CLOSING STOCK</option>
                                                <option value="30" {{ $groupdata->maingroupcode == 30 ? 'selected' : '' }}>CURRENT LIABILITIES</option>
                                                <option value="260" {{ $groupdata->maingroupcode == 260 ? 'selected' : '' }}>DIRECT EXPENSE</option>
                                                <option value="250" {{ $groupdata->maingroupcode == 250 ? 'selected' : '' }}>DIRECT INCOMES</option>
                                                <option value="280" {{ $groupdata->maingroupcode == 280 ? 'selected' : '' }}>INDIRECT EXPENSES</option>
                                                <option value="270" {{ $groupdata->maingroupcode == 270 ? 'selected' : '' }}>INDIRECT INCOME</option>
                                                <option value="50" {{ $groupdata->maingroupcode == 50 ? 'selected' : '' }}>INVESTMENTS</option>
                                                <option value="20" {{ $groupdata->maingroupcode == 20 ? 'selected' : '' }}>LOAN (LIABILITY)</option>
                                                <option value="80" {{ $groupdata->maingroupcode == 80 ? 'selected' : '' }}>MISC. EXPENSES (ASSET)</option>
                                                <option value="999" {{ $groupdata->maingroupcode == 999 ? 'selected' : '' }}>PROFIT & LOSS A/C</option>
                                                <option value="240" {{ $groupdata->maingroupcode == 240 ? 'selected' : '' }}>PURCHASE ACCOUNTS</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="undergroupyn">Under Group</label>
                                            <select class="form-control" id="undergroupyn" name="undergroupyn">
                                                <option value="">Select Under Group</option>
                                                <option value="Y" {{ $groupdata->undergroup == 'Y' ? 'selected' : '' }}>Yes</option>
                                                <option value="N" {{ $groupdata->undergroup == 'N' ? 'selected' : '' }}>No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nature">Nature</label>
                                            <select class="form-control" id="nature" name="nature">
                                                <option value="">Select Nature</option>
                                                <option value="Bank" {{ $groupdata->nature == 'Bank' ? 'selected' : '' }}>Bank</option>
                                                <option value="TDS" {{ $groupdata->nature == 'TDS' ? 'selected' : '' }}>TDS</option>
                                                <option value="Others" {{ $groupdata->nature == 'Others' ? 'selected' : '' }}>Others</option>
                                                <option value="Cash" {{ $groupdata->nature == 'Cash' ? 'selected' : '' }}>Cash</option>
                                                <option value="Purchase" {{ $groupdata->nature == 'Purchase' ? 'selected' : '' }}>Purchase</option>
                                                <option value="Sale" {{ $groupdata->nature == 'Sale' ? 'selected' : '' }}>Sale</option>
                                                <option value="Supplier" {{ $groupdata->nature == 'Supplier' ? 'selected' : '' }}>Supplier</option>
                                                <option value="Customer" {{ $groupdata->nature == 'Customer' ? 'selected' : '' }}>Customer</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(document).on('change', '#undergroup', function() {
                let name = $(this).find('option:selected').text();
                $('#undergroupname').val(name);
            });

            $('#groupaccountentryupdate').on('submit', function(e) {
                e.preventDefault();
                let formData = new FormData(this);

                $.ajax({
                    type: 'POST',
                    url: '{{ url('updategroupaccountentry') }}',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: response.message
                        }).then((success) => {
                            if (success.isConfirmed) {
                                window.location.href = "{{ url('groupaccouns') }}";
                            }
                        });
                    },
                    error: function(error) {
                        console.log(error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: error.responseJSON.message
                        });
                    }
                });
            });
        });
    </script>
@endsection
