<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>Analysis</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('admin/images/favicon.png') }}">
    <!-- Pignose Calender -->
    <link href="{{ asset('admin/plugins/pg-calendar/css/pignose.calendar.min.css') }}" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist/css/chartist.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Stylesheet -->
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
    <link
        href="{{ asset('admin/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css') }}"
        rel="stylesheet">
    <!-- Color picker plugins css -->
    <link href="{{ asset('admin/plugins/jquery-asColorPicker-master/css/asColorPicker.css') }}" rel="stylesheet">
    <!-- Daterange picker plugins css -->
    <link href="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <!-- Notify CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/spin.js/2.3.2/spin.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="backdate" content="{{ Auth::user()->backdate }}">
    <meta name="ncurdate" content="{{ ncurdate() }}">
    <link rel="stylesheet" href="{{ asset('admin/css/autocomplete.css') }}">

    <style>
        .top-notification-wrapper {
            position: relative;
            margin-right: 15px;
            list-style: none;
        }

        .top-notification-icon {
            position: relative;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: #f4f6fb;
            cursor: pointer;
            border: 1px solid #e6ebf5;
        }

        .top-notification-icon.blink {
            animation: topBellBlink 1s infinite;
        }

        @keyframes topBellBlink {
            0% {
                opacity: 1;
            }

            50% {
                opacity: 0.2;
            }

            100% {
                opacity: 1;
            }
        }

        .top-notification-badge {
            position: absolute;
            top: -4px;
            right: -4px;
            min-width: 18px;
            height: 18px;
            padding: 0 5px;
            border-radius: 10px;
            background: #dc3545;
            color: #fff;
            font-size: 10px;
            font-weight: 700;
            display: none;
            align-items: center;
            justify-content: center;
        }

        .top-notification-dropdown {
            width: 480px;
            max-height: 520px;
            overflow-y: auto;
            padding: 0;
        }

        .top-notification-item {
            padding: 14px 16px;
            border-bottom: 1px solid #f1f1f1;
            cursor: pointer;
        }

        .top-notification-item:hover {
            background: #f8f9fc;
        }

        .top-notification-title {
            font-size: 13px;
            font-weight: 700;
            color: #3a3a3a;
        }

        .top-notification-text {
            font-size: 13px;
            color: #6b7280;
            margin-top: 3px;
        }

        .top-notification-time {
            font-size: 12px;
            color: #9ca3af;
            margin-top: 3px;
        }

        /* Fix dropdown z-index to appear above all elements */
        .dropdown-menu {
            z-index: 10000 !important;
            position: fixed !important;
            right: 20px !important;
            bottom: auto !important;
            left: auto !important;
            min-width: 480px !important;
            margin: 0 !important;
            max-height: 520px !important;
            overflow-y: auto !important;
            border: 1px solid #dee2e6 !important;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15) !important;
        }

        .dropdown-profile {
            z-index: 10000 !important;
        }

        .icons.dropdown {
            z-index: 10000 !important;
            position: relative;
        }

        .help-line-info {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 15px;
        }

        .help-line-info h6 {
            color: #007bff;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .help-line-info p {
            margin: 5px 0;
            font-size: 14px;
            color: #333;
        }

        /* Ensure dropdown is visible */
        .dropdown-menu.show {
            display: block !important;
            visibility: visible !important;
        }

        /* ── Compact sound upload boxes ── */
        .custom-sound-box {
            font-size: 12px;
            padding: 8px !important;
            margin: 6px !important;
        }

        .custom-sound-box strong {
            font-size: 12px;
        }

        .custom-sound-box .form-control-sm {
            height: calc(1.5em + 0.5rem + 2px);
            font-size: 11px;
            padding: 0.2rem 0.4rem;
        }

        .custom-sound-box small {
            font-size: 10px;
            margin-top: 2px !important;
        }

        .custom-sound-box audio {
            height: 30px;
            margin-top: 4px !important;
        }

        .custom-sound-box .btn-sm {
            font-size: 10px;
            padding: 0.15rem 0.4rem;
        }

        /* ── Sound status text (visible feedback instead of silent console.warn) ── */
        .sound-status-text {
            font-size: 10px;
            margin-top: 3px;
            min-height: 12px;
            font-weight: 600;
        }

        .sound-status-text.ok {
            color: #198754;
        }

        .sound-status-text.err {
            color: #dc3545;
        }
    </style>
</head>

