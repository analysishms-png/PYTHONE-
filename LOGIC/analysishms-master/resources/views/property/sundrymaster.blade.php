@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" name="sundrymastform" id="sundrymastform" action="{{ url('sundrymaststore') }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="sundryname">Sundry Name</label>
                                        <input type="text" required class="form-control" name="sundryname"
                                            id="sundryname" >
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="nature">Nature</label>
                                        <select id="nature" name="nature" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="Addition" selected>Addition</option>
                                            <option value="Deduction">Deduction</option>
                                            <option value="Advance">Advance</option>
                                            <option value="Amount">Amount</option>
                                            <option value="CGST">CGST</option>
                                            <option value="IGST">IGST</option>
                                            <option value="Service Charge">Service Charge</option>
                                            <option value="Discount">Discount</option>
                                            <option value="Round Off">Round Off</option>
                                            <option value="Net Amount">Net Amount</option>
                                            <option value="Redemption">Redemption</option>
                                            <option value="Net Amount">Net Amount</option>
                                            <option value="Sale Tax">Sale Tax</option>
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="calcsign">Calc Sign</label>
                                        <select id="calcsign" name="calcsign" class="form-control" required>
                                            <option value="">Select</option>
                                            <option value="+" selected>+</option>
                                            <option value="-">-</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="text-center mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table id="sundrymast"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Sn.</th>
                                        <th>Name</th>
                                        <th>Nature</th>
                                        <th>Calc Sign</th>
                                        <th>Action</th>
                                        <th class="none">sn</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        <tr>
                                            <td>{{ $sn }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->nature }}</td>
                                            <td>{{ $row->calcsign }}</td>
                                            <td class="ins">
                                                <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                    class="btn btn-success editBtn update-btn btn-sm">
                                                    <i class="fa-regular fa-pen-to-square"></i>Edit
                                                </button>

                                                <a
                                                    href="{{ url('deletesundrymast/' . $row->id . '/' . $row->sundry_code) }}">
                                                    <button class="btn btn-danger btn-sm delete-btn">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="none">{{ $row->id }}</td>
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
    <div class="modal fade bd-example-modal-lg" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Sundry Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="sundrymastformupdate" action="{{ url('sundryupdatestore') }}"
                        id="sundrymastformupdate">
                        @csrf
                        <input type="hidden" name="upsn" id="upsn">
                        <div class="row">
                            <div class="col-md-6">
                                <label class="col-form-label" for="upsundryname">Sundry Name</label>
                                <input type="text" class="form-control" name="upsundryname" id="upsundryname"
                                    >
                            </div>
                            <div class="col-md-6">
                                <label class="col-form-label" for="upnature">Nature</label>
                                <select id="upnature" name="upnature" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="Addition">Addition</option>
                                    <option value="Deduction">Deduction</option>
                                    <option value="Advance">Advance</option>
                                    <option value="Amount">Amount</option>
                                    <option value="CGST">CGST</option>
                                    <option value="IGST">IGST</option>
                                    <option value="Service Charge">Service Charge</option>
                                    <option value="Discount">Discount</option>
                                    <option value="Round Off">Round Off</option>
                                    <option value="Net Amount">Net Amount</option>
                                    <option value="Redemption">Redemption</option>
                                    <option value="Net Amount">Net Amount</option>
                                    <option value="Sale Tax">Sale Tax</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="col-form-label" for="upcalcsign">Calc Sign</label>
                                <select id="upcalcsign" name="upcalcsign" class="form-control" required>
                                    <option value="">Select</option>
                                    <option value="+">+</option>
                                    <option value="-">-</option>
                                </select>
                            </div>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn mt-3 btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function() {
            //handleFormSubmission('#sundrymastform', '#submitBtn', 'sundrymaststore');
            //handleFormSubmission('#sundrymastformupdate', '#updateBtn', 'sundryupdatestore');

            $(".editBtn").click(function() {
                var name = $(this).closest("tr").find("td:eq(1)").text();
                var nature = $(this).closest("tr").find("td:eq(2)").text();
                var calcsign = $(this).closest("tr").find("td:eq(3)").text();
                var sn = $(this).closest("tr").find("td:eq(5)").text();
                $("#upsundryname").val(name);
                $("#upnature").val(nature);
                $("#upcalcsign").val(calcsign);
                $("#upsn").val(sn);
            });
        });
    </script>
@endsection
