<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aadhaar Auto-Scan</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://docs.opencv.org/4.8.0/opencv.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/tesseract.js@5.0.3/dist/tesseract.min.js"></script>

    <style>
        body {
            min-height: 100vh;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
        }

        #cameraOverlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: black;
            z-index: 1000;
        }

        #videoElement {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .guide-overlay {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 85%;
            max-width: 450px;
            aspect-ratio: 1.586;
            border: 4px dashed #00ff00;
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(0, 255, 0, 0.6);
            background: rgba(0, 255, 0, 0.1);
        }

        .guide-overlay::before {
            content: 'Align Aadhaar Card Here';
            position: absolute;
            top: -35px;
            left: 50%;
            transform: translateX(-50%);
            background: rgba(0, 255, 0, 0.9);
            color: white;
            padding: 5px 15px;
            border-radius: 15px;
            font-size: 12px;
            font-weight: bold;
            white-space: nowrap;
        }

        .guide-overlay::after {
            content: 'Only this area will be scanned';
            position: absolute;
            bottom: -35px;
            left: 50%;
            transform: translateX(-50%);
            background: rgba(0, 0, 0, 0.8);
            color: white;
            padding: 3px 10px;
            border-radius: 10px;
            font-size: 10px;
            white-space: nowrap;
        }

        .status-message {
            position: absolute;
            bottom: 100px;
            left: 50%;
            transform: translateX(-50%);
            background: rgba(0, 0, 0, 0.9);
            color: white;
            padding: 15px 25px;
            border-radius: 25px;
            font-size: 16px;
            text-align: center;
            max-width: 80%;
        }

        .stage-indicator {
            z-index: 1001;
        }

        #captureBtn {
            width: 200px;
            height: 60px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
            z-index: 1001;
        }

        .processing-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.8);
            color: white;
            display: none;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            z-index: 1002;
        }

        .spinner-border {
            width: 3rem;
            height: 3rem;
        }

        #captureCanvas,
        #processCanvas {
            display: none;
        }

        @keyframes pulse {

            0%,
            100% {
                transform: scale(1);
            }

            50% {
                transform: scale(1.1);
            }
        }
    </style>
</head>

