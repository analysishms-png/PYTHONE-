@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="{{ route('updatedepartmast') }}" method="post">
                                @csrf
                                <input type="hidden" value="{{ $data->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $data->id }}" name="id" id="id">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="departname">Department Name <span
                                                class="text-danger">*</span></label>
                                        <input type="text" value="{{ $data->name }}" name="departname" id="departname" maxlength="100"
                                            class="form-control" placeholder="Depart Name" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="nature">Department Nature <span
                                                class="text-danger">*</span></label>
                                        <select class="form-control" name="nature" id="nature" required>
                                            <option value="">Select</option>
                                            <option value="Kitchen" {{ $data->nature == 'Kitchen' ? 'selected' : '' }}>Kitchen</option>
                                            <option value="Staff Kitchen" {{ $data->nature == 'Staff Kitchen' ? 'selected' : '' }}>Staff Kitchen</option>
                                            <option value="Production Kitchen" {{ $data->nature == 'Production Kitchen' ? 'selected' : '' }}>Production Kitchen</option>
                                            <option value="House Keeping" {{ $data->nature == 'House Keeping' ? 'selected' : '' }}>House Keeping</option>
                                            <option value="Laundry" {{ $data->nature == 'Laundry' ? 'selected' : '' }}>Laundry</option>
                                            <option value="Store" {{ $data->nature == 'Store' ? 'selected' : '' }}>Store</option>
                                            <option value="Consumable Store" {{ $data->nature == 'Consumable Store' ? 'selected' : '' }}>Consumable Store</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="short_name">Short Name <span
                                                class="text-danger">*</span></label>
                                        <input value="{{ $data->short_name }}" type="text" name="short_name" id="short_name" maxlength="100"
                                            class="form-control" placeholder="Short Name" required>
                                    </div>
                                    <input value="{{ $data->ckot_print_path }}" type="hidden" name="printerpath" id="printerpath"
                                            class="form-control" placeholder="Printer Path" >
                                    {{-- <div class="col-md-6">
                                        <label class="col-form-label" for="printerpath">Printer Path <span
                                                class="text-danger">*</span></label>
                                        <input value="{{ $data->ckot_print_path }}" type="text" name="printerpath" id="printerpath" maxlength="100"
                                            class="form-control" placeholder="Printer Path" required>
                                    </div> --}}
                                </div>
                                <div class="text-center mt-4">
                                    <button id="submitBtn" type="submit" class="btn ti-save btn-primary">
                                        Update</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script>
        $(document).ready(function() {
            let timer;
            let dcode = $('#dcode').val();
            let sn = $('#sn').val();
            $(document).on('input', '#departname', function() {
                let name = $(this).val();
                clearTimeout(timer);
                timer = setTimeout(() => {
                    fetch('/fetchalldepart', {
                            method: 'GET',
                            headers: {
                                'Content-Type': 'application/json'
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            let departdata = data;

                            let check = departdata.some(x => x.name.toLowerCase() == name.toLowerCase() && x.dcode != dcode);
                            if (check == true) {
                                pushNotify('info', 'Depart Master', 'Duplicate Name..', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#departname').val('');
                            }
                        })
                        .catch(error => {
                            console.error(error);
                        });
                }, 1000);
            });

            $(document).on('input', '#short_name', function() {
                let name = $(this).val();
                clearTimeout(timer);
                timer = setTimeout(() => {
                    fetch('/fetchalldepart', {
                            method: 'GET',
                            headers: {
                                'Content-Type': 'application/json'
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            let departdata = data;
                            let check = departdata.some(x => x.short_name.toLowerCase() == name.toLowerCase() && x.dcode != dcode);
                            if (check == true) {
                                pushNotify('info', 'Depart Master', 'Duplicate Short Name..', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                $('#short_name').val('');
                            }
                        })
                        .catch(error => {
                            console.error(error);
                        });
                }, 1000);
            });
        });
    </script>
@endsection
