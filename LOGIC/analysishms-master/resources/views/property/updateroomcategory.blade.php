@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('roomcatupdate') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="type">Room Type</label>
                                        <input type="text" name="type" value="{{ $data->name }}" id="type"
                                            class="form-control" required>
                                        <div id="namelist"></div>
                                        @error('type')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                        <input type="hidden" value="{{ $data->cat_code }}" name="cat_code">

                                        <label class="col-form-label" for="shortname">Short Name</label>
                                        <input type="text" name="shortname" value="{{ $data->shortname }}" id="shortname"
                                            class="form-control" required>
                                        @error('shortname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="rev_code">Revenue Charge</label>
                                        <select id="rev_code" name="rev_code" class="form-control" required>
                                            @if (empty($data->rev_code))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $data->rev_code }}">{{ $data->taxname }}</option>
                                            @endif
                                            @foreach ($revmastdata as $list)
                                                <option value="{{ $list->rev_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('rev_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="ammenties">Ammenties</label>
                                        <input type="text" value="{{ $data->ammenties }}" name="ammenties" id="ammenties" class="form-control">
                                        @error('ammenties')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="image_path">Images</label>
                                        <input type="file" name="image_path[]" id="image_path" class="form-control" accept="image/*" multiple>
                                        @error('image_path')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        @if (!empty($data->image_path))
                                            @php
                                                $images = explode(',', $data->image_path);
                                            @endphp

                                            <div class="mt-2">
                                                <label class="col-form-label">Current Images</label>
                                                <div class="d-flex flex-wrap">
                                                    @foreach ($images as $image)
                                                        <div class="text-center me-2 mb-3 image-wrapper" style="width: 110px;">
                                                            <img src="{{ url('storage/property/roomcategory/' . $image) }}"
                                                                alt="Room Image"
                                                                class="img-thumbnail preview-image"
                                                                style="width: 100px; height: 100px; object-fit: cover; cursor: pointer;"
                                                                data-image="{{ url('storage/property/roomcategory/' . $image) }}">
                                                            <button type="button"
                                                                class="btn btn-sm btn-danger mt-1 remove-image"
                                                                data-image="{{ $image }}">
                                                                Remove
                                                            </button>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        @endif

                                        <!-- Image Modal -->
                                        <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-body text-center p-0">
                                                        <img id="modalImage" src="" alt="Room Image" class="img-fluid rounded">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-md-6">

                                        <label class="col-form-label" for="multiper">Multiple Person</label>
                                        <input type="text" value="{{ $data->multiper }}" oninput="checkNumMax(this, 5)"
                                            name="multiper" id="multiper" class="form-control" required>
                                        @error('multiper')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="norooms">Rooms Available</label>
                                        <input type="text" value="{{ $data->norooms }}" oninput="checkNumMax(this, 5)"
                                            name="norooms" id="norooms" class="form-control" required>
                                        @error('norooms')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="map_code">Map Code</label>
                                        <input type="text" value="{{ $data->map_code }}" oninput="checkNumMax(this, 5)"
                                            name="map_code" id="map_code" class="form-control" required>
                                        @error('map_code')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="inclcount">Include Room Count</label>
                                        <div class="form-check custom-radio">
                                            <input class="form-check-input" type="radio" value="Y" name="inclcount"
                                                id="activeyes" {{ $data->inclcount == 'Y' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeyes">Active</label>
                                        </div>
                                        <div class="form-check mt-2 custom-radio">
                                            <input class="form-check-input" type="radio" value="N" name="inclcount"
                                                id="activeno" {{ $data->inclcount == 'N' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="activeno">In Active</label>
                                        </div>
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
                                                $values = $ratelistdata;
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
                                                        value="{{ isset($values[$i]->rate1) ? $values[$i]->rate1 : '' }}"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_rackrate"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        value="{{ isset($values[$i]->rate2) ? $values[$i]->rate2 : '' }}"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate1"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        value="{{ isset($values[$i]->rate3) ? $values[$i]->rate3 : '' }}"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate2"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        value="{{ isset($values[$i]->rate4) ? $values[$i]->rate4 : '' }}"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                                <td>
                                                    <input name="<?php echo $namelabel; ?>_diskrate3"
                                                        class="decimal-input form-visible" step="0.01" min="0.00"
                                                        max="99999.99" placeholder="0.00"
                                                        value="{{ isset($values[$i]->rate5) ? $values[$i]->rate5 : '' }}"
                                                        oninput="checkNumMax(this, 8);handleDecimalInput(event);"
                                                        type="text">
                                                </td>
                                            </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                    <div class="col-7 mt-4 mb-4 ml-auto">
                                        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-wrench"></i>
                                            Update </button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    </div>
@endsection

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function() {
        $('#myloader').removeClass('none');
        setTimeout(() => {
            $('#myloader').addClass('none');
        }, 500);
    });
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

    $(document).ready(function() {

        $(document).on('click', '.preview-image', function() {
            const imageUrl = $(this).data('image');
            $('#modalImage').attr('src', imageUrl);
            $('#imageModal').modal('show');
        });

        $(document).on('click', '.remove-image', function() {
            const imagePath = $(this).data('image');
            const wrapper = $(this).closest('.image-wrapper');

            if (confirm('Are you sure you want to remove this image?')) {
                wrapper.fadeOut(300, function() {
                    $(this).remove();
                });

                $.ajax({
                    url: "{{ route('roomcategory.removeImage') }}",
                    type: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        image: imagePath,
                        cat_code: "{{ $data->cat_code }}"
                    },
                    success: function(res) {
                        console.log('Removed:', res);
                        Swal.fire({
                            icon: 'success',
                            title: 'Image removed successfully',
                            showConfirmButton: false,
                            timer: 1500
                        });
                        window.location.reload();
                    }
                });

            }
        });

    });
</script>