<body>

    <div class="loader-overlay">
        <div class="sk-cube-grid">
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
            <div class="sk-cube"></div>
        </div>
        <div class="loader-text">Analysis HMS</div>
    </div>

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->

        @if (empty(companydata()->dealer_logo) || !file_exists(public_path('storage/admin/dealer_logo/' . companydata()->dealer_logo)))
            <div class="nav-header">
                <div class="brand-logo">
                    <a href="{{ url('/company') }}">
                        <b class="logo-abbr">
                            <img class="rounded-circle" src="{{ env('APP_URL') }}/admin/images/user/letter-a.gif"
                                alt="">
                        </b>
                        <img src="{{ asset('admin/images/logo-text.png') }}" class="img-fluid" alt="">

                    </a>
                </div>
            </div>
        @else
            <div style="width: 100%;height: auto;" class="nav-header">
                <img style="min-width: 10em;max-width: 17.5em;"
                    src="storage/admin/dealer_logo/{{ companydata()->dealer_logo }}" alt="" />
            </div>
        @endif
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content clearfix">

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left"></div>
                <div class="header-center">
                    <div class="input-group icons">
                        <div class="two alt-two">
                            <h1 class="mainhead"><span id="compnamed"></span>
                                <span id="showfinyear"></span>
                            </h1>
                        </div>
                    </div>
                </div>
                <style>
                    @media (max-width: 991px) {
                        .mobileView {
                            margin-top: -75px !important;
                        }
                    }

                    @keyframes blink-animation {
                        0% {
                            opacity: 1;
                        }

                        50% {
                            opacity: 0;
                        }

                        100% {
                            opacity: 1;
                        }
                    }

                    .blink {
                        animation: blink-animation 1s infinite;
                    }
                </style>

                <div class="header-right d-flex align-items-center mobileView">
                    {{-- ROOM STATUS ICON --}}
                    <li class="icons dropdown top-notification-wrapper" style="list-style: none;">
                        <div class="top-notification-icon" onclick="window.location.href='{{ route('roomstatus') }}'">
                            <i class="fa-solid fa-bed"></i>
                        </div>
                    </li>

                    {{-- RESERVATION LIST ICON --}}
                    <li class="icons dropdown top-notification-wrapper" style="list-style: none;">
                        <div class="top-notification-icon" onclick="window.location.href='{{ route('reservation') }}'">
                            <i class="fa-solid fa-calendar-check"></i>
                        </div>
                    </li>

                    {{-- OUTLET ORDERS ICON --}}
                    <li class="icons dropdown top-notification-wrapper">
                        <div class="top-notification-icon" id="outletorders">
                            <i class="fa-solid fa-bowl-food"></i>
                            <span class="top-notification-badge" id="outletOrdersBadge"></span>
                        </div>
                    </li>

                    {{-- BELL / TICKET NOTIFICATIONS ICON + SOUND SETTINGS --}}
                    <li class="icons dropdown top-notification-wrapper">
                        <div class="top-notification-icon" data-toggle="dropdown" id="userTopNotificationIcon">
                            <i class="fa-solid fa-bell"></i>
                            <span class="top-notification-badge" id="userTopNotificationBadge"></span>
                        </div>
                        <div class="dropdown-menu dropdown-menu-right top-notification-dropdown"
                            id="userTopNotificationDropdown">
                            <div class="p-2 border-bottom"><strong>Notifications</strong></div>
                            <div id="userTopNotificationList" class="p-2 text-muted">No notifications</div>

                            <!-- Notification sound uploader (compact) -->
                            <div class="custom-sound-box m-1 p-1 border rounded bg-light">
                                <div class="d-flex align-items-center justify-content-between">
                                    <strong>Notification Sound</strong>
                                    <div>
                                        <button type="button" class="btn btn-sm btn-outline-primary test-sound-btn"
                                            data-sound="notification">Test</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary reset-sound-btn"
                                            data-sound="notification">Reset</button>
                                    </div>
                                </div>
                                <input type="file" class="form-control form-control-sm mt-1 sound-upload"
                                    data-sound="notification" accept=".mp3,.wav,.ogg,.m4a,.aac">
                                <small class="text-muted d-block mt-1">Max ~1MB, 1-3 sec</small>
                                <audio controls preload="auto" class="mt-1 w-100 sound-preview"
                                    data-sound="notification"></audio>
                                <div class="sound-status-text" data-sound-status="notification"></div>
                            </div>

                            <!-- Alarm sound uploader (compact) -->
                            <div class="custom-sound-box m-1 p-1 border rounded bg-light">
                                <div class="d-flex align-items-center justify-content-between">
                                    <strong>Alarm Sound</strong>
                                    <div>
                                        <button type="button" class="btn btn-sm btn-outline-primary test-sound-btn"
                                            data-sound="alarm">Test</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary reset-sound-btn"
                                            data-sound="alarm">Reset</button>
                                    </div>
                                </div>
                                <input type="file" class="form-control form-control-sm mt-1 sound-upload"
                                    data-sound="alarm" accept=".mp3,.wav,.ogg,.m4a,.aac">
                                <small class="text-muted d-block mt-1">Max ~1MB, 1-3 sec (wake-up bhi yahi
                                    use karega)</small>
                                <audio controls preload="auto" class="mt-1 w-100 sound-preview"
                                    data-sound="alarm"></audio>
                                <div class="sound-status-text" data-sound-status="alarm"></div>
                            </div>
                        </div>
                    </li>

                    @if (count(myproperties()) > 1)
                        <div class="my-properties-wrapper position-relative mr-3">
                            <ul style="margin: 2em 0 0 -10em; width: max-content;"
                                class="submenuproperty cursor-pointer position-absolute shadow p-2"
                                style="display: none; list-style: none; min-width: 200px; z-index: 999;">
                                @foreach (myproperties() as $item)
                                    <li data-propertyid="{{ $item->propertyid }}" data-userid="{{ $item->userid }}"
                                        data-username="{{ Auth::user()->u_name }}"
                                        class="p-2 propertysllist bg-light font-11 {{ Auth::user()->propertyid == $item->propertyid ? 'bg-dark text-white' : '' }}">
                                        {{ $item->propertyid }} - {{ $item->comp_name }}
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <!-- Profile Dropdown -->
                    <li class="icons dropdown" style="list-style: none;">
                        <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                            <span class="activity active"></span>
                            <img src="{{ env('APP_URL') }}/admin/images/user/letter-a.gif" height="40"
                                width="40" alt="">
                        </div>
                        <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href=""><i class="icon-user"></i><span
                                                id="usernameshow"></span></a>
                                    </li>
                                    @if (count(myproperties()) > 1)
                                        <div class="my-properties-wrapper position-relative mr-3">
                                            <li class="my-properties-toggle"
                                                style="cursor: pointer; list-style: none;">
                                                <i class="fa-solid fa-house"></i> My Properties
                                            </li>
                                        </div>
                                    @endif
                                    <li class="update-log">
                                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal"
                                            data-target="#updateLogModal">
                                            Update Log
                                        </button>
                                    </li>
                                    <li class="help-line-info p-3 border-top">
                                        <div class="text-center">
                                            <h6 class="mb-2"><i class="fa-solid fa-phone"></i> Help Line</h6>
                                            <p class="mb-1 font-weight-bold">1800 570 0898</p>
                                            <small class="d-block text-muted">
                                                <span><b>Mon - Sat: 8:30 AM - 9:00 PM</b></span><br>
                                                <span><b>Sunday: 10:30 AM - 7:00 PM</b></span>
                                            </small>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="{{ route('logout') }}"><i
                                                class="icon-key"></i><span>Logout</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>

                </div>

            </div>
        </div>

        <div class="modal fade" id="updateLogModal" role="dialog" tabindex="-1"
            aria-labelledby="updateLogModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content shadow-lg rounded-lg">
                    <div class="modal-header bg-primary text-white">
                        <h5 class="modal-title" id="updateLogModalLabel"><i class="fas fa-history"></i> Update Log
                        </h5>
                        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="update-log-content p-3" id="updateLogContent">
                            <p class="text-muted text-center">Loading updates...</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--**********************************
            Header end
        ***********************************-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/toastify-js"></script>

        <!--
            Default sound files — original working file (assets/music/ordermsg.wav)
            use kiya hai for BOTH notification aur alarm, kyunki yeh file already
            aapke system mein guaranteed exist karti hai. Bell dropdown se upload
            karke koi bhi user apna custom sound overwrite kar sakta hai.
        -->
        <audio id="notificationSound" preload="auto">
            <source src="{{ asset('assets/music/ordermsg.wav') }}" type="audio/wav">
        </audio>
        <audio id="alarmSound" preload="auto">
            <source src="{{ asset('assets/music/ordermsg.wav') }}" type="audio/wav">
        </audio>

        <script>
            // ==============================
            // Global state
            // ==============================
            let audioUnlocked = false;
            let _lastKnownCombinedCount = null;
            let _lastKnownTicketCount = null; // NEW: tracks bell/ticket notifications separately
            let _notificationPollTimer = null;
            let _pendingSoundToPlay = null; // NEW: agar autoplay-block hua to yahan queue hota hai, agle click par bajta hai

            // ==============================
            // Small visible-feedback helper (Toastify already loaded on page)
            // ==============================
            function showSoundToast(message, isError) {
                try {
                    Toastify({
                        text: message,
                        duration: 4000,
                        gravity: 'top',
                        position: 'right',
                        style: {
                            background: isError ? '#dc3545' : '#198754'
                        }
                    }).showToast();
                } catch (e) {
                    // Toastify na load hui ho to bhi silently fail na ho
                    console.warn(message);
                }
            }

            function setSoundStatusText(soundType, message, isError) {
                const el = document.querySelector(`.sound-status-text[data-sound-status="${soundType}"]`);
                if (!el) return;
                el.textContent = message;
                el.classList.toggle('ok', !isError);
                el.classList.toggle('err', !!isError);
            }

            // ==============================
            // Dual sound system (Notification + Alarm)
            // ==============================
            const SOUND_LIMIT_BYTES = 1024 * 1024; // 1MB
            const DEFAULT_NOTIFICATION_SOUND = "{{ asset('assets/music/ordermsg.wav') }}";
            const DEFAULT_ALARM_SOUND = "{{ asset('assets/music/ordermsg.wav') }}";

            const notificationAudio = document.getElementById('notificationSound');
            const alarmAudio = document.getElementById('alarmSound');

            // ── MIME-type auto-fix ──────────────────────────────────────
            // Kuch OS/browsers audio files (.mp3 waghera) ko galat "video/mpeg"
            // MIME type se detect kar dete hain. <audio> tag "video/*" declared
            // src ko silently reject kar deta hai chahe andar ka data bilkul
            // valid audio ho. Isliye file.type pe bharosa karne ki jagah,
            // extension se sahi audio MIME type force karte hain.
            const EXT_MIME_MAP = {
                mp3: 'audio/mpeg',
                wav: 'audio/wav',
                ogg: 'audio/ogg',
                m4a: 'audio/mp4',
                aac: 'audio/aac'
            };

            function fixAudioMimeInDataUrl(dataUrl, filename) {
                if (!dataUrl || typeof dataUrl !== 'string' || !dataUrl.startsWith('data:')) return dataUrl;
                const match = dataUrl.match(/^data:([^;]+);base64,([\s\S]*)$/);
                if (!match) return dataUrl;
                let mime = match[1];
                const base64 = match[2];
                if (!mime.startsWith('audio/')) {
                    const ext = (filename || '').split('.').pop().toLowerCase();
                    mime = EXT_MIME_MAP[ext] || 'audio/mpeg';
                    return `data:${mime};base64,${base64}`;
                }
                return dataUrl;
            }

            // NEW: agar audio element khud file load nahi kar paaya (corrupt/unsupported/
            // CSP-blocked data URI) to yeh event fire hoga — ab silent fail nahi hoga
            [notificationAudio, alarmAudio].forEach(function(audioEl) {
                if (!audioEl) return;
                audioEl.addEventListener('error', function() {
                    const soundType = audioEl.id === 'notificationSound' ? 'notification' : 'alarm';
                    setSoundStatusText(soundType,
                        '⚠️ Sound file load nahi ho payi (corrupt/unsupported format ho sakta hai).',
                        true);
                    showSoundToast(
                        (soundType === 'notification' ? 'Notification' : 'Alarm') +
                        ' sound file load nahi ho payi — dusra format try karein.',
                        true);
                });
            });

            function setAudioSource(audioEl, source) {
                if (!audioEl) return;
                audioEl.src = source;
                audioEl.load();
            }

            function saveSound(key, value) {
                try {
                    localStorage.setItem(key, value);
                    return true;
                } catch (e) {
                    console.warn('Sound not saved due to browser storage limit:', e);
                    Swal.fire({
                        icon: 'warning',
                        title: 'Sound Saved Nahi Ho Paya',
                        text: 'File bahut badi hai isliye save nahi hui. Is session ke liye chalegi, refresh par default pe wapas aa jayegi. Choti file (300-500KB se kam) try karein.',
                        timer: 5000,
                        showConfirmButton: true
                    });
                    return false;
                }
            }

            function loadSavedSound(key, fallback) {
                return localStorage.getItem(key) || fallback;
            }

            function bindSoundPreview(soundType, src) {
                const preview = document.querySelector(`.sound-preview[data-sound="${soundType}"]`);
                if (preview) {
                    preview.src = src;
                    preview.load();
                }
            }

            function applySound(soundType, src, shouldPersist = true) {
                const audioEl = soundType === 'notification' ? notificationAudio : alarmAudio;
                setAudioSource(audioEl, src);

                if (shouldPersist) {
                    const key = soundType === 'notification' ? 'customNotificationSound' : 'customAlarmSound';
                    const saved = saveSound(key, src);
                    if (saved) {
                        setSoundStatusText(soundType, '✔ Sound saved.', false);
                    }
                }
                bindSoundPreview(soundType, src);
            }

            function restoreSavedSounds() {
                let notificationSrc = loadSavedSound('customNotificationSound', DEFAULT_NOTIFICATION_SOUND);
                let alarmSrc = loadSavedSound('customAlarmSound', DEFAULT_ALARM_SOUND);

                // NEW: auto-repair sounds jo purane bug ki wajah se galat MIME type
                // (video/mpeg waghera) ke saath save ho gayi thi
                const fixedNotification = fixAudioMimeInDataUrl(notificationSrc, 'sound.mp3');
                const fixedAlarm = fixAudioMimeInDataUrl(alarmSrc, 'sound.mp3');
                if (fixedNotification !== notificationSrc) {
                    saveSound('customNotificationSound', fixedNotification);
                    notificationSrc = fixedNotification;
                }
                if (fixedAlarm !== alarmSrc) {
                    saveSound('customAlarmSound', fixedAlarm);
                    alarmSrc = fixedAlarm;
                }

                applySound('notification', notificationSrc, false);
                applySound('alarm', alarmSrc, false);
            }

            function handleSoundUpload(file, soundType, inputEl) {
                if (!file) return;
                if (file.size > SOUND_LIMIT_BYTES) {
                    Swal.fire({
                        icon: 'error',
                        title: 'File too large',
                        text: 'Please upload a short sound under 1MB for smooth performance.',
                    });
                    if (inputEl) inputEl.value = '';
                    return;
                }
                const reader = new FileReader();
                reader.onload = function() {
                    let dataUrl = reader.result;
                    dataUrl = fixAudioMimeInDataUrl(dataUrl, file.name); // NEW: force correct audio MIME
                    const key = soundType === 'notification' ? 'customNotificationSound' : 'customAlarmSound';
                    const saved = saveSound(key, dataUrl);
                    applySound(soundType, dataUrl, false);
                    if (saved) {
                        setSoundStatusText(soundType, '✔ Sound saved. "Test" button se check karein.',
                            false);
                        showSoundToast('Sound uploaded and saved successfully.', false);
                    }
                };
                reader.onerror = function() {
                    Swal.fire({
                        icon: 'error',
                        title: 'Upload failed',
                        text: 'Please try again with another file.',
                    });
                    setSoundStatusText(soundType, '⚠️ Upload fail hua, dobara try karein.', true);
                };
                reader.readAsDataURL(file);
            }

            // ── Audio unlock: browsers block autoplay until a real user
            // gesture happens (click/keydown/touch). Yeh listener page ke
            // kisi bhi pehle interaction par audio ko silently unlock kar
            // deta hai taaki baad mein notification/alarm bina rukawat baje. ──
            // function unlockAudioOnce() {
            //     if (audioUnlocked) return;
            //     const audioList = [notificationAudio, alarmAudio].filter(Boolean);
            //     audioList.forEach((audio) => {
            //         audio.muted = true;
            //         audio.play()
            //             .then(() => {
            //                 audio.pause();
            //                 audio.currentTime = 0;
            //                 audio.muted = false;
            //             })
            //             .catch(() => {
            //                 audio.muted = false;
            //                 // Kuch browsers mein promise reject ho sakta hai
            //                 // phir bhi user-gesture ke baad agla .play() kaam karega.
            //             });
            //     });
            //     audioUnlocked = true;

            //     // NEW: agar audio unlock hone se pehle koi sound bajni thi (queue me thi),
            //     // ab wo turant baja do
            //     if (_pendingSoundToPlay) {
            //         const toPlay = _pendingSoundToPlay;
            //         _pendingSoundToPlay = null;
            //         setTimeout(() => toPlay(), 150);
            //     }
            // }

            function unlockAudioOnce() {
                if (audioUnlocked) return;

                const audioList = [notificationAudio, alarmAudio].filter(Boolean);

                audioList.forEach((audio) => {
                    audio.muted = true;

                    const result = audio.play();

                    if (result && typeof result.then === 'function') {
                        result
                            .then(() => {
                                audio.pause();
                                audio.currentTime = 0;
                                audio.muted = false;
                            })
                            .catch(() => {
                                audio.muted = false;
                            });
                    } else {
                        audio.pause();
                        audio.currentTime = 0;
                        audio.muted = false;
                    }
                });

                audioUnlocked = true;

                if (_pendingSoundToPlay) {
                    const toPlay = _pendingSoundToPlay;
                    _pendingSoundToPlay = null;
                    setTimeout(() => toPlay(), 150);
                }
            }

            document.addEventListener('click', unlockAudioOnce);
            document.addEventListener('keydown', unlockAudioOnce);
            document.addEventListener('touchstart', unlockAudioOnce);

            function playNotificationSound() {
                if (!notificationAudio) {
                    console.warn('#notificationSound element not found.');
                    return;
                }
                notificationAudio.pause();
                notificationAudio.currentTime = 0;
                notificationAudio.volume = 0.8;
                notificationAudio.play().catch((err) => {
                    console.warn('Notification audio play blocked:', err);
                    setSoundStatusText('notification',
                        '⚠️ Sound blocked — page par kahin bhi ek baar click/tap karein taaki sound unlock ho jaaye.',
                        true);
                    showSoundToast(
                        'Notification sound blocked by browser — page par ek baar click karein.',
                        true);
                    _pendingSoundToPlay = playNotificationSound;
                });
            }

            function playAlarmSound() {
                if (!alarmAudio) {
                    console.warn('#alarmSound element not found.');
                    return;
                }
                alarmAudio.pause();
                alarmAudio.currentTime = 0;
                alarmAudio.volume = 0.9;
                alarmAudio.play().catch((err) => {
                    console.warn('Alarm audio play blocked:', err);
                    setSoundStatusText('alarm',
                        '⚠️ Sound blocked — page par kahin bhi ek baar click/tap karein taaki sound unlock ho jaaye.',
                        true);
                    showSoundToast('Alarm sound blocked by browser — page par ek baar click karein.',
                        true);
                    _pendingSoundToPlay = playAlarmSound;
                });
            }

            function userEscapeHtml(text) {
                return $('<div/>').text(text || '').html();
            }

            function updateUserTopNotifications() {
                $.ajax({
                    url: '{{ route('tools.getMyTicketNotifications') }}',
                    method: 'GET',
                    cache: false,
                    success: function(res) {
                        const outletIcon = $('#outletorders');
                        const outletBadge = $('#outletOrdersBadge');

                        const orderCount = Number(res.countOrderRequests || 0);
                        const serviceCount = Number(res.countServiceRequests || 0);
                        const combinedCount = orderCount + serviceCount;

                        if (combinedCount > 0) {
                            outletIcon.addClass('blink');
                            outletBadge
                                .text(combinedCount > 99 ? '99+' : combinedCount)
                                .css('display', 'inline-flex');
                        } else {
                            outletIcon.removeClass('blink');
                            outletBadge.hide().text('');
                        }

                        // Order/Service request sound (existing logic — ab robust play fn use karta hai)
                        if (
                            _lastKnownCombinedCount !== null &&
                            combinedCount > _lastKnownCombinedCount
                        ) {
                            console.log('New order/service request detected.');
                            playNotificationSound();
                        }

                        _lastKnownCombinedCount = combinedCount;

                        const icon = $('#userTopNotificationIcon');
                        const badge = $('#userTopNotificationBadge');
                        const list = $('#userTopNotificationList');

                        if (!res.success || !Array.isArray(res.tickets) || res.tickets.length === 0) {
                            icon.removeClass('blink');
                            badge.hide().text('');
                            list.html('<div class="text-muted">No notifications</div>');
                            // NEW: ticket count 0 ho gaya to bhi tracker update karo
                            _lastKnownTicketCount = 0;
                            return;
                        }

                        icon.addClass('blink');
                        badge
                            .text(res.tickets.length > 99 ? '99+' : res.tickets.length)
                            .css('display', 'inline-flex');

                        // NEW: bell/ticket notification count badhne par bhi sound bajao
                        const currentTicketCount = res.tickets.length;
                        if (
                            _lastKnownTicketCount !== null &&
                            currentTicketCount > _lastKnownTicketCount
                        ) {
                            console.log('New ticket/bell notification detected.');
                            playNotificationSound();
                        }
                        _lastKnownTicketCount = currentTicketCount;

                        let html = '';

                        res.tickets.slice(0, 20).forEach(function(item) {
                            const titleSuffix = item.type === 'status' ? 'Status Update' : 'SMS';

                            html += `
                    <div class="top-notification-item"
                        onclick="window.location.href='{{ route('tools.myTickets') }}?focus_ticket=${item.id}'">
                        <div class="top-notification-title">
                            ${userEscapeHtml(item.ticket_number)} • ${titleSuffix}
                        </div>
                        <div class="top-notification-text">
                            ${userEscapeHtml(item.text || '')}
                        </div>
                        <div class="top-notification-time">
                            ${userEscapeHtml(item.time || '')}
                        </div>
                    </div>
                `;
                        });

                        list.html(html);
                    },
                    error: function(xhr) {
                        console.error('Notification request failed:', xhr.status);
                    }
                });
            }

            $(document).ready(function() {
                restoreSavedSounds();

                document.querySelectorAll('.sound-upload').forEach((input) => {
                    input.addEventListener('change', function() {
                        const soundType = this.dataset.sound;
                        const file = this.files && this.files[0];
                        if (file) handleSoundUpload(file, soundType, this);
                    });
                });

                document.querySelectorAll('.reset-sound-btn').forEach((btn) => {
                    btn.addEventListener('click', function() {
                        const soundType = this.dataset.sound;
                        const defaultSrc = soundType === 'notification' ? DEFAULT_NOTIFICATION_SOUND :
                            DEFAULT_ALARM_SOUND;
                        const key = soundType === 'notification' ? 'customNotificationSound' :
                            'customAlarmSound';
                        localStorage.removeItem(key);
                        applySound(soundType, defaultSrc, false);
                        const uploadInput = document.querySelector(
                            `.sound-upload[data-sound="${soundType}"]`);
                        if (uploadInput) uploadInput.value = '';
                        setSoundStatusText(soundType, 'Default sound restore ho gayi.', false);
                    });
                });

                document.querySelectorAll('.test-sound-btn').forEach((btn) => {
                    btn.addEventListener('click', function() {
                        const soundType = this.dataset.sound;
                        if (soundType === 'notification') {
                            playNotificationSound();
                        } else {
                            playAlarmSound();
                        }
                    });
                });

                updateUserTopNotifications();
                // _notificationPollTimer = setInterval(updateUserTopNotifications, 10000);
            });

            var yearManageUrl = "{{ url('yearmanage') }}";
            $(document).on('click', '.my-properties-toggle', function(e) {
                e.stopPropagation();
                $('.submenuproperty').slideToggle();
            });

            $(document).on('click', function() {
                $('.submenuproperty').slideUp();
            });

            $(document).on('click', '.propertysllist', function() {
                let userid = $(this).data('userid');
                let username = $(this).data('username');
                let propertyid = $(this).data('propertyid');
                let currentUrl = window.location.href;

                $.ajax({
                    url: '/auto-login',
                    type: 'POST',
                    data: {
                        userid: userid,
                        username: username,
                        propertyid: propertyid,
                        redirect_url: currentUrl,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        if (response.status === 'success') {
                            window.location.href = response.redirect;
                        } else {
                            Swal.fire({
                                icon: 'info',
                                title: 'Info',
                                text: response.message
                            });
                        }
                    },
                    error: function() {
                        alert('Something went wrong!');
                    }
                });
            });
        </script>

        @if (isset($message))
            <script>
                Swal.fire({
                    icon: '{{ $type }}',
                    title: '{{ $type }}',
                    text: '{{ $message }}',
                    timer: 5000,
                    showConfirmButton: true
                });
            </script>
        @endif

        @if (session('success'))
            <script>
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: '{{ session('success') }}',
                });
            </script>
        @endif
        @if (session('error'))
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: '{{ session('error') }}',
                });
            </script>
        @endif
        @if (session('infosale'))
            <script>
                Swal.fire({
                    icon: 'info',
                    title: "Sale Bill Entry",
                    text: "{{ session('infosale')['text'] }}",
                    showCancelButton: true,
                    showConfirmButton: true,
                    confirmButtonText: 'Yes',
                    cancelButtonText: 'No'
                }).then((result) => {
                    if (result.isConfirmed) {
                        let printdata = {!! session('infosale')['printdata'] !!};

                        let filetoopen;
                        if (printdata.printsetup.description === 'Bill Windows Plain Paper 1') {
                            filetoopen = 'salebillprint';
                            let openfile = window.open(filetoopen, '_blank');
                            openfile.onload = function() {
                                $('#roomno', openfile.document).text(printdata.roomno);
                                $('#vdate', openfile.document).text(printdata.vdate);
                                $('#billno', openfile.document).text(printdata.billno);
                                $('#vtype', openfile.document).text(printdata.vtype);
                                $('#departname', openfile.document).text(printdata.departname);
                                $('#kotno', openfile.document).text(printdata.kotno);
                                $('#waiter', openfile.document).text(printdata.waiter);
                                $('#outletcode', openfile.document).text(printdata.outletcode);
                                $('#departnature', openfile.document).text(printdata.departnature);
                                $('#sale1docid', openfile.document).text(printdata.docid);
                                $('#addeddocid', openfile.document).text(printdata.addeddocid);
                            }
                        } else if (printdata.printsetup.description === 'Bill Windows Plain Paper 2') {
                            filetoopen = 'salebillprinttype2';
                            let openfile = window.open(filetoopen, '_blank');
                            openfile.onload = function() {
                                $('#roomno', openfile.document).text(printdata.roomno);
                                $('#vdate', openfile.document).text(printdata.vdate);
                                $('#billno', openfile.document).text(printdata.billno);
                                $('#vtype', openfile.document).text(printdata.vtype);
                                $('#departname', openfile.document).text(printdata.departname);
                                $('#kotno', openfile.document).text(printdata.kotno);
                                $('#waiter', openfile.document).text(printdata.waiter);
                                $('#outletcode', openfile.document).text(printdata.outletcode);
                                $('#departnature', openfile.document).text(printdata.departnature);
                                $('#sale1docid', openfile.document).text(printdata.docid);
                                $('#addeddocid', openfile.document).text(printdata.addeddocid);
                            }
                        } else if (printdata.printsetup.description === '3 Inch Running Paper Windows Print 1') {
                            filetoopen = 'salebillprint2';
                            let openfile = window.open(filetoopen, '_blank');
                            openfile.onload = function() {
                                $('#roomno', openfile.document).text(printdata.roomno);
                                $('#vdate', openfile.document).text(printdata.vdate);
                                $('#billno', openfile.document).text(printdata.billno);
                                $('#vtype', openfile.document).text(printdata.vtype);
                                $('#departname', openfile.document).text(printdata.departname);
                                $('#kotno', openfile.document).text(printdata.kotno);
                                $('#waiter', openfile.document).text(printdata.waiter);
                                $('#outletcode', openfile.document).text(printdata.outletcode);
                                $('#departnature', openfile.document).text(printdata.departnature);
                                $('#sale1docid', openfile.document).text(printdata.docid);
                                $('#addeddocid', openfile.document).text(printdata.addeddocid);
                            }
                        } else if (printdata.printsetup.description === '3 Inch Running Paper Windows Print 2') {
                            filetoopen = 'salebillprint2type2';
                            let openfile = window.open(filetoopen, '_blank');
                            openfile.onload = function() {
                                $('#roomno', openfile.document).text(printdata.roomno);
                                $('#vdate', openfile.document).text(printdata.vdate);
                                $('#billno', openfile.document).text(printdata.billno);
                                $('#vtype', openfile.document).text(printdata.vtype);
                                $('#departname', openfile.document).text(printdata.departname);
                                $('#kotno', openfile.document).text(printdata.kotno);
                                $('#waiter', openfile.document).text(printdata.waiter);
                                $('#outletcode', openfile.document).text(printdata.outletcode);
                                $('#departnature', openfile.document).text(printdata.departnature);
                                $('#sale1docid', openfile.document).text(printdata.docid);
                                $('#addeddocid', openfile.document).text(printdata.addeddocid);
                            }
                        } else if (printdata.printsetup.description === '3 Inch Running Paper DOS Print') {
                            console.log(printdata);
                            $.ajax({
                                url: 'salebillprintthermal',
                                data: {
                                    docid: printdata.docid
                                },
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                },
                                method: "POST",
                                success: function() {
                                    // setTimeout(() => window.location.reload(), 500);
                                },
                                error: function(error) {
                                    console.log(error);
                                }
                            });
                        }
                    }
                });
            </script>
        @endif

        @if (session('nightinfo'))
            <script>
                Swal.fire({
                    icon: 'info',
                    title: 'Night Audit',
                    text: "{{ session('nightinfo')['message'] }}",
                    showConfirmButton: true,
                    confirmButtonText: 'Click To View',
                    showCancelButton: true,
                }).then((result) => {
                    if (result.isConfirmed) {
                        let bills = '{!! session('nightinfo')['bills'] !!}';
                        var rowcode = "{{ session('nightinfo')['row'] }}";
                        var cname, ur;
                        if (rowcode == 1) {
                            let pendingbillskot = new XMLHttpRequest();
                            pendingbillskot.open('POST', '/pendingbillskot', true);
                            pendingbillskot.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                            pendingbillskot.onreadystatechange = function() {
                                if (pendingbillskot.readyState === 4 && pendingbillskot.status === 200) {
                                    let results = JSON.parse(pendingbillskot.responseText);
                                    let tbody = $('#pendingkotnightaudit tbody');
                                    tbody.empty();
                                    let tdata = '';
                                    results.forEach((data) => {
                                        if (rowcode == 1) {
                                            cname = 'kotrow';
                                            ur = `salebillentry?dcode=${data.restcode}&roomno=${data.roomno}`;
                                        } else if (rowcode == 2) {
                                            cname = 'salerow';
                                            ur =
                                                `settlemententry?dcode=${data.restcode}&tableno=${data.roomno}&vno=${data.vno}`;
                                        }
                                        tdata += `<tr class="${cname}" data-vno="${data.vno}" data-id="${data.restcode}" data-value="${data.roomno}">
                                    <td>${data.vno}</td>
                                    <td>${data.roomno}</td>
                                    <td>${data.waitername}</td>
                                    <td>${data.depname}</td>
                                    <td>Pending</td>
                                </tr>`;
                                    });
                                    tbody.append(tdata);
                                    $('.pendingkotnightaudit').removeClass('none');
                                }
                            }
                            pendingbillskot.send(`bills=${bills}&_token={{ csrf_token() }}`);
                        } else if (rowcode == 2) {
                            let salewarnxhr = new XMLHttpRequest();
                            salewarnxhr.open('GET', '/salewarnxhr', true);
                            salewarnxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                            salewarnxhr.onreadystatechange = function() {
                                if (salewarnxhr.status === 200 && salewarnxhr.readyState === 4) {
                                    let result = JSON.parse(salewarnxhr.responseText);
                                    let count = result.count;
                                    if (count > 0) {
                                        if (result.msg.length > 0) {
                                            $('#headingth').text('Bill No.');
                                            let msg = result.msg;
                                            let salerows = result.salerows;
                                            let tdata = '';
                                            salerows.forEach((data, index) => {
                                                tdata += `<tr class="salerow" data-vno="${data.vno}" data-id="${data.restcode}" data-value="${data.roomno}">
                                                <td>${data.vno}</td>
                                                <td>${data.roomno}</td>
                                                <td>${data.waitername}</td>
                                                <td>${data.depname}</td>
                                                <td>Pending</td>
                                            </tr>`;
                                            });
                                            let tfoot = `<tr>
                                            <td>Maxed</td>
                                            </tr>`;
                                            $('#pendingkotnightaudit tfoot').append(tfoot);
                                            $('#pendingkotnightaudit tbody').append(tdata);
                                            $('.pendingkotnightaudit').removeClass('none');
                                            $(document).on('click', '.salerow', function() {
                                                let roomno = $(this).data('value');
                                                let restcode = $(this).data('id');
                                                let vno = $(this).data('vno');
                                                window.location.href =
                                                    `settlemententry?dcode=${restcode}&tableno=${roomno}&vno=${vno}`;
                                            });
                                        }
                                    }
                                }
                            }
                            salewarnxhr.send();
                        }

                    }
                });

                $(document).on('click', '.kotrow, .salerow', function() {
                    let roomno = $(this).data('value');
                    let restcode = $(this).data('id');
                    let vno = $(this).data('vno');
                    let rowcode = "{{ session('nightinfo')['row'] }}";
                    let ur;
                    if (rowcode == 1) {
                        ur = `salebillentry?dcode=${restcode}&roomno=${roomno}`;
                    } else if (rowcode == 2) {
                        ur = `settlemententry?dcode=${restcode}&tableno=${roomno}&vno=${vno}`;
                    }
                    window.location.href = ur;
                });
            </script>
        @endif

        <script>
            document.addEventListener('DOMContentLoaded', function() {
                fetch('/getcompdt', {
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded'
                        }
                    })
                    .then(response => response.json())
                    .then(results => {
                        const datemanage = results.datemanage;
                        $('#usernameshow').text(results.user.name);
                        document.getElementById('compnamed').textContent = results.company.comp_name + " (" +
                            results.company.propertyid + ")";
                        document.getElementById('showfinyear').textContent =
                            `${datemanage.finyear.current}-${datemanage.hf.end}`;
                        $('#start_dtdd').text(`01-04-${datemanage.finyear.current}`);
                        $('#end_dtdd').text(`31-03-${datemanage.finyear.nextyear}`);
                    })
                    .catch(error => console.error('Error fetching data:', error));
            });

            $.ajax({
                url: '{{ route('getwpenviro') }}',
                type: 'GET',
                success: function(response) {
                    if (response === true) {
                        $('#wpmsgerror').text(
                            '⚠️ Your WhatsApp balance is low. Please recharge. to send automatic messages');
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                }
            });
            window.fomparameter = @json(fomparameter());
            window.revmastroominclusive = @json(revmastroominclusive());
        </script>

        @include('property.layouts.orderrequests')
