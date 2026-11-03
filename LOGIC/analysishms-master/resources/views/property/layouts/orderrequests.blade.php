<div class="modal fade" id="orderRequestsModal" tabindex="-1" role="dialog" aria-labelledby="orderRequestsModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document" style="max-width:95vw;width:95vw;">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="orderRequestsModalLabel"><i class="fa-solid fa-bowl-food"></i> Requests</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="max-height:80vh;overflow-y:auto;">
                <div id="orderRequestsListContainer" style="overflow-x:auto;">
                    <p class="text-muted text-center">Loading...</p>
                </div>
                <nav id="orderRequestsPagination" class="d-flex justify-content-center mt-2"></nav>
            </div>
        </div>
    </div>
</div>

<!-- Order Detail View Modal (appears on top of list modal) -->
<div class="modal fade" id="orderDetailModal" tabindex="-1" role="dialog" aria-labelledby="orderDetailModalLabel"
    aria-hidden="true" style="z-index:1060;">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title" id="orderDetailModalLabel"><i class="fa-solid fa-list"></i> Request Details</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-2">
                    <strong>Request ID:</strong> <span id="detailOrderId"></span><br>
                    <strong>Type:</strong> <span id="detailReqType"></span><br>
                    <strong>Outlet/Department:</strong> <span id="detailOutlet"></span><br>
                    <strong>Room/Table No:</strong> <span id="detailRoomNo"></span><br>
                    <strong>Time:</strong> <span id="detailTime"></span><br>
                    <strong>Guest Name:</strong> <span id="detailguestname"></span><br>
                    <strong>Mobile:</strong> <span id="detailmobie"></span><br>
                    <strong>Notes:</strong> <span id="detailNotes"></span><br>
                </div>
                <!-- Wake-up ke liye live countdown row (default hidden) -->
                <div class="mb-2" id="detailWakeupRow" style="display:none;">
                    <strong>Wake-Up Countdown:</strong>
                    <span class="wakeup-countdown font-weight-bold" id="detailWakeupCountdown">--</span>
                </div>
                <table class="table table-bordered table-sm">
                    <thead class="bg-light">
                        <tr>
                            <th>#</th>
                            <th>Item Name</th>
                            <th>Qty</th>
                        </tr>
                    </thead>
                    <tbody id="detailItemsBody"></tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Accept Qty Adjust Modal (service requests only) -->
<div class="modal fade" id="acceptQtyModal" tabindex="-1" role="dialog" aria-labelledby="acceptQtyModalLabel"
    aria-hidden="true" style="z-index:1065;">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header bg-success text-white">
                <h5 class="modal-title" id="acceptQtyModalLabel"><i class="fa-solid fa-check"></i> Confirm & Adjust Qty
                </h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="text-muted mb-2">Request <strong id="acceptQtyReqId"></strong> — Room <strong
                        id="acceptQtyRoomNo"></strong></p>
                <p class="small text-muted" id="acceptQtyHint">Deliver ki gayi actual qty adjust kar sakte ho. 0 karne
                    se wo item deliver
                    nahi mana jayega.</p>
                <div id="acceptQtyItemsWrap" style="max-height:340px;overflow-y:auto;"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-success" id="btnConfirmAcceptQty">
                    <i class="fa-solid fa-check"></i> Confirm Accept
                </button>
            </div>
        </div>
    </div>
</div>

