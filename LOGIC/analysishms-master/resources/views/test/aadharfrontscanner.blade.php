<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Aadhaar OCR Scanner — Structured Extraction</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            max-width: 1000px;
            margin: auto;
        }

        h2 {
            margin-bottom: 10px;
        }

        #row {
            display: flex;
            gap: 16px;
            align-items: flex-start;
            margin-top: 10px;
        }

        #preview,
        #procPreview {
            max-width: 45%;
            border: 1px solid #ddd;
            padding: 6px;
            background: #fff;
        }

        /* Simplify styles for input fields */
        .input-field {
            margin-top: 10px;
            display: flex;
            flex-direction: column;
        }

        .input-field label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .input-field input {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        #progress {
            margin-top: 6px;
            font-size: 14px;
            color: #333;
        }

        /* Add styles for the webcam container */
        #webcamContainer {
            margin-top: 20px;
        }

        #webcam {
            width: 100%;
            max-width: 500px;
            border: 1px solid #ddd;
            border-radius: 6px;
        }

        /* Add styles for the capture button */
        #captureButton {
            display: none;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #captureButton:hover {
            background-color: #218838;
        }

        /* Hide file input */
        #fileInput {
            display: none;
        }

        /* Add styles for the progress bar */
        #progressBarContainer {
            display: none;
            margin-top: 10px;
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 4px;
            overflow: hidden;
        }

        #progressBar {
            height: 20px;
            width: 0;
            background-color: #007BFF;
            text-align: center;
            line-height: 20px;
            color: white;
            border-radius: 4px;
        }
    </style>
</head>

