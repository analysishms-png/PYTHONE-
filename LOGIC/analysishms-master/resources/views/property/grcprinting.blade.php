@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="grcprintingtable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sn</th>
                                            <th>Guest Name</th>
                                            <th>City</th>
                                            <th>Mobile</th>
                                            <th>Room No</th>
                                            <th>Folio No</th>
                                            <th>Bill</th>
                                            <th>In Date</th>
                                            <th>In Time</th>
                                            <th>Dep Date</th>
                                            <th>Dep Time</th>
                                            <th>Rate</th>
                                            <th>Tax Inc</th>
                                            <th>Comp.</th>
                                            <th>Travel</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $sn = 1;
                                        @endphp
                                        @foreach ($data as $checkin)
                                        @if ($checkin->type != 'C')
                                            <tr>
                                                <td>{{ $sn++ }}</td>
                                                <td>{{ $checkin->Guest_Name }}</td>
                                                <td>{{ $checkin->City }}</td>
                                                <td>{{ $checkin->mobile_no }}</td>
                                                <td>{{ $checkin->Room_No }}</td>
                                                <td>{{ $checkin->Folio_No }}</td>
                                                <td>{{ $checkin->Bill_No }}</td>
                                                <td class="nowrap">{{ date('d-m-Y', strtotime($checkin->chkindate)) }}</td>
                                                <td>{{ substr($checkin->CheckIn_Time, 0, -3) }}</td>
                                                <td class="nowrap">{{ $checkin->Dep_Date == null ? '' : date('d-m-Y', strtotime($checkin->Dep_Date)) }}</td>
                                                <td>{{ substr($checkin->deptime, 0, -3) }}</td>
                                                <td>{{ $checkin->Rate }}</td>
                                                <td>{{ $taxinc = $checkin->Tax_Inc == 'Y' ? 'Yes' : ($checkin->Tax_Inc == 'N' ? 'No' : '') }}</td>
                                                <td>{{ $checkin->compname }}</td>
                                                <td>{{ $checkin->travelagent }}</td>
                                                <td class="ins">
                                                    <a href="{{ url('printwalkin/' . $checkin->docid) }}" target="_blank">
                                                        <button class="btn btn-primary btn-sm"><i class="fas fa-print"></i> Print</button>
                                                    </a>                                                    
                                                </td>
                                            </tr>
                                        @endif
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

    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.2/css/dataTables.dataTables.css">
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.js"></script>
    <script>
        $(document).ready(function() {
            new DataTable('#grcprintingtable', {
                "pageLength": 15
            });
        });
    </script>
@endsection
