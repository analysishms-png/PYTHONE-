@extends('property.layouts.main')
@section('main-container')
    <style>
        .ticket-card {
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            position: relative;
            overflow: hidden;
        }

        .ticket-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            padding-bottom: 12px;
            border-bottom: 1px solid #ececec;
        }

        .ticket-number {
            font-size: 17px;
            font-weight: 700;
            color: #667eea;
        }

        .ticket-status {
            padding: 5px 12px;
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

        .ticket-info-item {
            margin-bottom: 8px;
            color: #555;
        }

        .ticket-problem {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-top: 15px;
            max-height: 200px;
            overflow-y: auto;
        }

        .filter-tabs {
            margin-bottom: 20px;
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .filter-tab {
            padding: 8px 16px;
            border: 1px solid #667eea;
            border-radius: 22px;
            color: #667eea;
            background: #fff;
            cursor: pointer;
            font-weight: 600;
        }

        .filter-tab.active {
            background: #667eea;
            color: #fff;
        }

        .page-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: #fff;
            padding: 24px;
            border-radius: 10px;
            margin-bottom: 24px;
        }

        .page-header h2 {
            color: #fff;
            margin: 0;
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
            background: #d4edda;
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
            0% {
                box-shadow: 0 0 0 rgba(220, 53, 69, 0.0);
            }

            50% {
                box-shadow: 0 0 22px rgba(220, 53, 69, 0.7);
            }

            100% {
                box-shadow: 0 0 0 rgba(220, 53, 69, 0.0);
            }
        }

        .work-complete-alert {
            margin-top: 12px;
            background: #fff3cd;
            border: 1px solid #ffeaa7;
            border-radius: 8px;
            color: #856404;
            padding: 10px 12px;
            font-size: 13px;
            font-weight: 600;
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
                <h2><i class="fas fa-ticket-alt me-2"></i>My Support Tickets</h2>
                <p class="mb-0 mt-2">Your submitted tickets and their current status</p>
            </div>

            <div class="filter-tabs">
                <button class="filter-tab {{ request('status', 'all') == 'all' ? 'active' : '' }}"
                    onclick="filterTickets('all')">All</button>
                <button class="filter-tab {{ request('status') == 'pending' ? 'active' : '' }}"
                    onclick="filterTickets('pending')">Pending</button>
                <button class="filter-tab {{ request('status') == 'working' ? 'active' : '' }}"
                    onclick="filterTickets('working')">Working</button>
                <button class="filter-tab {{ request('status') == 'complete' ? 'active' : '' }}"
                    onclick="filterTickets('complete')">Complete</button>
            </div>

            @if ($tickets->count() > 0)
                @foreach ($tickets as $ticket)
                    <div class="ticket-card" data-ticket-id="{{ $ticket->id }}" id="ticket-card-{{ $ticket->id }}">
                        @if ($ticket->status == 'complete')
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
                            <span class="ticket-status status-{{ $ticket->status }}">{{ ucfirst($ticket->status) }}</span>
                        </div>

                        <div class="ticket-info-item"><strong>Name:</strong> {{ $ticket->name }}</div>
                        <div class="ticket-info-item"><strong>Mobile:</strong> {{ $ticket->mobile_number }}</div>
                        <div class="ticket-info-item"><strong>Property ID:</strong> {{ $ticket->property_id }}</div>

                        @if (!empty($ticket->assigned_to_name))
                            <div class="ticket-info-item"><strong>Assigned To:</strong> {{ $ticket->assigned_to_name }}</div>
                        @else
                            <div class="ticket-info-item"><strong>Assigned To:</strong> In Queue</div>
                        @endif

                        @if (!empty($ticket->working_by_name))
                            <div class="ticket-info-item"><strong>Working By:</strong> {{ $ticket->working_by_name }}</div>
                        @endif

                        @if ($ticket->status == 'working' && !empty($ticket->working_by_at))
                            <div class="ticket-info-item">
                                <strong>Work Running:</strong>
                                <span class="badge bg-primary work-duration" data-working-at="{{ $ticket->working_by_at }}">
                                    {{ \Carbon\Carbon::parse($ticket->working_by_at)->diffForHumans(null, true) }}
                                </span>
                            </div>
                        @endif

                        @if ($ticket->status == 'working')
                            <div class="ticket-info-item">
                                <strong>Your Confirmation:</strong>
                                @if ($ticket->is_user_satisfied)
                                    <span class="badge bg-success">Confirmed Solved</span>
                                @else
                                    <span class="badge bg-warning text-dark">Pending</span>
                                @endif
                            </div>
                        @endif

                        @if (!empty($ticket->is_work_complete_pending) && $ticket->is_work_complete_pending)
                            <div class="work-complete-alert">
                                Support has marked this ticket as work complete. Please verify the issue and confirm by
                                clicking the <strong>Yes, Problem Solved</strong> button.
                            </div>
                        @endif

                        @if (!empty($ticket->transferred_by_name) || !empty($ticket->transfer_reason))
                            <div class="ticket-info-item">
                                <strong>Last Transfer:</strong>
                                {{ $ticket->transferred_by_name ?? 'N/A' }}
                                @if (!empty($ticket->assigned_to_name))
                                    → {{ $ticket->assigned_to_name }}
                                @endif
                            </div>
                            @if (!empty($ticket->transfer_reason))
                                <div class="ticket-info-item"><strong>Transfer Reason:</strong> {{ $ticket->transfer_reason }}</div>
                            @endif
                            @if (!empty($ticket->transferred_at))
                                <div class="ticket-info-item"><strong>Transferred At:</strong>
                                    {{ \Carbon\Carbon::parse($ticket->transferred_at)->format('d M Y, h:i A') }}</div>
                            @endif
                        @endif

                        <div class="ticket-problem">
                            <strong><i class="fas fa-file-alt me-2"></i>Problem Description:</strong>
                            <div class="mt-2">
                                {!! $ticket->problem !!}
                            </div>
                        </div>


                        <button class="btn btn-secondary btn-sm mt-2" onclick="toggleTicketChat({{ $ticket->id }})">
                            <i class="fas fa-comments me-1"></i>Comments / SMS
                        </button>

                        @if ($ticket->status == 'working' && !$ticket->is_user_satisfied)
                            <button class="btn btn-success btn-sm mt-2" onclick="confirmMyTicketSolved({{ $ticket->id }})">
                                <i class="fas fa-check-circle me-1"></i>Yes, Problem Solved
                            </button>
                        @endif

                        <div class="chat-section d-none" id="chatSection-{{ $ticket->id }}">
                            <div class="chat-messages" id="chatMessages-{{ $ticket->id }}">
                                <div class="text-muted">Loading conversation...</div>
                            </div>
                            @if ($ticket->status != 'complete')
                                <div class="row g-2 mt-2">
                                    <div class="col-md-8">
                                        <textarea class="form-control" id="messageInput-{{ $ticket->id }}" rows="2"
                                            placeholder="Type comment/reply..."></textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="file" class="form-control" id="messageImage-{{ $ticket->id }}" accept="image/*">
                                        <button class="btn btn-primary w-100 mt-2" onclick="sendMyTicketMessage({{ $ticket->id }})">
                                            <i class="fas fa-paper-plane me-1"></i>Send
                                        </button>
                                    </div>
                                </div>
                            @endif
                        </div>

                    </div>
                @endforeach

                <div class="d-flex justify-content-center mt-3">
                    {{ $tickets->appends(['status' => request('status')])->links() }}
                </div>
            @else
                <div class="alert alert-info text-center">
                    You have not submitted any tickets yet.
                </div>
            @endif
        </div>
    </div>

    <script>
        let activeChatTickets = new Set();
        let chatPollingInterval = null;

        function filterTickets(status) {
            window.location.href = '{{ route('tools.myTickets') }}?status=' + status;
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
            messages.forEach(function(msg) {
                const isSelf = msg.sender_role === 'user';
                let displayMessage = msg.message || '';
                if (displayMessage.startsWith('[WORK_COMPLETE]')) {
                    displayMessage = 'Support marked this ticket as work complete. Please check and confirm from your side.';
                } else if (displayMessage.startsWith('[STATUS_UPDATE]')) {
                    displayMessage = displayMessage.replace('[STATUS_UPDATE]', '').trim();
                }
                html += `<div class="chat-item ${isSelf ? 'self' : 'other'}">`;
                html += `<div class="chat-bubble ${msg.is_work_complete_note ? 'chat-system-note' : ''}">`;
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
                    html += `<div class="chat-item self"><button type="button" class="chat-edit-btn" data-current-message="${encodedMessage}" onclick="editMyTicketMessage(this, ${ticketId}, ${msg.id})">Edit (5 min)</button></div>`;
                }
            });

            container.html(html);
            container.scrollTop(container[0].scrollHeight);
        }

        function loadMyTicketMessages(ticketId, markRead = true) {
            $.ajax({
                url: '{{ route('tools.getMyTicketMessages') }}',
                method: 'GET',
                data: {
                    ticket_id: ticketId,
                    mark_read: markRead ? 1 : 0
                },
                success: function(response) {
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
                loadMyTicketMessages(ticketId, true);
            } else {
                activeChatTickets.delete(ticketId);
            }
        }

        function confirmMyTicketSolved(ticketId) {
            Swal.fire({
                title: 'Confirm issue solved?',
                text: 'After this, support team will be able to complete this ticket.',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Yes, solved',
                cancelButtonText: 'Not yet'
            }).then((result) => {
                if (!result.isConfirmed) {
                    return;
                }

                $.ajax({
                    url: '{{ route('tools.confirmMyTicketSolved') }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        ticket_id: ticketId
                    },
                    success: function(response) {
                        if (response.success) {
                            Swal.fire('Confirmed', response.message, 'success');
                            setTimeout(function() {
                                location.reload();
                            }, 1200);
                        } else {
                            Swal.fire('Error', response.message || 'Unable to update ticket.', 'error');
                        }
                    },
                    error: function(xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to update ticket.', 'error');
                    }
                });
            });
        }

        function sendMyTicketMessage(ticketId) {
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
                url: '{{ route('tools.sendMyTicketMessage') }}',
                method: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    if (response.success) {
                        $(`#messageInput-${ticketId}`).val('');
                        if (imageInput) {
                            imageInput.value = '';
                        }
                        loadMyTicketMessages(ticketId, false);
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: response.message || 'Failed to send message.'
                        });
                    }
                },
                error: function(xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: xhr.responseJSON?.message || 'Failed to send message.'
                    });
                }
            });
        }

        function editMyTicketMessage(buttonEl, ticketId, messageId) {
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
                    url: '{{ route('tools.editMyTicketMessage') }}',
                    method: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        ticket_id: ticketId,
                        message_id: messageId,
                        message: updatedMessage
                    },
                    success: function(response) {
                        if (response.success) {
                            loadMyTicketMessages(ticketId, false);
                        } else {
                            Swal.fire('Error', response.message || 'Unable to edit message.', 'error');
                        }
                    },
                    error: function(xhr) {
                        Swal.fire('Error', xhr.responseJSON?.message || 'Unable to edit message.', 'error');
                    }
                });
            });
        }

        function startChatPolling() {
            if (chatPollingInterval) {
                clearInterval(chatPollingInterval);
            }

            // chatPollingInterval = setInterval(function() {
            //     activeChatTickets.forEach(function(ticketId) {
            //         loadMyTicketMessages(ticketId, true);
            //     });
            // }, 5000);
        }

        function updateWorkDurations() {
            $('.work-duration').each(function() {
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

        $(document).ready(function() {
            updateWorkDurations();
            startChatPolling();
            setInterval(updateWorkDurations, 60000);

            const focusTicketId = new URLSearchParams(window.location.search).get('focus_ticket');
            if (focusTicketId) {
                const card = document.querySelector(`#ticket-card-${focusTicketId}`);
                if (card) {
                    card.classList.add('ticket-highlight-blink');
                    card.scrollIntoView({
                        behavior: 'smooth',
                        block: 'center'
                    });
                }
            }
        });
    </script>
@endsection
