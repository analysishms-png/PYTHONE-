@extends('property.layouts.main')
@section('main-container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
 <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css">
    <div class="content-body">

        <!-- row -->

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="tablemasterform" id="tablemasterform" action="{{ url('tablemasterstore') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="rest_code">Outlet Name</label>
                                        <select class="form-control" name="rest_code" id="rest_code" required>
                                            <option value="">Select</option>
                                            @foreach ($departdata as $item)
                                                <option value="{{ $item->dcode }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="rcode">Table Code</label>
                                        <input type="text" name="rcode" oninput="this.value = this.value.toUpperCase();" id="rcode" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('rcode')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="tablename">Table Name</label>
                                        <input type="text" name="tablename" id="tablename" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="table_mast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Table Code</th>
                                        <th>Outlet</th>
                                        <th>Action</th>
                                        <th class="none"></th>
                                        <th class="none"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td id="tdname_{{ $sn }}">{{ $row->name }}</td>
                                            <td>{{ $row->rcode }}</td>
                                            <td>{{ $row->departname }}</td>
                                            <td class="ins">
                                                <button data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>
                                                <a href="{{ url('deletetablemast?id=' . base64_encode($row->id) . '&rcode=' . base64_encode($row->rcode)) }}" class="btn btn-danger btn-sm delete-btn">
                                                    <i class="fa-solid fa-trash"></i> Delete
                                                </a>
                                                <a data-dcode="{{ $row->rest_code }}" data-rcode="{{ $row->rcode }}" class="btn btn-sm btn-info qrcodebtn" href="javascript:void(0)"><i class="fa-solid fa-qrcode"></i> QR Code</a>

                                            </td>
                                            <td class="none">{{ $row->id }}</td>
                                            <td class="none">{{ $row->rest_code }}</td>
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
    <!-- #/ container -->
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Table Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="tablemastupdateform" action="{{ url('tablemastupdateform') }}" id="tablemastupdateform">
                        @csrf
                        <div class="form-group">
                            <label class="col-form-label" for="uprest_code">Outlet Name</label>
                            <select class="form-control" name="uprest_code" id="uprest_code" required>
                                <option value="">Select</option>
                            </select>
                        </div>
                        <input type="hidden" name="upsn" id="upsn" class="form-control" required>
                        <div class="form-group">
                            <label class="col-form-label" for="uprcode">Table Code</label>
                            <input type="text" name="uprcode" id="uprcode" class="form-control" required>
                            <div id="namelist"></div>
                            <span id="name_error" class="text-danger"></span>
                            @error('rcode')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label class="col-form-label" for="upname">Table Name</label>
                            <input type="text" name="upname" id="upname" class="form-control" required>
                            <div id="namelist"></div>
                            <span id="name_error" class="text-danger"></span>
                            @error('name')
                                <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                }
            });

            $(document).on('click', '.qrcodebtn', function() {
                let dcode = $(this).data('dcode');
                let rcode = $(this).data('rcode');

                $.ajax({
                    method: "POST",
                    url: "{{ url('roomqrgenerator') }}",
                    data: {
                        dcode: dcode,
                        rcode: rcode
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response.success) {
                            let link = document.createElement('a');
                            link.href = response.file_data;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                        } else {
                            console.error("Error: " + response.message);
                            alert("Failed to generate QR Code");
                        }
                    },
                    error: function(xhr) {
                        console.error("Error generating QR", xhr);
                        alert("Error generating QR Code. Please try again.");
                    }
                });
            });
        });
        
        loadOptions('/loadoutlets', 'uprest_code')
        async function loadOptions(Endpoint, selectbox) {
            const selectBox = document.getElementById(selectbox);
            try {
                const data = await (await fetch(Endpoint)).json();
                selectBox.innerHTML = '';
                data.forEach(option => selectBox.add(new Option(option.text, option.value)));
            } catch (error) {
                console.error('Error fetching options:', error);
            }
        }
        // NC Type Name
        document.addEventListener('DOMContentLoaded', function() {
            var name = document.getElementById('name');
            var namelist = document.getElementById('namelist');
            var currentLiIndex = -1;
            name.addEventListener('keydown', function(event) {
                if (event.key === 'ArrowDown') {
                    event.preventDefault();
                    var liElements = namelist.querySelectorAll('li');
                    currentLiIndex = (currentLiIndex + 1) % liElements.length;
                    if (liElements.length > 0) {
                        name.value = liElements[currentLiIndex].textContent;
                    }
                }
            });
            name.addEventListener('keyup', function() {
                var cid = this.value;
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/gettablenames', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        namelist.innerHTML = xhr.responseText;
                        namelist.style.display = 'block';
                    }
                };
                xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');

            });
            $(document).on('click', function(event) {
                if (!$(event.target).closest('li').length) {
                    namelist.style.display = 'none';
                }
            });
            $(document).on('click', '#namelist li', function() {
                $('#name').val($(this).text());
                namelist.style.display = 'none';
            });
        });

        $(document).ready(function() {
            //  handleFormSubmission('#tablemasterform', '#submitBtn', 'tablemasterstore');
            //handleFormSubmission('#tablemastupdateform', '#updateBtn', 'tablemastupdateform');


            $(".editBtn").click(function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var outlet = $(this).closest("tr").find("td:eq(6)").text();
                var code = $(this).closest("tr").find("td:eq(2)").text();
                var sn = $(this).closest("tr").find("td:eq(5)").text();
                populateFormWithData6(name, outlet, code, sn);
            });
        });
    </script>

 <!-- #/ container -->
    <script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <script>
        $(document).ready(function() {
            if ($.fn.DataTable.isDataTable('#table_mast')) {
                $('#table_mast').DataTable().destroy();
            }
            new DataTable('#table_mast', {
                dom: 'Bfrtip',
                ordering: true,
                order: [],
                buttons: [
                    { extend: 'excelHtml5', text: 'Excel' },
                    { extend: 'pdfHtml5',   text: 'PDF'   },
                    { extend: 'print',      text: 'Print' }
                ]
            });
            $('.dt-buttons .dt-button').each(function() {
                if ($(this).text().trim().toLowerCase().includes('csv')) {
                    $(this).hide();
                }
            });
        });
    </script>
@endsection
