<!doctype html>
<html lang="en">
@php
    $first = $data->first();
@endphp

<head>
    <meta charset="utf-8">
    <title>{{ $data->first()->vouchername ?? '' }} Voucher</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        @if ($first->status == 'R' || $first->status == 'Y')
            body::after {
                content: "{{ $first->status == 'R' ? 'REJECTED' : 'VERIFIED' }}";
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%) rotate(-25deg);
                font-size: 120px;
                font-weight: bold;
                color: {{ $first->status == 'R' ? 'red' : 'green' }};
                opacity: 0.2;
                z-index: 9999;
                pointer-events: none;
                white-space: nowrap;
            }
        @endif
        @page {
            size: A4;
            margin: 8mm;
        }

        body {
            font-size: 12px;
            color: #000;
        }

        .table td,
        .table th {
            padding: 4px;
        }

        .border-dark {
            border: 1px solid #000 !important;
        }

        .small-text {
            font-size: 11px;
        }

        .print-container {
            max-width: 100%;
        }
    </style>
</head>

<body>
    <div class="container-fluid print-container">
        <div class="text-center company-info">
            <div class="text-bold" style="font-size: 16px;">{{ companydata()->comp_name }}</div>
            <div class="small-text">
                <strong>Website:</strong> {{ companydata()->website }} &nbsp;&nbsp;&nbsp;
                <strong>Email:</strong> {{ companydata()->email }}
            </div>
            <div class="small-text">
                <strong>Ph. No.:</strong> {{ companydata()->mobile }}
            </div>
            <div class="small-text">
                <strong>Add:</strong> {{ companydata()->address1 }} {{ companydata()->address2 }} {{ companydata()->city }} {{ companydata()->state }}
            </div>
        </div>

        <div class="text-center fw-bold mt-2 border-dark py-1">
            {{ $data->first()->vouchername ?? '' }} Voucher
        </div>

        <div class="row mt-2 small-text">
            <div class="col-6 text-end">
                <strong>Voucher No:</strong> {{ $data->first()->vtype }}/{{ $data->first()->vno }}
            </div>
            <div class="col-6">
                <strong>Date:</strong> {{ date('d-m-Y', strtotime($data->first()->vdate)) }}
            </div>
        </div>

        <table class="table table-bordered border-dark mt-2 small-text">
            <thead>
                <tr class="text-center">
                    <th style="width:10%">S.No</th>
                    <th>Description</th>
                    <th style="width:20%">Debit</th>
                    <th style="width:20%">Credit</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $serialNo = 1;
                    $totalDebit = 0;
                    $totalCredit = 0;
                @endphp
                @foreach ($data as $item)
                    <tr>
                        <td class="text-center">{{ $serialNo++ }}</td>
                        <td>{{ $item->compname ?? '' }}</td>
                        <td class="text-end">{{ $item->amtdr > 0 ? number_format($item->amtdr, 2) : '' }}</td>
                        <td class="text-end">{{ $item->amtcr > 0 ? number_format($item->amtcr, 2) : '' }}</td>
                    </tr>
                    @php
                        $totalDebit += $item->amtdr ?? 0;
                        $totalCredit += $item->amtcr ?? 0;
                    @endphp
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="2" class="text-end">Total</th>
                    <th class="text-end">{{ number_format($totalDebit, 2) }}</th>
                    <th class="text-end">{{ number_format($totalCredit, 2) }}</th>
                </tr>
            </tfoot>
        </table>


        <div class="small-text mt-2">
            BEING {{ $data->first()->vouchername ?? '' }} TO {{ $data->first()->compname ?? '' }}
            AGST {{ subgroup($contrasub)->name }} Dated
            {{ date('d-m-Y', strtotime($data->first()->vdate)) }} Voucher No
            {{ $data->first()->vtype }}/{{ $data->first()->vno }}
        </div>

        <div class="small-text mt-2">
            <strong>Narration:</strong> {{ $data->first()->narration ?? '' }}
        </div>

        <div class="small-text mt-2">
            <strong>In Words:</strong> {{ amountToWords($totalDebit > 0 ? $totalDebit : $totalCredit) }}
        </div>

        <div class="row mt-4 text-center small-text">
            <div class="col-3">
                <div style="height:40px;"></div>
                <div class="border-top pt-1">Receiver Sign</div>
            </div>

            <div class="col-3">
                <div style="height:40px;"><b>{{ strtoupper($data->first()->u_name) ?? '' }}</b></div>
                <div class="border-top pt-1">Prepared By</div>
            </div>
            <div class="col-3">
                <div style="height:40px;"></div>
                <div class="border-top pt-1">Checked By</div>
            </div>

            <div class="col-3">
                <div style="height:40px;"></div>
                <div class="border-top pt-1">Auth. Signatory</div>
            </div>
        </div>

    </div>
</body>

</html>

<script>
    window.onload = function() {
        window.print();
    };
</script>
