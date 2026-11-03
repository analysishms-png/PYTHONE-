@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <style>
        #usernames {
            max-height: 33em;
            max-width: fit-content;
            overflow: auto;
            text-align: left;
            position: fixed;
            top: 15%;
            left: 12%;
            z-index: 50;
        }

        #usernames ul {
            background: #c8d5b9;
            list-style-type: none;
            padding: 0;
            margin: 0;
            transition: background-color 0.6 ease;
            cursor: auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            width: max-content;
        }

        #usernames ul li:first-child {
            cursor: move;
            background: #8fc0a9;
            color: white;
            display: flex;
            justify-content: space-between;
        }

        #usernames ul:hover {
            background-color: #faf3dd;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }

        #usernames::-webkit-scrollbar {
            width: 3px;
            height: 3px;
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-thumb:hover {
            background-color: #000000;
        }

        .cashierreport #usernames::-webkit-scrollbar-thumb {
            background-color: #fa65b1;
        }

        #usernames::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            background-color: #84e900;
        }

        #usernames::-webkit-scrollbar-thumb:active {
            background: #2708da;
        }

        /* Checkout Register Ul End */
        .titlep {
            display: none;
        }

        div#usernames ul li {
            padding: 5px;
            cursor: pointer;
            color: black;
            font-weight: 500;
        }

        div#usernames ul li:hover {
            background-color: #f0f0f0;
        }

        div#usernames ul li input[type="checkbox"] {
            margin: 0 9px 0 18px;
        }
    </style>
    <div class="content-body cashierreport">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>Cashier Report</h3>
                                    </div>
                                </div>
                            </div>
                            <form action="" method="post">
                                <div class="row justify-content-around">
                                    <input type="hidden" value="{{ $company->start_dt }}" name="start_dt" id="start_dt">
                                    <input type="hidden" value="{{ $company->end_dt }}" name="end_dt" id="end_dt">
                                    <input type="hidden" value="{{ $company->propertyid }}" id="propertyid"
                                        name="propertyid">
                                    <input type="hidden" value="{{ $company->comp_name }}" id="compname" name="compname">
                                    <input type="hidden" value="{{ $company->address1 }}" id="address" name="address">
                                    <input type="hidden" value="{{ $company->city }}" id="city" name="city">
                                    <input type="hidden" value="{{ $company->mobile }}" id="compmob" name="compmob">
                                    <input type="hidden" value="{{ $statename }}" id="statename" name="statename">
                                    <input type="hidden" value="{{ $company->pin }}" id="pin" name="pin">
                                    <input type="hidden" value="{{ $company->email }}" id="email" name="email">
                                    <input type="hidden" value="{{ $company->logo }}" id="logo" name="logo">
                                    <input type="hidden" value="{{ $company->u_name }}" id="u_name" name="u_name">
                                    <input type="hidden" value="{{ $company->gstin }}" id="gstin" name="gstin">
                                    <div class="text-center titlep">
                                        <h3>{{ $company->comp_name }}</h3>
                                        <p style="margin-top:-10px; font-size:16px;">{{ $company->address1 }}</p>
                                        <p style="margin-top:-10px; font-size:16px;">
                                            {{ $statename . ' - ' . $company->city . ' - ' . $company->pin }}
                                        </p>
                                        <p style="margin-top:-10px; font-size:16px;">Check In Register</p>
                                        <p style="text-align:left;margin-top:-10px; font-size:16px;">From Date: <span
                                                id="fromdatep"></span> To Date:
                                            <span id="todatep"></span>
                                        </p>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="fromdate" class="col-form-label">From Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="fromdate"
                                                id="fromdate">
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="form-group">
                                            <label for="todate" class="col-form-label">To Date <i
                                                    class="fa-regular fa-calendar mb-1"></i></label>
                                            <input type="date" value="{{ $fromdate }}" class="form-control" name="todate"
                                                id="todate">
                                        </div>
                                    </div>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", function() {
                                            const from = document.getElementById("fromdate");
                                            const to = document.getElementById("todate");

                                            [from, to].forEach(el => {
                                                if (!el) return;
                                                el.removeAttribute("readonly");
                                                el.removeAttribute("disabled");
                                                el.style.pointerEvents = "auto";
                                                el.style.backgroundColor = "#fff";
                                            });
                                        });
                                    </script>
                                    <div style="margin-top: 30px;" class="">
                                        <button id="fetchbutton" name="fetchbutton" type="button" class="btn btn-success">
                                            Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <div class="row table-responsive">
                                <table id="cashierreport"
                                    class=" table table-border table-hover table striped border rounded">
                                    <thead>
                                        <tr>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Date</th>
                                            <th>Bill No</th>
                                            <th>Party Name</th>
                                            <th>Bill Amount</th>
                                            {{-- <th>Payment Type</th> --}}
                                            <th>Cash</th>
                                            <th>Cheque</th>
                                            <th>Company</th>
                                            <th>Narration</th>
                                            <th>Credit Card</th>
                                            <th>Hold</th>
                                            <th>Room</th>
                                            <th>Staff</th>
                                            <th>UPI</th>
                                            <th>Name</th>
                                        </tr>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="4" style="text-align:right">Total:</th>
                                            <th id="billAmount"></th> <!-- Advance -->
                                            {{-- <th id=""></th> --}}
                                            <th id="cash"></th> <!-- Total cash. -->
                                            <th id="cheque"></th> <!-- Total cheque. -->
                                            <th id="compt">0</th> <!-- Total Rect. -->
                                            <th id="creditCard">0</th> <!-- Total credit card. -->
                                            <th id="hold">0</th> <!-- Total hold. -->
                                            <th id="room">0</th> <!-- Total room. -->
                                            <th id="staff">0</th> <!-- Total staff. -->
                                            <th id="upi">0</th> <!-- Total UPI. -->
                                            <th id="name"></th> <!-- Balance -->
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="usernames"></div>

    <script>
        $(document).ready(function() {
            var fpnoColors = {};
            //var fpnoColorList = ['#f9f9e3', '#e3f9f9', '#f9e3f3', '#e3e9f9', '#e3f9e7', '#f9f3e3'];
            var fpnoColorList = [''];
            var fpnoColorIndex = 0;
            var table = $('#cashierreport').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                paging: true,
                ordering: true,
                ajax: {
                    url: '{{ route('paychargereportdata') }}',
                    type: 'POST',
                    data: function(d) {
                        d.fromdate = $('#fromdate').val();
                        d.todate = $('#todate').val();
                        d._token = '{{ csrf_token() }}';
                    },
                    error: function(xhr) {
                        let msg = 'Error loading data.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        }
                        alert(msg);
                    }
                },
                columns: [{
                        data: 'sno',
                        name: 'sno'
                    },
                    {
                        data: 'billDate',
                        name: 'billDate'
                    },
                    {
                        data: 'vno',
                        name: 'vno'
                    },
                    {
                        data: 'partyName',
                        name: 'partyName'
                    },
                    {
                        data: 'billAmount',
                        name: 'billAmount'
                    },
                    {
                        data: 'cash',
                        name: 'cash'
                    }, // Cash
                    {
                        data: 'cheque',
                        name: 'cheque'
                    }, // Cheque
                    {
                        data: 'company',
                        name: 'company'
                    }, // Company
                    {
                        data: 'comments',
                        name: 'comments',
                        render: function(data, type, row) {
                            let narration = data || '';
                            if (row.paycompanyname && row.paycompanyname.trim() !== '') {
                                narration += (narration ? ' - ' : '') + '<b>' + row.paycompanyname + '</b>';
                            }
                            return narration;
                        }
                    }, // Narration
                    {
                        data: 'creditCard',
                        name: 'creditCard'
                    }, // Credit Card
                    {
                        data: 'hold',
                        name: 'hold'
                    }, // Hold
                    {
                        data: 'room',
                        name: 'room'
                    }, // Room
                    {
                        data: 'staff',
                        name: 'staff'
                    }, // Staff
                    {
                        data: 'upi',
                        name: 'upi'
                    }, // UPI
                    {
                        data: 'name',
                        name: 'name'
                    }, // Name
                ],
                dom: 'Bfrtip',
                buttons: [
                    'excelHtml5',
                    'csvHtml5',
                    //'pdfHtml5',
                    'print'
                ],
                rowCallback: function(row, data, index) {
                    var fpno = data.vno;
                    if (!fpnoColors[fpno]) {
                        fpnoColors[fpno] = fpnoColorList[fpnoColorIndex % fpnoColorList.length];
                        fpnoColorIndex++;
                    }
                    $(row).css('background-color', fpnoColors[fpno]);
                },
                drawCallback: function(settings) {
                    var api = this.api();
                    var billAmount = 0.00,
                        cash = 0.00,
                        cheque = 0.00,
                        compt = 0.00,
                        creditCard = 0.00,
                        room = 0.00,
                        staff = 0.00,
                        upi = 0.00,
                        hold = 0.00;
                    api.rows({
                        page: 'current'
                    }).every(function(rowIdx, tableLoop, rowLoop) {
                        var data = this.data();
                        billAmount += parseFloat(String(data.billAmount).replace(/,/g, '')) || 0.00;
                        cash += parseFloat(String(data.cash).replace(/,/g, '')) || 0.00;
                        cheque += parseFloat(String(data.cheque).replace(/,/g, '')) || 0.00;
                        compt += parseFloat(String(data.company).replace(/,/g, '')) || 0.00;
                        creditCard += parseFloat(String(data.creditCard).replace(/,/g, '')) || 0.00;
                        room += parseFloat(String(data.room).replace(/,/g, '')) || 0.00;
                        staff += parseFloat(String(data.staff).replace(/,/g, '')) || 0.00;
                        upi += parseFloat(String(data.upi).replace(/,/g, '')) || 0.00;
                        hold += parseFloat(String(data.hold).replace(/,/g, '')) || 0.00;
                    });
                    $('#billAmount').html(billAmount.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#cash').html(cash.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#cheque').html(cheque.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#compt').html(compt.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#creditCard').html(creditCard.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#room').html(room.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#staff').html(staff.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#upi').html(upi.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                    $('#hold').html(hold.toLocaleString(undefined, {
                        maximumFractionDigits: 2
                    }));
                }
            });

            // Only load data when refresh is clicked or type is changed to Function
            $('#fetchbutton').on('click', function() {
                table.ajax.reload();
            });
        });
    </script>
@endsection
