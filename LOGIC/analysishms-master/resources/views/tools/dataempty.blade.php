@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="dataDelete" method="post">
                                @csrf
                                <input type="hidden" name="vprefix" id="vprefix">
                                <input type="hidden" name="formType" value="Change SW Date">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="propertyid">Select Company:</label>
                                            <select class="form-control select2-multiple" id="propertyid" required
                                                name="propertyid">
                                                <option value="">Select Company</option>
                                                @foreach ($companies as $item)
                                                    <option value="{{ $item->propertyid }}">{{ $item->comp_name }} -
                                                        {{ $item->propertyid }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <!-- ✅ WITH CM -->
                                    <div class="col-md-6 text-center">
                                        <label>Data empty with CM</label><br>
                                        <button type="button" class="btn btn-outline-danger mt-2"
                                            onclick="submitDataDelete('with_cm',this)">
                                            Empty Data With CM
                                        </button>
                                    </div>

                                    <!-- ✅ WITHOUT CM -->
                                    <div class="col-md-6 text-center">
                                        <label>Data empty without CM</label><br>
                                        <button type="button" class="btn btn-outline-warning mt-2"
                                            onclick="submitDataDelete('without_cm',this)">
                                            Empty Data Without CM
                                        </button>
                                    </div>

                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function submitDataDelete(type, btn) {

            let propertyid = $('#propertyid').val();

            if (!propertyid) {
                Swal.fire('Required', 'Please select a company first.', 'warning');
                return;
            }

            $('#delete_type').val(type);

            let confirmText = (type === 'with_cm')
                ? 'This will delete data WITH CM. Are you sure?'
                : 'This will delete data WITHOUT CM. Are you sure?';
            // Original text save
            let originalText = btn.innerHTML;
            Swal.fire({
                title: 'Confirm Action',
                text: confirmText,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#dc3545',
                cancelButtonColor: '#6c757d',
                confirmButtonText: 'Yes, Continue',
                cancelButtonText: 'Cancel'
            }).then((result) => {

                if (result.isConfirmed) {
                    // Show Loader

                    // ✅ BUTTON LOADING STATE
                    btn.disabled = true;
                    btn.innerHTML = `<i class="fa fa-spinner fa-spin me-2"></i> Deleting...`;

                    $.ajax({
                        url: "{{ route('delete-date') }}", // ✅ CHANGE IF NEEDED
                        type: 'POST',
                        data: {
                            propertyid: propertyid,
                            delete_type: type,
                            _token: '{{ csrf_token() }}'
                        },

                        success: function (response) {
                            if (response.status === true) {
                                Swal.fire(
                                    'Success',
                                    response.message ?? 'Operation completed successfully.',
                                    'success'
                                );
                            } else {
                                Swal.fire(
                                    'Error',
                                    response.message ?? 'Operation failed.',
                                    'error'
                                );
                            }
                        },

                        error: function () {
                            Swal.fire(
                                'Error',
                                'Server error occurred.',
                                'error'
                            );
                        },
                        complete: function () {
                            btn.disabled = false;
                            btn.innerHTML = originalText;
                        }
                    });

                }
            });
        }
    </script>
@endsection