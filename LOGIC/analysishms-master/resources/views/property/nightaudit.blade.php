@extends('property.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="pendingkotnightaudit none">
                                <div class="topbutton">
                                    <button id="clspending" type="button" class="close">
                                        <span>X</span>
                                    </button>
                                </div>
                                <table id="pendingkotnightaudit" class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th id="headingth">KOT No.</th>
                                            <th>Table/Room</th>
                                            <th>Steward</th>
                                            <th>Outlet</th>
                                            <th>status</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                    <tfoot class="none">

                                    </tfoot>
                                </table>
                            </div>
                            <form id="nightauditform" action="{{ route('nightauditupgrade') }}" name="nightauditform"
                                method="POST">
                                @csrf
                                <div class="form-group">
                                    @php
                                        use Illuminate\Support\Facades\Date;
                                    @endphp

                                    <label class="font-weight-bold" for="ncurdate">For Date: <b> {{ Date::parse($ncurdate)->format('d-m-Y') }} </b> </label>
                                    <input style="display:none;" value="{{ $ncurdate }}" type="date" id="ncurdate"
                                        name="ncurdate" class="form-control">
                                    <input type="hidden" value="{{ $envpos->posbillatnightaudit }}" name="posbillatnightaudit" id="posbillatnightaudit">
                                </div>
                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="button" class="btn btn-primary"
                                        onclick="nightAuditConfirmation()">Night Audit Process <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>
                            <script>
                                function nightAuditConfirmation() {
                                    Swal.fire({
                                        title: 'Are you sure?',
                                        text: "This process is very critical. Make sure that all the billings are stopped and no transactions have been made during the Night Audit process.",
                                        icon: 'warning',
                                        showCancelButton: true,
                                        confirmButtonColor: '#3085d6',
                                        cancelButtonColor: '#d33',
                                        confirmButtonText: 'Yes, proceed with Night Audit'
                                    }).then((result) => {
                                        if (result.isConfirmed) {
                                            let submitBtn = document.getElementById("submitBtn");
                                            submitBtn.disabled = true;
                                            submitBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Processing...';
                                            document.getElementById("nightauditform").submit();
                                        }
                                    })
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        $(document).ready(function() {
            let counter = 1;
            $(document).on('click', '#clspending', function() {
                $('.pendingkotnightaudit').addClass('none');
                $('#pendingkotnightaudit tbody').empty();
                let tfootd = $('#pendingkotnightaudit tfoot tr').length;
                let posbillatnightaudit = $('#posbillatnightaudit').val();
                if (posbillatnightaudit == 'Y' && tfootd == 0) {
                    if (counter == 1) {
                        let salewarnxhr = new XMLHttpRequest();
                        salewarnxhr.open('GET', '/salewarnxhr', true);
                        salewarnxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                        salewarnxhr.onreadystatechange = function() {
                            if (salewarnxhr.status === 200 && salewarnxhr.readyState === 4) {
                                let result = JSON.parse(salewarnxhr.responseText);
                                let count = result.count;
                                if (count > 0) {
                                    if (result.msg.length > 0) {
                                        let msg = result.msg;
                                        let salerows = result.salerows;
                                        Swal.fire({
                                            icon: 'info',
                                            title: 'Night Audit',
                                            text: msg,
                                            showConfirmButton: true,
                                            confirmButtonText: 'Click To View',
                                            showCancelButton: true
                                        }).then((resultc) => {
                                            if (resultc.isConfirmed == true) {
                                                $('#headingth').text('Bill No.');
                                                let tdata = '';
                                                salerows.forEach((data, index) => {
                                                    tdata += `<tr class="salerow" data-vno="${data.vno}" data-id="${data.restcode}" data-value="${data.roomno}">
                                        <td>${data.vno}</td>
                                        <td>${data.roomno}</td>
                                        <td>${data.waitername}</td>
                                        <td>${data.depname}</td>
                                        <td>Pending</td>
                                    </tr>`;
                                                });
                                                $('#pendingkotnightaudit tbody').append(tdata);
                                                $('.pendingkotnightaudit').removeClass('none');
                                                $(document).on('click', '.salerow', function() {
                                                    let roomno = $(this).data('value');
                                                    let restcode = $(this).data('id');
                                                    let vno = $(this).data('vno');
                                                    window.location.href = `settlemententry?dcode=${restcode}&tableno=${roomno}&vno=${vno}`;
                                                });
                                            }
                                        });

                                    }
                                }
                            }
                        }
                        salewarnxhr.send();
                    }
                }
                counter++;
            });

            $(document).on('keydown', function(event) {
                if (event.key === 'Escape' || event.keyCode === 27) {
                    $('#clspending').click();
                }
            });
        });
    </script>
@endsection
