@extends('property.layouts.main')
@section('main-container')
    
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('roommaststore') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="rcode">Room No.</label>
                                        <input type="text" name="rcode" id="rcode" class="form-control" required>
                                        @error('rcode')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="roomname">Room Name</label>
                                        <input type="text" name="roomname" id="roomname" class="form-control" required>
                                        <div id="namelist"></div>
                                        @error('roomname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="room_cat">Room Category</label>
                                        <select id="room_cat" name="room_cat" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($roomcat as $list)
                                                <option value="{{ $list->cat_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('room_cat')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="pic_path">Photo <span
                                                class="text-danger">*</span></label>
                                        <input type="file" onchange="checkFile(this, '1mb', ['jpg', 'png', 'jpeg', 'webp'])"
                                            name="pic_path" accept=".jpg,.png,.jpeg,.webp" id="pic_path"
                                            class="form-control">
                                        @error('pic_path')
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

                                        <label class="col-form-label" for="maid_station">House Keeping</label>
                                        <select id="maid_station" name="maid_station" class="form-control">
                                            <option value="">Select</option>
                                            <option value="House Keeping">House Keeping</option>
                                        </select>
                                        @error('maid_station')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="floor">Floor</label>
                                        <select id="floor" name="floor" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($floors as $fl)
                                                <option value="{{ $fl->code }}">{{ $fl->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('floor')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="building">Building</label>
                                        <select id="building" name="building" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($buildings as $bld)
                                                <option value="{{ $bld->code }}">{{ $bld->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('building')
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
                                            <label class="form-check-label" for="activeno">Inactive</label>
                                        </div>
                                    </div>

                                    <table class="table-hover" id="gridtaxstructure">
                                        <thead>
                                            <tr>
                                                <th>Occ Type</th>
                                                <th>{{ $envirodata->rate1 }}</th>
                                                <th>{{ $envirodata->rate2 }}</th>
                                                <th>{{ $envirodata->rate3 }}</th>
                                                <th>{{ $envirodata->rate4 }}</th>
                                                <th>{{ $envirodata->rate5 }}</th>
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
                            <button type="button" onclick="window.location.href='{{ route('roommaster.export') }}'" class="btn btn-success btn-sm">Excel</button>
                            <button type="button" onclick="window.open('{{ route('printroommaster') }}','_blank')" class="btn btn-info btn-sm text-white">Print</button>
                        </div>

                        <div class="table-responsive">
                            <table id="room_mast"
                                class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Room No.</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Building</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->rcode }}</td>
                                            <td>{{ $row->rcode }}</td>
                                            <td>{{ $row->catname }}</td>
                                            <td>{{ $row->buildingname }}</td>
                                            <td class="ins">
                                                <a
                                                    href="updateroommast?id={{ base64_encode($row->id) }}&roomno={{ base64_encode($row->rcode) }}&cat_code={{ base64_encode($row->room_cat) }}">
                                                    <button class="btn
                                                    btn-success btn-sm"><i class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>
                                                </a>
                                                <a
                                                    href="deleteroommaster?id={{ base64_encode($row->id) }}&roomno={{ base64_encode($row->rcode) }}&cat_code={{ base64_encode($row->room_cat) }}">
                                                    <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i>
                                                        Delete
                                                    </button>
                                                </a>
                                                <a data-dcode="{{ $row->rest_code }}" data-rcode="{{ $row->rcode }}" class="btn btn-sm btn-info qrcodebtn" href="javascript:void(0)"><i class="fa-solid fa-qrcode"></i> QR Code</a>
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
    
    
    <script>
        if (!$.fn.DataTable.isDataTable('#room_mast')) {
            new DataTable('#room_mast', { ordering: true, order: [], pageLength: 25 });
        }
    </script>
@endsection
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
            xhr.open('POST', '/getroomnames', true);
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
