@extends('tools.layouts.main')
@section('main-container')
    <style>
        .ticket-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .ticket-card:hover {
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
            transform: translateY(-2px);
        }

        .ticket-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 2px solid #f0f0f0;
        }

        .ticket-number {
            font-size: 18px;
            font-weight: bold;
            color: #667eea;
        }

        .ticket-status {
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
        }

        .status-pending {
            background: #fff3cd;
            color: #856404;
        }

        .status-working {
            background: #d1ecf1;
            color: #0c5460;
        }

        .status-complete {
            background: #d4edda;
            color: #155724;
        }

        .ticket-info {
            margin-bottom: 15px;
        }

        .ticket-info-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            color: #666;
        }

        .ticket-info-item i {
            margin-right: 10px;
            color: #667eea;
            width: 20px;
        }

        .ticket-problem {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-top: 15px;
            max-height: 200px;
            overflow-y: auto;
        }

        .ticket-actions {
            margin-top: 15px;
            display: flex;
            gap: 10px;
        }

        .status-btn {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            font-size: 13px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .status-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-pending {
            background: #ffc107;
            color: white;
        }

        .btn-working {
            background: #17a2b8;
            color: white;
        }

        .btn-complete {
            background: #28a745;
            color: white;
        }

        .filter-tabs {
            margin-bottom: 30px;
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .filter-tab {
            padding: 10px 20px;
            border: 2px solid #667eea;
            background: white;
            color: #667eea;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
        }

        .filter-tab:hover,
        .filter-tab.active {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .page-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
        }

        .page-header h2 {
            margin: 0;
            color: white;
        }

        .chat-section {
            margin-top: 15px;
            border: 1px solid #e9ecef;
            border-radius: 8px;
            padding: 12px;
            background: #fff;
        }

        .chat-messages {
            max-height: 280px;
            overflow-y: auto;
            background: #f8f9fa;
            border-radius: 8px;
            padding: 10px;
        }

        .chat-item {
            margin-bottom: 10px;
        }

        .chat-bubble {
            padding: 10px;
            border-radius: 10px;
            max-width: 80%;
            display: inline-block;
            white-space: pre-wrap;
            word-break: break-word;
        }

        .chat-item.self {
            text-align: right;
        }

        .chat-item.self .chat-bubble {
            background: #d1ecf1;
        }

        .chat-item.other .chat-bubble {
            background: #e2e3e5;
        }

        .chat-meta {
            font-size: 11px;
            color: #6c757d;
            margin-top: 4px;
        }

        .chat-image {
            max-width: 180px;
            border-radius: 8px;
            margin-top: 8px;
            display: block;
        }

        .ticket-complete-stamp {
            position: absolute;
            top: 12px;
            right: -38px;
            background: #28a745;
            color: #fff;
            padding: 6px 42px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 1px;
            transform: rotate(35deg);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            z-index: 2;
        }

        .ticket-highlight-blink {
            animation: ticketFocusBlink 1s ease-in-out 4;
            border: 2px solid #dc3545;
        }

        @keyframes ticketFocusBlink {
            0% { box-shadow: 0 0 0 rgba(220, 53, 69, 0.0); }
            50% { box-shadow: 0 0 22px rgba(220, 53, 69, 0.7); }
            100% { box-shadow: 0 0 0 rgba(220, 53, 69, 0.0); }
        }

        .chat-edit-btn {
            margin-top: 6px;
            border: none;
            background: transparent;
            color: #0d6efd;
            font-size: 11px;
            font-weight: 600;
            padding: 0;
            cursor: pointer;
        }

        .chat-system-note {
            background: #fff3cd !important;
            border: 1px solid #ffeaa7;
        }
    </style>
    <div class="content-body">
        <div class="container-fluid">
            <div class="page-header">
                <h2><i class="fas fa-ticket-alt me-2"></i>Support Tickets Management</h2>
                <p class="mb-0 mt-2">View and manage all support tickets submitted by users</p>
                <div class="mt-3 d-flex gap-2 flex-wrap">
                    <button type="button" class="btn btn-success btn-sm" onclick="enableBrowserSound()">
                        <i class="fas fa-volume-up me-1"></i>Enable Browser Sound
                    </button>
                    <button type="button" class="btn btn-light btn-sm" onclick="configureSoundUrl()">
                        <i class="fas fa-link me-1"></i>Set Sound URL
                    </button>
                    <button type="button" class="btn btn-light btn-sm" onclick="openSoundFilePicker()">
                        <i class="fas fa-upload me-1"></i>Upload Sound
                    </button>
                    <button type="button" class="btn btn-outline-light btn-sm" onclick="resetNotificationSound()">
                        <i class="fas fa-undo me-1"></i>Reset Sound
                    </button>
                </div>
            </div>

            <!-- Filter Tabs -->
            <div class="filter-tabs">
                <button class="filter-tab {{ request('status', 'all') == 'all' ? 'active' : '' }}"
                    onclick="filterTickets('all')">
                    <i class="fas fa-list me-1"></i>All Tickets
                </button>
                <button class="filter-tab {{ request('status') == 'pending' ? 'active' : '' }}"
                    onclick="filterTickets('pending')">
                    <i class="fas fa-clock me-1"></i>Pending
                </button>
                <button class="filter-tab {{ request('status') == 'working' ? 'active' : '' }}"
                    onclick="filterTickets('working')">
                    <i class="fas fa-cog me-1"></i>Working
                </button>
                <button class="filter-tab {{ request('status') == 'complete' ? 'active' : '' }}"
                    onclick="filterTickets('complete')">
                    <i class="fas fa-check-circle me-1"></i>Complete
                </button>
            </div>

            <!-- Tickets List -->
            <div class="row">
                <div class="col-12">
                    @if($tickets->count() > 0)
                        @foreach($tickets as $ticket)
                            <div class="ticket-card" data-ticket-id="{{ $ticket->id }}">
                                @if($ticket->status == 'complete')
                                    <div class="ticket-complete-stamp">COMPLETED</div>
                                @endif
                                <div class="ticket-header">
                                    <div>
                                        <div class="ticket-number">{{ $ticket->ticket_number }}</div>
                                        <small class="text-muted">
                                            <i class="fas fa-calendar me-1"></i>
                                            {{ $ticket->created_at->format('d M Y, h:i A') }}
                                        </small>
                                    </div>
                                    <span class="ticket-status status-{{ $ticket->status }}">
                                        @if($ticket->status == 'pending')
                                            <i class="fas fa-clock me-1"></i>
                                        @elseif($ticket->status == 'working')
                                            <i class="fas fa-cog me-1"></i>
                                        @else
                                            <i class="fas fa-check-circle me-1"></i>
                                        @endif
                                        {{ ucfirst($ticket->status) }}
                                    </span>
                                </div>

                                <div class="ticket-info">
                                    <div class="ticket-info-item">
                                        <i class="fas fa-user"></i>
                                        <strong>Property ID:</strong>&nbsp; {{ $ticket->property_id }}
                                    </div>
                                    <div class="ticket-info-item">
                                        <i class="fas fa-user"></i>
                                        <strong>Name:</strong>&nbsp; : {{ $ticket->name }}
                                    </div>
                                    <div class="ticket-info-item">
                                        <i class="fas fa-phone"></i>
                                        <strong>Mobile:</strong>&nbsp;{{ $ticket->mobile_number }}
                                    </div>
                                    @if(!empty($ticket->assigned_to_name))
                                        <div class="ticket-info-item">
                                            <i class="fas fa-user-tag"></i>
                                            <strong>Assigned To:</strong>&nbsp;{{ $ticket->assigned_to_name }}
                                            @if($ticket->assignment_status == 'queued')
                                                <span class="badge bg-warning ms-2">Queued</span>
                                            @elseif($ticket->assignment_status == 'assigned')
                                                <span class="badge bg-info ms-2">Assigned</span>
                                            @elseif($ticket->assignment_status == 'accepted')
                                                <span class="badge bg-success ms-2">Accepted</span>
                                            @elseif($ticket->assignment_status == 'transferred')
                                                <span class="badge bg-secondary ms-2">Transferred</span>
                                            @endif
                                        </div>
                                    @else
                                        <div class="ticket-info-item">
                                            <i class="fas fa-clock"></i>
                                            <strong>Status:</strong>&nbsp;<span class="badge bg-warning">In Queue</span>
                                        </div>
                                    @endif
                                    @if(!empty($ticket->working_by_name))
                                        <div class="ticket-info-item">
                                            <i class="fas fa-user-check"></i>
                                            <strong>Working By:</strong>&nbsp;{{ $ticket->working_by_name }}
                                        </div>
                                    @endif
                                    @if($ticket->status == 'working' && !empty($ticket->working_by_at))
                                        <div class="ticket-info-item">
                                            <i class="fas fa-hourglass-half"></i>
                                            <strong>Work Running:</strong>&nbsp;
                                            <span class="badge bg-primary work-duration" data-working-at="{{ $ticket->working_by_at }}">
                                                {{ \Carbon\Carbon::parse($ticket->working_by_at)->diffForHumans(null, true) }}
                                            </span>
                                        </div>
                                    @endif
                                    @if(!empty($ticket->transferred_by_name) || !empty($ticket->transfer_reason))
                                        <div class="ticket-info-item align-items-start">
                                            <i class="fas fa-exchange-alt mt-1"></i>
                                            <div>
                                                <strong>Last Transfer:</strong>
                                                {{ $ticket->transferred_by_name ?? 'N/A' }}
                                                @if(!empty($ticket->assigned_to_name))
                                                    → {{ $ticket->assigned_to_name }}
                                                @endif
                                                @if(!empty($ticket->transferred_at))
                                                    <small
                                                        class="text-muted d-block">{{ \Carbon\Carbon::parse($ticket->transferred_at)->format('d M Y, h:i A') }}</small>
                                                @endif
                                                @if(!empty($ticket->transfer_reason))
                                                    <small class="d-block"><strong>Reason:</strong> {{ $ticket->transfer_reason }}</small>
                                                @endif
                                            </div>
                                        </div>
                                    @endif
                                </div>

                                <div class="ticket-problem">
                                    <strong><i class="fas fa-file-alt me-2"></i>Problem Description:</strong>
                                    <div class="mt-2">
                                        {!! $ticket->problem !!}
                                    </div>
                                </div>
                                <button class="status-btn mt-2" style="background: #495057; color: white;"
                                    onclick="toggleTicketChat({{ $ticket->id }})">
                                    <i class="fas fa-comments me-1"></i>Comments / SMS
                                </button>

                                <div class="chat-section d-none" id="chatSection-{{ $ticket->id }}">
                                    <div class="chat-messages" id="chatMessages-{{ $ticket->id }}">
                                        <div class="text-muted">Loading conversation...</div>
                                    </div> 
                                    @if($ticket->status != 'complete')
                                        <div class="row g-2 mt-2">
                                            <div class="col-md-8">
                                                <textarea class="form-control" id="messageInput-{{ $ticket->id }}" rows="2"
                                                    placeholder="Type comment/reply..."></textarea>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="file" class="form-control" id="messageImage-{{ $ticket->id }}"
                                                    accept="image/*">
                                                <button class="btn btn-primary w-100 mt-2"
                                                    onclick="sendTicketMessage({{ $ticket->id }})">
                                                    <i class="fas fa-paper-plane me-1"></i>Send
                                                </button>
                                            </div>
                                        </div>
                                    @endif
                                </div>


                                <div class="ticket-actions">
                                    @php
                                        $canOperateTicket = $ticket->assigned_to_id == auth()->id() || $ticket->working_by_id == auth()->id();
                                        $isAcceptedTicket = $ticket->assignment_status == 'accepted' && $ticket->is_seen;
                                        $isUserSatisfied = (bool) $ticket->is_user_satisfied;
                                    @endphp

                                    @if($ticket->assigned_to_id == auth()->id() && !$ticket->is_seen)
                                        <button class="status-btn" style="background: #28a745; color: white;"
                                            onclick="acceptTicket({{ $ticket->id }})">
                                            <i class="fas fa-check me-1"></i>Accept Ticket
                                        </button>
                                    @endif

                                    @if($isAcceptedTicket && $ticket->status == 'pending')
                                        <button class="status-btn btn-working"
                                            onclick="updateTicketStatus({{ $ticket->id }}, 'working')">
                                            <i class="fas fa-cog me-1"></i>Mark as Working
                                        </button>
                                    @endif

                                    @if($isAcceptedTicket && $ticket->status == 'working' && !$isUserSatisfied)
                                        <button class="status-btn" style="background: #fd7e14; color: white;"
                                            onclick="markTicketWorkComplete({{ $ticket->id }})">
                                            <i class="fas fa-flag-checkered me-1"></i>Work Complete
                                        </button>
                                    @endif

                                    @if($isAcceptedTicket && $ticket->status == 'working' && $isUserSatisfied)
                                        <button class="status-btn btn-complete"
                                            onclick="updateTicketStatus({{ $ticket->id }}, 'complete')">
                                            <i class="fas fa-check-circle me-1"></i>Mark as Complete
                                        </button>
                                    @endif

                                    @if($isAcceptedTicket && $ticket->status == 'working' && !$isUserSatisfied)
                                        <span class="badge bg-warning text-dark" style="font-size: 12px; padding: 10px 14px;">
                                            Waiting for user confirmation
                                        </span>
                                    @endif

                                    @if($isAcceptedTicket && $ticket->status != 'complete' && $canOperateTicket)
                                        <button class="status-btn" style="background: #6c757d; color: white;"
                                            onclick="showTransferModal({{ $ticket->id }})">
                                            <i class="fas fa-exchange-alt me-1"></i>Transfer Ticket
                                        </button>
                                    @endif

                                    @if(!$isAcceptedTicket && $ticket->assigned_to_id == auth()->id())
                                        <span class="badge bg-info text-white" style="font-size: 12px; padding: 10px 14px;">Please
                                            accept ticket first</span>
                                    @endif
                                </div>
                            </div>
                        @endforeach

                        <!-- Pagination -->
                        <div class="d-flex justify-content-center mt-4">
                            {{ $tickets->appends(['status' => request('status')])->links() }}
                        </div>
                    @else
                        <div class="alert alert-info text-center">
                            <i class="fas fa-info-circle me-2"></i>
                            No tickets found for the selected filter.
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <!-- Transfer Ticket Modal -->
    <div class="modal fade" id="transferModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"
                    style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;">
                    <h5 class="modal-title"><i class="fas fa-exchange-alt me-2"></i>Transfer Ticket</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" style="filter: invert(1);"></button>
                </div>
                <div class="modal-body">
                    <p>Select a user to transfer this ticket:</p>
                    <select class="form-select" id="transferUserId">
                        <option value="">-- Select User --</option>
                    </select>
                    <label class="form-label mt-3">Transfer Reason <span class="text-danger">*</span></label>
                    <textarea class="form-control" id="transferReason" rows="3"
                        placeholder="Enter reason for transfer..."></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" onclick="confirmTransfer()">
                        <i class="fas fa-paper-plane me-1"></i>Transfer
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Notification Sound -->
    <input type="file" id="customNotificationSound" accept="audio/*" class="d-none">
    <audio id="notificationSound" preload="auto">
        <source src="https://cdn.freesound.org/previews/316/316847_4939433-lq.mp3" type="audio/mpeg">
    </audio>
    <script>
        const DEFAULT_NOTIFICATION_SOUND = 'https://cdn.freesound.org/previews/316/316847_4939433-lq.mp3';
        let hasAudioInteraction = false;
        let soundHintShown = false;

        function filterTickets(status) {
            window.location.href = '{{ route("tools.viewTickets") }}?status=' + status;
        }

        function getNotificationAudio() {
            return document.getElementById('notificationSound');
        }

        function applySavedNotificationSound() {
            fetchNotificationSoundSetting();
        }

        function applyNotificationSoundUrl(soundUrl) {
            const audio = getNotificationAudio();
            if (!audio) {
                return;
            }

            audio.src = soundUrl || DEFAULT_NOTIFICATION_SOUND;
            audio.load();
        }

        function fetchNotificationSoundSetting() {
            $.ajax({
                url: '{{ route("tools.getNotificationSoundSetting") }}',
                method: 'GET',
                success: function (response) {
                    if (response.success) {
                        applyNotificationSoundUrl(response.sound_url || DEFAULT_NOTIFICATION_SOUND);
                    } else {
                        applyNotificationSoundUrl(DEFAULT_NOTIFICATION_SOUND);
                    }
                },
                error: function () {
                    applyNotificationSoundUrl(DEFAULT_NOTIFICATION_SOUND);
                }
            });
        }

        function unlockAudioPlayback() {
            if (hasAudioInteraction) {
                return;
            }

            const audio = getNotificationAudio();
            if (!audio) {
                return;
            }

            hasAudioInteraction = true;
            audio.muted = true;

            const playPromise = audio.play();
            if (playPromise && typeof playPromise.then === 'function') {
                playPromise.then(function () {
                    audio.pause();
                    audio.currentTime = 0;
                    audio.muted = false;
                }).catch(function () {
                    audio.muted = false;
                });
            } else {
                audio.muted = false;
            }
        }

        function configureSoundUrl() {
            Swal.fire({
                title: 'Set Notification Sound URL',
                input: 'url',
                inputValue: '',
                inputPlaceholder: 'https://example.com/alert.mp3',
                showCancelButton: true,
                confirmButtonText: 'Save Sound'
            }).then((result) => {
                if (!result.isConfirmed) {
                    return;
                }

                const url = (result.value || '').trim();
                if (!url) {
                    Swal.fire('Invalid URL', 'Please enter a valid sound URL.', 'warning');
                    return;
                }

                $.ajax({
                    url: '{{ route("tools.saveNotificationSoundUrl") }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        sound_url: url,
                    },
                    success: function (response) {
                        if (response.success) {
                            applyNotificationSoundUrl(response.sound_url || url);
                            Swal.fire('Saved', 'Notification sound URL updated in database.', 'success');
                        } else {
                            Swal.fire('Error', response.message || 'Unable to save sound URL.', 'error');
                        }
                    },
                    error: function (xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to save sound URL.', 'error');
                    }
                });
            });
        }

        function enableBrowserSound() {
            unlockAudioPlayback();

            if ('Notification' in window && Notification.permission === 'default') {
                Notification.requestPermission();
            }

            const audio = getNotificationAudio();
            if (!audio) {
                return;
            }

            audio.loop = false;
            audio.currentTime = 0;
            audio.play().then(function () {
                setTimeout(function () {
                    audio.pause();
                    audio.currentTime = 0;
                }, 900);

                Swal.fire({
                    icon: 'success',
                    title: 'Sound Enabled',
                    text: 'Browser notification sound is now enabled for this session.'
                });
            }).catch(function () {
                Swal.fire({
                    icon: 'warning',
                    title: 'Enable Sound Failed',
                    text: 'Please allow site sound in browser settings and click Enable Browser Sound again.'
                });
            });
        }

        function openSoundFilePicker() {
            $('#customNotificationSound').trigger('click');
        }

        function resetNotificationSound() {
            $.ajax({
                url: '{{ route("tools.resetNotificationSound") }}',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                },
                success: function (response) {
                    if (response.success) {
                        applyNotificationSoundUrl(response.sound_url || DEFAULT_NOTIFICATION_SOUND);
                        Swal.fire('Reset', 'Default notification sound applied from database.', 'success');
                    } else {
                        Swal.fire('Error', response.message || 'Unable to reset sound.', 'error');
                    }
                },
                error: function (xhr) {
                    Swal.fire('Error', xhr.responseJSON?.message || 'Unable to reset sound.', 'error');
                }
            });
        }

        function updateTicketStatus(ticketId, status) {
            Swal.fire({
                title: 'Update status?',
                text: 'Are you sure you want to set status to ' + status + '?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, update',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (!result.isConfirmed) {
                    return;
                }

                $.ajax({
                    url: '{{ route("tools.updateTicketStatus") }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        ticket_id: ticketId,
                        status: status
                    },
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            });

                            setTimeout(function () {
                                location.reload();
                            }, 1500);
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error!',
                                text: response.message
                            });
                        }
                    },
                    error: function (xhr) {
                        let errorMessage = 'Failed to update ticket status';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: errorMessage
                        });
                    }
                });
            });
        }

        // Accept assigned ticket
        function acceptTicket(ticketId) {
            $.ajax({
                url: '{{ route("tools.acceptTicket") }}',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    ticket_id: ticketId
                },
                success: function (response) {
                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Ticket Accepted!',
                            text: response.message,
                            timer: 2000,
                            showConfirmButton: false
                        });

                        setTimeout(function () {
                            location.reload();
                        }, 1500);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: response.message
                        });
                    }
                },
                error: function (xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Failed to accept ticket'
                    });
                }
            });
        }

        // Show transfer modal
        let currentTransferTicketId = null;
        let activeChatTickets = new Set();
        let chatPollingInterval = null;

        function showTransferModal(ticketId) {
            currentTransferTicketId = ticketId;
            $('#transferReason').val('');

            // Fetch available users
            $.ajax({
                url: '{{ route("tools.getAvailableUsers") }}',
                method: 'GET',
                success: function (response) {
                    if (response.success) {
                        let select = $('#transferUserId');
                        select.empty();
                        select.append('<option value="">-- Select User --</option>');

                        response.users.forEach(function (user) {
                            select.append(`<option value="${user.id}">${user.name} (${user.email})</option>`);
                        });

                        $('#transferModal').modal('show');
                    }
                },
                error: function (xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Failed to load users'
                    });
                }
            });
        }

        // Confirm transfer
        function confirmTransfer() {
            const transferToId = $('#transferUserId').val();
            const transferReason = ($('#transferReason').val() || '').trim();

            if (!transferToId) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Select User!',
                    text: 'Please select a user to transfer the ticket.'
                });
                return;
            }

            if (transferReason.length < 5) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Transfer Reason Required!',
                    text: 'Please enter a valid transfer reason (minimum 5 characters).'
                });
                return;
            }

            $.ajax({
                url: '{{ route("tools.transferTicket") }}',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    ticket_id: currentTransferTicketId,
                    transfer_to_id: transferToId,
                    transfer_reason: transferReason
                },
                success: function (response) {
                    $('#transferModal').modal('hide');

                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Transferred!',
                            text: response.message,
                            timer: 2000,
                            showConfirmButton: false
                        });

                        setTimeout(function () {
                            location.reload();
                        }, 1500);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: response.message
                        });
                    }
                },
                error: function (xhr) {
                    $('#transferModal').modal('hide');
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Failed to transfer ticket'
                    });
                }
            });
        }

        function escapeHtml(text) {
            return $('<div/>').text(text || '').html();
        }

        function formatStatus(message) {
            if (message.status === 'read') {
                return `Read${message.read_at ? ' • ' + message.read_at : ''}`;
            }
            if (message.status === 'delivered') {
                return `Delivered${message.delivered_at ? ' • ' + message.delivered_at : ''}`;
            }
            return 'Unread';
        }

        function renderMessages(ticketId, messages) {
            const container = $(`#chatMessages-${ticketId}`);
            if (!messages || messages.length === 0) {
                container.html('<div class="text-muted">No comments yet.</div>');
                return;
            }

            let html = '';
            messages.forEach(function (msg) {
                const isSelf = msg.sender_role === 'support';
                let displayMessage = msg.message || '';
                if (displayMessage.startsWith('[WORK_COMPLETE]')) {
                    displayMessage = 'Work complete marked by support. User confirmation pending.';
                } else if (displayMessage.startsWith('[STATUS_UPDATE]')) {
                    displayMessage = displayMessage.replace('[STATUS_UPDATE]', '').trim();
                }
                html += `<div class="chat-item ${isSelf ? 'self' : 'other'}">`;
                html += `<div class="chat-bubble ${msg.message && msg.message.startsWith('[WORK_COMPLETE]') ? 'chat-system-note' : ''}">`;
                html += `<div><strong>${escapeHtml(msg.sender_name || msg.sender_role)}</strong></div>`;
                if (displayMessage) {
                    html += `<div>${escapeHtml(displayMessage).replace(/\n/g, '<br>')}</div>`;
                }
                if (msg.image_url) {
                    html += `<a href="${msg.image_url}" target="_blank"><img src="${msg.image_url}" class="chat-image" alt="chat-image"></a>`;
                }
                html += `<div class="chat-meta">${msg.created_at || ''}`;
                if (isSelf) {
                    html += ` • ${formatStatus(msg)}`;
                }
                if (msg.is_edited) {
                    html += ` • edited`;
                }
                html += `</div></div></div>`;

                if (isSelf && msg.can_edit) {
                    const encodedMessage = encodeURIComponent(msg.message || '');
                    html += `<div class="chat-item self"><button type="button" class="chat-edit-btn" data-current-message="${encodedMessage}" onclick="editTicketMessage(this, ${ticketId}, ${msg.id})">Edit (5 min)</button></div>`;
                }
            });

            container.html(html);
            container.scrollTop(container[0].scrollHeight);
        }

        function loadTicketMessages(ticketId, markRead = true) {
            $.ajax({
                url: '{{ route("tools.getTicketMessages") }}',
                method: 'GET',
                data: {
                    ticket_id: ticketId,
                    mark_read: markRead ? 1 : 0
                },
                success: function (response) {
                    if (response.success) {
                        renderMessages(ticketId, response.messages || []);
                    }
                }
            });
        }

        function toggleTicketChat(ticketId) {
            const section = $(`#chatSection-${ticketId}`);
            section.toggleClass('d-none');

            if (!section.hasClass('d-none')) {
                activeChatTickets.add(ticketId);
                loadTicketMessages(ticketId, true);
            } else {
                activeChatTickets.delete(ticketId);
            }
        }

        function sendTicketMessage(ticketId) {
            const messageText = ($(`#messageInput-${ticketId}`).val() || '').trim();
            const imageInput = document.getElementById(`messageImage-${ticketId}`);
            const imageFile = imageInput && imageInput.files && imageInput.files[0] ? imageInput.files[0] : null;

            if (!messageText && !imageFile) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Empty Message!',
                    text: 'Please type a message or select an image.'
                });
                return;
            }

            const formData = new FormData();
            formData.append('_token', '{{ csrf_token() }}');
            formData.append('ticket_id', ticketId);
            if (messageText) {
                formData.append('message', messageText);
            }
            if (imageFile) {
                formData.append('image', imageFile);
            }

            $.ajax({
                url: '{{ route("tools.sendTicketMessage") }}',
                method: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    if (response.success) {
                        $(`#messageInput-${ticketId}`).val('');
                        if (imageInput) {
                            imageInput.value = '';
                        }
                        loadTicketMessages(ticketId, false);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: response.message || 'Failed to send message.'
                        });
                    }
                },
                error: function (xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: xhr.responseJSON?.message || 'Failed to send message.'
                    });
                }
            });
        }

        function editTicketMessage(buttonEl, ticketId, messageId) {
            const currentMessage = decodeURIComponent((buttonEl.getAttribute('data-current-message') || '').replace(/\+/g,
                '%20'));

            Swal.fire({
                title: 'Edit Message',
                input: 'textarea',
                inputValue: currentMessage || '',
                inputAttributes: {
                    rows: 4
                },
                showCancelButton: true,
                confirmButtonText: 'Update',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (!result.isConfirmed) {
                    return;
                }

                const updatedMessage = (result.value || '').trim();
                if (!updatedMessage) {
                    Swal.fire('Invalid', 'Message cannot be empty.', 'warning');
                    return;
                }

                $.ajax({
                    url: '{{ route("tools.editTicketMessage") }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        ticket_id: ticketId,
                        message_id: messageId,
                        message: updatedMessage
                    },
                    success: function (response) {
                        if (response.success) {
                            loadTicketMessages(ticketId, false);
                        } else {
                            Swal.fire('Error', response.message || 'Unable to edit message.', 'error');
                        }
                    },
                    error: function (xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to edit message.', 'error');
                    }
                });
            });
        }

        function markTicketWorkComplete(ticketId) {
            Swal.fire({
                title: 'Mark work complete?',
                text: 'User ko verification aur confirmation request bhej di jayegi.',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Yes, Notify User',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (!result.isConfirmed) {
                    return;
                }

                $.ajax({
                    url: '{{ route("tools.markTicketWorkComplete") }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        ticket_id: ticketId,
                    },
                    success: function (response) {
                        if (response.success) {
                            Swal.fire('Updated', response.message, 'success');
                            loadTicketMessages(ticketId, false);
                        } else {
                            Swal.fire('Error', response.message || 'Unable to update ticket.', 'error');
                        }
                    },
                    error: function (xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to update ticket.', 'error');
                    }
                });
            });
        }

        function startChatPolling() {
            if (chatPollingInterval) {
                clearInterval(chatPollingInterval);
            }

            chatPollingInterval = setInterval(function () {
                activeChatTickets.forEach(function (ticketId) {
                    loadTicketMessages(ticketId, true);
                });
            }, 5000);
        }

        function updateWorkDurations() {
            $('.work-duration').each(function () {
                const workingAt = $(this).data('working-at');
                if (!workingAt) {
                    return;
                }
                const start = new Date(workingAt.replace(' ', 'T'));
                const now = new Date();
                const diffMs = now - start;
                if (Number.isNaN(diffMs) || diffMs < 0) {
                    return;
                }

                const totalMinutes = Math.floor(diffMs / 60000);
                const hours = Math.floor(totalMinutes / 60);
                const minutes = totalMinutes % 60;
                $(this).text(`${hours}h ${minutes}m`);
            });
        }

        // Notification Polling System
        let notificationInterval = null;
        let isNotificationPlaying = false;

        function checkPendingNotifications() {
            $.ajax({
                url: '{{ route("tools.getPendingNotifications") }}',
                method: 'GET',
                success: function (response) {
                    if (response.success && response.count > 0) {
                        if (!isNotificationPlaying) {
                            isNotificationPlaying = true;
                            playNotificationSound();
                            showNotificationAlert(response.tickets);
                        }
                    } else {
                        isNotificationPlaying = false;
                        stopNotificationSound();
                    }
                }
            });
        }

        function playNotificationSound() {
            const audio = document.getElementById('notificationSound');
            if (audio) {
                audio.loop = true;
                audio.play().catch(function (error) {
                    console.log('Audio play failed:', error);
                    if (!soundHintShown) {
                        soundHintShown = true;
                        Swal.fire({
                            icon: 'info',
                            title: 'Enable Sound',
                            text: 'Browser blocked autoplay. Click Enable Browser Sound to activate alert tone.',
                            confirmButtonText: 'Enable Now'
                        }).then(function (result) {
                            if (result.isConfirmed) {
                                enableBrowserSound();
                            }
                        });
                    }
                });
            }
        }

        function stopNotificationSound() {
            const audio = document.getElementById('notificationSound');
            if (audio) {
                audio.pause();
                audio.currentTime = 0;
            }
        }

        function showNotificationAlert(tickets) {
            let ticketList = '';
            tickets.forEach(function (ticket) {
                const statusBadge = ticket.assignment_status === 'transferred'
                    ? '<span class="badge bg-warning">Transferred</span>'
                    : '<span class="badge bg-info">New Assignment</span>';
                ticketList += `<li><strong>${ticket.ticket_number}</strong> - ${ticket.name} ${statusBadge}</li>`;
            });

            Swal.fire({
                title: '🔔 New Ticket Assignment!',
                html: `<div class="text-start"><p><strong>You have ${tickets.length} pending ticket(s):</strong></p><ul>${ticketList}</ul></div>`,
                icon: 'info',
                showCancelButton: true,
                confirmButtonText: 'View Tickets',
                cancelButtonText: 'Dismiss',
                allowOutsideClick: false
            }).then((result) => {
                if (result.isConfirmed) {
                    location.reload();
                }
            });
        }

        // Start notification polling on page load
        $(document).ready(function () {
            applySavedNotificationSound();

            ['click', 'keydown', 'touchstart'].forEach(function (eventName) {
                document.addEventListener(eventName, unlockAudioPlayback, { passive: true });
            });

            $('#customNotificationSound').on('change', function (event) {
                const file = event.target.files && event.target.files[0] ? event.target.files[0] : null;
                if (!file) {
                    return;
                }

                if (!file.type.startsWith('audio/')) {
                    Swal.fire('Invalid file', 'Please select an audio file only.', 'warning');
                    this.value = '';
                    return;
                }

                if (file.size > (1024 * 1024 * 1.5)) {
                    Swal.fire('File too large', 'Please upload audio less than 1.5MB.', 'warning');
                    this.value = '';
                    return;
                }

                const formData = new FormData();
                formData.append('_token', '{{ csrf_token() }}');
                formData.append('sound_file', file);

                $.ajax({
                    url: '{{ route("tools.uploadNotificationSound") }}',
                    method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response) {
                        if (response.success) {
                            applyNotificationSoundUrl(response.sound_url || DEFAULT_NOTIFICATION_SOUND);
                            Swal.fire('Saved', 'Custom notification sound uploaded and saved in database.', 'success');
                        } else {
                            Swal.fire('Error', response.message || 'Unable to upload sound.', 'error');
                        }
                    },
                    error: function (xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to upload sound.', 'error');
                    }
                });

                this.value = '';
            });

            // Check immediately
            checkPendingNotifications();
            updateWorkDurations();
            startChatPolling();

            // Then check every 10 seconds
            // notificationInterval = setInterval(checkPendingNotifications, 10000);
            // setInterval(updateWorkDurations, 60000);

            // Request notification permission
            if ('Notification' in window && Notification.permission === 'default') {
                Notification.requestPermission();
            }

            const focusTicketId = new URLSearchParams(window.location.search).get('focus_ticket');
            if (focusTicketId) {
                const card = document.querySelector(`.ticket-card[data-ticket-id="${focusTicketId}"]`);
                if (card) {
                    card.classList.add('ticket-highlight-blink');
                    card.scrollIntoView({ behavior: 'smooth', block: 'center' });
                }
            }
        });
    </script>
@endsection