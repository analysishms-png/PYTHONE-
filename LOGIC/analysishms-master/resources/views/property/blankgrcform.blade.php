<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blank GRC</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        ul.blangrcul {
            list-style: decimal;
            margin-left: 12px;
            padding: 0;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            margin: 0%;
        }

        .mybox {
            border: 1px solid;
        }

        .form-control {
            max-height: 1.6rem;
            min-height: 1rem !important;
        }

        .form-group {
            margin-bottom: auto;
        }

        #end {
            text-align: center;
        }

        p {
            margin: 0;
            font-weight: 500;
        }

        label {
            margin: 0;
        }

        img {
            position: absolute;
        }

        .logoimg img {
            height: 10vh;
        }

        .sign {
            float: inline-end;
        }

        @media print {
            .col-md-4 {
                float: left;
                width: 33%;
            }

            .sign {
                float: inline-end;
            }

            img {
                position: absolute;
            }

            .logoimg img {
                height: 100px !important;
            }

            ul.blangrcul {
                list-style: decimal;
                margin-left: 12px;
                padding: 0;
            }


            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                margin: 0%;
            }

            .form-control {
                max-height: 1.6rem;
                min-height: 1rem !important;
            }

            .form-group {
                margin-bottom: auto;
            }

            #end {
                text-align: center;
            }

            p {
                margin: 0;
                font-weight: 500;
            }

            label {
                margin: 0;
            }
        }
    </style>
</head>

<div>
    <div class="container-fluid">
        <h5>Registration Card <span style="float: inline-end;">Reg. No.@php  echo ($grcdatetime->grcdatetime == 'Y' ? '<span id="rid"></span>' : '') ?? ''; @endphp</span></h5>
        <div class="logoimg">
            <img alt="{{ companydata()->comp_name }}" class="" id="complogo" src="{{ asset('storage/admin/property_logo/' . companydata()->logo) }}">
        </div>
        <h5 id="compname" class="text-center">{{ companydata()->comp_name }}</h5>
        <div id="end">
            <p class="text-center">Address: <span id="address">{{ companydata()->address1 }}</span></p>
            <p>E-mail: <span id="email">{{ companydata()->email }}</span></p>
            <p>Mobile: <span id="phone">{{ companydata()->mobile }}</span></p>
        </div>
        <h6 class="text-center">FIll By Guest</h6>
        <form>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="name1">Name 1:</label>
                        <input type="text" class="form-control" id="name1" name="name1">
                    </div>
                    <div class="form-group">
                        <label for="name2">Name 2:</label>
                        <input type="text" class="form-control" id="name2" name="name2">
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label for="designation">Designation:</label>
                        <input type="text" class="form-control" id="designation" name="designation">
                    </div>
                    <div class="form-group">
                        <label for="company">Company:</label>
                        <input type="text" class="form-control" id="company" name="company">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="names" name="names">
                    </div>
                    <div class="form-group">
                        <label for="numPersons">Number of Persons:</label>
                        <input type="number" class="form-control" id="numPersons" name="numPersons">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    <div class="form-group">
                        <label for="dueStay">Due of Stay:</label>
                        <input type="text" class="form-control" id="dueStay" name="dueStay">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="city">City:</label>
                        <input type="text" class="form-control" id="city" name="city">
                    </div>
                    <div class="form-group">
                        <label for="nationality">Nationality:</label>
                        <input type="text" class="form-control" id="nationality" name="nationality">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="age">Age:</label>
                        <input type="number" class="form-control" id="age" name="age">
                    </div>
                    <div class="form-group">
                        <label for="mobile">Mobile No:</label>
                        <input type="tel" class="form-control" id="mobile" name="mobile">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="email">Email Address:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="dob">Date of Birth:</label>
                        <input type="text" class="form-control" id="dob" name="dob">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="anniversary">Anniversary:</label>
                        <input type="text" class="form-control" id="anniversary" name="anniversary">
                    </div>
                    <div class="form-group">
                        <label for="purpose">Purpose of Visit:</label>
                        <input type="text" class="form-control" id="purpose" name="purpose">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="modeoftravel">Mode of Travel:</label>
                        <input type="text" class="form-control" name="modeoftravel" id="modeoftravel">
                    </div>
                    <div class="form-group">
                        <label for="aadhaar">Aadhaar No:</label>
                        <input type="text" class="form-control" id="aadhaar" name="aadhaar">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="remark">Remark:</label>
                        <input type="text" class="form-control" name="remark" id="remark">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label class="col-form-label" for="paymentinstr">Payments Instruction</label>
                        <div class="row">
                            <div>
                                <div class="form-check custom-radio">
                                    <input class="form-check-input" type="radio" value="Cash" name="paymentinstr"
                                        id="cash">
                                    <label class="form-check-label" for="cash">Cash</label>
                                </div>
                            </div>
                            <div>
                                <div class="form-check custom-radio">
                                    <input class="form-check-input" type="radio" value="Credit Card" name="paymentinstr"
                                        id="creditcard">
                                    <label class="form-check-label" for="creditcard">Credit Card</label>
                                </div>
                            </div>
                            <div>
                                <div class="form-check custom-radio">
                                    <input class="form-check-input" type="radio" value="Bill To Company"
                                        name="paymentinstr" id="billtocompany">
                                    <label class="form-check-label" for="billtocompany">Bill To Company</label>
                                </div>
                            </div>
                            <div>
                                <div class="form-check custom-radio">
                                    <input class="form-check-input" type="radio" value="UPI"
                                        name="paymentinstr" id="upi">
                                    <label class="form-check-label" for="upi">UPI</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <p class="text-center">Passport and other Details</p>
        <div class="mybox">
            <div class="row">
                <div class="col-md-4">
                    <p>Arrival From :</p>
                    <p>Passport No. :</p>
                    <p>Registration No. :</p>
                </div>
                <div class="col-md-4">
                    <p>Proceeding To :</p>
                    <p>Date of issue :</p>
                    <p>Date of issue :</p>
                </div>
                <div class="col-md-4">
                    <p>Nationality :</p>
                    <p>Place :</p>
                    <p>Place :</p>
                </div>
            </div>
        </div>
        <p class="text-center">Fill By Front Desk</p>
        <div class="mybox">
            <div class="row">
                <div class="col-md-4">
                    <p>Chk In Date : @php  echo ($grcdatetime->grcdatetime == 'Y' ? '<span id="ncur"></span>' : '') ?? ''; @endphp</p>
                    <p>Room No. :</p>
                    <p>Plan/Package :</p>
                </div>
                <div class="col-md-4">
                    <p>Chk In Time : @php  echo ($grcdatetime->grcdatetime == 'Y' ? '<span id="curtime"></span>' : '') ?? ''; @endphp</p>
                    <p>Room Type :</p>
                    <p>Plan Amount :</p>
                </div>
                <div class="col-md-4">
                    <p>Chk Out Date :</p>
                </div>
            </div>
        </div>
        <h5 class="text-center text-dark">Terms & Conditions</h5>
        <ul class="blangrcul">
            @foreach ($terms as $term)
                <li>{{ $term }}</li>
            @endforeach
        </ul>
        <div class="sign font-weight-bold">
            <p>Guest Signature</p>
        </div>
    </div>
</div>
</body>

</html>