<style>
    #orderDetailModal .modal-backdrop {
        z-index: 1055;
    }

    .qty-adjust-row {
        display: flex;
        align-items: center;
        justify-content: space-between;
        border: 1px solid #eee;
        border-radius: 8px;
        padding: 8px 12px;
        margin-bottom: 8px;
    }

    .qty-adjust-stepper {
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .qty-adjust-stepper button {
        width: 28px;
        height: 28px;
        border-radius: 50%;
        border: 1px solid #ccc;
        background: #f8f9fa;
        font-weight: bold;
    }

    .qty-adjust-stepper input {
        width: 40px;
        text-align: center;
        border: none;
        font-weight: 600;
    }

    .time-adj-value {
        width: 90px !important;
        text-align: center;
        border: none;
        font-weight: 600;
    }

    .time-adj-up,
    .time-adj-down {
        width: auto !important;
        border-radius: 14px !important;
        padding: 0 10px;
        font-size: 11px;
        font-weight: 700;
    }

    .wakeup-countdown {
        font-weight: 600;
        color: #0f172a;
    }

    .btn-accept-wakeup[disabled] {
        opacity: .5;
        cursor: not-allowed;
    }
</style>

<script>
    $(function() {
        let cachedCombinedRequests = [];
        const perPage = 5;
        let currentPage = 1;

        let sessionExpiredHandled = false;
        $(document).ajaxError(function(event, jqxhr) {
            if (jqxhr.status === 419 && !sessionExpiredHandled) {
                sessionExpiredHandled = true;
                Swal.fire({
                    icon: 'warning',
                    title: 'Session Expired',
                    text: 'Aapka session expire ho gaya hai. Page refresh ho raha hai...',
                    timer: 2000,
                    showConfirmButton: false,
                    allowOutsideClick: false
                }).then(function() {
                    window.location.reload();
                });
            }
        });

        function escapeHtml(text) {
            return $('<div/>').text(text || '').html();
        }

        function groupOrders(orders) {
            const grouped = {};
            orders.forEach(function(item) {
                if (!grouped[item.order_id]) {
                    grouped[item.order_id] = {
                        reqtype: 'order',
                        id: item.order_id,
                        outletname: item.maindepartname,
                        roomno: item.roomno,
                        entrytime: item.entrytime,
                        status: item.reqstatus || 'pending',
                        items: [],
                        guestname: item.guestname,
                        guestmobile: item.guestmobile,
                        departnature: item.nature,
                        notes: item.remarks || ''
                    };
                }
                grouped[item.order_id].items.push({
                    itemname: item.itemname,
                    qty: item.qty
                });
            });
            return Object.values(grouped);
        }

        function normalizeServiceRequests(requests) {
            return (requests || []).map(function(req) {
                return {
                    reqtype: 'service',
                    id: req.requestno,
                    outletname: req.requestedfrom,
                    roomno: req.roomno,
                    entrytime: (req.requestdate || '') + ' ' + (req.requesttime || ''),
                    status: req.reqstatus || 'Pending',
                    items: (req.items || []).map(function(it) {
                        return {
                            itemname: it.itemname,
                            sno: it.sno,
                            qty: (it.qty !== null && it.qty !== undefined && it.qty !== '') ? it
                                .qty : ''
                        };
                    }),
                    guestname: req.guestname,
                    guestmobile: req.guestmobile,
                    departnature: req.requesttype,
                    notes: req.remarks || ''
                };
            });
        }

        function buildCombinedFromRes(res) {
            const orderGrouped = groupOrders(res.orderrequests || []);
            const serviceNormalized = normalizeServiceRequests(res.servicerequests || []);
            let combined = orderGrouped.concat(serviceNormalized);

            combined.sort(function(a, b) {
                const openStatuses = ['pending', 'in progress'];
                const aOpen = openStatuses.includes((a.status || '').toLowerCase());
                const bOpen = openStatuses.includes((b.status || '').toLowerCase());
                if (aOpen !== bOpen) return aOpen ? -1 : 1;
                return new Date(b.entrytime) - new Date(a.entrytime);
            });

            return combined;
        }

        // ── Wake-up detection + countdown/alarm helpers ─────────────────
        // Robust check: departnature exact-match ke sath-sath itemname
        // pattern (hh:mm AM/PM) se bhi fallback verify karta hai —
        // taaki case/whitespace/typing mismatch se bug na aaye.
        function isWakeupReq(req) {
            const dn = (req.departnature || '').toString().trim().toLowerCase();
            if (dn === 'wakeup') return true;
            const t = (req.items && req.items[0] && req.items[0].itemname) || '';
            return /^\d{1,2}:\d{2}\s*(AM|PM)$/i.test(t.trim());
        }

        function getSyncedNow() {
            return new Date(Date.now() + (window.__serverTimeOffset || 0));
        }

        function parseWakeupTarget(req) {
            const timeStr = ((req.items && req.items[0] && req.items[0].itemname) || '').trim();
            const m = timeStr.match(/^(\d{1,2}):(\d{2})\s*(AM|PM)$/i);
            if (!m) return null;
            let hour = parseInt(m[1], 10);
            const min = parseInt(m[2], 10);
            const ampm = m[3].toUpperCase();
            if (ampm === 'PM' && hour !== 12) hour += 12;
            if (ampm === 'AM' && hour === 12) hour = 0;

            const created = new Date((req.entrytime || '').replace(' ', 'T'));
            let target = new Date(created);
            target.setHours(hour, min, 0, 0);
            if (target <= created) target.setDate(target.getDate() + 1);
            return target;
        }

        function formatCountdown(ms) {
            if (ms <= 0) return 'Due now!';
            const totalSec = Math.floor(ms / 1000);
            const h = Math.floor(totalSec / 3600);
            const m = Math.floor((totalSec % 3600) / 60);
            const s = totalSec % 60;
            return (h > 0 ? h + 'h ' : '') + String(m).padStart(2, '0') + 'm ' + String(s).padStart(2, '0') +
                's';
        }

        // ── Alarm sound (uploaded/default "Alarm Sound" file, loop) ─────
        // Fallback: agar file play nahi ho paayi (upload nahi hai, default
        // file missing/404, ya browser abhi unlock nahi hua) to purana
        // oscillator beep automatically chal jayega.
        let alarmAudioCtx = null,
            alarmOscillator = null,
            alarmGain = null,
            alarmBeepInterval = null;
        let usingElementAlarm = false;

        function startAlarmBeep() {
            if (alarmOscillator || usingElementAlarm) return; // already running

            const alarmEl = document.getElementById('alarmSound');

            if (alarmEl) {
                alarmEl.loop = true;
                alarmEl.currentTime = 0;
                alarmEl.volume = 0.9;

                const playPromise = alarmEl.play();

                if (playPromise && typeof playPromise.then === 'function') {
                    playPromise.then(function() {
                        usingElementAlarm = true;
                    }).catch(function(e) {
                        // console.warn('Alarm sound file blocked/unavailable, using default beep:', e);
                        startOscillatorBeep();
                    });
                } else {
                    usingElementAlarm = true;
                }
                return;
            }

            // #alarmSound element hi nahi mila (header load nahi hua) — direct beep
            startOscillatorBeep();
        }

        function startOscillatorBeep() {
            if (alarmOscillator) return;
            try {
                alarmAudioCtx = alarmAudioCtx || new(window.AudioContext || window.webkitAudioContext)();
                alarmOscillator = alarmAudioCtx.createOscillator();
                alarmGain = alarmAudioCtx.createGain();
                alarmOscillator.type = 'square';
                alarmOscillator.frequency.value = 880;
                alarmGain.gain.value = 0.15;
                alarmOscillator.connect(alarmGain).connect(alarmAudioCtx.destination);
                alarmOscillator.start();
                let on = true;
                alarmBeepInterval = setInterval(() => {
                    on = !on;
                    alarmGain.gain.value = on ? 0.15 : 0;
                }, 400);
            } catch (e) {
                console.warn('Alarm blocked:', e);
            }
        }

        function stopAlarmBeep() {
            // uploaded/default alarm file stop
            const alarmEl = document.getElementById('alarmSound');
            if (alarmEl) {
                alarmEl.loop = false;
                alarmEl.pause();
                alarmEl.currentTime = 0;
            }
            usingElementAlarm = false;

            // oscillator fallback beep stop
            if (alarmBeepInterval) clearInterval(alarmBeepInterval);
            if (alarmOscillator) {
                alarmOscillator.stop();
                alarmOscillator.disconnect();
                alarmOscillator = null;
            }
        }
        // ─────────────────────────────────────────────────────────────

        function loadCombinedRequests(callback) {
            // Agar header ka cached data available hai (2 min se purana nahi), turant use karo
            const cacheAge = window.__lastTicketNotifTime ? (Date.now() - window.__lastTicketNotifTime) :
                Infinity;
            let usedCache = false;

            if (window.__lastTicketNotifRes && cacheAge < 120000) {
                cachedCombinedRequests = buildCombinedFromRes(window.__lastTicketNotifRes);
                usedCache = true;
                if (callback) callback();
            }

            $.ajax({
                url: '{{ route('tools.getMyTicketNotifications') }}',
                method: 'GET',
                success: function(res) {
                    window.__lastTicketNotifRes = res;
                    window.__lastTicketNotifTime = Date.now();
                    if (res.servertime) {
                        window.__serverTimeOffset = new Date(res.servertime.replace(' ', 'T'))
                            .getTime() - Date.now();
                    }
                    cachedCombinedRequests = buildCombinedFromRes(res);

                    if (usedCache) {
                        // Pehle se cache se render ho chuka tha, ab silently refresh kar do
                        if ($('#orderRequestsModal').hasClass('show')) {
                            renderRequestList(cachedCombinedRequests, currentPage);
                        }
                    } else if (callback) {
                        callback();
                    }
                },
                error: function() {
                    if (!usedCache) {
                        $('#orderRequestsListContainer').html(
                            '<p class="text-danger text-center">Failed to load requests.</p>');
                    }
                }
            });
        }

        function renderRequestList(requests, page) {
            const container = $('#orderRequestsListContainer');
            const totalPages = Math.ceil(requests.length / perPage);
            const start = (page - 1) * perPage;
            const pageRequests = requests.slice(start, start + perPage);

            if (requests.length === 0) {
                container.html('<p class="text-muted text-center">No requests today.</p>');
                $('#orderRequestsPagination').html('');
                return;
            }

            let html = '<table class="table table-bordered table-striped table-sm">';
            html += '<thead class="bg-dark text-white"><tr>';
            html +=
                '<th>Type</th><th>Request ID</th><th>Outlet/Dept</th><th>Room/Table No</th><th>Items</th><th>Action</th>';
            html += '</tr></thead><tbody>';

            pageRequests.forEach(function(req) {
                let typeLabel = req.reqtype === 'order' ?
                    '<span class="badge badge-info">Order</span>' :
                    '<span class="badge badge-warning">Service</span>';

                const reqIsWakeup = isWakeupReq(req);

                let itemNames;
                let wakeupTargetMs = null;
                if (reqIsWakeup) {
                    const target = parseWakeupTarget(req);
                    wakeupTargetMs = target ? target.getTime() : null;
                    const targetLabel = target ? target.toLocaleTimeString('en-IN', {
                        hour: '2-digit',
                        minute: '2-digit'
                    }) : '';
                    itemNames = '<span class="wakeup-countdown" data-reqid="' + escapeHtml(req.id) +
                        '" data-target="' + (wakeupTargetMs || '') +
                        '" data-status="' + escapeHtml((req.status || '').toLowerCase()) +
                        '">--</span>' +
                        (targetLabel ? ' <small class="text-muted">(' + targetLabel + ')</small>' : '');
                } else {
                    itemNames = (req.items || []).map(function(it) {
                        return escapeHtml(it.itemname);
                    }).join(', ');
                    if (!itemNames) itemNames = '<span class="text-muted">No items</span>';
                }

                const statusLower = (req.status || '').toLowerCase();

                html += '<tr>';
                html += '<td>' + typeLabel + '</td>';
                html += '<td>' + escapeHtml(req.id) + '</td>';
                html += '<td>' + escapeHtml(req.outletname) + '</td>';
                html += '<td>' + escapeHtml(req.roomno) + '</td>';
                html += '<td style="white-space:normal;">' + itemNames + '</td>';
                html += '<td style="white-space:nowrap;">';
                html += '<button class="btn btn-sm btn-info mr-1 btn-view-req" data-reqtype="' + req
                    .reqtype + '" data-id="' + escapeHtml(req.id) + '" data-roomno="' + escapeHtml(req
                        .roomno) + '">View</button>';

                if (statusLower === 'delivered') {
                    html +=
                        '<span class="text-success font-weight-bold ml-1"><i class="fa fa-check"></i> Delivered</span>';
                } else if (statusLower === 'rejected' || statusLower === 'cancelled') {
                    html +=
                        '<span class="text-danger font-weight-bold ml-1"><i class="fa fa-times"></i> Rejected</span>';
                } else {
                    // Pending / In Progress ya status unknown/missing — hamesha buttons dikhao
                    if (statusLower === 'in progress') {
                        html += '<span class="badge badge-primary ml-1 mr-1">In Progress</span>';
                    }

                    if (reqIsWakeup) {
                        // Wake-up ke liye Accept sirf target time ke 10 min andar hi enable hoga
                        const nowMs = getSyncedNow().getTime();
                        const remaining = wakeupTargetMs ? (wakeupTargetMs - nowMs) : Infinity;
                        const isEnabled = remaining <= 10 * 60 * 1000;

                        html +=
                            '<button class="btn btn-sm btn-success mr-1 btn-accept-req btn-accept-wakeup" ' +
                            'data-reqtype="' + req.reqtype + '" data-id="' + escapeHtml(req.id) +
                            '" data-roomno="' + escapeHtml(req.roomno) + '" ' +
                            'data-wakeup-target="' + (wakeupTargetMs || '') + '" ' +
                            (isEnabled ? '' :
                                'disabled title="Accept sirf wake-up time ke 10 min andar hi enable hoga"'
                            ) +
                            '>Accept</button>';
                    } else {
                        html +=
                            '<button class="btn btn-sm btn-success mr-1 btn-accept-req" data-reqtype="' +
                            req.reqtype + '" data-id="' + escapeHtml(req.id) + '" data-roomno="' +
                            escapeHtml(req.roomno) + '">Accept</button>';
                    }

                    html += '<button class="btn btn-sm btn-danger btn-reject-req" data-reqtype="' + req
                        .reqtype + '" data-id="' + escapeHtml(req.id) + '" data-roomno="' + escapeHtml(
                            req.roomno) + '">Reject</button>';
                }

                html += '</td>';
                html += '</tr>';
            });

            html += '</tbody></table>';
            container.html(html);

            let pagHtml = '';
            if (totalPages > 1) {
                pagHtml += '<ul class="pagination pagination-sm">';
                pagHtml += '<li class="page-item ' + (page <= 1 ? 'disabled' : '') +
                    '"><a class="page-link order-page-link" href="#" data-page="' + (page - 1) +
                    '">&laquo;</a></li>';
                for (let p = 1; p <= totalPages; p++) {
                    pagHtml += '<li class="page-item ' + (p === page ? 'active' : '') +
                        '"><a class="page-link order-page-link" href="#" data-page="' + p + '">' + p +
                        '</a></li>';
                }
                pagHtml += '<li class="page-item ' + (page >= totalPages ? 'disabled' : '') +
                    '"><a class="page-link order-page-link" href="#" data-page="' + (page + 1) +
                    '">&raquo;</a></li>';
                pagHtml += '</ul>';
            }
            $('#orderRequestsPagination').html(pagHtml);
        }

        function loadAndRenderRequests() {
            loadCombinedRequests(function() {
                currentPage = 1;
                renderRequestList(cachedCombinedRequests, currentPage);
            });
        }

        $(document).on('click', '#outletorders', function() {
            $('#orderRequestsModal').modal('show');
            loadAndRenderRequests();
        });

        // Pagination click
        $(document).on('click', '.order-page-link', function(e) {
            e.preventDefault();
            let page = parseInt($(this).data('page'));
            if (isNaN(page) || page < 1) return;
            currentPage = page;
            renderRequestList(cachedCombinedRequests, currentPage);
        });

        // View request details
        $(document).on('click', '.btn-view-req', function() {
            let reqtype = $(this).data('reqtype');
            let id = $(this).data('id');
            let roomno = $(this).data('roomno');
            let req = cachedCombinedRequests.find(r => r.reqtype === reqtype && String(r.id) === String(
                id));
            if (!req) return;

            if (reqtype === 'service' && (req.status || '').toLowerCase() === 'pending') {
                $.ajax({
                    url: '{{ route('servicerequest.view') }}',
                    method: 'POST',
                    data: {
                        requestno: id,
                        roomno: roomno,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(res) {
                        console.log('view-track response:', res);
                        if (res.status !== 'success' || res.updated === 0) {
                            console.warn('View-track ne row update nahi kiya. Response:',
                                res);
                        }
                        loadAndRenderRequests();
                    },
                    error: function(xhr) {
                        console.error('View-track AJAX FAILED. Status:', xhr.status,
                            'Response:', xhr
                            .responseText);
                    }
                });
            }

            $('#detailOrderId').text(req.id);
            $('#detailReqType').text(req.reqtype === 'order' ? 'Order' : 'Service');
            $('#detailOutlet').text(req.outletname);
            $('#detailTime').text(req.entrytime ? new Date(req.entrytime).toLocaleString('en-GB') : req
                .entrytime);
            $('#detailNotes').text(req.notes || '-');

            if (req.reqtype === 'order' && (req.departnature || '').toLowerCase() === 'room service') {
                $('#detailRoomNo').text('Room ' + req.roomno);
                $('#detailguestname').text(req.guestname ?? '');
                $('#detailmobie').text(req.guestmobile ?? '');
            } else if (req.reqtype === 'order') {
                $('#detailRoomNo').text('Table ' + req.roomno);
                $('#detailguestname').text(req.guestname ?? '');
                $('#detailmobie').text(req.guestmobile ?? '');
            } else {
                $('#detailRoomNo').text('Room ' + req.roomno);
                $('#detailguestname').text(req.guestname ?? '');
                $('#detailmobie').text(req.guestmobile ?? '');
            }

            // Wake-up ke liye detail modal mein bhi live countdown
            if (isWakeupReq(req)) {
                const target = parseWakeupTarget(req);
                $('#detailWakeupCountdown')
                    .attr('data-reqid', req.id)
                    .attr('data-target', target ? target.getTime() : '')
                    .attr('data-status', (req.status || '').toLowerCase())
                    .text('--');
                $('#detailWakeupRow').show();
            } else {
                $('#detailWakeupRow').hide();
            }

            let html = '';
            (req.items || []).forEach(function(item, idx) {
                html += '<tr>';
                html += '<td>' + (idx + 1) + '</td>';
                html += '<td>' + escapeHtml(item.itemname) + '</td>';
                html += '<td>' + escapeHtml(item.qty) + '</td>';
                html += '</tr>';
            });
            $('#detailItemsBody').html(html);
            $('#orderDetailModal').modal('show');
        });

        // Accept request (routes to correct backend based on type)
        $(document).on('click', '.btn-accept-req', function() {
            let btn = $(this);
            if (btn.prop('disabled')) return; // wakeup ka time abhi 10 min ke andar nahi aaya

            let reqtype = btn.data('reqtype');
            let id = btn.data('id');
            let roomno = btn.data('roomno');

            if (reqtype === 'order') {
                // ── ORDER TYPE — purana flow, koi change nahi ──
                const url = '/order-request/accept';
                const payload = {
                    order_id: id,
                    _token: $('meta[name="csrf-token"]').attr('content')
                };

                Swal.fire({
                    title: 'Accept Request?',
                    text: 'This will accept order ' + id,
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, Accept',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        btn.prop('disabled', true).text('Processing...');
                        $.ajax({
                            url: url,
                            method: 'POST',
                            data: payload,
                            success: function(res) {
                                const ok = res.status === 'success' || res
                                    .success ===
                                    true;
                                if (ok) {
                                    Swal.fire('Delivered!', res.message, 'success');
                                    loadAndRenderRequests();
                                } else {
                                    Swal.fire('Error', res.message, 'error');
                                    btn.prop('disabled', false).text('Accept');
                                }
                            },
                            error: function(xhr) {
                                if (xhr.status === 419) {
                                    return;
                                }
                                let msg = xhr.responseJSON ? xhr.responseJSON
                                    .message :
                                    'Something went wrong';
                                Swal.fire('Error', msg, 'error');
                                btn.prop('disabled', false).text('Accept');
                            }
                        });
                    }
                });
                return;
            }

            // ── SERVICE TYPE ──
            let req = cachedCombinedRequests.find(r => r.reqtype === 'service' && String(r.id) ===
                String(id));
            if (!req) return;

            // ── WAKE-UP CALL — qty ki jagah time adjust modal ──
            if (isWakeupReq(req)) {
                $('#acceptQtyReqId').text(req.id);
                $('#acceptQtyRoomNo').text(req.roomno);
                $('#acceptQtyHint').text(
                    'Wake-up time zaroorat pade toh 5-5 min adjust kar sakte ho, phir Confirm Accept dabao.'
                );

                const currentTimeStr = (req.items[0] && req.items[0].itemname) || '06:00 AM';
                const sno = (req.items[0] && req.items[0].sno) || 1;

                $('#acceptQtyItemsWrap').html(`
                    <div class="qty-adjust-row" data-sno="${sno}" data-is-wakeup="1">
                        <span>Wake-Up Time</span>
                        <div class="qty-adjust-stepper">
                            <button type="button" class="time-adj-down">-5m</button>
                            <input type="text" readonly class="time-adj-value" value="${currentTimeStr}">
                            <button type="button" class="time-adj-up">+5m</button>
                        </div>
                    </div>`);

                $('#btnConfirmAcceptQty').data('id', id).data('roomno', roomno).data('btn', btn).prop(
                        'disabled', false)
                    .html('<i class="fa-solid fa-check"></i> Confirm Accept');

                $('#acceptQtyModal').modal('show');
                return;
            }

            // ── NORMAL SERVICE — qty adjust modal ──
            $('#acceptQtyReqId').text(req.id);
            $('#acceptQtyRoomNo').text(req.roomno);
            $('#acceptQtyHint').text(
                'Deliver ki gayi actual qty adjust kar sakte ho. 0 karne se wo item deliver nahi mana jayega.'
            );

            let itemsHtml = '';
            (req.items || []).forEach(function(item) {
                if (item.sno === undefined || item.sno === null)
                    return; // sno zaroori hai backend update ke liye
                let currentQty = (item.qty !== null && item.qty !== undefined && item.qty !==
                        '') ?
                    parseInt(item.qty, 10) : 1;
                if (isNaN(currentQty) || currentQty < 0) currentQty = 0;

                itemsHtml += `
                    <div class="qty-adjust-row" data-sno="${item.sno}">
                        <span>${escapeHtml(item.itemname)}</span>
                        <div class="qty-adjust-stepper">
                            <button type="button" class="qty-adj-down">-</button>
                            <input type="text" inputmode="numeric" class="qty-adj-value" value="${currentQty}" readonly>
                            <button type="button" class="qty-adj-up">+</button>
                        </div>
                    </div>`;
            });

            if (!itemsHtml) {
                itemsHtml =
                    '<p class="text-muted text-center">No items to adjust — request has no line items.</p>';
            }

            $('#acceptQtyItemsWrap').html(itemsHtml);
            $('#btnConfirmAcceptQty').data('id', id).data('roomno', roomno).data('btn', btn).prop(
                    'disabled', false)
                .html('<i class="fa-solid fa-check"></i> Confirm Accept');

            $('#acceptQtyModal').modal('show');
        });

        // qty +/- delegation for accept-adjust modal
        $(document).on('click', '#acceptQtyItemsWrap .qty-adj-up, #acceptQtyItemsWrap .qty-adj-down',
            function() {
                let row = $(this).closest('.qty-adjust-row');
                let input = row.find('.qty-adj-value');
                let val = parseInt(input.val() || '0', 10);
                val = $(this).hasClass('qty-adj-up') ? val + 1 : Math.max(0, val - 1);
                input.val(val);
            });

        // time +/- delegation for wakeup accept-adjust modal
        $(document).on('click', '#acceptQtyItemsWrap .time-adj-up, #acceptQtyItemsWrap .time-adj-down',
            function() {
                const input = $(this).closest('.qty-adjust-row').find('.time-adj-value');
                const m = input.val().match(/^(\d{1,2}):(\d{2})\s*(AM|PM)$/i);
                if (!m) return;
                let hour = parseInt(m[1], 10),
                    min = parseInt(m[2], 10);
                const ampm = m[3].toUpperCase();
                let total = (hour % 12) * 60 + min + (ampm === 'PM' ? 720 : 0);
                total += $(this).hasClass('time-adj-up') ? 5 : -5;
                total = ((total % 1440) + 1440) % 1440;
                let h24 = Math.floor(total / 60),
                    mm = total % 60;
                const newAmpm = h24 >= 12 ? 'PM' : 'AM';
                let h12 = h24 % 12;
                if (h12 === 0) h12 = 12;
                input.val(String(h12).padStart(2, '0') + ':' + String(mm).padStart(2, '0') + ' ' +
                    newAmpm);
            });

        // Confirm accept with adjusted qty (ya wakeup ke liye adjusted time)
        $(document).on('click', '#btnConfirmAcceptQty', function() {
            let confirmBtn = $(this);
            let id = confirmBtn.data('id');
            let roomno = confirmBtn.data('roomno');
            let origBtn = confirmBtn.data('btn');

            let items = [];
            const isWakeup = $('#acceptQtyItemsWrap [data-is-wakeup]').length > 0;

            if (isWakeup) {
                $('#acceptQtyItemsWrap .qty-adjust-row').each(function() {
                    items.push({
                        sno: $(this).data('sno'),
                        itemname: $(this).find('.time-adj-value').val()
                    });
                });
            } else {
                $('#acceptQtyItemsWrap .qty-adjust-row').each(function() {
                    let sno = $(this).data('sno');
                    let qty = parseInt($(this).find('.qty-adj-value').val() || '0', 10);
                    items.push({
                        sno: sno,
                        qty: qty
                    });
                });
            }

            confirmBtn.prop('disabled', true).text('Processing...');

            $.ajax({
                url: '/service-request/accept',
                method: 'POST',
                data: {
                    requestno: id,
                    roomno: roomno,
                    items: items,
                    _token: $('meta[name="csrf-token"]').attr('content')
                },
                success: function(res) {
                    const ok = res.status === 'success' || res.success === true;
                    confirmBtn.prop('disabled', false).html(
                        '<i class="fa-solid fa-check"></i> Confirm Accept');
                    if (ok) {
                        // Turant is specific request ko "band" mark karo, taaki agla
                        // tick (AJAX refresh se pehle) firse alarm na chalaye
                        document.querySelectorAll('.wakeup-countdown[data-reqid="' + id +
                                '"]')
                            .forEach(function(el) {
                                el.dataset.status = 'delivered';
                            });
                        document.querySelectorAll('.btn-accept-wakeup[data-id="' + id +
                                '"]')
                            .forEach(function(b) {
                                b.disabled = true;
                            });
                        stopAlarmBeep
                    (); // ── accept hote hi beep/alarm sound turant band ──
                        $('#acceptQtyModal').modal('hide');
                        Swal.fire('Delivered!', res.message, 'success');
                        loadAndRenderRequests();
                    } else {
                        Swal.fire('Error', res.message, 'error');
                        if (origBtn) origBtn.prop('disabled', false).text('Accept');
                    }
                },
                error: function(xhr) {
                    confirmBtn.prop('disabled', false).html(
                        '<i class="fa-solid fa-check"></i> Confirm Accept');
                    if (xhr.status === 419) {
                        return;
                    }
                    let msg = xhr.responseJSON ? xhr.responseJSON.message :
                        'Something went wrong';
                    Swal.fire('Error', msg, 'error');
                    if (origBtn) origBtn.prop('disabled', false).text('Accept');
                }
            });
        });

        $(document).on('click', '.btn-reject-req', function() {
            let btn = $(this);
            let reqtype = btn.data('reqtype');
            let id = btn.data('id');
            let roomno = btn.data('roomno');

            const url = reqtype === 'order' ? '/order-request/reject' : '/service-request/reject';
            const payload = reqtype === 'order' ? {
                order_id: id,
                _token: $('meta[name="csrf-token"]').attr('content')
            } : {
                requestno: id,
                roomno: roomno,
                _token: $('meta[name="csrf-token"]').attr('content')
            };

            Swal.fire({
                title: 'Reject Request?',
                text: 'This will reject ' + (reqtype === 'order' ? 'order ' :
                    'service request ') + id,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, Reject',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    btn.prop('disabled', true).text('Rejecting...');
                    $.ajax({
                        url: url,
                        method: 'POST',
                        data: payload,
                        success: function(res) {
                            const ok = res.status === 'success' || res.success ===
                                true;

                            if (ok) {
                                document.querySelectorAll(
                                        '.wakeup-countdown[data-reqid="' + id + '"]'
                                    )
                                    .forEach(function(el) {
                                        el.dataset.status = 'rejected';
                                    });
                                stopAlarmBeep
                            (); // ── reject hote hi beep/alarm sound bhi band ──
                                Swal.fire('Rejected!', res.message, 'success');
                                loadAndRenderRequests();
                            } else {
                                Swal.fire('Error', res.message, 'error');
                                btn.prop('disabled', false).text('Reject');
                            }
                        },
                        error: function(xhr) {
                            if (xhr.status === 419) {
                                return;
                            }
                            let msg = xhr.responseJSON ? xhr.responseJSON.message :
                                'Something went wrong';
                            Swal.fire('Error', msg, 'error');
                            btn.prop('disabled', false).text('Reject');
                        }
                    });
                }
            });
        });

        // Wake-up countdown tick — har second update hota hai, 10 min se kam pe alarm
        // + Accept button ko live enable/disable karta hai
        setInterval(function() {
            const now = getSyncedNow().getTime();
            let anyAlarm = false;

            document.querySelectorAll('.wakeup-countdown').forEach(function(el) {
                const target = parseInt(el.dataset.target, 10);
                if (!target) {
                    el.textContent = '—';
                    return;
                }

                const remaining = target - now;
                el.textContent = formatCountdown(remaining);

                const isOpen = ['pending', 'in progress'].includes(el.dataset.status);
                if (isOpen && remaining <= 10 * 60 * 1000) {
                    el.classList.add('text-danger', 'font-weight-bold');
                    anyAlarm = true;
                } else {
                    el.classList.remove('text-danger', 'font-weight-bold');
                }
            });

            document.querySelectorAll('.btn-accept-wakeup').forEach(function(btn) {
                const target = parseInt(btn.dataset.wakeupTarget, 10);
                if (!target) return;
                const remaining = target - now;
                if (remaining <= 10 * 60 * 1000) {
                    btn.disabled = false;
                    btn.removeAttribute('title');
                } else {
                    btn.disabled = true;
                    btn.title = 'Accept sirf wake-up time ke 10 min andar hi enable hoga';
                }
            });

            anyAlarm ? startAlarmBeep() : stopAlarmBeep();
        }, 1000);
    });
</script>
