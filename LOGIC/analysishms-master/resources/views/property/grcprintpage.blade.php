<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Guest Registration Card</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h2,
        h3 {
            text-align: center;
            margin: 0;
        }

        .center {
            text-align: center;
        }

        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px;
        }

        .info-table td {
            padding: 6px 10px;
            vertical-align: top;
        }

        .footer {
            margin-top: 40px;
        }

        .signature {
            height: 50px;
        }

        .bold {
            font-weight: bold;
        }

        .divider {
            border-top: 1px solid #000;
            margin-top: 20px;
        }

        .profile-img {
            width: 110px;
            height: 110px;
            object-fit: cover;
            border: 1px solid #000;
            border-radius: 6px;
        }

        .header-table {
            width: 100%;
        }

        .header-table td {
            vertical-align: top;
        }
    </style>
</head>

<body>

    <table class="header-table">
        <tr>
            <td style="width: 85%;">
                <h2>{{ $comp->comp_name }}</h2>
                <div class="center">{{ $comp->address1 }}</div>
                <h3>Guest Registration Card</h3>
            </td>
        </tr>
    </table>

    <hr style="border: 1px solid black; width: 100%;">


    <table class="info-table">
        <tr>
            <td class="bold">Name:</td>
            <td>{{ $data->guest_name }}</td>
            <td class="bold">Folio No.:</td>
            <td>{{ $data->folio_no }}</td>
        </tr>
        <tr>
            <td class="bold">Father Name:</td>
            {{-- <td>{{ $data->u_name }}</td> --}}
            <td></td>
            <td class="bold">Room No.:</td>
            <td>{{ $data->roomno }}</td>
        </tr>
        <tr>
            <td class="bold">Address:</td>
            <td colspan="3">{{ $data->add1 }} {{ $data->add2 }}</td>
        </tr>
        <tr>
            <td class="bold">City:</td>
            <td>{{ $data->cityname }}</td>
            <td class="bold">Room Type:</td>
            <td>{{ $data->room_type }}</td>
        </tr>
        <tr>
            <td class="bold">Nationality:</td>
            <td>{{ $data->nationality }}</td>
            <td class="bold">Adult/Child:</td>
            <td>{{ $data->adult }}/{{ $data->children }}</td>
        </tr>
        <tr>
            <td class="bold">Mobile No.:</td>
            <td>{{ $data->mobile_no }}</td>
            <td class="bold">Chk In Date:</td>
            <td>{{ \Carbon\Carbon::parse($data->chkindate)->format('d/M/Y') }} {{ $data->chkintime }}</td>
        </tr>
        <tr>
            <td class="bold">Date of Birth:</td>
            <td>{{ $data->dob ?? 'NA' }}</td>
            <td class="bold">Chk Out Date:</td>
            <td>{{ \Carbon\Carbon::parse($data->depdate)->format('d/M/Y') }} (Exp.)</td>
        </tr>
        <tr>
            <td class="bold">Arrival From:</td>
            <td>{{ $data->arrfrom }}</td>
            <td class="bold">Room Rate:</td>
            <td>{{ number_format($data->roomrate, 2) }}</td>
        </tr>
        <tr>
            <td class="bold">Purpose of Visit:</td>
            <td>{{ $data->business_source }}</td>
            <td class="bold">R.R.Inc.Tax:</td>
            <td>{{ $data->rrtaxinc == 'Y' ? 'Yes' : 'No' }}</td>
        </tr>
        <tr>
            <td class="bold">Anniversary:</td>
            <td>{{ $data->anniversary ?? 'NA' }}</td>
            <td class="bold">Plan/Package:</td>
            <td>{{ $data->plan_name }}</td>
        </tr>
        <tr>
            <td class="bold">Group Rooms:</td>
            <td>{{ $data->group_rooms }}</td>
            <td class="bold">Destination:</td>
            <td>{{ $data->destination }}</td>
        </tr>
        <tr>
            <td class="bold">Mode of Travel:</td>
            <td>{{ $data->travelmode }}</td>
            <td class="bold">Guest ID:</td>
            <td>{{ $data->id_proof }}</td>
        </tr>
        <tr>
            <td class="bold">Identity No.:</td>
            <td>{{ $data->idproof_no }}</td>
        </tr>
        <tr>
            <td class="bold">Email ID:</td>
            <td>{{ $data->email_id }}</td>
        </tr>
    </table>

    <div class="footer">

        <table style="width: 100%;">

            <tr>

                <td style="width: 38%; vertical-align: top;">

                    <div style="margin-bottom: 40px;">
                        Printed By: {{ Auth::user()->name }} at {{ now()->format('H:i:s') }}
                    </div>

                    <div style="display: flex; align-items: center; gap: 10px;">

                        <div>
                            Guest Signature:
                            __________________________
                        </div>

                        @php
                            $guestSignPath = url('storage/walkin/signature/' . $data->guestsign);

                            // echo $guestSignPath;
                        @endphp

                        @if (!empty($data->guestsign))
                            <img
                                src="{{ url('storage/walkin/signature/' . $data->guestsign) }}"
                                style="height: 40px; width: 120px; object-fit: contain; border-bottom: 1px solid #000;">
                        @endif

                    </div>

                </td>

                <td style="width: 31%; text-align: center; vertical-align: top;">

                    @if (!empty($data->idpic_path))
                        <img
                            src="{{ url('storage/walkin/identityimage/' . $data->idpic_path) }}"
                            style="width: 220px; height: 140px; object-fit: contain; border: 2px solid red;">
                    @endif

                    <div style="margin-top: 8px; font-weight: bold;">
                        ID Proof
                    </div>

                </td>

                <td style="width: 31%; text-align: center; vertical-align: top;">

                    @if (!empty($data->pic_path))
                        <img
                            src="{{ url('storage/walkin/profileimage/' . $data->pic_path) }}"
                            style="width: 220px; height: 140px; object-fit: contain; border: 2px solid red;">
                    @endif

                    <div style="margin-top: 8px; font-weight: bold;">
                        Guest Photo
                    </div>

                </td>

            </tr>

        </table>

    </div>

    <hr style="border: 1px solid black; width: 100%;">

