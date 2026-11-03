@extends('admin.layouts.main')

@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('submitupdatelogform') }}" name="updatelogform"
                                id="updatelogform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="mainmenu">Main Menu</label>
                                        <select class="form-control" name="mainmenu" id="mainmenu">
                                            <option value="" selected disabled>Select Main Menu</option>
                                            @foreach ($mainMenus->unique('module_name') as $menu)
                                                <option data-opt1="{{ $menu->opt1 }}" data-opt2="{{ $menu->opt2 }}"
                                                    data-opt3="{{ $menu->opt3 }}" value="{{ $menu->module }}">
                                                    {{ $menu->module_name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="submenu">Sub-Menu Name</label>
                                        <select class="form-control" name="submenu" id="submenu"></select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="pagename">Page Name</label>
                                        <select class="form-control" name="pagename" id="pagename"></select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="summary">Summary</label>
                                        <input type="text" name="summary" id="summary" class="form-control" required>
                                    </div>
                                </div>

                                <div class="col-12 text-center mt-4">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table id="updatelog" class="table table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Main Menu</th>
                                        <th>Sub-Menu Name</th>
                                        <th>Page Name</th>
                                        <th>Summary</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ optional($row)->mainmenu }}</td>
                                            <td>{{ optional($row)->submenu }}</td>
                                            <td>{{ optional($row)->pagename }}</td>
                                            <td>{{ optional($row)->summary }}</td>

                                            <td>
                                                <form action="{{ route('deleteupdatelog') }}" method="POST"
                                                    onsubmit="return confirm('Are you sure you want to delete this record?');">
                                                    @csrf
                                                    @method('DELETE')
                                                    <input type="hidden" name="sn"
                                                        value="{{ base64_encode($row->id ?? '') }}">
                                                    <button type="submit" class="btn btn-danger btn-sm">
                                                        <i class="fas fa-trash"></i> Delete
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $("#mainmenu").change(function() {
            let opt1 = $(this).find('option:selected').data('opt1');
            let opt2 = $(this).find('option:selected').data('opt2');
            let opt3 = $(this).find('option:selected').data('opt3');

            const postdata = {
                opt1: opt1,
                opt2: opt2,
                opt3: opt3
            };

            const options = {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                body: JSON.stringify(postdata)
            };
            fetch(`submenufetch`, options)
                .then(response => response.json())
                .then(data => {
                    if (data.length > 0) {
                        $('#submenu').html('<option value="" selected disabled>Select Sub-Menu</option>');
                        let options = '';
                        data.forEach(tdata => {
                            options +=
                                `<option data-opt1="${tdata.opt1}" data-opt2="${tdata.opt2}" data-opt3="${tdata.opt3}" value="${tdata.module}">${tdata.module}</option>`;
                        });

                        $('#submenu').append(options);
                    }
                })
                .catch(error => console.error('Error:', error));

        });




        $("#submenu").change(function() {
            let opt1 = $(this).find('option:selected').data('opt1');
            let opt2 = $(this).find('option:selected').data('opt2');
            let opt3 = $(this).find('option:selected').data('opt3');

            const postdata = {
                opt1: opt1,
                opt2: opt2,
                opt3: opt3
            };

            const options = {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                body: JSON.stringify(postdata)
            };
            fetch(`pagenamefetch`, options)
                .then(response => response.json())
                .then(data => {
                    if (data.length > 0) {
                        $('#pagename').html('<option value="" selected disabled>Select Page Name</option>');
                        let options = '';
                        data.forEach(tdata => {
                            options += `<option value="${tdata.module}">${tdata.module}</option>`;
                        });

                        $('#pagename').append(options);
                    }
                })
                .catch(error => console.error('Error:', error));
        });

        $(".delete-form").submit(function(event) {
            event.preventDefault();
            let form = $(this);

            $.ajax({
                url: form.attr("action"),
                type: "DELETE",
                data: form.serialize(),
                success: function(response) {
                    alert(response.message);
                    form.closest("tr").remove();
                },
                error: function(response) {
                    alert("Error: " + response.responseJSON.error);
                }
            });
        });



    </script>
@endsection
