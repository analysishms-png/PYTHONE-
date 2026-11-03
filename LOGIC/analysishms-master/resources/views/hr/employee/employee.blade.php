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

                            <form method="POST" action="javascript:void(0)" enctype="multipart/form-data"
                                id="employeesubmitform">

                                <div class="emp-header">EMPLOYEE MASTER</div>

                                @csrf
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
                                                        placeholder="Name">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="f_name">Father's Name</label>
                                                    <input type="text" name="F_Name" id="f_name" class="form-control"
                                                        placeholder="Father's Name">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="department">Department</label>
                                                    <select name="Department" id="department" class="form-control"
                                                        aria-placeholder="Department">
                                                        <option value="">Select</option>
                                                        @foreach ($departments as $department)
                                                            <option value="{{ $department->dcode }}">{{ $department->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="designation">Designations</label>
                                                    <select name="Designation" id="designation" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($designations as $designation)
                                                            <option value="{{ $designation->code }}">{{ $designation->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="category">Category</label>
                                                    <select name="Category" id="category" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($category as $category)
                                                            <option value="{{ $category->code }}">{{ $category->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="sex">Sex</label>
                                                    <select name="Sex" id="sex" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="M">Male</option>
                                                        <option value="F">Female</option>
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="birth_date">Birth Date</label>
                                                    <input type="date" name="Birth_Date" id="birth_date" placeholder="DOB"
                                                        class="form-control">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="marital">Marital Status</label>
                                                    <select name="Marital" id="marital" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Single">Single</option>
                                                        <option value="Married">Married</option>
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="add1">Address 1</label>
                                                    <input type="text" name="Add1" id="add1" class="form-control"
                                                        placeholder="Address 1">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="add2">Address 2</label>
                                                    <input type="text" name="Add2" id="add2" class="form-control"
                                                        placeholder="Address 2">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="phone">Phone</label><input type="text" name="Phone"
                                                        placeholder="Phone" id="phone" class="form-control">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="qualification">Qualification</label>
                                                    <input type="text" name="Qualification" id="qualification"
                                                        placeholder="Qualification" class="form-control">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="joining_date">Joining Date</label>
                                                    <input type="date" name="Joining_Date" id="joining_date"
                                                        class="form-control">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="resign_date">Resign Date</label>
                                                    <input type="date" name="Resign_Date" id="resign_date"
                                                        class="form-control">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="pan">Pan No.</label>
                                                    <input type="text" name="PAN" id="pan" class="form-control"
                                                        placeholder="Pancard">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="ac_code">Salary Account</label>
                                                    <select name="AC_Code" id="ac_code" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach ($salarydata as $item)
                                                            <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="loan_code">Loan Account</label>
                                                    <select name="LoanAc" id="loan_code" class="form-control">
                                                        <option value="">Select</option>
                                                        @foreach (subgroupall() as $item)
                                                            <option value="{{ $item->sub_code }}">{{ $item->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="type">Type</label>
                                                    <select name="type" id="type" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="permanent">Permanent</option>
                                                        <option value="dailybasis">Daily Basis</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- ================= GRID 3: Salary & Allowances ================= -->
                                    <div class="col-lg-2 col-md-6">
                                        <div class="p-2 border rounded bg-light">
                                            <h6
                                                class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                Earnings</h6>
                                            <div class="mb-2">
                                                <label for="basic">Basic</label>
                                                <input type="number" name="Basic" id="basic" class="form-control"
                                                    placeholder="Basic">
                                            </div>
                                            <div class="mb-2">
                                                <label for="da">DA</label>
                                                <input type="number" name="DA" id="da" class="form-control"
                                                    placeholder="DA">
                                            </div>
                                            <div class="mb-2">
                                                <label for="hra">HRA</label>
                                                <input type="number" name="HRA" id="hra" class="form-control"
                                                    placeholder="HRA">
                                            </div>
                                            <div class="mb-2">
                                                <label for="conveyance">Conveyance</label>
                                                <input type="number" name="Conveyance" id="conveyance" class="form-control"
                                                    placeholder="Conveyance">
                                            </div>
                                            <div class="mb-2">
                                                <label for="other_allow">Other Allow</label>
                                                <input type="number" name="Other_Allow" id="other_allow"
                                                    placeholder="Other Allow" class="form-control">
                                            </div>
                                            <div class="mb-2">
                                                <label for="medical">Medical</label>
                                                <input type="number" name="Medical" id="medical" class="form-control"
                                                    placeholder="Medical">
                                            </div>
                                            <div class="mb-2">
                                                <label for="lta">LTA</label>
                                                <input type="number" name="LTA" id="lta" class="form-control"
                                                    placeholder="LTA">
                                            </div>
                                            <div class="mb-2">
                                                <label for="increment">Increment</label>
                                                <input type="number" name="INCREMENT" id="increment" class="form-control"
                                                    placeholder="Increment">
                                            </div>
                                            <div class="mb-2">
                                                <label for="pf_yn">INCR Month</label>
                                                <select name="incr_month" id="incr_month" class="form-control">
                                                    <option value="">Select Month</option>
                                                    <option value="january">January</option>
                                                    <option value="february">February</option>
                                                    <option value="march">March</option>
                                                    <option value="april">April</option>
                                                    <option value="may">May</option>
                                                    <option value="june">June</option>
                                                    <option value="july">July</option>
                                                    <option value="august">August</option>
                                                    <option value="september">September</option>
                                                    <option value="october">October</option>
                                                    <option value="november">November</option>
                                                    <option value="december">December</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-2 col-md-6">
                                        <div class="p-2 border rounded bg-light">
                                            <h6
                                                class="fw-bold mb-2 text-danger position-relative d-inline-block pb-1 heading-underline">
                                                Deductions</h6>
                                            <div class="mb-2">
                                                <label for="op_loan">OP Loan</label>
                                                <input type="number" name="OP_Loan" id="op_loan" class="form-control"
                                                    placeholder="OP Loan">
                                            </div>
                                            <div class="mb-2">
                                                <label for="op_inst">OP Installment</label>
                                                <input type="number" name="OP_Inst" id="op_inst" class="form-control"
                                                    placeholder="OP Installment">
                                            </div>
                                            <div class="mb-2">
                                                <label for="op_advance">OP Advance</label>
                                                <input type="number" name="OP_Advance" id="op_advance" class="form-control"
                                                    placeholder="OP Advance">
                                            </div>
                                            <div class="mb-2">
                                                <label for="other_deduc">Other Deduc</label>
                                                <input type="number" name="Other_Deduc" id="other_deduc"
                                                    class="form-control" placeholder="Other Deduc">
                                            </div>
                                            <div class="mb-2">
                                                <label for="income_tax">TDS</label>
                                                <input type="number" name="tds" id="tds" class="form-control"
                                                    placeholder="TDS">
                                            </div>
                                            <div class="mb-2">
                                                <label for="pf_yn">Off Day Allow</label>
                                                <select name="off_day_allow" id="off_day_allow" class="form-control">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>
                                            <div class="mb-2">
                                                <label for="sunday">Off Day</label>
                                                <input type="number" name="SUNDAY" id="sunday" class="form-control"
                                                    placeholder="Off Day">
                                            </div>
                                        </div>
                                    </div>


                                    <!-- ================= GRID 4: PF / Loan / Leaves ================= -->
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
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="esi_yn">ESI Y/N</label>
                                                    <select name="ESI_YN" id="esi_yn" class="form-control">
                                                        <option value="">Select</option>
                                                        <option value="Y">Yes</option>
                                                        <option value="N">No</option>
                                                    </select>
                                                </div>

                                                <div class="col-6 mb-2">
                                                    <label for="op_pf_balance">OP PF Balance</label>
                                                    <input type="number" name="OP_PF_Balance" id="op_pf_balance"
                                                        class="form-control" placeholder="OP PF Balance">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="op_pf_balance">Curr OP PF Balance</label>
                                                    <input type="number" name="OP_PF_Balance" id="op_pf_balance"
                                                        class="form-control" placeholder="Curr OP PF Balance">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="pf">PF Code</label>
                                                    <input type="number" name="pf_code" id="pf" class="form-control"
                                                        placeholder="PF">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="esi">ESI Code</label>
                                                    <input type="number" name="esi_code" id="esi" class="form-control"
                                                        placeholder="ESI">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="tot_el_allow">Tot EL Allow</label>
                                                    <input type="number" name="Tot_EL_Allow" id="tot_el_allow"
                                                        class="form-control" placeholder="Tot EL Allow">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="tot_cl_allow">Tot CL Allow</label>
                                                    <input type="number" name="Tot_CL_Allow" id="tot_cl_allow"
                                                        class="form-control" placeholder="Tot CL Allow">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="curr_earned">OP EL</label>
                                                    <input type="number" name="op_EL" id="curr_earned" class="form-control"
                                                        placeholder="OP EL">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="curr_casual">OP CL</label>
                                                    <input type="number" name="op_CL" id="curr_casual" class="form-control"
                                                        placeholder="OP CL">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="curr_earned">Curr. OP EL</label>
                                                    <input type="number" name="Curr_EL" id="curr_earned"
                                                        class="form-control" placeholder="Curr. OP EL">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="curr_casual">Curr. OP CL</label>
                                                    <input type="number" name="Curr_CL" id="curr_casual"
                                                        class="form-control" placeholder="Curr. OP CL">
                                                </div>
                                                <div class="col-6 mb-2">
                                                    <label for="esi">OT Rate</label>
                                                    <input type="number" name="ot_rate" id="esi" class="form-control"
                                                        placeholder="OT Rate">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ================= GRID 5: Biometric ID / Account / ID Proof ================= -->
                                    <div class="col-lg-2 col-md-6">
                                        <div class="p-2 border rounded bg-light">
                                            <h6
                                                class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                Biometric ID / Bank Account</h6>

                                            <div class="mb-2">
                                                <label for="biometricid">Biometric ID</label>
                                                <input type="text" name="biometricid" id="biometricid" class="form-control"
                                                    placeholder="Biometric ID">
                                            </div>
                                            <div class="mb-2">
                                                <label for="bankaccount">Bank A/c</label>
                                                <input type="text" name="bankaccount" id="bankaccount" class="form-control"
                                                    placeholder="Bank A/c">
                                            </div>
                                            <div class="mb-2">
                                                <label for="ac_holder_name">A/C Holder Name</label>
                                                <input type="text" name="ac_holder_name" id="ac_holder_name"
                                                    class="form-control" placeholder="A/C Holder Name">
                                            </div>
                                            <div class="mb-2">
                                                <label for="ifsc_code">IFSC Code</label>
                                                <input type="text" name="ifsc_code" id="ifsc_code" class="form-control"
                                                    placeholder="IFSC Code">
                                            </div>

                                        </div>
                                        <!-- ================= GRID 6: Status / Files / ID Proof ================= -->
                                        <div class="p-2 border rounded bg-light">
                                            <h6 class="fw-bold mb-2 text-primary position-relative d-inline-block pb-1 heading-underline">
                                                Status & Proof</h6>
                                            <div class="mb-2"><label for="idproof">ID Proof Type</label>
                                                <select name="IdProof" id="idproof" class="form-control">
                                                    <option value="">Select</option>
                                                    <option value="Adhaar">Adhaar</option>
                                                    <option value="PAN">PAN</option>
                                                    <option value="Voter ID">Voter ID</option>
                                                    <option value="Driving License">Driving License</option>
                                                    <option value="Passport">Passport</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                            </div>
                                            <div class="mb-2">
                                                <label for="idproofno">ID Proof No</label>
                                                <input type="text" name="IdProofNo" id="idproofno" class="form-control"
                                                    placeholder="ID Proof No">
                                            </div>
                                            <div class="mb-2">
                                                <label for="picpath">Photo</label>
                                                <input type="file" name="PicPath" id="picpath" class="form-control"
                                                    accept="image/*,application/pdf">
                                                <div id="picpathPreview" class="mt-2"></div>
                                            </div>
                                            <div class="mb-2">
                                                <label for="idpicpath">ID Proof Photo</label>
                                                <input type="file" name="IdPicPath" id="idpicpath" class="form-control"
                                                    accept="image/*,application/pdf">
                                                <div id="idpicpathPreview" class="mt-2"></div>
                                            </div>
                                            <div class="mb-2"><label for="active_yn">Active</label>
                                                <select name="ActiveYN" id="active_yn" class="form-control">
                                                    <option value="">Select</option>
                                                    <option value="Y">Yes</option>
                                                    <option value="N">No</option>
                                                </select>
                                            </div>

                                        </div>
                                    </div>


                                    <!-- ================= Submit ================= -->
                                    <div class="col-12 text-center mt-3">
                                        <button type="submit" id="submitBtn" class="btn btn-primary px-4">Submit +</button>
                                    </div>

                                </div>
                            </form>
                            <div class="table-responsive">
                                <table id="empcategorymast"
                                    class="table table-hover table-download-with-search table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>DOB</th>
                                            <th>Category</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
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

            $(document).ready(function() {
                var fpnoColors = {};
                var fpnoColorIndex = 0;
                var table = $('#empcategorymast').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: true,
                    paging: true,
                    ordering: true,
                    ajax: {
                        url: '{{ route('employeedata') }}',
                        type: 'GET',
                        error: function(xhr) {
                            let msg = 'Error loading data.';
                            if (xhr.responseJSON && xhr.responseJSON.message) {
                                msg = xhr.responseJSON.message;
                            }
                            pushNotify('error', msg);
                        }
                    },
                    columns: [{
                            data: 'sno',
                            name: 'sno'
                        }, // S.No
                        {
                            data: 'name',
                            name: 'name'
                        }, // Name
                        {
                            data: 'dob',
                            name: 'dob'
                        }, // Date of Birth
                        {
                            data: 'category',
                            name: 'category'
                        }, // Category
                        {
                            data: 'department',
                            name: 'department'
                        }, // Department
                        {
                            data: 'designation',
                            name: 'designation'
                        }, // Designation
                        {
                            data: 'action',
                            name: 'action'
                        }, // Action
                    ],
                    dom: 'Bfrtip',
                    buttons: [{
                            text: 'CSV <i class="fa fa-file-excel-o"></i>',
                            className: 'btn btn-success',
                            action: function(e, dt, button, config) {
                                // redirect to controller route that returns csv file
                                window.location.href = '/allemployeeexport';
                            }
                        },
                        {
                            extend: 'print',
                            text: 'Print <i class="fa-solid fa-print"></i>',
                            title: 'empcategory Master',
                            filename: 'empcategory Master',
                            footer: true,
                            customize: function(win) {
                                $(win.document.body).find('th').removeClass('sorting sorting_asc sorting_desc');
                                $(win.document.body).find('table').css('margin-top', '100px');
                                $(win.document.body).prepend('<div class="titlep">' + $('.titlep').html() + '</div>');
                                var style = '<style>';
                                style += '.none { display: none !important; }';
                                style += '</style>';
                                $(win.document.head).append(style);
                            },
                            action: function(e, dt, button, config) {
                                exportAllData(e, dt, button, config, $.fn.dataTable.ext.buttons.print.action);
                            }
                        }
                    ]
                });

                function exportAllData(e, dt, button, config, exportAction) {
                    var oldStart = dt.settings()[0]._iDisplayStart;

                    dt.one('preXhr', function(e, s, data) {

                        data.start = 0;
                        data.length = 2147483647;

                        dt.one('preDraw', function(e, settings) {
                            exportAction(e, dt, button, config);
                            settings._iDisplayStart = oldStart;
                            data.start = oldStart;

                            dt.one('preDraw', function(e, settings) {
                                dt.settings()[0]._iDisplayStart = oldStart;
                                dt.draw(false);
                            });

                            return false;
                        });
                    });

                    // Trigger reload
                    dt.ajax.reload();
                }

                ///////////////  Submit Form //////////////

                $('#employeesubmitform').on('submit', function(e) {
                    e.preventDefault();

                    $('span.error-text').text('');

                    $.ajax({
                        url: "{{ route('addemployee') }}", // 
                        method: "POST",
                        data: new FormData(this),
                        processData: false,
                        contentType: false,
                        beforeSend: function() {
                            $('#submitBtn').prop('disabled', true).text('Submitting...');
                        },
                        success: function(response) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

                            if (response.status == 1) {
                                // Success
                                pushNotify('success', response.msg);
                                $('#employeesubmitform')[0].reset();
                                $('#picpathPreview').html('');
                                $('#idpicpathPreview').html('');
                                table.ajax.reload();
                                // location.reload();
                            } else {
                                pushNotify('error', response.msg);
                            }
                        },
                        error: function(xhr) {
                            $('#submitBtn').prop('disabled', false).text('Submit +');

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


                ///////////////  Update Form //////////////

                // $('#hrPayrollForm').on('submit', function (e) {
                //     e.preventDefault();

                //     $('span.error-text').text(''); // Clear previous errors

                //     $.ajax({
                //         url: "", // Laravel route for update
                //         method: "POST",
                //         data: new FormData(this),
                //         processData: false,
                //         contentType: false,
                //         beforeSend: function () {
                //             $('#hrPayrollForm button[type="submit"]').prop('disabled', true).text('Updating...');
                //         },
                //         success: function (response) {
                //             $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                //             if (response.status == 1) {
                //                 // Success
                //                 pushNotify('success', response.msg);
                //                 $('#hrPayrollForm')[0].reset();
                //                 $('#updateModal').modal('hide'); // Modal close
                //                 table.ajax.reload(); // Refresh DataTable
                //             } else {
                //                 pushNotify('error', response.msg);
                //             }
                //         },
                //         error: function (xhr) {
                //             $('#hrPayrollForm button[type="submit"]').prop('disabled', false).text('Update');

                //             if (xhr.status === 422) {
                //                 // Laravel validation error
                //                 $.each(xhr.responseJSON.errors, function (key, value) {
                //                     $('span.' + key + '_error').text(value[0]);
                //                     pushNotify('error', value[0]);
                //                 });
                //             } else {
                //                 pushNotify('error', 'Something went wrong! Please try again.');
                //             }
                //         }
                //     });
                // });


                // //////////// Delete ////////////////

                $(document).on('click', '.deleteBtn', function() {
                    let id = $(this).data('id'); // Button me data-id attribute hona chahiye

                    if (confirm('Are you sure you want to delete this employee?')) {
                        $.ajax({
                            url: "{{ route('deleteemployee') }}", // Laravel route
                            type: 'POST',
                            data: {
                                'sn': id,
                                'status': 'D', // Set status to 'D' for delete
                                _token: "{{ csrf_token() }}"
                            },
                            beforeSend: function() {
                                // Optional: disable button or show loader
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', true).text('Deleting...');
                            },
                            success: function(response) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');

                                if (response.status == 1) {
                                    pushNotify('success', response.msg);
                                    table.ajax.reload(); // Refresh DataTable
                                } else {
                                    pushNotify('error', response.msg);
                                }
                            },
                            error: function(xhr) {
                                $('.deleteBtn[data-id="' + id + '"]').prop('disabled', false).text('Delete');
                                pushNotify('error', 'Something went wrong! Please try again.');
                            }
                        });
                    }
                });
            });
        </script>
    @endsection
