@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form action="{{ route('tablechangesubmit') }}" method="post">
                                @csrf
                                <input type="hidden" value="{{ $depdata->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $depdata->name }}" name="departname" id="departname">
                                <div class="row p-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="fromtable" class="col-form-label">From Table</label>
                                            <select name="fromtable" id="fromtable" class="form-control">
                                                <option value="">Select</option>
                                                @foreach ($kot as $item)
                                                    <option value="{{ $item->roomno }}">{{ $item->roomno }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="totable" class="col-form-label">To Table</label>
                                            <select name="totable" id="totable" class="form-control">
                                                <option value="">Select</option>
                                                @foreach ($roomno as $item)
                                                    <option value="{{ $item->roomno }}">{{ $item->roomno }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="{{ asset('admin/js/anim.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            $(document).on('change', '#fromtable , #totable', function() {
                let fromvalue = $('#fromtable').val();
                let tovalue = $('#totable').val();
                if (fromvalue != '' || tovalue != '') {
                    if (fromvalue === tovalue) {
                        $('#fromtable').val('');
                        $('#totable').val('');
                        pushNotify('error', 'Table Change entry', `Both Table Can't be same`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                    }
                }
            });
        });
    </script>
@endsection
