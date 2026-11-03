@extends('property.layouts.main')
@section('main-container')


    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i>
                            Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fa-solid fa-screwdriver-wrench"></i>
                            Main Setup</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fa-solid fa-building"></i>
                            Property Setup</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)"><i class="fa-solid fa-building"></i>
                            Building Master</a></li>
                </ol>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="buildingmasterform" id="buildingmasterform" action="{{ route('buildingmasterstore') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Building Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="activeYN">Active Or Not</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="1" name="activeyn"
                                                id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="0" name="activeyn"
                                                id="activeno">
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button" onclick="window.location.href='{{ route('buildingmaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" onclick="window.open('{{ route('printbuildingmaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="buildingmaster"
                                class="table table-hover table-striped">
                                <thead class="bg-secondary">
<tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Active</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->activeyn == 1 ? 'Yes' : 'No' }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updatebuildingmaster?id={{ base64_encode($row->id) }}&code={{ base64_encode($row->code) }}">
                                                    <button
                                                        class="btn
                                                    btn-success btn-sm"><i
                                                            class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deletebuildingmaster?code={{ base64_encode($row->code) }}">
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




    <script>
        $(document).ready(function() {
            if (!$.fn.DataTable.isDataTable('#buildingmaster')) {
                new DataTable('#buildingmaster', { ordering: true, order: [], pageLength: 25 });
            }
        });

    </script>
@endsection
<script>
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
            xhr.open('POST', '/getbuildingmasternames', true);
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
</script>
