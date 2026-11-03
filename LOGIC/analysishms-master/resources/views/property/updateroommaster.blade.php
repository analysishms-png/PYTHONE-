@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('roommastupdate') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="rcode">Room No.</label>
                                        <input type="text" name="rcode" value="{{ $data->rcode }}" id="rcode"
                                            class="form-control" required readonly>
                                        <div id="namelist"></div>
                                        @error('rcode')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                        <input type="hidden" value="{{ $data->id }}" name="id">
                                        <input type="hidden" value="{{ $data->rcode }}" name="roomno">

                                        <label class="col-form-label" for="roomname">Room Name</label>
                                        <input type="text" name="roomname" value="{{ $data->name }}" id="roomname"
                                            class="form-control" required>
                                        <div id="namelist"></div>
                                        @error('roomname')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="room_cat">Room Category</label>
                                        <select id="room_cat" name="room_cat" class="form-control" required>
                                            @if (empty($data->room_cat))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $data->room_cat }}">{{ $data->catname }}</option>
                                            @endif
                                            @foreach ($roomcat as $list)
                                                <option value="{{ $list->cat_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('room_cat')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="pic_path">Photo <span
                                                class="text-danger">*</span></label>
                                        <input type="file"
                                            onchange="checkFile(this, '1mb', ['jpg', 'png', 'jpeg', 'webp'])"
                                            name="pic_path" accept=".jpg,.png,.jpeg,.webp" id="pic_path"
                                            class="form-control">
                                        <input type="hidden" name="old_photo" value="{{ $data->pic_path }}">
                                        @error('pic_path')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                    </div>

                                    <div class="col-md-6">

                                        <label class="col-form-label" for="multiper">Multiple Person</label>
                                        <input type="text" value="{{ $data->multiper }}" oninput="checkNumMax(this, 5)"
                                            name="multiper" id="multiper" class="form-control" required>
                                        @error('multiper')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="maid_station">House Keeping</label>
                                        <select id="maid_station" name="maid_station" class="form-control" required>
                                            @if (empty($data->maid_station))
                                                <option value="">Select</option>
                                            @else
                                                <option value="{{ $data->maid_station }}">{{ $data->maid_station }}
                                                </option>
                                            @endif
                                            <option value="House Keeping">House Keeping</option>
                                        </select>
                                        @error('maid_station')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="floor">Floor</label>
                                        <select id="floor" name="floor" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($floors as $fl)
                                                <option value="{{ $fl->code }}" {{ $data->floor == $fl->code ? 'selected' : '' }}>
                                                    {{ $fl->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('floor')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror

                                        <label class="col-form-label" for="building">Building</label>
                                        <select id="building" name="building" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($buildings as $bld)
                                                <option value="{{ $bld->code }}" {{ $data->building == $bld->code ? 'selected' : '' }}>
                                                    {{ $bld->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('building')
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
                                                <th>{{ $envirodata->rate1 }}</th>
                                                <th>{{ $envirodata->rate2 }}</th>
                                                <th>{{ $envirodata->rate3 }}</th>
                                                <th>{{ $envirodata->rate4 }}</th>
                                                <th>{{ $envirodata->rate5 }}</th>
                                            </tr>
                                        </thead>
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
                                        <?php
}
?>

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
