<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <style>
        .country-rep {
            font-size: 14px;
            background-color: #f0f0f0;
        }

        .country-rep .parameter-section {
            background-color: #e0e0e0;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .country-rep .title-bar {
            background-color: #486b8a;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            text-align: center;
            font-weight: bold;
        }

        .country-rep .table th {
            background-color: #5c2d91;
            color: white;
            vertical-align: middle;
            text-align: center;
        }

        .country-rep .company-name {
            font-weight: bold;
            color: #00008b;
        }

        .country-rep .total-column {
            background-color: #e6e6fa;
            font-weight: bold;
        }

        .country-rep .footer-info {
            background-color: #d3d3d3;
            padding: 5px 10px;
            font-size: 12px;
            border-radius: 3px;
        }

        @media print {
            #tablediv {
                font-size: 8px;
            }
        }
    </style>
</head>
<div class="card shadow">
    <div class="card-body country-rep">
        <div class="parameter-section">
            <div class="row">
                <div class="col-md-4" id="details">

                </div>
                <div class="col-md-8">
                    <div class="title-bar">Company Wise Nights</div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-6">
                    <strong id="formonth"></strong>
                </div>
                <div class="col-md-6">
                    <strong id="type"></strong>
                </div>
            </div>
        </div>
        <div id="tablediv" class="table-responsive">
            <table id="contryprint" class="table table-bordered table-striped table-hover">
            </table>
        </div>
    </div>
</div>


<script>
    window.print();
</script>
