@extends('property.layouts.main')
@section('main-container')
    <style>


    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ route('expensesubmit') }}" name="servermasterform"
                                id="servermasterform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="vtype">Name</label>
                                        <select class="form-control" name="vtype" id="vtype" required>
                                            <option value="">Select</option>
                                            @foreach ($types as $item)
                                                <option value="{{ $item->v_type }}">
                                                    {{ $item->v_type == 'HTSAL' ? 'MISC Rect.' : 'MISC EXP.' }}</option>
                                            @endforeach
                                        </select>
                                        @error('vtype')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="vno">Vno</label>
                                        <input type="text" placeholder="Auto Fetched" class="form-control" name="vno"
                                            id="vno" readonly required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ncurdate">Date</label>
                                        <input type="date" value="{{ $ncurdate }}" class="form-control"
                                            name="ncurdate" id="ncurdate" readonly required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="amount">Amount</label>
                                        <input type="number" class="form-control" name="amount" id="amount"
                                            placeholder="Enter Amount in Rupee" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="againstac">Against A/C</label>
                                        <select class="form-control" name="againstac" id="againstac" required>
                                            <option value="">Select</option>
                                            @foreach ($subgroup as $item)
                                                <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('vtype')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="contraacount">Contra A/C</label>
                                        <select class="form-control" name="contraacount" id="contraacount" required>
                                            <option value="">Select</option>
                                            @foreach ($contraacount as $item)
                                                <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('vtype')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="remarks">Remarks</label>
                                        <input type="text" placeholder="Enter Remarks" class="form-control"
                                            name="remarks" id="remarks" required>
                                    </div>
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitbtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive">
                            <table id="expsheet"
                                class="table table-hover table-download-with-search table-hover table-striped">
                                <thead class="bg-secondary">
                                    <tr>
                                        <th>Vtype</th>
                                        <th>Vno</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Against A/C</th>
                                        <th>Contra A/C</th>
                                        <th>Remarks</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $sn = 1; @endphp
                                    @foreach ($data as $row)
                                        @if ($user->superwiser == 1)
                                            <tr data-docid="{{ $row->docid }}">
                                                <td>{{ $row->vtype == 'HTSAL' ? 'MISC Rect.' : 'MISC EXP.' }}</td>
                                                <td>{{ $row->vno }}</td>
                                                <td>{{ date('d-m-Y', strtotime($row->vdate)) }} {{ $row->vtime }}</td>
                                                @if ($row->vtype == 'HTEXP')
                                                    <td>{{ $row->dramt }}</td>
                                                @else
                                                    <td>{{ $row->cramt }}</td>
                                                @endif
                                                <td>{{ $row->agsubname }}</td>
                                                <td>{{ $row->crsubname }}</td>
                                                <td>{{ $row->remark }}</td>
                                                <td>{{ $row->delflag == 'Y' ? 'Deleted' : 'Active' }}</td>
                                                <td class="ins">
                                                    @if ($row->delflag == 'Y')
                                                        <!-- Add Watermark Here -->
                                                        <div class="cancelled-watermark1" style="color:crimson; font-size:20px;">
                                                            Cancelled
                                                        </div>
                                                    @else
                                                        <button data-toggle="modal" data-target="#editexpensemodal"
                                                            class="btn btn-success editBtn update-btn btn-sm">
                                                            <i class="fa-regular fa-pen-to-square"></i> Edit
                                                        </button>
                                                        <a
                                                            href="{{ url('deleteexpenseentry/' . $row->id . '/' . $row->docid) }}">
                                                            <button class="btn btn-danger btn-sm delete-btn">
                                                                <i class="fa-solid fa-trash"></i> Delete
                                                            </button>
                                                        </a>
                                                    @endif
                                                    <button class="btn btn-info btn-sm"
                                                        onclick="openPrint('{{ base64_encode($row->docid) }}', '{{ $row->delflag ?? 'N' }}')">
                                                        <i class="fa-solid fa-print"></i> Print
                                                    </button>
                                                </td>
                                            </tr>
                                        @else
                                            @if ($row->vdate == $ncurdate)
                                                <tr data-docid="{{ $row->docid }}">
                                                    <td>{{ $row->vtype == 'HTSAL' ? 'MISC Rect.' : 'MISC EXP.' }}</td>
                                                    <td>{{ $row->vno }}</td>
                                                    <td>{{ date('d-m-Y', strtotime($row->vdate)) }} {{ $row->vtime }}</td>
                                                    @if ($row->vtype == 'HTEXP')
                                                        <td>{{ $row->dramt }}</td>
                                                    @else
                                                        <td>{{ $row->cramt }}</td>
                                                    @endif
                                                    <td>{{ $row->agsubname }}</td>
                                                    <td>{{ $row->crsubname }}</td>
                                                    <td>{{ $row->remark }}</td>
                                                    <td>{{ $row->delflag == 'Y' ? 'Deleted' : 'Active' }}</td>
                                                    <td class="ins">
                                                        @if ($row->delflag == 'Y')
                                                            <!-- Add Watermark Here -->
                                                            <div class="cancelled-watermark1" style="color:crimson; font-size:20px;">
                                                                Cancelled
                                                            </div>
                                                        @else
                                                            <button data-toggle="modal" data-target="#editexpensemodal"
                                                                class="btn btn-success editBtn update-btn btn-sm">
                                                                <i class="fa-regular fa-pen-to-square"></i> Edit
                                                            </button>
                                                            <button class="btn btn-danger btn-sm delete-btn"
                                                                onclick="handleDeleteRequest('deleteexpenseentry', this, '{{ base64_encode($row->id) }}', '{{ base64_encode($row->docid) }}')">
                                                                <i class="fa-solid fa-trash"></i> Delete
                                                            </button>
                                                        @endif
                                                        <button class="btn btn-info btn-sm"
                                                            onclick="openPrint('{{ base64_encode($row->docid) }}', '{{ $row->delflag ?? 'N' }}')">
                                                            <i class="fa-solid fa-print"></i> Print
                                                        </button>
                                                    </td>
                                                </tr>
                                            @endif
                                        @endif
                                        @php $sn++; @endphp
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                        <!-- Edit Expense Modal -->
                        <div class="modal fade" id="editexpensemodal" tabindex="-1" aria-labelledby="editexpensemodalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editexpensemodalLabel">Edit Expense Data</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="{{ route('expenseupdate') }}" id="editexpenseform"
                                            class="g-3 needs-validation" method="POST">
                                            @csrf
                                            <input type="hidden" name="editdocid" id="editdocid">
                                            <input type="hidden" name="upvtype" id="upvtype">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="upamount">Amount</label>
                                                    <input type="number" class="form-control" name="upamount"
                                                        id="upamount" placeholder="Enter Amount in Rupee" required>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="upagainstac">Against A/C</label>
                                                    <select class="form-control" name="upagainstac" id="upagainstac"
                                                        required>
                                                        <option value="">Select</option>
                                                        @foreach ($subgroup as $item)
                                                            <option value="{{ $item->sub_code }}">{{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('vtype')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="upcontraacount">Contra A/C</label>
                                                    <select class="form-control" name="upcontraacount"
                                                        id="upcontraacount" required>
                                                        <option value="">Select</option>
                                                        @foreach ($contraacount as $item)
                                                            <option value="{{ $item->sub_code }}">{{ $item->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('vtype')
                                                        <span class="text-danger"> {{ $message }} </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="col-form-label" for="upremarks">Remarks</label>
                                                    <input type="text" class="form-control" name="upremarks"
                                                        id="upremarks" required>
                                                </div>
                                            </div>

                                            <div class="text-center p-3">
                                                <button id="editsubmitbtn" class="btn btn-primary" type="submit">Update
                                                    <i class="fa-solid fa-file-export"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openPrint(docid, delflag) {

            let printWindow = window.open('/print-expense/' + docid, '_blank');


            printWindow.onload = function() {
                if (delflag === 'Y') {

                    const watermarkText1 = 'Cancelled';


                    const watermarkStyle = {
                        position: 'absolute',
                        top: '50%',
                        left: '50%',
                        transform: 'translate(-50%, -50%) rotate(-45deg)',
                        color: 'red',
                        fontSize: '6em',
                        opacity: '0.2',
                        pointerEvents: 'none',
                        whiteSpace: 'nowrap',
                        zIndex: '9999',
                        userSelect: 'none',
                    };


                    let watermarkDiv1 = printWindow.document.createElement('div');
                    watermarkDiv1.className = 'cancelled-watermark';
                    watermarkDiv1.innerText = watermarkText1;
                    Object.assign(watermarkDiv1.style, watermarkStyle);
                    printWindow.document.body.appendChild(watermarkDiv1);


                    let watermarkDiv2 = printWindow.document.createElement('div');
                    watermarkDiv2.className = 'Deleted-watermark';
                    watermarkDiv2.innerText = watermarkText2;
                    Object.assign(watermarkDiv2.style, {
                        ...watermarkStyle,
                        top: '60%',
                        left: '40%',
                        transform: 'translate(-50%, -50%) rotate(45deg)',
                    });
                    printWindow.document.body.appendChild(watermarkDiv2);


                }
            };


            const {
                jsPDF
            } = window.jspdf;
            const doc = new jsPDF();

            if (delflag === 'Y') {
                const watermarkText1 = 'Cancelled';
                const watermarkText2 = 'Deleted';



                doc.setFontSize(50);
                doc.setTextColor(255, 0, 0, 50);


                doc.text(watermarkText1, 100, 100, {
                    angle: -45
                });
                doc.text(watermarkText2, 110, 120, {
                    angle: 45
                });

            }


            doc.save('document-with-multiple-watermarks.pdf');


        }
        $(document).ready(function() {
            let csrftoken = "{{ csrf_token() }}";



            $(document).on('click', '.editBtn', function() {
                let docid = $(this).closest('tr').data('docid');
                $('#editdocid').val(docid);
                let postdata = {
                    'docid': docid
                }

                let options = {
                    method: 'POST',
                    headers: {
                        'content-type': 'application/json',
                        'X-CSRF-TOKEN': csrftoken
                    },
                    body: JSON.stringify(postdata)
                };

                fetch('/editexpensedata', options)
                    .then(response => response.json())
                    .then(data => {
                        let resdata = data.data;
                        $('#editdocid').val(resdata.docid);
                        $('#upvtype').val(resdata.vtype);
                        let amount = 0.00;
                        if (resdata.vtype == 'HTEXP') {
                            $('#upamount').val(resdata.dramt);
                        } else {
                            $('#upamount').val(resdata.cramt);
                        }
                        $('#upagainstac').val(resdata.drac);
                        $('#upcontraacount').val(resdata.crac);
                        $('#upremarks').val(resdata.remark);
                    })
                    .catch(error => {
                        console.log(error);
                    })
            });

            $(document).on('change', '#vtype', function() {
                let vtype = $(this).val();

                if (vtype != '') {
                    let postdata = {
                        'vtype': vtype
                    };

                    const options = {
                        method: 'POST',
                        headers: {
                            'content-type': 'application/json',
                            'X-CSRF-TOKEN': csrftoken,
                        },
                        body: JSON.stringify(postdata)
                    };
                    fetch('/voucherdetail', options)
                        .then(response => response.json())
                        .then(data => {
                            $('#vno').val(data);

                        })
                        .catch(error => {
                            console.log(error);
                        })
                } else {
                    $('#vno').val('');

                }
            });
        });
    </script>
@endsection
