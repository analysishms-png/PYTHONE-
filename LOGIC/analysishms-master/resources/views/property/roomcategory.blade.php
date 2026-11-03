@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="roomcatstoreform" id="roomcatstoreform"
                                action="{{ route('roomcatstore') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="type">Room Type</label>
                                        <input type="text" name="type" id="type" class="form-control" required>
                                        <div id="namelist"></div>
                                        @error('type')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="shortname">Short Name</label>
                                        <input type="text" name="shortname" id="shortname" class="form-control" required>
                                        @error('shortname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="rev_code">Revenue Charge</label>
                                        <select id="rev_code" name="rev_code" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($revmastdata as $list)
                                                <option value="{{ $list->rev_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('rev_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="ammenties">Ammenties</label>
                                        <input type="text" name="ammenties" id="ammenties" class="form-control">
                                        @error('ammenties')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="image_path">Images</label>
                                        <input type="file" name="image_path[]" id="image_path" class="form-control"
                                            accept="image/*" multiple>
                                        @error('image_path')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                    </div>

                                    <div class="col-md-6">

                                        <label class="col-form-label" for="multiper">Multiple Person</label>
                                        <input type="text" oninput="checkNumMax(this, 5)" name="multiper" id="multiper"
                                            class="form-control" required>
                                        @error('multiper')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="norooms">Rooms Available</label>
                                        <input type="text" oninput="checkNumMax(this, 5)" name="norooms" id="norooms"
                                            class="form-control" required>
                                        @error('norooms')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="inclcount">Include Room Count</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="inclcount"
                                                id="activeyes" checked>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="inclcount"
                                                id="activeno">
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>

                                        <label class="col-form-label" for="map_code">Map Code</label>
                                        <input type="text" name="map_code" id="map_code" class="form-control">
                                        @error('map_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>

                                    <table class="table-hover" id="gridtaxstructure">
                                        <thead>
                                            <tr>
                                                <th>Occ Type</th>
                                                @if (empty($envirodata->rate1))
                                                    <th>High Rate</th>
                                                @else
                                                    <th>{{ $envirodata->rate1 }}</th>
                                                @endif
                                                @if (empty($envirodata->rate2))
                                                    <th>Rack Rate</th>
                                                @else
                                                    <th>{{ $envirodata->rate2 }}</th>
                                                @endif
                                                @if (empty($envirodata->rate3))
                                                    <th>Disk 1 Rate</th>
                                                @else
                                                    <th>{{ $envirodata->rate3 }}</th>
                                                @endif
                                                @if (empty($envirodata->rate4))
                                                    <th>Disk 2 Rate</th>
                                                @else
                                                    <th>{{ $envirodata->rate4 }}</th>
                                                @endif
                                                @if (empty($envirodata->rate5))
                                                    <th>Disk 3 Rate</th>
                                                @else
                                                    <th>{{ $envirodata->rate5 }}</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php
                                                $icons = ['singleuser.svg', 'multiuser.svg', 'extrauser.svg', 'weekend.svg'];
                                                $names = ['singleuser', 'multiuser', 'extrauser', 'weekend'];

                                                for ($i = 0; $i < count($icons); $i++) {
                                                    $iconName = $icons[$i];
                                                    $namelabel = $names[$i];
                                                ?>

                                            <tr>
                                                <td style="text-align: center" id="serial">
                                                    <input type="hidden" name="<?php echo $namelabel; ?>"
                                                        value="<?php echo $iconName; ?>">
                                                    <img src="admin/icons/custom/<?php echo $iconName; ?>" width="25"
                                                        height="25">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_highrate"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_rackrate"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate1"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate2"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate3"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                        </tbody>
                                    </table>

                                    <div class="col-7 mt-4 mb-4 ml-auto">
                                        <button type="submit" class="btn btn-primary">Submit <i
                                                class="fa-solid fa-file-export"></i></button>
                                    </div>
                            </form>
                        </div>
                        <div class="d-flex gap-2 px-1 pb-2 pt-1">
                            <button type="button" onclick="window.location.href='{{ route('roomcategory.export') }}'"
                                class="btn btn-success btn-sm">Excel</button>
                            <button type="button" onclick="window.open('{{ route('printroomcategory') }}','_blank')"
                                class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="room_cat" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Cat Code</th>
                                        <th>Map Code</th>
                                        <th>Name</th>
                                        <th>Revenue Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->cat_code }}</td>
                                            <td>{{ $row->map_code }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->taxname }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updateroomcategory?id={{ base64_encode($row->id) }}&cat_code={{ base64_encode($row->cat_code) }}&rev_code={{ base64_encode($row->rev_code) }}">
                                                    <button
                                                        class="btn
                                                    btn-success btn-sm"><i
                                                            class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deleteroomcat?id={{ base64_encode($row->id) }}&cat_code={{ base64_encode($row->cat_code) }}">
                                                    <button class="btn btn-danger btn-sm"><i
                                                            class="fa-solid fa-trash"></i>
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
    <!-- #/ container -->
    </div>

    {{-- <script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script> --}}
    <script>
        $(document).ready(function() {
            if ($.fn.DataTable.isDataTable('#room_cat')) {
                $('#room_cat').DataTable().destroy();
            }
            $(document).ready(function() {
                if ($.fn.DataTable.isDataTable('#room_cat')) {
                    $('#room_cat').DataTable().destroy();
                }
                new DataTable('#room_cat', {
                    dom: 'frtip',
                    ordering: true,
                    order: []
                });
            });
        });
    </script>
@endsection
<script>
    // Business Source Name

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
            xhr.open('POST', '/getchargeames', true);
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
