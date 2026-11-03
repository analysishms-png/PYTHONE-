@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body box animate__animated animate__bounceIn">

                            <form action="{{ route('menuitemcopystore') }}" method="post">
                                @csrf
                                <input type="hidden" name="totalitems" id="totalitems">
                                <input type="hidden" name="totalchecked" id="totalchecked">
                                <div class="text-end">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="fromdcode" class="col-form-label">From Restaurent</label>
                                            <select name="fromdcode" id="fromdcode" class="form-control" required>
                                                <option value="">Select</option>
                                                @foreach ($depart as $item)
                                                    <option value="{{ $item->dcode }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="todcode" class="col-form-label">To Restaurent</label>
                                            <select name="todcode" id="todcode" class="form-control" required>
                                                <option value="">Select</option>
                                                @foreach ($depart as $item)
                                                    <option value="{{ $item->dcode }}">{{ $item->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="applicablefrom" class="col-form-label">Applicable From</label>
                                            <input type="date" min="{{ date('Y-m-d') }}" class="form-control" name="applicablefrom" id="applicablefrom" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-container">
                                    <table id="menuitemcopy" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Sn</th>
                                                <th><input type="checkbox" id="allchecked"> All</th>
                                                <th>Name</th>
                                                <th>Group</th>
                                                <th>Category</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            let timer;
            let tbody = $('#menuitemcopy tbody');
            $(document).on('input', '#applicablefrom', function() {
                clearTimeout(timer);
                setTimeout(() => {
                    let applicablefrom = $(this).val();
                    applicablefrom = new Date(applicablefrom);
                    let today = new Date();
                    today.setHours(0, 0, 0, 0);
                    if (applicablefrom < today) {
                        pushNotify('error', 'Menu Item Copy', `Only Future Date Select`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                        $(this).val('');
                    }
                }, 2000);
            });
            $(document).on('change', '#todcode, #fromdcode', function() {
                tbody.empty();
                let fromdcode = $('#fromdcode').val();
                let todcode = $('#todcode').val();
                if (fromdcode === todcode) {
                    $('#fromdcode').val('');
                    $('#todcode').val('');
                    fromdcode = '';
                    tbody.empty();
                    pushNotify('error', 'Menu Item Copy', `To Restaurent should be different than from Restaurent`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                }

                if (fromdcode != '') {
                    let menuitemxhr = new XMLHttpRequest();
                    menuitemxhr.open('POST', '/menuitemxhr', true);
                    menuitemxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                    menuitemxhr.onreadystatechange = function() {
                        if (menuitemxhr.status === 200 && menuitemxhr.readyState === 4) {
                            let results = JSON.parse(menuitemxhr.responseText);
                            let items = results.items;
                            if (items.length < 1) {
                                pushNotify('error', 'Menu Item Copy', `No Items Found`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                            } else {
                                $('#totalitems').val(items.length);
                                pushNotify('success', 'Menu Item Copy', `${items.length} Items Found`, 'fade', 300, '', '', true, true, true, 3000, 20, 20, 'outline', 'right top');
                                let tdata = '';
                                let sn = 1;
                                items.map((data, index) => {
                                    tdata += `<tr>
                                    <td>${sn}</td>
                                    <td><input type="checkbox" value="${data.Code}" class="allchecked" name="itemcode${sn}" id="itemcode${sn}"></td>
                                    <td>${data.Name}</td>
                                    <td>${data.grpname}</td>
                                    <td>${data.catname}</td>
                                    </tr>`
                                    sn++;
                                });
                                tbody.append(tdata);
                            }

                        }
                    };
                    menuitemxhr.send(`dcode=${fromdcode}&_token={{ csrf_token() }}`);
                } else {
                    tbody.empty();
                }
            });
            $(document).on('change', '#allchecked', function() {
                if ($(this).is(':checked')) {
                    $('.allchecked').prop('checked', true);
                    let count = $('.allchecked').filter(':checked').length;
                    $('#totalchecked').val(count);
                } else {
                    $('.allchecked').prop('checked', false);
                    let count = $('.allchecked').filter(':checked').length;
                    $('#totalchecked').val(count);
                }
            });
            $(document).on('change', '.allchecked', function() {
                let count = $('.allchecked').filter(':checked').length;
                $('#totalchecked').val(count);
            });
        });
    </script>
@endsection
