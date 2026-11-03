<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .loader-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .loader-content {
            text-align: center;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            position: relative;
            overflow: hidden;
        }

        .loader-content::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: conic-gradient(transparent,
                    transparent 25%,
                    #ff00ff 25%,
                    #ff00ff 50%,
                    transparent 50%,
                    transparent 75%,
                    #00ffff 75%);
            animation: rotate 4s linear infinite;
        }

        .loader-content::after {
            content: '';
            position: absolute;
            inset: 3px;
            background: white;
            border-radius: 7px;
        }

        .loader-spinner {
            position: relative;
            width: 100px;
            height: 100px;
            margin: 0 auto 20px;
            z-index: 1;
        }

        .loader-circle {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 5px solid #f3f3f3;
            border-top: 5px solid #3498db;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        .loader-image {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 80%;
            height: 80%;
            object-fit: contain;
            mix-blend-mode: darken;
        }

        .loader-text {
            color: #333;
            font-size: 18px;
            font-weight: bold;
            position: relative;
            z-index: 1;
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        @keyframes rotate {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
</head>

<body>
    <div id="myloader" class="loader-overlay none">
        <div class="loader-content">
            <div class="loader-spinner">
                <div class="loader-circle"></div>
                <img src="{{ asset('admin/icons/custom/jogging.gif') }}" alt="Jogging" class="loader-image">
            </div>
            <div id="loader-text" class="loader-text">Please Wait</div>
        </div>
    </div>
</body>

</html>
