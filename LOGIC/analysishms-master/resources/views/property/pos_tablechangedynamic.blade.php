@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__fadeIn">
                            <div class="col-md-2">
                                <button onclick="Simongoback()" style="width: -webkit-fill-available;" type="button"
                                    class="btn ml-1 rhead btn-sm btn-info" name="goback"
                                    id="goback">Go Back</button>
                            </div>
                            <form action="{{ route('tablechangesubmit') }}" method="post">
                                @csrf
                                <input type="hidden" value="{{ $depdata->dcode }}" name="dcode" id="dcode">
                                <input type="hidden" value="{{ $depdata->name }}" name="departname" id="departname">
                                <div class="room-container">

                                    @foreach ($allrooms as $item)
                                        <div data-id="{{ $item->roomno }}" id="roomboxes" class="room-box">
                                            <p class="none" id="selroom">{{ $selectedroom }}</p>
                                            <div class="room-number">{{ $item->roomno }}</div>
                                            <div
                                                class="room-status 
                                                @if ($selectedroom == $item->roomno) status-myroom
                                                @elseif ($item->status == 'occupied')
                                                    status-occupied
                                                @elseif ($item->status == 'maintenance')
                                                    status-maintenance
                                                @elseif ($item->status == 'vacant')
                                                    status-available 
                                                @elseif ($item->status == 'billed')
                                                    status-billed @endif
                                            ">
                                                <span>
                                                    @if ($selectedroom == $item->roomno)
                                                        My Table
                                                    @elseif ($item->status == 'occupied')
                                                        Occupied
                                                    @elseif ($item->status == 'maintenance')
                                                        Maintenance
                                                    @elseif ($item->status == 'vacant')
                                                        Available
                                                    @elseif ($item->status == 'billed')
                                                        Billed
                                                    @else
                                                        Unknown Status
                                                    @endif
                                                </span>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="{{ asset('admin/js/anim.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        function Simongoback() {
            window.location.href = `displaytable?dcode=${$('#dcode').val()}`;
        }
        $(document).ready(function() {
            var dcode = $('#dcode').val();
            let roomboxes = $('.room-box').filter(function() {
                return $(this).find('.status-myroom').length > 0;
            });
            roomboxes.css('background', 'url("admin/images/darkred.jpg")')
            roomboxes.css('background-size', 'contain');
            $(document).on('click', '.room-box', function() {
                let status = $(this).find('span').text().trim();
                if (status === 'Maintenance') {
                    pushNotify('error', 'Table Change', 'Please Select Available Table Only', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                } else if (status === 'Occupied') {
                    pushNotify('error', 'Table Change', 'Please Select Available Table Only', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                } else if (status === 'Available' || status === 'Billed') {
                    let fromroom = $(this).find('#selroom').text().trim();
                    let toroomno = $(this).data('id');
                    Swal.fire({
                        icon: 'info',
                        title: 'Table Change',
                        text: `Are you sure you want to change Table No. ${fromroom} to Table ${toroomno}`,
                        showCancelButton: true,
                    }).then((result) => {
                        if (result.isConfirmed === true) {
                            let changexhr = new XMLHttpRequest();
                            changexhr.open('POST', 'changetblxhr', true);
                            changexhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                            changexhr.onreadystatechange = function() {
                                if (changexhr.status === 200 && changexhr.readyState === 4) {
                                    let result = JSON.parse(changexhr.responseText);
                                    if (result === '1') {
                                        pushNotify('success', 'Table Change', 'Table Changed Successfully', 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                        setTimeout(() => {
                                            window.location.href = `displaytable?dcode=${dcode}`;
                                        }, 2000);
                                    } else {
                                        console.log(result);
                                    }
                                }
                            }
                            changexhr.send(`fromroom=${fromroom}&toroomno=${toroomno}&dcode=${dcode}&_token={{ csrf_token() }}`);
                        }
                    })
                } else if (status === 'My Table') {
                    pushNotify('error', 'Table Change', 'You can not select our own table', 'fade', 300, '', '', true, true, true, 500, 20, 20, 'outline', 'right top');
                } else {

                }
            });
        });
    </script>
@endsection
