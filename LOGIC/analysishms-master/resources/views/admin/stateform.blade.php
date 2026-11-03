@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-layer-group"></i>
                            State Register</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="stateregform" id="stateregform" action="{{ route('statestore') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="col-form-label" for="country_select">Country</label><span
                                            class="text-danger">*</span>
                                        <select id="country_select" name="country_select" required class="form-control">
                                            <option value="">Select Country</option>
                                            @foreach ($country as $list)
                                                <option value="{{ $list->country_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        <span id="country_error" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="state_name">State Name</label>
                                        <input type="text" name="state_name" id="state_name" class="form-control"
                                            required>
                                        <span id="state_name_error" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <label class="col-form-label" for="state_code">State Code</label>
                                        <input type="text" name="state_code" id="state_code" class="form-control"
                                            required>
                                        <span id="state_code_error" class="text-danger"></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-lg-8 mt-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i
                                                class="fa-regular fa-floppy-disk"></i> Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="statetable" class="table table-hover table-download-with-search table-striped">
                            <thead class="bg-secondary">
                                <tr>
                                    <th>Sn.</th>
                                    <th>Name</th>
                                    <th>Country</th>
                                    <th>State Code</th>
                                    <th>Prop Id.</th>
                                    <th>Username</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $sn = 1; @endphp
                                @foreach ($state_data as $state)
                                    <tr>
                                        <td>{{ $sn }}</td>
                                        <td>{{ $state->name }}</td>
                                        <td>{{ $state->country }}</td>
                                        <td>{{ $state->state_code }}</td>
                                        <td>{{ $state->propertyid }}</td>
                                        <td>{{ $state->u_name }}</td>
                                        <td> <a
                                                href="updatestateformadmin?state_code={{ base64_encode($state->state_code) }}">
                                                <button class="btn btn-success btn-sm"><i
                                                        class="fa-regular fa-pen-to-square"></i>Edit</button></a> </td>
                                    </tr>
                                    @php $sn++; @endphp
                                @endforeach
                            </tbody>
                            <tfoot class="bg-secondary">
                                <tr>
                                    <th></th>
                                    <th>Name</th>
                                    <th>Country</th>
                                    <th>State Code</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
@endsection


<script>
    document.addEventListener('DOMContentLoaded', function() {
        function checkInput(inputElement, endpoint, errorElementId) {
            inputElement.addEventListener('input', function() {
                var inputValue = this.value;
                var xhr = new XMLHttpRequest();
                xhr.open('POST', endpoint, true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var result = xhr.responseText;
                        var errorElement = document.getElementById(errorElementId);
                        errorElement.textContent = result;
                    }
                };
                xhr.send(inputElement.id + '=' + inputValue + '&_token={{ csrf_token() }}');
            });
        }

        var state_name = document.getElementById('state_name');
        checkInput(state_name, '/check_state_insert', 'state_name_error');

        var state_code = document.getElementById('state_code');
        checkInput(state_code, '/check_state_code', 'state_code_error');
    });
</script>
