@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="{{ route('submitdepartmast') }}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="departname">Department Name <span
                                                class="text-danger">*</span></label>
                                        <input autocomplete="off" type="text" name="departname" id="departname" maxlength="100"
                                            class="form-control" placeholder="Depart Name" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="nature">Department Nature <span
                                                class="text-danger">*</span></label>
                                        <select class="form-control" name="nature" id="nature" required>
                                            <option value="">Select</option>
                                            <option value="Kitchen">Kitchen</option>
                                            <option value="Staff Kitchen">Staff Kitchen</option>
                                            <option value="Production Kitchen">Production Kitchen</option>
                                            <option value="House Keeping">House Keeping</option>
                                            <option value="Laundry">Laundry</option>
                                            <option value="Store">Store</option>
                                            <option value="Consumable Store">Consumable Store</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="short_name">Short Name <span
                                                class="text-danger">*</span></label>
                                        <input autocomplete="off" type="text" name="short_name" id="short_name" maxlength="100"
                                            class="form-control" placeholder="Short Name" required>
                                    </div>
                                    <input autocomplete="off" type="hidden" name="printerpath" id="printerpath" maxlength="100"
                                        class="form-control" value="NO" placeholder="Printer Path" required>
                                    {{-- <div class="col-md-6">
                                        <label class="col-form-label" for="printerpath">Printer Path <span
                                                class="text-danger">*</span></label>
                                        <input autocomplete="off" type="text" name="printerpath" id="printerpath" maxlength="100"
                                            class="form-control" placeholder="Printer Path" required>
                                    </div> --}}
                                </div>
                                <div class="text-center mt-4">
                                    <button id="submitBtn" type="submit" class="btn ti-save btn-primary">
                                        Submit</button>
                                </div>
                            </form>

                            <div class="table-responsive mt-4">
                                <table id="departmasttbl" class="table countrytable table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Short Name</th>
                                            <th>Nature</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = 1; @endphp

                                        @foreach ($depart as $item)
                                            <tr>
                                                <td>{{ $sn }}</td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->short_name }}</td>
                                                <td>{{ $item->nature }}</td>
                                                <td class="ins">
                                                    <a
                                                        href="updatedepart?dcode={{ base64_encode($item->dcode) }}&id={{ base64_encode($item->id) }}">
                                                        <button class="btn btn-success btn-sm"><i
                                                                class="fa-regular fa-pen-to-square"></i>Edit
                                                        </button>
                                                    </a>
                                                    <a
                                                        href="deletedepart?dcode={{ base64_encode($item->dcode) }}&id={{ base64_encode($item->id) }}">
                                                        <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>
                                                            Delete
                                                        </button>
                                                    </a>
                                                </td>
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
    <!-- #/ container -->
    <script>
        $(document).ready(function() {
            let table = new DataTable('#departmasttbl', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    'excel', 'pdf', 'print'
                ]
            });
        });
        $(document).ready(function() {
            let timer;

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
                            let check = departdata.some(x => x.name.toLowerCase() == name.toLowerCase());
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
                            let check = departdata.some(x => x.short_name.toLowerCase() == name.toLowerCase());
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
