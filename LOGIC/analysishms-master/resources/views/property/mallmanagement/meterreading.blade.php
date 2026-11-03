@extends('property.layouts.main')
@section('main-container')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        /* Fallback for Bootstrap's .btn-check (5.2+ feature) — master
               layout's Bootstrap version doesn't hide/style it natively, so
               the filter tabs were rendering as plain radio buttons. */
        .btn-check {
            position: absolute;
            clip: rect(0, 0, 0, 0);
            pointer-events: none;
        }

        .btn-check:checked+label {
            color: #fff;
            background-color: #0d6efd;
            border-color: #0d6efd;
        }

        /* Fallback for .text-bg-success / .text-bg-warning (Bootstrap 5.3
               utility) — colors the status badges regardless of the master
               layout's Bootstrap version. */
        .badge-done {
            background-color: #198754;
            color: #fff;
        }

        .badge-pending {
            background-color: #ffc107;
            color: #212529;
        }

        #meterReadingApp {
            background-color: #f4f6f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .app-title {
            font-size: 1.1rem;
            font-weight: 700;
            letter-spacing: 0.5px;
        }

        .photo-upload-box {
            border: 2px dashed #cbd5e0;
            background-color: #f8fafc;
            border-radius: 10px;
            height: 110px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            color: #4a5568;
            transition: background 0.2s ease;
        }

        .photo-upload-box:hover {
            background-color: #edf2f7;
        }

        .preview-img {
            max-height: 100px;
            width: 100%;
            object-fit: cover;
            border-radius: 8px;
        }

        .layout-screen {
            display: none;
        }

        .layout-screen.active {
            display: block;
        }

        .reading-locked-banner {
            background-color: #fff8e1;
            border: 1px solid #ffe082;
            color: #8a6d00;
        }
    </style>

    <div id="meterReadingApp" data-propertyid="{{ $propertyid }}" data-username="{{ $username }}"
        data-todaydate="{{ $todaydate }}">

        <div class="container py-3">

            <!-- ================= LAYOUT 1: SHOP LIST ================= -->
            <div id="layout1" class="layout-screen active">
                <h5 class="fw-bold text-dark mb-1">Daily Meter Reading</h5>
                <p class="text-muted small mb-3"><i class="bi bi-calendar-event me-1"></i>
                    {{ \Carbon\Carbon::parse($todaydate)->format('D, d M Y') }}</p>

                <div class="row g-2 mb-3">
                    <div class="col">
                        <div class="input-group">
                            <span class="input-group-text bg-white border-end-0"><i
                                    class="bi bi-search text-muted"></i></span>
                            <input type="text" id="searchInput" class="form-control border-start-0 ps-0"
                                placeholder="Search Shop No. / Tenant Name...">
                        </div>
                    </div>
                    <div class="col-auto">
                        <button class="btn btn-outline-secondary" id="refreshBtn"><i
                                class="bi bi-arrow-clockwise"></i></button>
                    </div>
                </div>

                <div class="btn-group w-100 mb-3" role="group">
                    <input type="radio" class="btn-check" name="filterTab" id="tabAll" value="all" checked>
                    <label class="btn btn-outline-primary btn-sm py-2" for="tabAll">All (<span
                            id="countAll">0</span>)</label>

                    <input type="radio" class="btn-check" name="filterTab" id="tabPending" value="pending">
                    <label class="btn btn-outline-primary btn-sm py-2" for="tabPending">Pending (<span
                            id="countPending">0</span>)</label>

                    <input type="radio" class="btn-check" name="filterTab" id="tabCompleted" value="completed">
                    <label class="btn btn-outline-primary btn-sm py-2" for="tabCompleted">Completed (<span
                            id="countCompleted">0</span>)</label>
                </div>

                <div id="shopListContainer">
                    <div class="text-center text-muted py-4" id="shopListLoading">Loading shops...</div>
                </div>
            </div>


            <!-- ================= LAYOUT 2: READING ENTRY ================= -->
            <div id="layout2" class="layout-screen">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <button class="btn btn-sm btn-outline-secondary" onclick="showLayout(1)">
                        <i class="bi bi-chevron-left"></i> Back
                    </button>
                    <h6 class="fw-bold mb-0">Meter Reading</h6>
                    <span class="badge bg-secondary" id="entryIndexBadge">- / -</span>
                </div>

                <div class="card border-0 bg-white shadow-sm mb-3">
                    <div class="card-body p-3">
                        <div class="d-flex justify-content-between align-items-start">
                            <h4 class="fw-bold mb-0" id="entryShopNo">-</h4>
                            <span class="badge bg-success" id="entryStatusBadge">OPEN</span>
                        </div>
                        <div class="text-secondary small fw-semibold" id="entryTenantName">-</div>
                        <div class="text-muted small" id="entryShopDetails">-</div>
                    </div>
                </div>

                <div class="p-2 mb-3 rounded d-flex align-items-center gap-2"
                    style="background-color: #ebf8ff; border: 1px solid #bee3f8; color: #2b6cb0;">
                    <i class="bi bi-lightning-charge-fill text-warning fs-5"></i>
                    <span class="fw-bold small">Current Service: Electricity (<span id="entryMeterNo">-</span>)</span>
                </div>

                <div id="lockedBanner" class="p-2 mb-3 rounded reading-locked-banner d-none">
                    <i class="bi bi-lock-fill me-1"></i>
                    <span class="small fw-semibold">Reading for this date is already recorded. It can be edited starting
                        tomorrow.</span>
                </div>

                <form id="meterForm" onsubmit="event.preventDefault();">
                    <input type="hidden" id="entryShopId">

                    <div class="mb-3">
                        <label class="form-label text-muted small fw-bold mb-1">Previous Reading</label>
                        <input type="text" id="prevReading" class="form-control bg-light" value="0.00" readonly>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-danger small fw-bold mb-1">Current Reading *</label>
                        <input type="text" inputmode="decimal" pattern="[0-9]*[.,]?[0-9]*" id="currReading"
                            class="form-control form-control-lg border-primary fw-bold" placeholder="Enter Reading"
                            oninput="calculateConsumption()" autocomplete="off">
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-muted small fw-bold mb-1">Consumption</label>
                        <input type="text" id="consumption" class="form-control bg-light fw-bold text-success"
                            value="0.00" readonly>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-muted small fw-bold mb-1">Reading Date</label>
                        <input type="date" id="readingDate" class="form-control" value="{{ $todaydate }}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-muted small fw-bold mb-1">Meter Photo (Optional)</label>
                        <input type="file" id="cameraInput" accept="image/*" capture="environment" class="d-none"
                            onchange="handlePhotoUpload(event)">

                        <div class="photo-upload-box" id="uploadBox"
                            onclick="document.getElementById('cameraInput').click();">
                            <i class="bi bi-camera fs-2 text-primary"></i>
                            <span class="small fw-semibold mt-1">Capture / Upload Photo</span>
                        </div>

                        <div id="photoPreviewContainer" class="position-relative d-none mt-2">
                            <img id="photoPreview" class="preview-img" src="" alt="Meter Photo">
                            <button type="button"
                                class="btn btn-danger btn-sm rounded-circle position-absolute top-0 end-0 m-1"
                                onclick="removePhoto()">
                                <i class="bi bi-x"></i>
                            </button>
                            <span class="badge bg-dark position-absolute bottom-0 start-0 m-1" id="photoSizeLabel"></span>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-muted small fw-bold mb-1">Remarks (Optional)</label>
                        <textarea class="form-control" id="remarks" rows="2" placeholder="Normal reading..."></textarea>
                    </div>

                    <button type="button" class="btn btn-primary btn-lg w-100 fw-bold mb-3" id="saveBtn"
                        onclick="saveAndNext()">
                        Save & Next Shop <i class="bi bi-arrow-right ms-1"></i>
                    </button>

                    <div class="row g-2">
                        <div class="col-6">
                            <button type="button" class="btn btn-outline-secondary w-100 fw-semibold"
                                onclick="showLayout(1)">
                                Back to List
                            </button>
                        </div>
                        <div class="col-6">
                            <button type="button" class="btn btn-danger w-100 fw-semibold" onclick="exitApp()">
                                Exit
                            </button>
                        </div>
                    </div>
                </form>
            </div>

        </div>

        <!-- Restored: its absence broke the master layout's own mobile
                 drawer/sidebar JS (which depends on Bootstrap's bundle), leaving
                 a stuck overlay that blocked all touch/typing on mobile —
                 including the search box, unrelated to anything on this page.
                 Loading Bootstrap JS twice is harmless (unlike duplicate CSS). -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            const APP_ROOT = document.getElementById('meterReadingApp');
            const PROPERTY_ID = APP_ROOT.dataset.propertyid;
            const TODAYDATE = APP_ROOT.dataset.todaydate;
            const CSRF_TOKEN = "{{ csrf_token() }}";

            const routes = {
                shops: "{{ route('meterreading.shops') }}",
                shopDetail: "{{ route('meterreading.shopDetail') }}",
                save: "{{ route('meterreading.save') }}",
            };

            let currentShops = [];
            let currentIndex = -1;
            let selectedPhotoFile = null;
            let hasPreviousReading = false;

            function showLayout(n) {
                document.querySelectorAll('.layout-screen').forEach(el => el.classList.remove('active'));
                document.getElementById('layout' + n).classList.add('active');
                window.scrollTo(0, 0);
                if (n === 1) loadShopList();
            }

            function currentFilter() {
                return document.querySelector('input[name="filterTab"]:checked').value;
            }

            async function loadShopList() {
                const search = document.getElementById('searchInput').value.trim();
                const params = new URLSearchParams({
                    date: TODAYDATE,
                    filter: currentFilter(),
                    search
                });

                const res = await fetch(`${routes.shops}?${params.toString()}`, {
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest'
                    }
                });
                const data = await res.json();

                currentShops = data.shops;
                document.getElementById('countAll').innerText = data.counts.all;
                document.getElementById('countPending').innerText = data.counts.pending;
                document.getElementById('countCompleted').innerText = data.counts.completed;

                const container = document.getElementById('shopListContainer');
                if (!data.shops.length) {
                    container.innerHTML = '<div class="text-center text-muted py-4">No shops found.</div>';
                    return;
                }

                container.innerHTML = data.shops.map((shop, idx) => `
        <div class="card shadow-sm border mb-2" style="cursor:pointer;" onclick="openReadingEntry(${idx})">
          <div class="card-body p-3 d-flex justify-content-between align-items-center">
            <div>
              <div class="fw-bold fs-6 text-dark">${shop.shopname ?? ''}</div>
              <div class="small text-secondary">${shop.floorname ?? ''}</div>
              <div class="small text-muted">${shop.chargeablearea ?? ''} ${shop.areaunit ?? ''}</div>
            </div>
            <div class="d-flex align-items-center gap-2">
              <span class="badge rounded-pill ${shop.status === 'completed' ? 'badge-done' : 'badge-pending'}">
                <i class="bi bi-lightning-charge-fill"></i> ${shop.status === 'completed' ? 'Done' : 'Electricity'}
              </span>
              <i class="bi bi-chevron-right text-muted"></i>
            </div>
          </div>
        </div>
      `).join('');
            }

            document.getElementById('searchInput').addEventListener('input', debounce(loadShopList, 300));
            document.querySelectorAll('input[name="filterTab"]').forEach(el => el.addEventListener('change', loadShopList));
            document.getElementById('refreshBtn').addEventListener('click', loadShopList);

            function debounce(fn, wait) {
                let t;
                return (...args) => {
                    clearTimeout(t);
                    t = setTimeout(() => fn(...args), wait);
                };
            }

            async function openReadingEntry(idx) {
                currentIndex = idx;
                const shop = currentShops[idx];

                document.getElementById('entryIndexBadge').innerText = `${idx + 1} / ${currentShops.length}`;
                document.getElementById('entryShopNo').innerText = shop.shopname ?? '';
                document.getElementById('entryTenantName').innerText = shop.floorname ?? '';
                document.getElementById('entryShopId').value = shop.shopid;
                document.getElementById('entryMeterNo').innerText = shop.electricitymeterno ?? '-';

                document.getElementById('currReading').value = '';
                document.getElementById('currReading').readOnly = false;
                document.getElementById('remarks').value = '';
                document.getElementById('remarks').readOnly = false;
                document.getElementById('consumption').value = '0.00';
                document.getElementById('readingDate').value = TODAYDATE;
                document.getElementById('saveBtn').classList.remove('d-none');
                document.getElementById('lockedBanner').classList.add('d-none');
                document.getElementById('uploadBox').style.pointerEvents = '';
                document.getElementById('uploadBox').style.opacity = '';
                hasPreviousReading = false;
                removePhoto();

                const params = new URLSearchParams({
                    shopid: shop.shopid,
                    date: TODAYDATE
                });

                let data;
                try {
                    const res = await fetch(`${routes.shopDetail}?${params.toString()}`, {
                        headers: {
                            'X-Requested-With': 'XMLHttpRequest'
                        }
                    });
                    data = await res.json();

                    if (!res.ok || data.success === false) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Could Not Load Shop',
                            text: data.message || 'Could not load this shop\'s details.'
                        });
                        return;
                    }
                } catch (e) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Network Error',
                        text: 'Could not reach the server. Please try again.'
                    });
                    return;
                }

                document.getElementById('entryShopDetails').innerText =
                    `${data.shop.chargeablearea ?? ''} ${data.shop.areaunit ?? ''}`;
                document.getElementById('prevReading').value = parseFloat(data.previous_reading).toFixed(2);
                hasPreviousReading = !!data.has_previous_reading;

                const currReadingInput = document.getElementById('currReading');
                const remarksInput = document.getElementById('remarks');
                const saveBtn = document.getElementById('saveBtn');
                const lockedBanner = document.getElementById('lockedBanner');
                const uploadBox = document.getElementById('uploadBox');

                if (data.existing) {
                    // Already saved for this date — lock it down. Editable
                    // again only once "today" rolls over to the next date.
                    currReadingInput.value = data.existing.current_reading;
                    document.getElementById('consumption').value = parseFloat(data.existing.consumption).toFixed(2);
                    remarksInput.value = data.existing.remarks ?? '';
                    document.getElementById('entryStatusBadge').innerText = 'SAVED';

                    currReadingInput.readOnly = true;
                    remarksInput.readOnly = true;
                    saveBtn.classList.add('d-none');
                    lockedBanner.classList.remove('d-none');
                    uploadBox.style.pointerEvents = 'none';
                    uploadBox.style.opacity = '0.6';

                    if (data.existing.meter_photo) {
                        document.getElementById('photoPreview').src = data.existing.meter_photo;
                        uploadBox.classList.add('d-none');
                        document.getElementById('photoPreviewContainer').classList.remove('d-none');
                    }
                } else {
                    document.getElementById('entryStatusBadge').innerText = 'OPEN';
                    currReadingInput.readOnly = false;
                    remarksInput.readOnly = false;
                    saveBtn.classList.remove('d-none');
                    lockedBanner.classList.add('d-none');
                    uploadBox.style.pointerEvents = '';
                    uploadBox.style.opacity = '';
                }

                showLayout(2);
            }

            function calculateConsumption() {
                if (!hasPreviousReading) {
                    // Opening reading — no baseline to measure against yet.
                    document.getElementById('consumption').value = '0.00';
                    return;
                }
                const prev = parseFloat(document.getElementById('prevReading').value.replace(/,/g, '')) || 0;
                const curr = parseFloat(document.getElementById('currReading').value) || 0;
                const consumption = curr >= prev ? (curr - prev) : 0;
                document.getElementById('consumption').value = consumption.toFixed(2);
            }

            // Target upload size for the meter photo. Camera shots are typically
            // 2-8 MB; this brings them down into the tens/low-hundreds of KB
            // range while staying readable enough to verify a meter reading.
            const PHOTO_MAX_DIMENSION = 1280; // longest side, px
            const PHOTO_TARGET_KB = 200; // aim for ~200KB or under
            const PHOTO_MIN_QUALITY = 0.4; // don't degrade past this

            async function handlePhotoUpload(event) {
                const file = event.target.files[0];
                if (!file) return;

                const uploadBox = document.getElementById('uploadBox');
                uploadBox.innerHTML = '<span class="small text-muted">Compressing photo...</span>';

                try {
                    const compressed = await compressImage(file, PHOTO_MAX_DIMENSION, PHOTO_TARGET_KB, PHOTO_MIN_QUALITY);
                    selectedPhotoFile = compressed;

                    const reader = new FileReader();
                    reader.onload = function(e) {
                        document.getElementById('photoPreview').src = e.target.result;
                        document.getElementById('uploadBox').classList.add('d-none');
                        document.getElementById('photoPreviewContainer').classList.remove('d-none');
                        const sizeKb = (compressed.size / 1024).toFixed(0);
                        document.getElementById('photoSizeLabel').innerText = `${sizeKb} KB`;
                    };
                    reader.readAsDataURL(compressed);
                } catch (err) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Photo Error',
                        text: 'Could not process that photo. Please try again.'
                    });
                } finally {
                    uploadBox.innerHTML =
                        '<i class="bi bi-camera fs-2 text-primary"></i><span class="small fw-semibold mt-1">Capture / Upload Photo</span>';
                }
            }

            /**
             * Resize an image file to maxDimension on its longest side, then
             * re-encode as JPEG, stepping quality down until the result is at
             * or under targetKb (or minQuality is reached). Returns a File.
             */
            function compressImage(file, maxDimension, targetKb, minQuality) {
                return new Promise((resolve, reject) => {
                    const img = new Image();
                    const objectUrl = URL.createObjectURL(file);

                    img.onload = () => {
                        URL.revokeObjectURL(objectUrl);

                        let {
                            width,
                            height
                        } = img;
                        if (width > height && width > maxDimension) {
                            height = Math.round(height * (maxDimension / width));
                            width = maxDimension;
                        } else if (height >= width && height > maxDimension) {
                            width = Math.round(width * (maxDimension / height));
                            height = maxDimension;
                        }

                        const canvas = document.createElement('canvas');
                        canvas.width = width;
                        canvas.height = height;
                        const ctx = canvas.getContext('2d');
                        ctx.drawImage(img, 0, 0, width, height);

                        const targetBytes = targetKb * 1024;
                        let quality = 0.8;

                        const tryEncode = () => {
                            canvas.toBlob((blob) => {
                                if (!blob) {
                                    reject(new Error('Compression failed'));
                                    return;
                                }

                                if (blob.size <= targetBytes || quality <= minQuality) {
                                    const compressedFile = new File(
                                        [blob],
                                        file.name.replace(/\.[^.]+$/, '') + '.jpg', {
                                            type: 'image/jpeg'
                                        }
                                    );
                                    resolve(compressedFile);
                                } else {
                                    quality = Math.max(minQuality, quality - 0.1);
                                    tryEncode();
                                }
                            }, 'image/jpeg', quality);
                        };

                        tryEncode();
                    };

                    img.onerror = () => {
                        URL.revokeObjectURL(objectUrl);
                        reject(new Error('Could not load image'));
                    };

                    img.src = objectUrl;
                });
            }

            function removePhoto() {
                selectedPhotoFile = null;
                document.getElementById('cameraInput').value = '';
                document.getElementById('photoPreview').src = '';
                document.getElementById('photoSizeLabel').innerText = '';
                document.getElementById('uploadBox').classList.remove('d-none');
                document.getElementById('photoPreviewContainer').classList.add('d-none');
            }

            async function saveAndNext() {
                const currVal = document.getElementById('currReading').value;
                if (!currVal) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Reading Required',
                        text: 'Please enter Current Reading before saving.'
                    });
                    return;
                }

                const saveBtn = document.getElementById('saveBtn');
                saveBtn.disabled = true;
                saveBtn.innerText = 'Saving...';

                const formData = new FormData();
                formData.append('shopid', document.getElementById('entryShopId').value);
                formData.append('reading_date', document.getElementById('readingDate').value);
                formData.append('current_reading', currVal);
                formData.append('remarks', document.getElementById('remarks').value);
                if (selectedPhotoFile) formData.append('photo', selectedPhotoFile);

                try {
                    const res = await fetch(routes.save, {
                        method: 'POST',
                        headers: {
                            'X-CSRF-TOKEN': CSRF_TOKEN,
                            'X-Requested-With': 'XMLHttpRequest'
                        },
                        body: formData,
                    });
                    const data = await res.json();

                    if (!res.ok || data.success === false) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Could Not Save',
                            text: data.message || 'Could not save reading.'
                        });
                        return;
                    }

                    Swal.fire({
                        icon: 'success',
                        title: 'Saved!',
                        text: data.message || 'Reading saved successfully!',
                        timer: 1200,
                        showConfirmButton: false,
                    });

                    if (currentIndex + 1 < currentShops.length) {
                        await openReadingEntry(currentIndex + 1);
                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'All Done!',
                            text: 'All shops done for today!'
                        });
                        showLayout(1);
                    }
                } catch (e) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Network Error',
                        text: 'Network error while saving. Please try again.'
                    });
                } finally {
                    saveBtn.disabled = false;
                    saveBtn.innerHTML = 'Save &amp; Next Shop <i class="bi bi-arrow-right ms-1"></i>';
                }
            }

            function exitApp() {
                if (confirm('Are you sure you want to exit?')) {
                    window.location.href = "{{ url('/company') }}";
                }
            }

            loadShopList();
            setInterval(function() {
                $('input[type="text"], input[type="number"], input[type="email"], textarea').prop('readonly', false);
            }, 1000);
        </script>
    </div>
@endsection
