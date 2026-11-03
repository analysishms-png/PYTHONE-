@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div style="padding: 0;" class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">
                            <form action="{{ route('kottransferstore') }}" method="post">
                                @csrf
                                <input type="hidden" value="{{ $dcode }}" name="dcode" id="dcode">
                                <input type="hidden" name="docid" id="docid">
                                <div class="row p-4">
                                    <div class="col-md-6">
                                        <label for="vno" class="col-form-label">Kot No.</label>
                                        <select class="form-control" name="vno" id="vno">
                                            <option value="">Select</option>
                                            @foreach ($vnos as $item)
                                                <option data-vno="{{ $item->vno }}" data-vtype="{{ $item->vtype }}" data-restcode="{{ $item->restcode }}" data-vprefix="{{ $item->vprefix }}" data-roomno="{{ $item->roomno }}" data-docid="{{ $item->docid }}"
                                                    value="{{ $item->vno }}">{{ $item->vno }} -- {{ $item->roomno }}
                                                </option>
                                            @endforeach
                                        </select>
                                        <span class="text-warning position-absolute" id="roomnopicked"></span>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="roomno" class="col-form-label">{{ $label }}</label>
                                        <select class="form-control" name="roomno" id="roomno">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="text-center mt-2">
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
    <!-- #/ container -->
    <script>
        $(document).ready(function() {
            let roomnos = [];
            $(document).on('change', '#vno', function() {
                let docid = $(this).find('option:selected').data('docid');
                let vno = $(this).find('option:selected').data('vno');
                let vtype = $(this).find('option:selected').data('vtype');
                let restcode = $(this).find('option:selected').data('restcode');
                let vprefix = $(this).find('option:selected').data('vprefix');
                let dcode = $('#dcode').val();
                let roomno = $(this).find('option:selected').data('roomno');
                let roomnoselect = $('#roomno');
                let vnoxhr = new XMLHttpRequest();
                vnoxhr.open('POST', '/vnoxhr', true);
                vnoxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                vnoxhr.onreadystatechange = function() {
                    if (vnoxhr.readyState === 4 && vnoxhr.status === 200) {
                        let results = JSON.parse(vnoxhr.responseText);
                        if (results && results.restrooms) {
                            let restrooms = results.restrooms;
                            roomnoselect.empty();
                            roomnoselect.append('<option value="">Select</option>');
                            roomnos = [];
                            restrooms.forEach((data) => {
                                roomnos.push(data.roomno);
                                roomnoselect.append(
                                    `<option data-id="${data.docid}" value="${data.roomno}">${data.roomno}</option>`
                                    );
                            });
                            if (results.oneroom) {
                                $('#roomnopicked').text(results.oneroom.roomno);
                                // $('#docid').val(results.oneroom.docid);
                            }
                        } else {
                            console.error('Unexpected response structure:', results);
                        }
                    }
                }
                vnoxhr.send(`docid=${docid}&&vno=${vno}&&vtype=${vtype}&&restcode=${restcode}&&vprefix=${vprefix}&&roomno=${roomno}&&dcode=${dcode}&_token={{ csrf_token() }}`);
            });

            $(document).on('change', '#roomno', function() {
                let roomno = $(this).val();
                let m = roomnos.find(x => x === roomno);
                let docid = $(this).find('option:selected').data('id');
                // $('#docid').val(docid);
            });
        });
    </script>
@endsection