<body class="bg-light">
    <div class="container text-center py-5">
        <h1 class="mb-3">Aadhaar Auto-Scan</h1>
        {{-- <div class="alert alert-danger mx-auto" style="max-width:600px;">
            <strong>⚠️ Privacy Notice:</strong> Client-side processing only. Obtain consent before scanning. Comply with Aadhaar Act 2016.
        </div> --}}
        <button id="openCameraBtn" class="btn btn-primary btn-lg">📷 Open Camera</button>
    </div>

    <div id="cameraOverlay">
        <video id="videoElement" autoplay playsinline></video>
        <canvas id="captureCanvas"></canvas>
        <canvas id="processCanvas"></canvas>
        <div class="guide-overlay"></div>
        <div class="flash-effect" id="flashEffect"></div>

        <div class="processing-overlay" id="processingOverlay">
            <div class="spinner-border text-light mb-3" role="status"></div>
            <h4 id="processingText">Processing image...</h4>
            <p id="processingSubtext">Extracting text from captured image</p>
        </div>

        <button id="closeCameraBtn" class="btn btn-danger position-absolute top-0 start-0 m-3">✕ Close</button>
        <button id="captureBtn" class="btn btn-success position-absolute bottom-0 start-50 translate-middle-x mb-4 btn-lg">
            📸 Capture Image
        </button>
        <div class="status-message" id="statusMessage">Position Aadhaar card in the frame • Tap Capture when ready</div>
        <div class="stage-indicator position-absolute top-0 start-50 translate-middle-x mt-3">
            <span class="badge bg-primary fs-6 px-3 py-2" id="stageIndicator">FRONT SIDE</span>
        </div>
    </div>

    <div class="modal fade" id="resultModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Scan Results</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-2">
                        <label class="form-label fw-bold">Aadhaar Number</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="aadhaarNumber" readonly>
                            <button class="btn btn-outline-secondary" onclick="copyField('aadhaarNumber')">Copy</button>
                        </div>
                    </div>
                    <div class="mb-2">
                        <label class="form-label fw-bold">Full Name</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="fullName" readonly>
                            <button class="btn btn-outline-secondary" onclick="copyField('fullName')">Copy</button>
                        </div>
                    </div>
                    <div class="mb-2">
                        <label class="form-label fw-bold">Date of Birth</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="dateOfBirth" readonly>
                            <button class="btn btn-outline-secondary" onclick="copyField('dateOfBirth')">Copy</button>
                        </div>
                    </div>
                    <div class="mb-2">
                        <label class="form-label fw-bold">Gender</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="gender" readonly>
                            <button class="btn btn-outline-secondary" onclick="copyField('gender')">Copy</button>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Address</label>
                        <div class="input-group">
                            <textarea class="form-control" id="address" rows="3" readonly></textarea>
                            <button class="btn btn-outline-secondary" onclick="copyField('address')">Copy</button>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-6">
                            <img id="frontThumbnail" class="img-fluid border rounded" alt="Front">
                            <p class="text-center small mt-1">Front Side</p>
                        </div>
                        <div class="col-6">
                            <img id="backThumbnail" class="img-fluid border rounded" alt="Back">
                            <p class="text-center small mt-1">Back Side</p>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" onclick="downloadJSON()">Download JSON</button>
                    <button class="btn btn-secondary" onclick="scanAgain()">Scan Again</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        let stream = null;
        let worker = null;
        let currentStage = 'front'; // 'front' or 'back'
        let capturedImages = {
            front: null,
            back: null
        };

        let capturedData = {
            aadhaarNumber: '',
            name: '',
            gender: '',
            dateOfBirth: '',
            address: '',
            frontImage: '',
            backImage: ''
        };

        $('#openCameraBtn').click(async function() {
            try {
                $(this).prop('disabled', true).text('Initializing...');

                updateStatus('Starting camera...');
                await initCamera();

                updateStatus('Initializing OCR engine...');
                await initTesseract();

                $('#cameraOverlay').show();
                startCapture();
            } catch (err) {
                alert('Error: ' + err.message);
                console.error('Initialization error:', err);
                $(this).prop('disabled', false).text('📷 Open Camera');
                await cleanup();
            }
        });

        $('#closeCameraBtn').click(async function() {
            await stopCamera();
        });

        $('#captureBtn').click(async function() {
            await captureCurrentImage();
        });

        function updateStatus(msg) {
            $('#statusMessage').text(msg);
        }

        function updateStageIndicator() {
            const indicator = $('#stageIndicator');
            if (currentStage === 'front') {
                indicator.text('FRONT SIDE').removeClass('bg-warning').addClass('bg-primary');
            } else {
                indicator.text('BACK SIDE').removeClass('bg-primary').addClass('bg-warning');
            }
        }

        async function initCamera() {
            try {
                const isMobile = /Mobi|Android/i.test(navigator.userAgent);
                const constraints = {
                    video: {
                        facingMode: isMobile ? { ideal: 'environment' } : 'user',
                        width: { ideal: 1280 },
                        height: { ideal: 720 }
                    }
                };

                stream = await navigator.mediaDevices.getUserMedia(constraints);
                const video = $('#videoElement')[0];
                video.srcObject = stream;

                return new Promise((resolve, reject) => {
                    video.onloadedmetadata = resolve;
                    video.onerror = reject;
                });
            } catch (error) {
                console.error('Camera initialization error:', error);
                throw new Error('Failed to access camera. Please ensure camera permissions are granted.');
            }
        }

        async function initTesseract() {
            try {
                worker = await Tesseract.createWorker('eng', 1, {
                    logger: m => console.log('OCR:', m.status, m.progress)
                });

                await worker.setParameters({
                    tessedit_pageseg_mode: Tesseract.PSM.SINGLE_BLOCK,
                    preserve_interword_spaces: '1',
                    tessedit_char_blacklist: '|'
                });
            } catch (error) {
                console.error('Tesseract initialization error:', error);
                throw new Error('Failed to initialize OCR engine');
            }
        }

        function startCapture() {
            currentStage = 'front';
            capturedImages = {
                front: null,
                back: null
            };
            capturedData = {
                aadhaarNumber: '',
                name: '',
                gender: '',
                dateOfBirth: '',
                address: '',
                frontImage: '',
                backImage: ''
            };

            updateStageIndicator();
            updateStatus('Align Aadhaar FRONT side within green rectangle • Tap Capture when ready');
        }

        async function captureCurrentImage() {
            try {
                $('#captureBtn').prop('disabled', true);

                // Flash effect
                flashEffect();

                // Capture only the area within the green rectangle guide
                const video = $('#videoElement')[0];
                const canvas = $('#captureCanvas')[0];
                const ctx = canvas.getContext('2d');

                // Calculate the guide overlay dimensions and position
                const videoRect = video.getBoundingClientRect();
                const guideOverlay = $('.guide-overlay')[0];
                const guideRect = guideOverlay.getBoundingClientRect();

                // Calculate relative positions within the video
                const scaleX = video.videoWidth / videoRect.width;
                const scaleY = video.videoHeight / videoRect.height;

                const cropX = (guideRect.left - videoRect.left) * scaleX;
                const cropY = (guideRect.top - videoRect.top) * scaleY;
                const cropWidth = guideRect.width * scaleX;
                const cropHeight = guideRect.height * scaleY;

                // Set canvas size to match the cropped area
                canvas.width = cropWidth;
                canvas.height = cropHeight;

                // Draw only the cropped portion of the video
                ctx.drawImage(
                    video,
                    cropX, cropY, cropWidth, cropHeight, // Source rectangle (crop area)
                    0, 0, cropWidth, cropHeight // Destination rectangle (full canvas)
                );

                // Store the captured image
                const imageDataUrl = canvas.toDataURL('image/jpeg', 0.95);
                capturedImages[currentStage] = imageDataUrl;

                console.log(`Captured ${currentStage} side - Crop area:`, {
                    x: Math.round(cropX),
                    y: Math.round(cropY),
                    width: Math.round(cropWidth),
                    height: Math.round(cropHeight)
                });

                // Show processing overlay
                $('#processingOverlay').show();
                $('#processingText').text(`Processing ${currentStage} side...`);
                $('#processingSubtext').text('Extracting text from captured card area');

                // Process the captured image
                await processImage(canvas, currentStage);

                // Hide processing overlay
                $('#processingOverlay').hide();

                // Move to next stage or show results
                if (currentStage === 'front') {
                    currentStage = 'back';
                    updateStageIndicator();
                    updateStatus('Perfect! Now align BACK side within green rectangle • Tap Capture');
                    $('#captureBtn').prop('disabled', false);
                } else {
                    // Both sides captured, show results
                    capturedData.frontImage = capturedImages.front;
                    capturedData.backImage = capturedImages.back;
                    await stopCamera();
                    showResults();
                }

            } catch (error) {
                console.error('Capture error:', error);
                $('#processingOverlay').hide();
                alert('Error processing image: ' + error.message);
                $('#captureBtn').prop('disabled', false);
            }
        }

        async function processImage(canvas, side) {
            try {
                // Enhanced preprocessing
                const processedCanvas = await enhanceImage(canvas);

                // OCR Recognition
                $('#processingSubtext').text('Running OCR analysis...');
                const {
                    data: {
                        text,
                        confidence
                    }
                } = await worker.recognize(processedCanvas);

                console.log(`${side.toUpperCase()} OCR Text:`, text);
                console.log(`${side.toUpperCase()} OCR Confidence:`, confidence);

                // Extract data based on side
                if (side === 'front') {
                    const frontData = extractFrontData(text, confidence);
                    capturedData.aadhaarNumber = frontData.aadhaar || '';
                    capturedData.name = frontData.name || '';
                    capturedData.gender = frontData.gender || '';
                    capturedData.dateOfBirth = frontData.dob || '';

                    console.log('Extracted Front Data:', frontData);
                } else {
                    const backData = extractBackData(text, confidence);
                    capturedData.address = backData.address || '';

                    console.log('Extracted Back Data:', backData);
                }

            } catch (error) {
                console.error(`Error processing ${side} image:`, error);
                throw error;
            }
        }

        async function enhanceImage(sourceCanvas) {
            const canvas = $('#processCanvas')[0];
            const ctx = canvas.getContext('2d');

            canvas.width = sourceCanvas.width;
            canvas.height = sourceCanvas.height;

            // Copy original image
            ctx.drawImage(sourceCanvas, 0, 0);

            // Get image data for processing
            const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
            const data = imageData.data;

            // Apply multiple enhancement techniques for better OCR

            // Step 1: Convert to grayscale and enhance contrast
            for (let i = 0; i < data.length; i += 4) {
                const gray = data[i] * 0.299 + data[i + 1] * 0.587 + data[i + 2] * 0.114;

                // Enhanced contrast with better thresholding for text
                let enhanced;
                if (gray > 160) {
                    enhanced = 255; // White background
                } else if (gray < 80) {
                    enhanced = 0; // Black text
                } else {
                    // Adaptive enhancement for middle tones
                    enhanced = gray > 120 ? 220 : 35;
                }

                data[i] = enhanced; // Red
                data[i + 1] = enhanced; // Green
                data[i + 2] = enhanced; // Blue
                // Alpha channel remains unchanged
            }

            // Step 2: Apply noise reduction
            ctx.putImageData(imageData, 0, 0);

            // Step 3: Slight blur to smooth edges (helps with OCR)
            ctx.filter = 'blur(0.5px)';
            ctx.drawImage(canvas, 0, 0);
            ctx.filter = 'none';

            // Step 4: Final sharpening
            const finalImageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
            const finalData = finalImageData.data;

            // Simple sharpening filter
            for (let i = 0; i < finalData.length; i += 4) {
                const gray = finalData[i];
                // Enhance black text and white background contrast
                const sharpened = gray < 128 ? Math.max(0, gray - 10) : Math.min(255, gray + 10);
                finalData[i] = sharpened;
                finalData[i + 1] = sharpened;
                finalData[i + 2] = sharpened;
            }

            ctx.putImageData(finalImageData, 0, 0);

            console.log('Enhanced image for OCR processing');
            return canvas;
        }

        function extractFrontData(text, confidence) {
            console.log('Processing front text:', text);

            const cleanText = text.replace(/\s+/g, ' ').trim();
            let result = {};

            // Aadhaar number detection
            const aadhaarPatterns = [
                /\b\d{4}\s*\d{4}\s*\d{4}\b/g,
                /\b\d{12}\b/g,
                /\b\d{4}[-\s]*\d{4}[-\s]*\d{4}\b/g
            ];

            for (let pattern of aadhaarPatterns) {
                const matches = cleanText.match(pattern);
                if (matches) {
                    for (let match of matches) {
                        const digits = match.replace(/\D/g, '');
                        if (digits.length === 12) {
                            result.aadhaar = digits;
                            break;
                        }
                    }
                    if (result.aadhaar) break;
                }
            }

            // Name detection - multiple strategies
            // Strategy 1: Name after Hindi text
            let nameMatch = cleanText.match(/[^\x00-\x7F]+\s+([A-Z][a-z]+(?:\s+[A-Z][a-z]+)*)/);
            if (nameMatch && nameMatch[1]) {
                result.name = nameMatch[1];
            }

            // Strategy 2: Capitalized names (filter common words)
            if (!result.name) {
                const capitalizedNames = cleanText.match(/\b([A-Z][a-z]+(?:\s+[A-Z][a-z]+)+)\b/g);
                if (capitalizedNames) {
                    const filteredNames = capitalizedNames.filter(name =>
                        !name.includes('Government') &&
                        !name.includes('India') &&
                        !name.includes('Date') &&
                        !name.includes('Issue') &&
                        name.split(' ').length >= 2 &&
                        name.length > 5
                    );
                    if (filteredNames.length > 0) {
                        result.name = filteredNames[0];
                    }
                }
            }

            // Gender detection
            const genderMatch = cleanText.match(/\b(MALE|FEMALE|Male|Female)\b/i);
            if (genderMatch) {
                result.gender = genderMatch[0].toUpperCase();
            }

            // DOB detection
            const dobMatch = cleanText.match(/DOB[:\s]*(\d{1,2}\/\d{1,2}\/\d{4})/i) ||
                cleanText.match(/(\d{1,2}\/\d{1,2}\/\d{4})/);
            if (dobMatch) {
                result.dob = dobMatch[1] || dobMatch[0];
            }

            return result;
        }

        function extractBackData(text, confidence) {
            console.log('Processing back text:', text);

            const cleanText = text.replace(/\s+/g, ' ').trim();
            let result = {};

            // PIN code detection
            const pinMatch = cleanText.match(/\b(\d{6})\b/);
            if (pinMatch) {
                result.pin = pinMatch[1];
            }

            // Address extraction - multiple strategies
            let englishAddress = '';

            // Strategy 1: Look for "Address:" section
            const addressPattern1 = cleanText.match(/Address:\s*([A-Za-z0-9\s,.\-\/]+?)(?=\d{4}|$)/i);
            if (addressPattern1) {
                englishAddress = addressPattern1[1].trim();
            }

            // Strategy 2: S/O pattern
            if (!englishAddress) {
                const soPattern = cleanText.match(/(S\/O[^,]+(?:,[^,]+)*)/i);
                if (soPattern) {
                    englishAddress = soPattern[1].trim();
                }
            }

            // Strategy 3: Extract between Address: and numbers
            if (!englishAddress) {
                const addressPattern2 = cleanText.match(/Address:\s*(.+?)(?=\d{4})/i);
                if (addressPattern2) {
                    const rawAddress = addressPattern2[1];
                    const englishParts = rawAddress.split(/[^\x00-\x7F]+/).filter(part =>
                        part.trim().length > 0 && /[A-Za-z]/.test(part)
                    );
                    englishAddress = englishParts.join(' ').trim();
                }
            }

            // Clean up address
            if (englishAddress) {
                englishAddress = englishAddress
                    .replace(/\s+/g, ' ')
                    .replace(/[^\x00-\x7F,.\-\/\s\d]/g, '')
                    .replace(/\s*,\s*/g, ', ')
                    .trim();
                result.address = englishAddress;
            }

            return result;
        }

        function flashEffect() {
            $('#flashEffect').addClass('active');
            setTimeout(() => $('#flashEffect').removeClass('active'), 300);
        }

        async function cleanup() {
            if (stream) {
                stream.getTracks().forEach(t => t.stop());
                stream = null;
            }
            if (worker) {
                try {
                    await worker.terminate();
                } catch (e) {
                    console.warn('Worker termination warning:', e);
                }
                worker = null;
            }
        }

        async function stopCamera() {
            await cleanup();
            $('#cameraOverlay').hide();
            $('#processingOverlay').hide();
            $('#openCameraBtn').prop('disabled', false).text('📷 Open Camera');
        }

        function showResults() {
            $('#aadhaarNumber').val(capturedData.aadhaarNumber || 'Not detected');
            $('#fullName').val(capturedData.name || 'Not detected');
            $('#dateOfBirth').val(capturedData.dateOfBirth || 'Not detected');
            $('#gender').val(capturedData.gender || 'Not detected');
            $('#address').val(capturedData.address || 'Not detected');
            $('#frontThumbnail').attr('src', capturedData.frontImage);
            $('#backThumbnail').attr('src', capturedData.backImage);

            new bootstrap.Modal($('#resultModal')[0]).show();
        }

        function copyField(fieldId) {
            const field = $('#' + fieldId);
            const text = field.val();
            navigator.clipboard.writeText(text).then(() => {
                alert('Copied!');
            });
        }

        function downloadJSON() {
            const json = JSON.stringify(capturedData, null, 2);
            const blob = new Blob([json], {
                type: 'application/json'
            });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = 'aadhaar-scan-' + Date.now() + '.json';
            a.click();
            URL.revokeObjectURL(url);
        }

        function scanAgain() {
            $('#resultModal').modal('hide');
            $('#openCameraBtn').click();
        }

        // Test function with your sample dat

        // Debug function to show captured area
        window.debugCaptureArea = function() {
            if (!$('#cameraOverlay').is(':visible')) {
                console.log('Camera is not open');
                return;
            }

            const video = $('#videoElement')[0];
            const videoRect = video.getBoundingClientRect();
            const guideOverlay = $('.guide-overlay')[0];
            const guideRect = guideOverlay.getBoundingClientRect();

            const scaleX = video.videoWidth / videoRect.width;
            const scaleY = video.videoHeight / videoRect.height;

            const cropX = (guideRect.left - videoRect.left) * scaleX;
            const cropY = (guideRect.top - videoRect.top) * scaleY;
            const cropWidth = guideRect.width * scaleX;
            const cropHeight = guideRect.height * scaleY;

            console.log('Debug Capture Area:', {
                videoSize: `${video.videoWidth}x${video.videoHeight}`,
                cropArea: `${Math.round(cropX)}, ${Math.round(cropY)}, ${Math.round(cropWidth)}x${Math.round(cropHeight)}`,
                cropPercentage: `${Math.round((cropWidth * cropHeight) / (video.videoWidth * video.videoHeight) * 100)}% of video`
            });
        };

        $(document).keydown(async function(e) {
            if (e.key === 'Escape') {
                if ($('#cameraOverlay').is(':visible')) {
                    await stopCamera();
                }
            }
            // Debug capture area with 'D' key
            if (e.key.toLowerCase() === 'd' && $('#cameraOverlay').is(':visible')) {
                window.debugCaptureArea();
            }
            // Space bar to capture when camera is open
            if (e.key === ' ' && $('#cameraOverlay').is(':visible') && !$('#captureBtn').prop('disabled')) {
                e.preventDefault();
                await captureCurrentImage();
            }
        });
    </script>
</body>

</html>
