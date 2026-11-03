<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Analysis FOCC Report Print</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: Arial, sans-serif;
            font-size: 11px;
            color: #000;
            background: #fff;
            padding: 12px 16px;
        }

        .none { display: none; }

        /* ── TOP HEADER ── */
        .print-header {
            display: flex;
            align-items: flex-start;
            justify-content: space-between;
            border-bottom: 2px solid #333;
            padding-bottom: 8px;
            margin-bottom: 10px;
        }
        .print-header .logo-area { width: 70px; }
        .print-header .logo-area img { width: 60px; height: auto; }
        .print-header .company-area {
            flex: 1;
            text-align: center;
            padding: 0 10px;
        }
        .print-header .company-area h2 {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 2px;
        }
        .print-header .company-area p { font-size: 11px; margin: 1px 0; }
        .print-header .company-area .report-title {
            font-size: 12px;
            font-weight: bold;
            margin-top: 3px;
        }
        .print-header .info-area {
            width: 180px;
            text-align: right;
            font-size: 10px;
            line-height: 1.6;
        }
        .print-header .info-area span { display: block; }

        /* ── SECTION HEADER ── */
        .section-header, .custom-header {
            background: #e8e8e8 !important;
            border: 1px solid #aaa !important;
            font-weight: bold !important;
            font-size: 11px !important;
            padding: 4px 8px !important;
            margin-top: 12px !important;
            margin-bottom: 0 !important;
            text-transform: uppercase;
            letter-spacing: 0.3px;
            color: #000 !important;
            text-align: center;
        }

        /* ── TABULATOR OVERRIDES ── */
        .tabulator {
            border: none !important;
            font-size: 11px !important;
            background: transparent !important;
        }
        .tabulator-header {
            background: #d6d6d6 !important;
            border-bottom: 1px solid #999 !important;
            font-weight: bold;
        }
        .tabulator-headers {
            display: flex !important;
            background: #d6d6d6 !important;
            font-weight: bold;
            border: 1px solid #999;
        }
        .tabulator-col {
            background: #d6d6d6 !important;
            border-right: 1px solid #aaa !important;
        }
        .tabulator-col-title {
            font-size: 10px !important;
            font-weight: bold !important;
            text-transform: uppercase;
            padding: 4px 6px !important;
        }
        .tabulator .tabulator-header .tabulator-header-contents {
            overflow: hidden;
            position: relative;
        }
        .tabulator-col-sorter { display: none !important; }

        .tabulator-tableholder {
            height: auto !important;
            overflow: visible !important;
        }
        .tabulator-tableholder .tabulator-selectable { display: flex; }
        .tabulator-tableholder .tabulator-selectable .tabulator-cell {
            border: 1px solid #ccc !important;
            padding: 3px 6px !important;
            font-size: 11px !important;
        }
        .tabulator-tableholder .tabulator-unselectable { display: flex; }
        .tabulator-tableholder .tabulator-unselectable .tabulator-cell {
            font-weight: 700;
            border: 1px solid #ccc !important;
            padding: 3px 6px !important;
            font-size: 11px !important;
        }
        .tabulator-group-level-0 {
            font-weight: bold !important;
            background: #f5f5f5 !important;
            border-bottom: 1px solid #ccc !important;
            padding: 3px 6px !important;
            font-size: 11px !important;
        }
        .tabulator-group-level-0 span { display: none; }
        .tabulator-group-toggle { display: none !important; }

        .tabulator-footer {
            background: #f0f0f0 !important;
            border-top: 2px solid #888 !important;
        }
        .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom {
            display: flex !important;
            font-weight: bold !important;
            background: #f0f0f0 !important;
        }
        .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell {
            border: 1px solid #aaa !important;
            padding: 3px 6px !important;
            font-size: 11px !important;
            font-weight: bold !important;
        }

        /* per-table height fixes */
        #front-office .tabulator-tableholder { height: auto !important; }
        #front-office .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #front-office .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        #pos-outlet .tabulator-tableholder { height: auto !important; }
        #pos-outlet .tabulator-header .tabulator-headers .tabulator-col-sorter-element { min-width: auto !important; width: auto !important; position: relative !important; left: auto !important; height: auto !important; }
        #pos-outlet .tabulator-header .tabulator-headers { display: flex !important; }
        #pos-outlet .tabulator-header .tabulator-headers .tabulator-col-group .tabulator-col-group-cols { display: flex !important; }
        #pos-outlet .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #pos-outlet .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        #misc-collection .tabulator-tableholder { height: auto !important; }
        #misc-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #misc-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        #misx-collection .tabulator-tableholder { height: auto !important; }
        #misx-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #misx-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        #bill-tocompany .tabulator-tableholder { height: auto !important; }
        #bill-tocompany .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #bill-tocompany .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        #other-collection .tabulator-tableholder { height: auto !important; }
        #other-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom { display: flex; font-weight: bold; }
        #other-collection .tabulator-footer .tabulator-calcs-holder .tabulator-calcs-bottom .tabulator-cell { border: 1px solid; }

        /* Net summary box */
        .netcash table {
            width: 100%;
            border-collapse: collapse;
            font-size: 11px;
        }
        .netcash table td {
            border: 1px solid #ccc;
            padding: 3px 8px;
        }

        @media print {
            body { padding: 6px 10px; }
            .tabulator-tableholder { height: auto !important; overflow: visible !important; }
            .tabulator { overflow: visible !important; }
            #pos-outlet .tabulator-header .tabulator-headers .tabulator-col-group .tabulator-col-group-cols { display: flex !important; }
            .page-break { page-break-before: always; break-before: page; }
        }
    </style>
</head>
<body>

    <p class="none" id="totalamount"></p>

    {{-- ── TOP HEADER ── --}}
    <div class="print-header">
        <div class="logo-area">
            <img id="complogo" src="" alt="Logo" style="width:60px;height:auto;">
        </div>
        <div class="company-area">
            <h2>{{ $comp->comp_name }}</h2>
            <p>{{ $comp->address1 }}</p>
            <p>{{ $statename . ' - ' . $comp->city . ' - ' . $comp->pin }}</p>
            <p class="report-title">FOCC Report</p>
        </div>
        <div class="info-area">
            <span><strong>Generated At:</strong> <span id="generatedatp"></span></span>
        </div>
    </div>

    <p style="font-size:11px; margin-bottom:8px;">For Date: <strong><span id="fordatep"></span></strong></p>

    {{-- ── REPORT CONTENT (injected by JS) ── --}}
    <div id="reportprint"></div>
    <div id="reportprint2"></div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script>
        window.addEventListener('DOMContentLoaded', function () {
            var now  = new Date();
            var dd   = String(now.getDate()).padStart(2,'0');
            var mm   = String(now.getMonth()+1).padStart(2,'0');
            var yyyy = now.getFullYear();
            var hh   = now.getHours() % 12 || 12;
            var min  = String(now.getMinutes()).padStart(2,'0');
            var ampm = now.getHours() >= 12 ? 'PM' : 'AM';
            document.getElementById('generatedatp').textContent =
                dd+'-'+mm+'-'+yyyy+' '+String(hh).padStart(2,'0')+':'+min+' '+ampm;
        });

        setTimeout(function () {
            var h1 = $('.print-header').outerHeight() || 0;
            var h2 = $('#reportprint').outerHeight() || 0;
            if ((h1 + h2) > 100) {
                $('#reportprint2').addClass('page-break');
            }
        }, 500);

        setTimeout(function () {
            window.print();
        }, 1200);
    </script>
</body>
</html>
