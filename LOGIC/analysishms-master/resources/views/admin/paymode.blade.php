@extends('admin.layouts.main')

@section('main-container')
    <!-- DataTables CSS -->

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

    <!-- Select2 CSS -->

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- DataTables JS -->

    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <!-- Select2 JS -->

    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <!-- SweetAlert -->

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <div class="content-body">
        <div class="container-fluid">

            ```
            @if (session('success'))
                <script>
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: "{{ session('success') }}",
                        timer: 2000,
                        showConfirmButton: false
                    });
                </script>
            @endif

            <div class="row justify-content-center">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body">

                            <form action="{{ route('property.updateExpiry') }}" method="POST">
                                @csrf

                                <!-- Property Dropdown -->
                                <div class="mb-3">
                                    <label class="form-label">Property</label>
                                    <select name="propertyid" id="propertyid" class="form-control" required>
                                        <option value="">-- Select Property --</option>
                                        @foreach ($properties as $property)
                                            <option value="{{ $property->propertyid }}">
                                                {{ $property->comp_name ?? 'Property' }} ({{ $property->propertyid }})
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <!-- Amount -->
                                <div class="mb-3">
                                    <label class="form-label">Amount</label>
                                    <input type="number" id="amount" name="amount" step="0.01" class="form-control"
                                        placeholder="Enter amount" required>
                                </div>

                                <!-- Expiry Date -->
                                <div class="mb-3">
                                    <label class="form-label">Expiry Date</label>
                                    <input type="date" id="expdate" name="expdate" class="form-control" required>
                                </div>

                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>

                            <hr>

                            <!-- Table -->
                            <div class="table-responsive">
                                <table id="expiryTable" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Property</th>
                                            <th>Current Date</th>
                                            <th>Expiry Date</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @php
                                            use Carbon\Carbon;
                                            use Illuminate\Support\Facades\Crypt;

                                            $sorted = $envgeneral
                                                ->filter(fn($i) => !empty($i->expdate))
                                                ->sortBy(fn($i) => Carbon::parse(Crypt::decryptString($i->expdate)));
                                        @endphp

                                        @foreach ($sorted as $item)
                                            @php
                                                $expCarbon = Carbon::parse(Crypt::decryptString($item->expdate));
                                                $expdate = $expCarbon->format('d-m-Y');

                                                $amount = number_format((float) Crypt::decryptString($item->amount), 2);

                                                $ncur = Carbon::parse($item->ncur)->format('d-m-Y');

                                                // Expired row highlight
                                                $rowClass = $expCarbon->isPast() ? 'table-danger' : '';
                                            @endphp

                                            <tr class="{{ $rowClass }}">
                                                <td>{{ $item->comp_name }} ({{ $item->propertyid }})</td>
                                                <td>{{ $ncur }}</td>
                                                <td data-order="{{ $expCarbon->format('Ymd') }}">{{ $expdate }}</td>
                                                <td>{{ $amount }}</td>
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
        ```

    </div>

    <script>
        $(document).ready(function() {

            // DataTable
            $('#expiryTable').DataTable({
                pageLength: 25,
                lengthMenu: [10, 25, 50, 100],
                order: [
                    [2, 'asc']
                ]
            });

            // Select2 Searchable Dropdown
            $('#propertyid').select2({
                placeholder: "Search Property...",
                allowClear: true,
                width: '100%'
            });

            setInterval(function() {
                $('input[type="text"], input[type="number"], input[type="email"], input[type="date"], textarea')
                    .prop('readonly', false)
                    .prop('disabled', false);
            }, 1000);

            $('#propertyid').on('change', function() {

                let propertyId = $(this).val();

                if (propertyId) {
                    $.ajax({
                        url: '/get-expiry-data/' + propertyId,
                        type: 'GET',
                        success: function(data) {

                            if (data) {
                                $('#amount').val(data.amount).trigger('change');
                                $('#expdate').val(data.expdate).trigger('change');
                            } else {
                                $('#amount').val('');
                                $('#expdate').val('');
                            }

                            $('#amount, #expdate').prop('readonly', false).prop('disabled',
                                false);
                        }
                    });
                } else {
                    $('#amount').val('');
                    $('#expdate').val('');
                }

            });

        });
    </script>
@endsection