</body>

</html>

{{-- <html>
<head>
    <meta charset="UTF-8">
    <title>Guest Registration Card</title>
    
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h2, h3 {
            text-align: center;
            margin: 0;
        }
        .center {
            text-align: center;
        }
        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px;
        }
        .info-table td {
            padding: 6px 10px;
            vertical-align: top;
        }
        .footer {
            margin-top: 40px;
        }
        .signature {
            height: 50px;
        }
        .bold {
            font-weight: bold;
        }
        .divider {
            border-top: 1px solid #000;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Mayur Sanskratik Bhawan</h2>
    <div class="center">Raseora Road - Sitapur-261001</div>
    <h3>Guest Registration Card</h3>

    <table class="info-table">
        <tr>
            <td class="bold">Name:</td>
            <td>Shirish Gaur</td>
            <td class="bold">Folio No.:</td>
            <td>14</td>
        </tr>
        <tr>
            <td class="bold">Father Name:</td>
            <td>Shiv Prakash Gaur</td>
            <td class="bold">Room No.:</td>
            <td>1203</td>
        </tr>
        <tr>
            <td class="bold">Address:</td>
            <td colspan="3">65 Teachers Colony Dharampur, Ward 59 Gita Vatika</td>
        </tr>
        <tr>
            <td class="bold">City:</td>
            <td>Gorakhpur</td>
            <td class="bold">Room Type:</td>
            <td>Superior Room</td>
        </tr>
        <tr>
            <td class="bold">Nationality:</td>
            <td>Indian</td>
            <td class="bold">Adult/Child:</td>
            <td>1/0</td>
        </tr>
        <tr>
            <td class="bold">Mobile No.:</td>
            <td>9839126478</td>
            <td class="bold">Chk In Date:</td>
            <td>05/Apr/2023 19:07</td>
        </tr>
        <tr>
            <td class="bold">Date of Birth:</td>
            <td>NA</td>
            <td class="bold">Chk Out Date:</td>
            <td>06/Apr/2023 (Exp.)</td>
        </tr>
        <tr>
            <td class="bold">Arrival From:</td>
            <td>Lucknow</td>
            <td class="bold">Room Rate:</td>
            <td>2700.00</td>
        </tr>
        <tr>
            <td class="bold">Purpose of Visit:</td>
            <td>Business</td>
            <td class="bold">R.R.Inc.Tax:</td>
            <td>No</td>
        </tr>
        <tr>
            <td class="bold">Anniversary:</td>
            <td>NA</td>
            <td class="bold">Plan/Package:</td>
            <td>C.P. Plan</td>
        </tr>
        <tr>
            <td class="bold">Group Rooms:</td>
            <td>1203</td>
            <td class="bold">Destination:</td>
            <td>Lucknow</td>
        </tr>
        <tr>
            <td class="bold">Mode of Travel:</td>
            <td>By Road</td>
            <td class="bold">Guest ID:</td>
            <td>UIDAI/AADHAR CARD</td>
        </tr>
        <tr>
            <td class="bold">Identity No.:</td>
            <td>819011539523</td>
        </tr>
    </table>

    <div class="footer">
        <div>Printed By: Deepak at 20:15:03</div>
        <br><br>
        <div class="signature">Guest Signature: __________________________</div>
        <br>
    </div>
</body>
</html> --}}

<script>
    setTimeout(() => {
        window.print();
    }, 1000);
</script>
