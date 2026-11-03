@extends('admin.layouts.main')
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
            flex-wrap: wrap;
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
                <h2><i class="fas fa-ticket-alt me-2"></i>Super Admin - All Tickets</h2>
                <p class="mb-0 mt-2">Sabhi generated tickets yahan visible hain. Super admin comments/SMS aur transfer kar sakta hai.</p>
            </div>

            <div class="filter-tabs">
                <button class="filter-tab {{ request('status', 'all') == 'all' ? 'active' : '' }}" onclick="filterTickets('all')">
                    <i class="fas fa-list me-1"></i>All Tickets
                </button>
                <button class="filter-tab {{ request('status') == 'pending' ? 'active' : '' }}" onclick="filterTickets('pending')">
                    <i class="fas fa-clock me-1"></i>Pending
                </button>
                <button class="filter-tab {{ request('status') == 'working' ? 'active' : '' }}" onclick="filterTickets('working')">
                    <i class="fas fa-cog me-1"></i>Working
                </button>
                <button class="filter-tab {{ request('status') == 'complete' ? 'active' : '' }}" onclick="filterTickets('complete')">
                    <i class="fas fa-check-circle me-1"></i>Complete
                </button>
            </div>

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
                                        {{ ucfirst($ticket->status) }}
                                    </span>
                                </div>

                                <div class="ticket-info">
                                    <div class="ticket-info-item">
                                        <i class="fas fa-hotel"></i>
                                        <strong>Property ID:</strong>&nbsp;{{ $ticket->property_id }}
                                    </div>
                                    <div class="ticket-info-item">
                                        <i class="fas fa-user"></i>
                                        <strong>Name:</strong>&nbsp;{{ $ticket->name }}
                                    </div>
                                    <div class="ticket-info-item">
                                        <i class="fas fa-phone"></i>
                                        <strong>Mobile:</strong>&nbsp;{{ $ticket->mobile_number }}
                                    </div>
                                    @if(!empty($ticket->assigned_to_name))
                                        <div class="ticket-info-item">
                                            <i class="fas fa-user-tag"></i>
                                            <strong>Assigned To:</strong>&nbsp;{{ $ticket->assigned_to_name }}
                                        </div>
                                    @endif
                                    @if(!empty($ticket->working_by_name))
                                        <div class="ticket-info-item">
                                            <i class="fas fa-user-check"></i>
                                            <strong>Working By:</strong>&nbsp;{{ $ticket->working_by_name }}
                                        </div>
                                    @endif
                                    @if(!empty($ticket->transferred_by_name) || !empty($ticket->transfer_reason))
                                        <div class="ticket-info-item align-items-start">
                                            <i class="fas fa-exchange-alt mt-1"></i>
                                            <div>
                                                <strong>Last Transfer:</strong> {{ $ticket->transferred_by_name ?? 'N/A' }}
                                                @if(!empty($ticket->assigned_to_name))
                                                    → {{ $ticket->assigned_to_name }}
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
                                    <div class="mt-2">{!! $ticket->problem !!}</div>
                                </div>

                                <div class="ticket-actions">
                                    @if($ticket->status != 'complete')
                                        <button class="status-btn" style="background: #6c757d; color: white;" onclick="showTransferModal({{ $ticket->id }})">
                                            <i class="fas fa-exchange-alt me-1"></i>Transfer Ticket
                                        </button>
                                    @endif

                                    <button class="status-btn" style="background: #495057; color: white;" onclick="toggleTicketChat({{ $ticket->id }})">
                                        <i class="fas fa-comments me-1"></i>Comments / SMS
                                    </button>
                                </div>

                                <div class="chat-section d-none" id="chatSection-{{ $ticket->id }}">
                                    <div class="chat-messages" id="chatMessages-{{ $ticket->id }}">
                                        <div class="text-muted">Loading conversation...</div>
                                    </div>
                                    @if($ticket->status != 'complete')
                                        <div class="row g-2 mt-2">
                                            <div class="col-md-8">
                                                <textarea class="form-control" id="messageInput-{{ $ticket->id }}" rows="2" placeholder="Type comment/reply..."></textarea>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="file" class="form-control" id="messageImage-{{ $ticket->id }}" accept="image/*">
                                                <button class="btn btn-primary w-100 mt-2" onclick="sendTicketMessage({{ $ticket->id }})">
                                                    <i class="fas fa-paper-plane me-1"></i>Send
                                                </button>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        @endforeach

                        <div class="d-flex justify-content-center mt-4">
                            {{ $tickets->appends(['status' => request('status')])->links() }}
                        </div>
                    @else
                        <div class="alert alert-info text-center">
                            <i class="fas fa-info-circle me-2"></i>No tickets found for the selected filter.
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="transferModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;">
                    <h5 class="modal-title"><i class="fas fa-exchange-alt me-2"></i>Transfer Ticket</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" style="filter: invert(1);"></button>
                </div>
                <div class="modal-body">
                    <p>Select a user to transfer this ticket:</p>
                    <select class="form-select" id="transferUserId">
                        <option value="">-- Select User --</option>
                    </select>
                    <label class="form-label mt-3">Transfer Reason <span class="text-danger">*</span></label>
                    <textarea class="form-control" id="transferReason" rows="3" placeholder="Enter reason for transfer..."></textarea>
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

    <audio id="notificationSound" preload="auto">
        <source src="https://cdn.freesound.org/previews/316/316847_4939433-lq.mp3" type="audio/mpeg">
    </audio>

    <script>
        let currentTransferTicketId = null;
        let activeChatTickets = new Set();
        let chatPollingInterval = null;
        let notificationInterval = null;
        const SUPERADMIN_LAST_NOTIFIED_TICKET_KEY = 'superadmin_last_notified_ticket_id';

        function filterTickets(status) {
            window.location.href = '{{ route("superadmin.tickets") }}?status=' + status;
        }

        function showTransferModal(ticketId) {
            currentTransferTicketId = ticketId;
            $('#transferReason').val('');

            $.ajax({
                url: '{{ route("tools.getAvailableUsers") }}',
                method: 'GET',
                success: function (response) {
                    if (!response.success) {
                        Swal.fire('Error', response.message || 'Failed to load users.', 'error');
                        return;
                    }

                    let select = $('#transferUserId');
                    select.empty();
                    select.append('<option value="">-- Select User --</option>');

                    response.users.forEach(function (user) {
                        select.append(`<option value="${user.id}">${user.name} (${user.email || 'No email'})</option>`);
                    });

                    $('#transferModal').modal('show');
                },
                error: function () {
                    Swal.fire('Error', 'Failed to load users.', 'error');
                }
            });
        }

        function confirmTransfer() {
            const transferToId = $('#transferUserId').val();
            const transferReason = ($('#transferReason').val() || '').trim();

            if (!transferToId) {
                Swal.fire('Select User', 'Please select user for transfer.', 'warning');
                return;
            }

            if (transferReason.length < 5) {
                Swal.fire('Reason Required', 'Transfer reason minimum 5 characters required.', 'warning');
                return;
            }

            $.ajax({
                url: '{{ route("tools.transferTicket") }}',
                method: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    ticket_id: currentTransferTicketId,
                    transfer_to_id: transferToId,
                    transfer_reason: transferReason,
                },
                success: function (response) {
                    $('#transferModal').modal('hide');
                    if (response.success) {
                        Swal.fire('Transferred', response.message, 'success');
                        setTimeout(function () {
                            location.reload();
                        }, 900);
                    } else {
                        Swal.fire('Error', response.message || 'Transfer failed.', 'error');
                    }
                },
                error: function (xhr) {
                    $('#transferModal').modal('hide');
                    Swal.fire('Error', xhr.responseJSON?.message || 'Transfer failed.', 'error');
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
                    mark_read: markRead ? 1 : 0,
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
                Swal.fire('Empty Message', 'Please type a message or select an image.', 'warning');
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
                        Swal.fire('Error', response.message || 'Failed to send message.', 'error');
                    }
                },
                error: function (xhr) {
                    Swal.fire('Error', xhr.responseJSON?.message || 'Failed to send message.', 'error');
                }
            });
        }

        function editTicketMessage(buttonEl, ticketId, messageId) {
            const currentMessage = decodeURIComponent((buttonEl.getAttribute('data-current-message') || '').replace(/\+/g, '%20'));

            Swal.fire({
                title: 'Edit Message',
                input: 'textarea',
                inputValue: currentMessage || '',
                inputAttributes: { rows: 4 },
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
                        message: updatedMessage,
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

        function playNotificationSound() {
            const audio = document.getElementById('notificationSound');
            if (!audio) {
                return;
            }
            audio.currentTime = 0;
            audio.play().catch(function () {});
        }

        function checkNotifications() {
            $.ajax({ url: '{{ route("tools.getPendingNotifications") }}', method: 'GET' }).done(function (pendingResponse) {
                const pendingTickets = pendingResponse && pendingResponse.success ? (pendingResponse.tickets || []) : [];

                if (pendingTickets.length <= 0) {
                    return;
                }

                const latestTicketId = pendingTickets.reduce(function (maxId, ticket) {
                    const currentId = Number(ticket.id || 0);
                    return currentId > maxId ? currentId : maxId;
                }, 0);

                if (latestTicketId <= 0) {
                    return;
                }

                const lastNotifiedTicketId = Number(localStorage.getItem(SUPERADMIN_LAST_NOTIFIED_TICKET_KEY) || 0);
                if (latestTicketId <= lastNotifiedTicketId) {
                    return;
                }

                localStorage.setItem(SUPERADMIN_LAST_NOTIFIED_TICKET_KEY, String(latestTicketId));
                playNotificationSound();

                let html = '<p class="mb-1"><strong>Pending Assignments:</strong></p><ul class="text-start">';
                pendingTickets.slice(0, 5).forEach(function (ticket) {
                    html += `<li>${ticket.ticket_number} - ${ticket.name}</li>`;
                });
                html += '</ul>';

                Swal.fire({
                    title: 'Ticket Notifications',
                    html: html,
                    icon: 'info',
                    showCancelButton: true,
                    confirmButtonText: 'Refresh',
                    cancelButtonText: 'Close'
                }).then((result) => {
                    if (result.isConfirmed) {
                        location.reload();
                    }
                });
            });
        }

        $(document).ready(function () {
            startChatPolling();
            checkNotifications();
            // notificationInterval = setInterval(checkNotifications, 12000);
        });
    </script>
@endsection
