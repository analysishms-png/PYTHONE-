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
    <style>
        .emp-form-container {
            background: #f5f5f5;
            padding: 15px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .emp-header {
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 10px;
            background: #ffefc0;
            padding: 8px;
            border: 1px solid #ccc;
        }

        label {
            font-weight: 500;
            font-size: 13px;
            margin-bottom: 2px;
        }

        .form-control {
            padding: 3px 5px;
            height: 28px;
            font-size: 13px;
        }

        .emp-image-box {
            border: 1px solid #ccc;
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 12px;
            background: #fafafa;
        }

        .heading-underline::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 80px;
            /* underline ki length */
            height: 3px;
            /* underline ki motai */
            background-color: currentColor;
            /* Bootstrap primary color */
            border-radius: 2px;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row pt-3">
                                <div class="col-lg-6">
                                    <h3 class="card-title">Edit Employee</h3>
                                </div>
                                <div class="col-lg-6">
                                    <a href="{{ route('empolyee') }}" class="btn btn-primary float-right" role="button"
                                        aria-pressed="true"> Back </a>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <form class="form" method="POST" action="javascript:void(0)" id="hrPayrollForm"
                                    enctype="multipart/form-data">
                                    @csrf

                                    <input type="hidden" name="id" value="{{ $employee->sn }}">
                                    <div class="emp-header mb-3">EDIT EMPLOYEE</div>

                                    <div class="row g-2">

                                        <!-- ================= GRID 2: Address & Personal ================= -->
                                        <div class="col-lg-3 col-md-6">
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                    Basic Info</h6>
                                                <div class="row g-1">

                                                    <div class="col-6 mb-2">
                                                        <label for="name">Name</label>
                                                        <input type="text" name="Name" id="name" class="form-control"
                                                            value="{{ old('Name', $employee->name) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="f_name">Father's Name</label>
                                                        <input type="text" name="F_Name" id="f_name" class="form-control"
                                                            value="{{ old('F_Name', $employee->f_name) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="department">Department</label>
                                                        <select name="Department" id="department" class="form-control">
                                                            <option value="">Select</option>
                                                            @foreach ($departments as $department)
                                                                <option value="{{ $department->dcode }}" {{ $employee->department == $department->dcode ? 'selected' : '' }}>
                                                                    {{ $department->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="designation">Designation</label>
                                                        <select name="Designation" id="designation" class="form-control">
                                                            <option value="">Select</option>
                                                            @foreach ($designations as $designation)
                                                                <option value="{{ $designation->code }}" {{ $employee->designation == $designation->code ? 'selected' : '' }}>
                                                                    {{ $designation->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="category">Category</label>
                                                        <select name="Category" id="category" class="form-control">
                                                            <option value="">Select</option>
                                                            @foreach ($category as $cat)
                                                                <option value="{{ $cat->code }}" {{ $employee->category == $cat->code ? 'selected' : '' }}>
                                                                    {{ $cat->name }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="sex">Sex</label>
                                                        <select name="Sex" id="sex" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="M" {{ $employee->sex == 'M' ? 'selected' : '' }}>
                                                                Male</option>
                                                            <option value="F" {{ $employee->sex == 'F' ? 'selected' : '' }}>
                                                                Female</option>
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="birth_date">Birth Date</label>
                                                        <input type="date" name="Birth_Date" id="birth_date"
                                                            class="form-control"
                                                            value="{{ old('Birth_Date', $employee->birth_date) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="marital">Marital Status</label>
                                                        <select name="Marital" id="marital" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="Single" {{ $employee->marital == 'Single' ? 'selected' : '' }}>Single</option>
                                                            <option value="Married" {{ $employee->marital == 'Married' ? 'selected' : '' }}>Married</option>
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="add1">Address 1</label>
                                                        <input type="text" name="Add1" id="add1" class="form-control"
                                                            value="{{ old('Add1', $employee->add1) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="add2">Address 2</label>
                                                        <input type="text" name="Add2" id="add2" class="form-control"
                                                            value="{{ old('Add2', $employee->add2) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="phone">Phone</label>
                                                        <input type="text" name="Phone" id="phone" class="form-control"
                                                            value="{{ old('Phone', $employee->phone) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="qualification">Qualification</label>
                                                        <input type="text" name="Qualification" id="qualification"
                                                            class="form-control"
                                                            value="{{ old('Qualification', $employee->qualification) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="joining_date">Joining Date</label>
                                                        <input type="date" name="Joining_Date" id="joining_date"
                                                            class="form-control"
                                                            value="{{ old('Joining_Date', $employee->joining_date) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="resign_date">Resign Date</label>
                                                        <input type="date" name="Resign_Date" id="resign_date"
                                                            class="form-control"
                                                            value="{{ old('Resign_Date', $employee->resign_date) }}">
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="pan">Pan No.</label>
                                                        <input type="text" name="PAN" id="pan" class="form-control"
                                                            value="{{ old('PAN', $employee->pan) }}">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="ac_code">Salary Account</label>
                                                        <select name="AC_Code" id="ac_code" class="form-control">
                                                            <option value="">Select</option>
                                                            @foreach ($salarydata as $item)
                                                                <option value="{{ $item->sub_code }}" {{ $employee->ac_code == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="ac_code">Loan Account</label>
                                                        <select name="LoanAc" id="loan_code" class="form-control">
                                                            <option value="">Select</option>
                                                            @foreach (subgroupall() as $item)
                                                                <option value="{{ $item->sub_code }}" {{ $employee->loanac == $item->sub_code ? 'selected' : '' }}>{{ $item->name }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="type">Type</label>
                                                        <select name="type" id="type" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="permanent" {{ $employee->type == 'permanent' ? 'selected' : '' }}>Permanent</option>
                                                            <option value="dailybasis" {{ $employee->type == 'dailybasis' ? 'selected' : '' }}>Daily Basis</option>
                                                        </select>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <!-- ================= GRID 3: Earnings ================= -->
                                        <div class="col-lg-2 col-md-6">
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                    Earnings</h6>

                                                @foreach (['basic', 'da', 'hra', 'conveyance', 'other_allow', 'medical', 'lta', 'increment'] as $field)
                                                    <div class="mb-2">
                                                        <label for="{{ strtolower($field) }}">{{ ucfirst(str_replace('_', ' ', $field)) }}</label>
                                                        <input type="number" name="{{ $field }}" id="{{ strtolower($field) }}"
                                                            class="form-control" value="{{ old($field, $employee->$field) }}">
                                                    </div>
                                                @endforeach

                                                <div class="mb-2">
                                                    <label for="incr_month">INCR Month</label>
                                                    <select name="incr_month" id="incr_month" class="form-control">
                                                        <option value="">Select Month</option>
                                                        @foreach (['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december'] as $month)
                                                            <option value="{{ $month }}" {{ $employee->incrmth == $month ? 'selected' : '' }}>
                                                                {{ ucfirst($month) }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- ================= GRID 4: Deductions ================= -->
                                        <div class="col-lg-2 col-md-6">
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-danger position-relative d-inline-block pb-1 heading-underline">
                                                    Deductions</h6>
                                                <div class="mb-2">
                                                    <label for="op_loan">OP Loan</label>
                                                    <input type="number" name="OP_Loan" id="op_loan" class="form-control"
                                                        placeholder="OP Loan" value="{{ old('OP_Loan', $employee->op_loan) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="op_inst">OP Installment</label>
                                                    <input type="number" name="OP_Inst" id="op_inst" class="form-control"
                                                        placeholder="OP Installment" value="{{ old('OP_Inst', $employee->op_inst) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="op_advance">OP Advance</label>
                                                    <input type="number" name="OP_Advance" id="op_advance" class="form-control"
                                                        placeholder="OP Advance" value="{{ old('OP_Advance', $employee->op_advance) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="other_deduc">Other Deduc</label>
                                                    <input type="number" name="Other_Deduc" id="other_deduc"
                                                        class="form-control" placeholder="Other Deduc" value="{{ old('Other_Deduc', $employee->other_deduc) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="income_tax">TDS</label>
                                                    <input type="number" name="tds" id="tds" class="form-control"
                                                        placeholder="TDS" value="{{ old('tds', $employee->tds) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="pf_yn">Off Day Allow</label>
                                                    <select name="off_day_allow" id="off_day_allow" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Y" {{ $employee->off_day_allow == 'Y' ? 'selected' : '' }}>Yes</option>
                                                        <option value="N" {{ $employee->off_day_allow == 'N' ? 'selected' : '' }}>No</option>
                                                    </select>
                                                </div>
                                                <div class="mb-2">
                                                    <label for="sunday">Off Day</label>
                                                    <input type="number" name="SUNDAY" id="sunday" class="form-control" value="{{ old('SUNDAY', $employee->off_day) }}"
                                                        placeholder="Off Day">
                                                </div>
                                            </div>
                                        </div>

                                        <!-- ================= GRID 5: PF / Leaves ================= -->
                                        <div class="col-lg-3 col-md-6">
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                    PF / Loan / Leaves</h6>

                                                <div class="row g-1">
                                                    <div class="col-6 mb-2">
                                                        <label for="pf_yn">PF Y/N</label>
                                                        <select name="Pf_Yn" id="pf_yn" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="Y" {{ $employee->pf_yn == 'Y' ? 'selected' : '' }}>Yes</option>
                                                            <option value="N" {{ $employee->pf_yn == 'N' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="esi_yn">ESI Y/N</label>
                                                        <select name="ESI_YN" id="esi_yn" class="form-control">
                                                            <option value="">Select</option>
                                                            <option value="Y" {{ $employee->esi_yn == 'Y' ? 'selected' : '' }}>Yes</option>
                                                            <option value="N" {{ $employee->esi_yn == 'N' ? 'selected' : '' }}>No</option>
                                                        </select>
                                                    </div>

                                                    <div class="col-6 mb-2">
                                                        <label for="op_pf_balance">OP PF Balance</label>
                                                        <input type="number" name="OP_PF_Balance" id="op_pf_balance"
                                                            class="form-control" placeholder="OP PF Balance" value="{{ $employee->op_pf_balance }}">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="op_pf_balance">Curr OP PF Balance</label>
                                                        <input type="number" name="OP_PF_Balance" id="op_pf_balance"
                                                            class="form-control" placeholder="Curr OP PF Balance" value="{{ $employee->curr_op_pf_balance }}">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="pf">PF Code</label>
                                                        <input type="number" name="pf_code" id="pf" class="form-control" value="{{ $employee->pf_code }}"
                                                            placeholder="PF">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="esi">ESI Code</label>
                                                        <input type="number" name="esi_code" id="esi" class="form-control" value="{{ $employee->esi_code }}"
                                                            placeholder="ESI">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="tot_el_allow">Tot EL Allow</label>
                                                        <input type="number" name="Tot_EL_Allow" id="tot_el_allow"
                                                            class="form-control" placeholder="Tot EL Allow" value="{{ $employee->tot_el_allow }}">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="tot_cl_allow">Tot CL Allow</label>
                                                        <input type="number" name="Tot_CL_Allow" id="tot_cl_allow" value="{{ $employee->tot_cl_allow }}"
                                                            class="form-control" placeholder="Tot CL Allow">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="curr_earned">OP EL</label>
                                                        <input type="number" name="op_EL" id="curr_earned" class="form-control" value="{{ $employee->op_el }}"
                                                            placeholder="OP EL">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="curr_casual">OP CL</label>
                                                        <input type="number" name="op_CL" id="curr_casual" class="form-control" value="{{ $employee->op_cl }}"
                                                            placeholder="OP CL">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="curr_earned">Curr. OP EL</label>
                                                        <input type="number" name="Curr_EL" id="curr_earned" value="{{ $employee->curr_el }}"
                                                            class="form-control" placeholder="Curr. OP EL">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="curr_casual">Curr. OP CL</label>
                                                        <input type="number" name="Curr_CL" id="curr_casual" value="{{ $employee->curr_cl }}"
                                                            class="form-control" placeholder="Curr. OP CL">
                                                    </div>
                                                    <div class="col-6 mb-2">
                                                        <label for="esi">OT Rate</label>
                                                        <input type="number" name="ot_rate" id="esi" class="form-control"
                                                            placeholder="OT Rate" value="{{ $employee->otrate }}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ================= GRID 6: Biometric ID / Account / ID Proof ================= -->
                                        <div class="col-lg-2 col-md-6">
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                    Biometric ID / Bank Account</h6>

                                                <div class="mb-2">
                                                    <label for="biometricid">Biometric ID</label>
                                                    <input type="text" name="biometricid" value="{{ $employee->bio_metric_id }}" id="biometricid" class="form-control"
                                                        placeholder="Biometric ID">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="bankaccount">Bank A/c</label>
                                                    <input type="text" name="bankaccount" value="{{ $employee->bank_account }}" id="bankaccount" class="form-control"
                                                        placeholder="Bank A/c">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="ac_holder_name">A/C Holder Name</label>
                                                    <input type="text" name="ac_holder_name" value="{{ $employee->ac_holder_name }}" id="ac_holder_name" class="form-control"
                                                        placeholder="A/C Holder Name">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="ifsc_code">IFSC Code</label>
                                                    <input type="text" name="ifsc_code" value="{{ $employee->ifsc_code }}" id="ifsc_code" class="form-control"
                                                        placeholder="IFSC Code">
                                                </div>

                                            </div>
                                            <!-- ================= GRID 7: Status & Files ================= -->
                                            <div class="p-2 border rounded bg-light">
                                                <h6
                                                    class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                    Status & Proof</h6>

                                                <div class="mb-2">
                                                    <label for="idproof">ID Proof Type</label>
                                                    <select name="IdProof" id="idproof" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (['Adhaar', 'PAN', 'Voter ID', 'Driving License', 'Passport', 'Other'] as $proof)
                                                            <option value="{{ $proof }}" {{ $employee->idproof == $proof ? 'selected' : '' }}>{{ $proof }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                                <div class="mb-2">
                                                    <label for="idproofno">ID Proof No</label>
                                                    <input type="text" name="IdProofNo" id="idproofno" class="form-control"
                                                        value="{{ old('IdProofNo', $employee->idproofno) }}">
                                                </div>
                                                <div class="mb-2">
                                                    <label for="picpath">Photo</label>
                                                    <input type="file" name="PicPath" id="picpath" class="form-control"
                                                        accept="image/*,application/pdf">
                                                    @php
                                                        $file2 = $employee->pic_path;
                                                        $ext2 = pathinfo($file2, PATHINFO_EXTENSION);
                                                    @endphp
                                                    @if (in_array(strtolower($ext2), ['jpg', 'jpeg', 'png', 'gif']))
                                                        <img src="{{ asset($file2) }}" width="80" alt="ID Proof">
                                                    @elseif(strtolower($ext2) === 'pdf')
                                                        <a href="{{ asset($file2) }}" target="_blank">View PDF</a>
                                                    @else
                                                        <span>File: {{ $file2 }}</span>
                                                    @endif
                                                    <div id="picpathPreview" class="mt-2"></div>
                                                </div>

                                                <div class="mb-2">
                                                    <label for="idpicpath">ID Proof Photo</label>
                                                    <input type="file" name="IdPicPath" id="idpicpath" class="form-control"
                                                        accept="image/*,application/pdf">
                                                    @php
                                                        $file = $employee->idpicpath;
                                                        $ext = pathinfo($file, PATHINFO_EXTENSION);
                                                    @endphp
                                                    @if (in_array(strtolower($ext), ['jpg', 'jpeg', 'png', 'gif']))
                                                        <img src="{{ asset($file) }}" width="80" alt="ID Proof">
                                                    @elseif(strtolower($ext) === 'pdf')
                                                        <a href="{{ asset($file) }}" target="_blank">View PDF</a>
                                                    @else
                                                        <span>File: {{ $file }}</span>
                                                    @endif
                                                    <div id="idpicpathPreview" class="mt-2"></div>
                                                </div>

                                                <div class="mb-2">
                                                    <label for="active_yn">Active</label>
                                                    <select name="ActiveYN" id="active_yn" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Y" {{ $employee->activeyn == 'Y' ? 'selected' : '' }}>
                                                            Yes</option>
                                                        <option value="N" {{ $employee->activeyn == 'N' ? 'selected' : '' }}>
                                                            No</option>
                                                    </select>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- ================= Submit ================= -->
                                        <div class="col-12 text-center mt-3">
                                            <button type="submit" class="btn btn-success px-4">Update Employee</button>
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

            function previewFile(input, previewId) {
                const file = input.files[0];
                const preview = document.getElementById(previewId);
                preview.innerHTML = ""; // Clear old preview

                if (file) {
                    const fileType = file.type;

                    if (fileType.startsWith("image/")) {
                        // 🖼️ Image preview
                        const img = document.createElement("img");
                        img.src = URL.createObjectURL(file);
                        img.style.maxWidth = "150px";
                        img.style.marginTop = "5px";
                        img.classList.add("border", "rounded");
                        preview.appendChild(img);
                    } else if (fileType === "application/pdf") {
                        // 📄 PDF preview (icon or embedded viewer)
                        const embed = document.createElement("embed");
                        embed.src = URL.createObjectURL(file);
                        embed.type = "application/pdf";
                        embed.width = "100%";
                        embed.height = "200px";
                        embed.style.border = "1px solid #ccc";
                        embed.style.marginTop = "5px";
                        preview.appendChild(embed);
                    }
                }
            }

            document.getElementById("picpath").addEventListener("change", function() {
                previewFile(this, "picpathPreview");
            });

            document.getElementById("idpicpath").addEventListener("change", function() {
                previewFile(this, "idpicpathPreview");
            });

            $('#hrPayrollForm').on('submit', function(e) {
                e.preventDefault();

                $('span.error-text').text(''); // Clear previous errors

                $.ajax({
                    url: "{{ route('editemployee') }}", // Laravel route for update
                    method: "POST",
                    data: new FormData(this),
                    processData: false,
                    contentType: false,
                    beforeSend: function() {
                        $('#hrPayrollForm button[type="submit"]').prop('disabled', true).text('Updating...');
                    },
                    success: function(response) {
                        $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                        if (response.status == 1) {
                            // Success
                            pushNotify('success', response.msg);
                            $('#hrPayrollForm')[0].reset();
                            $('#picpathPreview').html('');
                            $('#idpicpathPreview').html('');
                            setTimeout(function() {
                                window.location.href = "{{ route('empolyee') }}"; // Redirect to employee list
                            }, 3000); // Redirect after 3 seconds
                        } else {
                            pushNotify('error', response.msg);
                        }
                    },
                    error: function(xhr) {
                        $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                        if (xhr.status === 422) {
                            // Laravel validation error
                            $.each(xhr.responseJSON.errors, function(key, value) {
                                $('span.' + key + '_error').text(value[0]);
                                pushNotify('error', value[0]);
                            });
                        } else {
                            pushNotify('error', 'Something went wrong! Please try again.');
                        }
                    }
                });
            });

        </script>
    @endsection
