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
                                <form class="form" method="POST" action="javascript:void(0)" id="empcategorysubmitform"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">

                                        <!-- Basic Info -->
                                        <div class="col-md-3 mb-3">
                                            <label for="name">Name</label>
                                            <input type="text" name="Name" id="name" class="form-control">
                                        </div>

                                        <div class="col-md-3 mb-3">
                                            <label for="f_name">Father's Name</label>
                                            <input type="text" name="F_Name" id="f_name" class="form-control">
                                        </div>

                                        <div class="col-md-3 mb-3">
                                            <label for="sex">Sex</label>
                                            <select name="Sex" id="sex" class="form-control">
                                                <option value="">Select</option>
                                                <option value="M">Male</option>
                                                <option value="F">Female</option>
                                            </select>
                                        </div>

                                        <!-- Job Info -->
                                        <div class="col-md-3 mb-3">
                                            <label for="department">Department</label>
                                            <select name="Department" id="department" class="form-control">
                                                <option value="">Select</option>
                                                @foreach($departments as $department)
                                                    <option value="{{ $department->dcode }}">{{ $department->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="designation">Designations</label>
                                            <select name="Designation" id="designation" class="form-control">
                                                <option value="">Select</option>
                                                @foreach($designations as $designation)
                                                    <option value="{{ $designation->code }}">{{ $designation->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="category">Category</label>
                                            <select name="Category" id="category" class="form-control">
                                                <option value="">Select</option>
                                                @foreach($category as $category)
                                                    <option value="{{ $category->code }}">{{ $category->name }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="birth_date">Birth Date</label>
                                            <input type="date" name="Birth_Date" id="birth_date" class="form-control">
                                        </div>

                                        <!-- Address -->
                                        <div class="col-md-3 mb-3">
                                            <label for="add1">Address 1</label>
                                            <input type="text" name="Add1" id="add1" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="add2">Address 2</label>
                                            <input type="text" name="Add2" id="add2" class="form-control">
                                        </div>

                                        <!-- Personal Info -->
                                        <div class="col-md-3 mb-3">
                                            <label for="marital">Marital Status</label>
                                            <select name="Marital" id="marital" class="form-control">
                                                <option value="">Select</option>
                                                <option value="Single">Single</option>
                                                <option value="Married">Married</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="spouse">Spouse Name</label>
                                            <input type="text" name="Spouse" id="spouse" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="qualification">Qualification</label>
                                            <input type="text" name="Qualification" id="qualification" class="form-control">
                                        </div>

                                        <!-- Employment Dates -->
                                        <div class="col-md-3 mb-3">
                                            <label for="joining_date">Joining Date</label>
                                            <input type="date" name="Joining_Date" id="joining_date" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="resign_date">Resign Date</label>
                                            <input type="date" name="Resign_Date" id="resign_date" class="form-control">
                                        </div>

                                        <!-- Salary & Allowances -->
                                        <div class="col-md-3 mb-3">
                                            <label for="basic">Basic</label>
                                            <input type="number" name="Basic" id="basic" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="da">DA</label>
                                            <input type="number" name="DA" id="da" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="hra">HRA</label>
                                            <input type="number" name="HRA" id="hra" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="income_tax">Income Tax</label>
                                            <input type="number" name="Income_Tax" id="income_tax" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="other_allow">Other Allow</label>
                                            <input type="number" name="Other_Allow" id="other_allow" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="other_deduc">Other Deduc</label>
                                            <input type="number" name="Other_Deduc" id="other_deduc" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="conveyance">Conveyance</label>
                                            <input type="number" name="Conveyance" id="conveyance" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="medical">Medical</label>
                                            <input type="number" name="Medical" id="medical" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="lta">LTA</label>
                                            <input type="number" name="LTA" id="lta" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="pf">PF</label>
                                            <input type="number" name="PF" id="pf" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="esi">ESI</label>
                                            <input type="number" name="ESI" id="esi" class="form-control">
                                        </div>

                                        <!-- PF & Loan -->
                                        <div class="col-md-3 mb-3">
                                            <label for="pf_yn">PF Y/N</label>
                                            <select name="Pf_Yn" id="pf_yn" class="form-control">
                                                <option value="">Select</option>
                                                <option value="Y">Yes</option>
                                                <option value="N">No</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="op_pf_balance">OP PF Balance</label>
                                            <input type="number" name="OP_PF_Balance" id="op_pf_balance"
                                                class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="op_loan">OP Loan</label>
                                            <input type="number" name="OP_Loan" id="op_loan" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="op_inst">OP Installment</label>
                                            <input type="number" name="OP_Inst" id="op_inst" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="op_advance">OP Advance</label>
                                            <input type="number" name="OP_Advance" id="op_advance" class="form-control">
                                        </div>

                                        <!-- Leaves -->
                                        <div class="col-md-3 mb-3">
                                            <label for="tot_cl_allow">Tot CL Allow</label>
                                            <input type="number" name="Tot_CL_Allow" id="tot_cl_allow" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="tot_el_allow">Tot EL Allow</label>
                                            <input type="number" name="Tot_EL_Allow" id="tot_el_allow" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="curr_earned">Current Earned</label>
                                            <input type="number" name="Curr_Earned" id="curr_earned" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="curr_casual">Current Casual</label>
                                            <input type="number" name="Curr_Casual" id="curr_casual" class="form-control">
                                        </div>

                                        <!-- Bank & Contact -->
                                        <div class="col-md-3 mb-3">
                                            <label for="ac_code">AC Code</label>
                                            <input type="text" name="AC_Code" id="ac_code" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="phone">Phone</label>
                                            <input type="text" name="Phone" id="phone" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="pan">PAN</label>
                                            <input type="text" name="PAN" id="pan" class="form-control">
                                        </div>

                                        <!-- Status & Misc -->
                                        <div class="col-md-3 mb-3">
                                            <label for="increment">Increment</label>
                                            <input type="number" name="INCREMENT" id="increment" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="sunday">Sunday</label>
                                            <input type="number" name="SUNDAY" id="sunday" class="form-control">
                                        </div>

                                        <div class="col-md-3 mb-3">
                                            <label for="active_yn">Active</label>
                                            <select name="ActiveYN" id="active_yn" class="form-control">
                                                <option value="Y">Yes</option>
                                                <option value="N">No</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="esi_yn">ESI Y/N</label>
                                            <select name="ESI_YN" id="esi_yn" class="form-control">
                                                <option value="Y">Yes</option>
                                                <option value="N">No</option>
                                            </select>
                                        </div>

                                        <!-- Files -->
                                        <div class="col-md-3 mb-3">
                                            <label for="picpath">Photo</label>
                                            <input type="file" name="PicPath" id="picpath" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="idpicpath">ID Proof Photo</label>
                                            <input type="file" name="IdPicPath" id="idpicpath" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="idproof">ID Proof Type</label>
                                            <input type="text" name="IdProof" id="idproof" class="form-control">
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="idproofno">ID Proof No</label>
                                            <input type="text" name="IdProofNo" id="idproofno" class="form-control">
                                        </div>

                                        <!-- Submit -->
                                        <div class="col-12 text-center mt-3">
                                            <button type="submit" id="submitBtn" class="btn btn-primary">Submit +</button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
@endsection