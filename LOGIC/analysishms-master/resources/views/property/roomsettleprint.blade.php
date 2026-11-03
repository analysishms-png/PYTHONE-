<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advance Receipt</title>
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

        #name,
        #name2,
        #textamount,
        #textamount2 {
            text-transform: capitalize;
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

        .sign {
            float: inline-end;
        }

        .line {
            display: flex;
            justify-content: space-around;
        }

        .flex {
            display: flex;
            justify-content: space-between;
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

<div class="mb-5" id="advreceipt">
    <div class="container-fluid">
        <h5>Advance Receipt <span style="float: inline-end;"></h5>
        <div class="logoimg">
            <img alt="analysishms" class="" id="complogo" src="">
        </div>
        <h5 id="compname" class="text-center"></h5>
        <div id="end">
            <p class="text-center">Address: <span id="address"></span></p>
            <p>E-mail: <span id="email"></span></p>
            <p>Mobile: <span id="phone"></span></p>
        </div>
        <div class="line mt-4">
            <p>Date <span id="curdate"></span></p>
            <p>Room No.<span id="roomno"></span></span></p>
            <p>Receipt No. 1</p>
        </div>
        <div class="mt-3 flex">
            <p><span id="recref"></span> with thanks from <span id="name"></span></p>
            <p>A sum of Rs. <span id="amount"></span></p>
        </div>
        <div class="mt-3 flex">
            <p>In Words <span id="textamount"></span></p>
            <p><span id="asadvref"></span> By <span id="nature"></span></p>
        </div>
        <div class="font-weight-bold">
            <p>User : <span id="u_name"></span></p>
        </div>
        <div class="mt-4">
            (Authorised Signatory)
        </div>
    </div>
</div>
<div id="bigline" style="border: 1px solid;" class="mt-2 mb-2">
</div>
<div class="mb-5 mt-4" id="advreceipt">
    <div class="container-fluid">
        <h5>Advance Receipt <span style="float: inline-end;"></h5>
        <div class="logoimg">
            <img alt="analysishms" class="" id="complogo2" src="">
        </div>
        <h5 id="compname" class="text-center"></h5>
        <div id="end">
            <p class="text-center">Address: <span id="address2"></span></p>
            <p>E-mail: <span id="email2"></span></p>
            <p>Mobile: <span id="phone2"></span></p>
        </div>
        <div style="margin-top: 40px;" class="line">
            <p>Date <span id="curdate2"></span></p>
            <p>Room No.<span id="roomno2"></span></span></p>
            <p>Receipt No.</p>
        </div>
        <div class="mt-3 flex">
            <p><span id="recref2"></span> with thanks from <span id="name2"></span></p>
            <p>A sum of Rs. <span id="amount2"></span></p>
        </div>
        <div class="mt-3 flex">
            <p>In Words:  <span id="textamount2"></span></p>
            <p><span id="asadvref2"></span> By <span id="nature2"></span></p>
        </div>
        <div class="font-weight-bold">
            <p>User : <span id="u_name2"></span></p>
        </div>
        <div class="mt-4">
            (Authorised Signatory)
        </div>
    </div>
</div>
</body>

</html>
<script>
    setTimeout(() => {
        window.print();
    }, 1000);
</script>