<body>

    <h2>Aadhaar OCR Scanner — Structured Extraction</h2>
    <input type="file" id="fileInput" accept="image/*">
    <div id="progress"></div>

    <div id="row">
        <div>
            <label>Original Preview</label>
            <img id="preview">
        </div>
        <div>
            <label>Preprocessed Image</label>
            <img id="procPreview">
        </div>
    </div>

    <div class="input-field">
        <label for="nameInput">Name</label>
        <input type="text" id="nameInput" readonly>
    </div>
    <div class="input-field">
        <label for="genderInput">Gender</label>
        <input type="text" id="genderInput" readonly>
    </div>
    <div class="input-field">
        <label for="aadharInput">Aadhaar Number</label>
        <input type="text" id="aadharInput" readonly>
    </div>
    <div class="input-field">
        <label for="dobInput">Date of Birth</label>
        <input type="text" id="dobInput" readonly>
    </div>

    <button id="openCameraButton">Open Camera</button>
    <button id="captureButton">Capture</button>
    <video id="webcam" autoplay style="display:none;"></video>
    <canvas id="captureCanvas" style="display:none;"></canvas>

    <div id="progressBarContainer">
        <div id="progressBar">0%</div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/tesseract.js@4/dist/tesseract.min.js"></script>
    <script>
        // -----------------------
        // File input handler
        // -----------------------
        const fileInput = document.getElementById('fileInput');
        const preview = document.getElementById('preview');
        const procPreview = document.getElementById('procPreview');
        const nameInput = document.getElementById('nameInput');
        const genderInput = document.getElementById('genderInput');
        const aadharInput = document.getElementById('aadharInput');
        const dobInput = document.getElementById('dobInput');
        const progressDiv = document.getElementById('progress');

        // Removed file input functionality
        document.getElementById('fileInput').remove();

        // -----------------------
        // Aadhaar OCR parsing
        // -----------------------
        function parseAadhaarFrontOCR(ocrText) {
            if (!ocrText) return {
                name: null,
                dob: null,
                gender: null,
                aadhar: null
            };

            // Normalize text
            let text = ocrText.replace(/[^\x00-\x7F]/g, " ") // remove non-ASCII
                .replace(/\s{2,}/g, " ") // multiple spaces → single space
                .replace(/\n\s*\n/g, "\n"); // multiple newlines → single newline

            let lines = text.split(/\r?\n/).map(l => l.trim());

            // Remove UIDAI headers / obvious noisy lines
            lines = lines.filter(l => !/uidai|unique identification|Government of India|भारतीय/i.test(l));

            const joinedText = lines.join(" ");

            // --------- Aadhaar Number ---------
            let aadharMatch = joinedText.match(/\b\d{4}\s?\d{4}\s?\d{4}\b/);
            let aadhar = aadharMatch ? aadharMatch[0].replace(/\s/g, "") : null;

            // --------- DOB ---------
            let dobMatch = joinedText.match(/\b(\d{2}[\/\-]\d{2}[\/\-]\d{4}|\d{4}[\/\-]\d{2}[\/\-]\d{2})\b/);
            let dob = dobMatch ? dobMatch[0] : null;

            // --------- Gender ---------
            let gender = null;
            if (/male/i.test(joinedText)) gender = "Male";
            else if (/female/i.test(joinedText)) gender = "Female";
            else if (/transgender/i.test(joinedText)) gender = "Transgender";

            // --------- Name Extraction (Strict, robust) ---------
            let name = null;

            for (let line of lines) {
                // Clean line: remove non-letter chars, trim spaces
                let cleaned = line.replace(/[^A-Za-z\s]/g, ' ').replace(/\s{2,}/g, ' ').trim();
                if (cleaned.length < 3) continue;
                if (/\b(DOB|Date|Gender|MALE|FEMALE|proof|authentication|Aadhaar)\b/i.test(cleaned)) continue;

                // Look for proper name: two or more words starting with capital, min 3 letters each
                let match = cleaned.match(/\b([A-Z][a-z]{2,}(?:\s[A-Z][a-z]{2,})+)\b/);
                if (match) {
                    name = match[0].trim();
                    break;
                }

                // Fallback: first capitalized word ≥3 letters
                let fallback = cleaned.match(/\b[A-Z][a-z]{2,}\b/);
                if (fallback) {
                    name = cleaned.substring(cleaned.indexOf(fallback[0])).trim();
                    break;
                }
            }

            return {
                name,
                dob,
                gender,
                aadhar
            };
        }

        // -----------------------
        // Webcam interface
        // -----------------------
        const openCameraButton = document.getElementById('openCameraButton');
        const webcam = document.getElementById('webcam');
        const captureCanvas = document.getElementById('captureCanvas');
        const captureButton = document.getElementById('captureButton');
        const progressBarContainer = document.getElementById('progressBarContainer');
        const progressBar = document.getElementById('progressBar');

        // Access the webcam
        async function startWebcam() {
            try {
                const isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
                const videoConstraints = isMobile ?
                    {
                        facingMode: {
                            exact: "environment"
                        }
                    } // Use back camera for mobile/tablet
                    :
                    true; // Use any available camera for laptops/desktops

                const stream = await navigator.mediaDevices.getUserMedia({
                    video: videoConstraints
                });
                webcam.srcObject = stream;
            } catch (err) {
                console.error('Error accessing webcam:', err);
            }
        }

        // Open camera and extract data
        async function openCameraAndExtractData() {
            try {
                // Try to open the back camera first
                const stream = await navigator.mediaDevices.getUserMedia({
                    video: {
                        facingMode: {
                            exact: "environment"
                        }
                    }
                });
                processCameraStream(stream);
            } catch (err) {
                if (err.name === "OverconstrainedError" || err.name === "NotFoundError") {
                    console.warn("Back camera not available. Falling back to any available camera.");
                    // Fallback to any available camera
                    const stream = await navigator.mediaDevices.getUserMedia({
                        video: true
                    });
                    processCameraStream(stream);
                } else {
                    console.error("Error accessing camera or processing image:", err);
                }
            }
        }

        function processCameraStream(stream) {
            webcam.srcObject = stream;
            webcam.style.display = 'block';
            captureButton.style.display = 'block';

            captureButton.onclick = async () => {
                const canvas = captureCanvas;
                canvas.width = webcam.videoWidth;
                canvas.height = webcam.videoHeight;
                const ctx = canvas.getContext('2d');
                ctx.drawImage(webcam, 0, 0, canvas.width, canvas.height);

                // Show progress bar
                progressBarContainer.style.display = 'block';
                progressBar.style.width = '0%';
                progressBar.textContent = '0%';

                // Process the captured image
                try {
                    const {
                        data
                    } = await Tesseract.recognize(canvas, 'eng+hin', {
                        logger: m => {
                            if (m.status === 'recognizing text') {
                                const progress = Math.round(m.progress * 100);
                                progressBar.style.width = `${progress}%`;
                                progressBar.textContent = `${progress}%`;
                            }
                        }
                    });
                    const result = parseAadhaarFrontOCR(data.text);
                    console.log(result)

                    // Fill the input fields with extracted data
                    nameInput.value = result.name || '';
                    genderInput.value = result.gender || '';
                    aadharInput.value = result.aadhar || '';
                    dobInput.value = result.dob || '';
                } catch (err) {
                    console.error("Error processing image:", err);
                } finally {
                    // Stop the camera after processing
                    stream.getTracks().forEach(track => track.stop());
                    webcam.style.display = 'none';
                    captureButton.style.display = 'none';
                    progressBarContainer.style.display = 'none';
                }
            };
        }

        openCameraButton.addEventListener('click', openCameraAndExtractData);

        // Start the webcam on page load
        startWebcam();
    </script>
</body>

</html>
