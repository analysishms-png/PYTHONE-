<style>
    /* Section Header Styles */
    .section-title {
        font-size: 20px;
        font-weight: 700;
        color: #1e293b;
        margin: 0;
    }

    .section-header-icon {
        width: 45px;
        height: 45px;
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #ffffff;
        font-size: 20px;
        box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
    }

    /* Events Card Styles */
    .events-card {
        background: linear-gradient(145deg, #ffffff 0%, #fafbfc 100%);
        border-radius: 16px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        overflow: hidden;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        border: 1px solid #f0f1f3;
    }

    .events-card:hover {
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
        transform: translateY(-2px);
        border-color: #e5e7eb;
    }

    .events-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        padding: 18px 22px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 12px;
        position: relative;
        overflow: hidden;
    }

    .events-header::before {
        content: '';
        position: absolute;
        top: -50%;
        right: -50%;
        width: 200%;
        height: 200%;
        background: radial-gradient(circle, rgba(255, 255, 255, 0.1) 0%, transparent 70%);
        animation: pulse 3s ease-in-out infinite;
    }

    @keyframes pulse {

        0%,
        100% {
            transform: scale(1);
            opacity: 0.5;
        }

        50% {
            transform: scale(1.1);
            opacity: 0.8;
        }
    }

    .events-title-section {
        display: flex;
        align-items: center;
        gap: 12px;
        position: relative;
        z-index: 1;
    }

    .events-icon-wrapper {
        width: 44px;
        height: 44px;
        background: rgba(255, 255, 255, 0.3);
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 20px;
        color: #ffffff;
        backdrop-filter: blur(10px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        transition: all 0.3s ease;
    }

    .events-icon-wrapper:hover {
        transform: rotate(8deg) scale(1.08);
        background: rgba(255, 255, 255, 0.4);
    }

    .events-title {
        font-size: 18px;
        font-weight: 700;
        color: #ffffff;
        margin: 0;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .events-subtitle {
        font-size: 12px;
        color: rgba(255, 255, 255, 0.9);
        margin: 2px 0 0 0;
    }

    .events-count-badge {
        background: linear-gradient(145deg, #ffffff 0%, #f0f0f0 100%);
        padding: 8px 18px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        position: relative;
        z-index: 1;
        transition: all 0.3s ease;
    }

    .events-count-badge:hover {
        transform: scale(1.05);
    }

    .count-number {
        display: block;
        font-size: 22px;
        font-weight: 700;
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 50%, #d946ef 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
        line-height: 1;
    }

    .count-label {
        display: block;
        font-size: 10px;
        color: #64748b;
        margin-top: 2px;
        text-transform: uppercase;
        font-weight: 600;
        letter-spacing: 0.5px;
    }

    .events-list {
        padding: 16px 20px;
        max-height: 350px;
        overflow-y: auto;
    }

    .events-list::-webkit-scrollbar {
        width: 5px;
    }

    .events-list::-webkit-scrollbar-track {
        background: #f1f1f1;
        border-radius: 10px;
    }

    .events-list::-webkit-scrollbar-thumb {
        background: linear-gradient(180deg, #6366f1 0%, #8b5cf6 100%);
        border-radius: 10px;
    }

    .events-list::-webkit-scrollbar-thumb:hover {
        background: linear-gradient(180deg, #4f46e5 0%, #7c3aed 100%);
    }

    .event-item {
        display: flex;
        align-items: center;
        gap: 14px;
        padding: 14px 16px;
        background: #ffffff;
        border-radius: 12px;
        margin-bottom: 12px;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        border: 1px solid #f0f1f3;
        position: relative;
        overflow: hidden;
    }

    .event-item::before {
        content: '';
        position: absolute;
        left: 0;
        top: 0;
        height: 100%;
        width: 4px;
        background: linear-gradient(180deg, #667eea 0%, #764ba2 100%);
        transform: scaleY(0);
        transition: transform 0.3s ease;
    }

    .event-item:hover::before {
        transform: scaleY(1);
    }

    .event-item:hover {
        background: #fafbfc;
        border-color: #764ba2;
        box-shadow: 0 4px 16px rgba(118, 75, 162, 0.15);
        transform: translateX(4px);
    }

    .event-time-badge {
        display: flex;
        align-items: center;
        gap: 6px;
        padding: 8px 14px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: #ffffff;
        border-radius: 10px;
        font-size: 13px;
        font-weight: 600;
        white-space: nowrap;
        flex-shrink: 0;
        box-shadow: 0 3px 8px rgba(102, 126, 234, 0.35);
        transition: all 0.3s ease;
    }

    .event-item:hover .event-time-badge {
        transform: scale(1.05);
        box-shadow: 0 4px 12px rgba(102, 126, 234, 0.5);
    }

    .event-time-badge i {
        font-size: 13px;
    }

    .event-details {
        flex: 1;
        min-width: 0;
    }

    .event-name {
        font-size: 14px;
        font-weight: 600;
        color: #1e293b;
        margin: 0 0 6px 0;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .event-meta {
        display: flex;
        gap: 16px;
        flex-wrap: wrap;
    }

    .event-user,
    .event-type {
        display: flex;
        align-items: center;
        gap: 5px;
        font-size: 12px;
        color: #64748b;
    }

    .event-user i,
    .event-type i {
        color: #8b5cf6;
        font-size: 12px;
    }

    .event-status-badge {
        padding: 8px 16px;
        border-radius: 8px;
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase;
        white-space: nowrap;
        flex-shrink: 0;
    }

    .event-status-badge.confirmed {
        background: linear-gradient(135deg, #10b981 0%, #059669 100%);
        color: #ffffff;
    }

    .event-status-badge.pending {
        background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%);
        color: #ffffff;
    }

    .events-footer {
        padding: 20px 28px;
        background: #f8fafc;
        text-align: center;
        border-top: 1px solid #e2e8f0;
    }

    .btn-view-all {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: #ffffff;
        border: none;
        padding: 12px 32px;
        border-radius: 10px;
        font-size: 15px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        display: inline-flex;
        align-items: center;
        gap: 10px;
    }

    .btn-view-all:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(102, 126, 234, 0.4);
    }

    .btn-view-all i {
        transition: transform 0.3s ease;
    }

    .btn-view-all:hover i {
        transform: translateX(4px);
    }

    /* Responsive Styles */
    @media (max-width: 991px) {
        .events-header {
            padding: 20px 24px;
        }

        .events-list {
            padding: 16px 24px;
        }

        .events-footer {
            padding: 16px 24px;
        }

        .events-title {
            font-size: 20px;
        }

        .events-icon-wrapper {
            width: 50px;
            height: 50px;
            font-size: 24px;
        }
    }

    @media (max-width: 767px) {
        .events-card {
            margin-top: 10px;
        }

        .events-header {
            padding: 16px;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
        }

        .events-title-section {
            gap: 10px;
            flex: 1;
        }

        .events-icon-wrapper {
            width: 40px;
            height: 40px;
            font-size: 18px;
        }

        .events-title {
            font-size: 16px;
        }

        .events-subtitle {
            font-size: 11px;
        }

        .events-count-badge {
            padding: 8px 16px;
            margin-top: 0;
            align-self: center;
        }

        .count-number {
            font-size: 20px;
        }

        .count-label {
            font-size: 9px;
        }

        .events-list {
            padding: 12px 14px;
            max-height: 350px;
        }

        .event-item {
            flex-direction: row;
            align-items: center;
            padding: 12px;
            gap: 10px;
            margin-bottom: 10px;
        }

        .event-time-badge {
            padding: 6px 10px;
            font-size: 11px;
            flex-shrink: 0;
        }

        .event-time-badge i {
            font-size: 11px;
        }

        .event-details {
            flex: 1;
            min-width: 0;
        }

        .event-name {
            font-size: 13px;
            white-space: normal;
            line-height: 1.3;
            word-wrap: break-word;
        }

        .event-meta {
            margin-top: 4px;
        }

        .event-user {
            font-size: 11px;
        }

        .event-user i {
            font-size: 11px;
        }

        .event-status-badge {
            align-self: flex-end;
        }

        .events-footer {
            padding: 14px 20px;
        }

        .btn-view-all {
            width: 100%;
            justify-content: center;
        }
    }

    @media (max-width: 575px) {
        .events-card {
            margin-top: 10px;
        }

        .events-header {
            padding: 14px;
        }

        .events-title {
            font-size: 15px;
        }

        .events-subtitle {
            font-size: 10px;
        }

        .events-icon-wrapper {
            width: 38px;
            height: 38px;
            font-size: 16px;
        }

        .events-count-badge {
            padding: 6px 14px;
        }

        .count-number {
            font-size: 18px;
        }

        .count-label {
            font-size: 8px;
        }

        .events-list {
            padding: 10px 12px;
            max-height: 300px;
        }

        .event-item {
            padding: 10px;
            gap: 8px;
            margin-bottom: 8px;
        }

        .event-time-badge {
            padding: 5px 8px;
            font-size: 10px;
        }

        .event-time-badge i {
            font-size: 10px;
        }

        .event-name {
            font-size: 12px;
        }

        .event-user {
            font-size: 10px;
        }

        .event-user i {
            font-size: 10px;
        }

        .event-meta {
            gap: 8px;
        }
    }
</style>



<style>
    /* Room Status Card Styles */
    .room-status-card {
        background: linear-gradient(145deg, #ffffff 0%, #fafbfc 100%);
        border-radius: 16px;
        padding: 24px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        height: 100%;
        border: 1px solid #f0f1f3;
        position: relative;
        overflow: hidden;
        margin-top: 10px;
    }

    .room-status-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 4px;
        background: linear-gradient(90deg, #6366f1, #8b5cf6, #d946ef);
        opacity: 0;
        transition: opacity 0.3s ease;
    }

    .room-status-card:hover::before {
        opacity: 1;
    }

    .room-status-card:hover {
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
        transform: translateY(-4px);
        border-color: #e5e7eb;
    }

    .card-header-section {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        margin-bottom: 20px;
        gap: 12px;
    }

    .icon-wrapper {
        display: flex;
        align-items: center;
        gap: 14px;
        flex: 1;
    }

    .icon-circle {
        width: 56px;
        height: 56px;
        border-radius: 14px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        flex-shrink: 0;
        transition: all 0.3s ease;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .room-status-card:hover .icon-circle {
        transform: scale(1.05);
    }

    /* Occupied - Red/Pink */
    .occupied-icon {
        background: linear-gradient(135deg, #ffebee 0%, #ffcdd2 100%);
        color: #ef5350;
    }

    /* Check In - Blue/Indigo */
    .checkin-icon {
        background: linear-gradient(135deg, #e8eaf6 0%, #c5cae9 100%);
        color: #5c6bc0;
    }

    /* Checkout - Green */
    .checkout-icon {
        background: linear-gradient(135deg, #e8f5e9 0%, #c8e6c9 100%);
        color: #66bb6a;
    }

    .dobguest-icon {
        background: linear-gradient(135deg, #e8f5e9 0%, #819ceb 100%);
        color: #318bd0;
    }

    .anniversaryguest-icon {
        background: linear-gradient(135deg, #e8f5e9 0%, #819ceb 100%);
        color: #318bd0;
    }

    /* Occupied Dirty - Dark Orange/Brown */
    .dirty-icon {
        background: linear-gradient(135deg, #ffe5d0 0%, #ffc4a0 100%);
        color: #e65100;
    }

    /* Vacant Dirty (Clean Card) - Yellow/Amber */
    .clean-icon {
        background: linear-gradient(135deg, #fff9e6 0%, #ffecb3 100%);
        color: #f57c00;
    }

    /* Expected CheckOut - Purple */
    .expected-checkout-icon {
        background: linear-gradient(135deg, #f3e5f5 0%, #e1bee7 100%);
        color: #ab47bc;
    }

    /* Expected Arrival - Teal/Cyan */
    .expected-arrival-icon {
        background: linear-gradient(135deg, #e0f2f1 0%, #b2dfdb 100%);
        color: #26a69a;
    }

    /* Unsettled - Red/Crimson */
    .unsettled-icon {
        background: linear-gradient(135deg, #ffebee 0%, #ffcdd2 100%);
        color: #c62828;
    }

    /* Out of Order - Gray/Slate */
    .ooo-icon {
        background: linear-gradient(135deg, #eceff1 0%, #cfd8dc 100%);
        color: #546e7a;
    }

    .text-content {
        flex: 1;
        min-width: 0;
    }

    .status-title {
        font-size: 16px;
        font-weight: 700;
        color: #1e293b;
        margin: 0 0 4px 0;
        line-height: 1.3;
    }

    .status-subtitle {
        font-size: 13px;
        color: #64748b;
        margin: 0;
        line-height: 1.4;
    }

    .count-badge {
        width: 50px;
        height: 50px;
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 20px;
        font-weight: 800;
        color: #ffffff;
        flex-shrink: 0;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        transition: all 0.3s ease;
    }

    .room-status-card:hover .count-badge {
        transform: scale(1.08);
    }

    .occupied-count {
        background: linear-gradient(135deg, #ef5350 0%, #e53935 100%);
    }

    .checkin-count {
        background: linear-gradient(135deg, #5c6bc0 0%, #3f51b5 100%);
    }

    .checkout-count {
        background: linear-gradient(135deg, #66bb6a 0%, #4caf50 100%);
    }

    .dirty-count {
        background: linear-gradient(135deg, #ff6f00 0%, #e65100 100%);
    }

    .clean-count {
        background: linear-gradient(135deg, #ffa726 0%, #f57c00 100%);
    }

    .expected-checkout-count {
        background: linear-gradient(135deg, #ab47bc 0%, #8e24aa 100%);
    }

    .expected-arrival-count {
        background: linear-gradient(135deg, #26a69a 0%, #00897b 100%);
    }

    .unsettled-count {
        background: linear-gradient(135deg, #d32f2f 0%, #c62828 100%);
    }

    .ooo-count {
        background: linear-gradient(135deg, #607d8b 0%, #546e7a 100%);
    }

    .room-numbers {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        padding-top: 4px;
    }

    .room-badge {
        padding: 10px 18px;
        border-radius: 10px;
        font-size: 15px;
        font-weight: 600;
        color: #ffffff;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        cursor: pointer;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
        position: relative;
        overflow: hidden;
    }

    .room-badge::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, 0.2);
        transition: left 0.5s ease;
    }

    .room-badge:hover::before {
        left: 100%;
    }

    .room-badge:hover {
        transform: translateY(-3px) scale(1.03);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.25);
    }

    .room-badge:active {
        transform: translateY(-1px) scale(0.98);
    }

    .occupied-badge {
        background: linear-gradient(135deg, #ef5350 0%, #e53935 100%);
    }

    .checkin-badge {
        background: linear-gradient(135deg, #5c6bc0 0%, #3f51b5 100%);
    }

    .checkout-badge, .birthdaywishsend-badge, .anniversarywishsend-badge {
        background: linear-gradient(135deg, #66bb6a 0%, #4caf50 100%);
    }

    .dirty-badge {
        background: linear-gradient(135deg, #ff6f00 0%, #e65100 100%);
    }

    .clean-badge {
        background: linear-gradient(135deg, #ffa726 0%, #f57c00 100%);
    }

    .expected-checkout-badge {
        background: linear-gradient(135deg, #ab47bc 0%, #8e24aa 100%);
    }

    .expected-arrival-badge {
        background: linear-gradient(135deg, #26a69a 0%, #00897b 100%);
    }

    .unsettled-badge {
        background: linear-gradient(135deg, #d32f2f 0%, #c62828 100%);
    }

    .ooo-badge {
        background: linear-gradient(135deg, #607d8b 0%, #546e7a 100%);
    }

    .expected-arrival-badge {
        background: linear-gradient(135deg, #26a69a 0%, #00897b 100%);
    }

    /* Responsive Styles */
    @media (max-width: 1199px) {
        .room-status-card {
            padding: 20px;
        }

        .icon-circle {
            width: 52px;
            height: 52px;
            font-size: 22px;
        }

        .count-badge {
            width: 48px;
            height: 48px;
            font-size: 19px;
        }
    }

    @media (max-width: 991px) {
        .room-status-card {
            margin-bottom: 20px;
        }
    }

    @media (max-width: 767px) {
        .room-status-card {
            margin-top: 10px;
            padding: 16px !important;
        }

        .card-header-section {
            flex-direction: column;
            align-items: flex-start !important;
            gap: 12px;
        }

        .icon-wrapper {
            width: 100%;
            justify-content: flex-start;
        }

        .icon-circle {
            width: 48px;
            height: 48px;
            font-size: 20px;
            border-radius: 12px;
        }

        .status-title {
            font-size: 15px;
        }

        .status-subtitle {
            font-size: 12px;
        }

        .count-badge {
            width: 45px;
            height: 45px;
            font-size: 17px;
            border-radius: 10px;
            align-self: flex-end;
            margin-top: -40px;
        }

        .room-numbers {
            margin-top: 10px;
        }

        .room-badge {
            padding: 8px 16px;
            font-size: 14px;
        }

        .btn-view-more {
            width: 100%;
            text-align: center;
            padding: 10px 16px;
            font-size: 14px;
            margin-top: 10px;
        }

        #roomModal .modal-dialog {
            margin: 10px;
            max-width: calc(100% - 20px);
        }

        #roomModal .modal-body {
            padding: 15px;
            gap: 8px;
        }

        #roomModal .room-badge {
            font-size: 13px;
            padding: 8px 14px;
            margin: 3px;
        }

        #roomModal .modal-header {
            padding: 12px 15px;
        }

        #roomModal .modal-title {
            font-size: 16px;
        }

        #roomModal .modal-footer {
            padding: 10px 15px;
        }
    }

    @media (max-width: 575px) {
        .room-status-card {
            margin-top: 10px;
            margin-bottom: 14px;
            padding: 16px;
        }

        .card-header-section {
            margin-bottom: 16px;
            gap: 10px;
        }

        .icon-wrapper {
            gap: 12px;
        }

        .icon-circle {
            width: 42px !important;
            height: 42px !important;
            font-size: 18px !important;
        }

        .status-title {
            font-size: 14px !important;
        }

        .count-badge {
            width: 40px !important;
            height: 40px !important;
            font-size: 16px !important;
        }

        .room-numbers {
            gap: 8px;
        }

        .room-badge {
            padding: 8px 14px !important;
            font-size: 13px !important;
        }

        .btn-view-more {
            font-size: 13px;
            padding: 9px 14px;
        }
    }

    /* View More Button Styles */
    .btn-view-more {
        background: linear-gradient(135deg, #6c757d 0%, #495057 100%);
        color: #ffffff;
        border: none;
        padding: 8px 16px;
        border-radius: 10px;
        font-size: 13px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        margin-top: 10px;
        display: inline-block;
        width: auto;
    }

    .btn-view-more:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        background: linear-gradient(135deg, #495057 0%, #343a40 100%);
        color: #ffffff;
    }

    /* Room Modal Styles */
    #roomModal .modal-body {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        padding: 20px;
    }

    #roomModal .room-badge {
        margin: 5px;
    }

    #roomModal .modal-header {
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
        color: white;
    }

    #roomModal .modal-header .close {
        color: white;
        opacity: 1;
    }

    /* Welcome Header Styles */
    .welcome-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 15px 15px 0 0;
        padding: 25px 30px;
        color: white;
        position: relative;
        overflow: visible;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 20px;
        /* z-index: 1; */
    }

    .welcome-header::before {
        content: '';
        position: absolute;
        top: -50%;
        right: -10%;
        width: 300px;
        height: 300px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        animation: pulse 4s ease-in-out infinite;
        z-index: 0;
    }

    @keyframes pulse {

        0%,
        100% {
            transform: scale(1);
            opacity: 0.1;
        }

        50% {
            transform: scale(1.1);
            opacity: 0.15;
        }
    }

    .welcome-left {
        flex: 1;
        min-width: 250px;
        position: relative;
        z-index: 2;
    }

    .greeting-text {
        font-size: 32px;
        font-weight: 900;
        margin-bottom: 10px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .greeting-icon {
        font-size: 40px;
        animation: bounce 2s ease-in-out infinite;
    }

    @keyframes bounce {

        0%,
        100% {
            transform: translateY(0);
        }

        50% {
            transform: translateY(-5px);
        }
    }

    .software-date {
        margin-top: 8px;
        padding: 6px 14px;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 20px;
        display: inline-block;
        font-size: 13px;
        font-weight: 500;
    }

    .software-date i {
        margin-right: 6px;
    }

    .welcome-right {
        position: relative;
        /* z-index: 100; */
        text-align: right;
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        gap: 8px;
    }

    .live-time-container {
        background: rgba(255, 255, 255, 0.15);
        padding: 12px 20px;
        border-radius: 15px;
        backdrop-filter: blur(10px);
        border: 1px solid rgba(255, 255, 255, 0.2);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .time-label {
        font-size: 11px;
        opacity: 0.85;
        font-weight: 500;
        letter-spacing: 1px;
        text-transform: uppercase;
        margin-bottom: 10px;
        text-align: center;
    }

    .clock-wrapper {
        display: flex;
        align-items: center;
        gap: 20px;
        justify-content: center;
    }

    /* Analog Clock Styles */
    .analog-clock {
        width: 130px;
        height: 130px;
        flex-shrink: 0;
        filter: drop-shadow(0 6px 12px rgba(0, 0, 0, 0.15));
    }

    .clock-face {
        width: 100%;
        height: 100%;
        border-radius: 50%;
        background: linear-gradient(145deg, #ffffff 0%, #f5f7fa 100%);
        box-shadow:
            0 0 0 10px rgba(255, 255, 255, 0.4),
            0 0 0 12px rgba(255, 255, 255, 0.2),
            inset 0 4px 15px rgba(0, 0, 0, 0.08),
            0 15px 35px rgba(0, 0, 0, 0.25);
        position: relative;
        border: 4px solid rgba(255, 255, 255, 0.6);
    }

    .clock-face::before {
        content: '';
        position: absolute;
        width: 95%;
        height: 95%;
        border-radius: 50%;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: radial-gradient(circle at 30% 30%, rgba(255, 255, 255, 0.8) 0%, transparent 60%);
        pointer-events: none;
    }

    /* Clock Markers */
    .clock-markers {
        width: 100%;
        height: 100%;
        position: absolute;
        border-radius: 50%;
    }

    .hour-marker {
        position: absolute;
        width: 2px;
        height: 100%;
        left: 50%;
        top: 0;
        transform-origin: center;
    }

    .hour-marker span {
        display: block;
        width: 3px;
        height: 12px;
        background: linear-gradient(180deg, #2c3e50 0%, #34495e 100%);
        margin: 5px auto 0;
        border-radius: 2px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
    }

    .hour-marker:nth-child(3n+1) span {
        width: 4px;
        height: 15px;
        background: linear-gradient(180deg, #1a252f 0%, #2c3e50 100%);
    }

    .clock-number {
        position: absolute;
        font-size: 16px;
        font-weight: 800;
        color: #2c3e50;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        font-family: 'Arial', sans-serif;
        z-index: 2;
    }

    .clock-hour-hand,
    .clock-minute-hand,
    .clock-second-hand {
        position: absolute;
        bottom: 50%;
        left: 50%;
        transform-origin: bottom center;
        border-radius: 10px;
        transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }

    .clock-hour-hand {
        width: 7px;
        height: 32%;
        background: linear-gradient(180deg, #2c3e50 0%, #34495e 100%);
        transform: translateX(-50%);
        z-index: 3;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        border-radius: 4px 4px 0 0;
    }

    .clock-hour-hand::before {
        content: '';
        position: absolute;
        width: 100%;
        height: 30%;
        background: rgba(255, 255, 255, 0.2);
        top: 0;
        border-radius: 4px 4px 0 0;
    }

    .clock-minute-hand {
        width: 5px;
        height: 40%;
        background: linear-gradient(180deg, #34495e 0%, #4a5f7f 100%);
        transform: translateX(-50%);
        z-index: 4;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        border-radius: 3px 3px 0 0;
    }

    .clock-minute-hand::before {
        content: '';
        position: absolute;
        width: 100%;
        height: 40%;
        background: rgba(255, 255, 255, 0.15);
        top: 0;
        border-radius: 3px 3px 0 0;
    }

    .clock-second-hand {
        width: 2.5px;
        height: 45%;
        background: linear-gradient(180deg, #e74c3c 0%, #c0392b 100%);
        transform: translateX(-50%);
        z-index: 5;
        box-shadow: 0 0 6px rgba(231, 76, 60, 0.6);
        border-radius: 2px 2px 0 0;
    }

    .clock-second-hand::after {
        content: '';
        position: absolute;
        width: 8px;
        height: 8px;
        background: #e74c3c;
        border-radius: 50%;
        bottom: -4px;
        left: 50%;
        transform: translateX(-50%);
        box-shadow: 0 0 4px rgba(231, 76, 60, 0.5);
    }

    .clock-center {
        position: absolute;
        width: 14px;
        height: 14px;
        background: linear-gradient(145deg, #2c3e50 0%, #1a252f 100%);
        border-radius: 50%;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 6;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
        border: 2px solid rgba(255, 255, 255, 0.3);
    }

    .clock-center::after {
        content: '';
        position: absolute;
        width: 6px;
        height: 6px;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        top: 2px;
        left: 2px;
    }

    .live-time {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 6px;
    }

    .time-display {
        font-size: 28px;
        font-weight: 700;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        font-family: 'Courier New', monospace;
        letter-spacing: 2px;
        line-height: 1;
    }

    .time-period {
        font-size: 14px;
        font-weight: 600;
        background: rgba(255, 255, 255, 0.25);
        padding: 4px 12px;
        border-radius: 8px;
    }

    /* Weather Widget Styles */
    .weather-widget {
        display: flex;
        align-items: center;
        justify-content: center;
        min-width: 180px;
    }

    .weather-loading,
    .weather-error {
        text-align: center;
        font-size: 13px;
        opacity: 0.9;
        padding: 8px;
    }

    .weather-loading i {
        font-size: 18px;
        margin-right: 5px;
    }

    .weather-content {
        display: flex;
        align-items: center;
        gap: 15px;
    }

    .weather-icon {
        font-size: 48px;
        text-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
        animation: weatherFloat 3s ease-in-out infinite;
    }

    @keyframes weatherFloat {

        0%,
        100% {
            transform: translateY(0px);
        }

        50% {
            transform: translateY(-5px);
        }
    }

    .weather-info {
        display: flex;
        flex-direction: column;
        gap: 4px;
    }

    .weather-temp {
        font-size: 32px;
        font-weight: 800;
        line-height: 1;
        text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.2);
    }

    .weather-desc {
        font-size: 13px;
        opacity: 0.9;
        font-weight: 500;
        text-transform: capitalize;
    }

    .weather-location {
        font-size: 11px;
        opacity: 0.85;
        display: flex;
        align-items: center;
        gap: 4px;
        margin-top: 2px;
    }

    .weather-location i {
        font-size: 10px;
    }

    .weather-error {
        color: rgba(255, 255, 255, 0.8);
        font-size: 12px;
    }

    .weather-error i {
        display: block;
        font-size: 20px;
        margin-bottom: 5px;
    }

    @keyframes rotate {
        from {
            transform: rotate(0deg);
        }

        to {
            transform: rotate(360deg);
        }
    }

    @media (max-width: 768px) {
        .welcome-header {
            flex-direction: column;
            text-align: center;
        }

        .welcome-left,
        .welcome-right {
            text-align: center;
            width: 100%;
            align-items: center;
        }

        .greeting-text,
        .live-time {
            justify-content: center;
        }

        .greeting-text {
            font-size: 28px;
        }

        .clock-wrapper {
            flex-direction: column;
            gap: 12px;
        }

        .analog-clock {
            width: 110px;
            height: 110px;
        }

        .clock-number {
            font-size: 14px;
        }

        .weather-temp {
            font-size: 28px;
        }

        .weather-icon {
            font-size: 40px;
        }
    }

    /* Analytics Dashboard Styles */
    .analytics-card {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 15px;
        padding: 25px;
        color: white;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s ease;
        margin-bottom: 20px;
    }

    .analytics-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
    }

    .analytics-card.color-1 {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    }

    .analytics-card.color-2 {
        background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
    }

    .analytics-card.color-3 {
        background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
    }

    .analytics-card.color-4 {
        background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
    }

    .analytics-card.color-5 {
        background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
    }

    .analytics-card.color-6 {
        background: linear-gradient(135deg, #30cfd0 0%, #330867 100%);
    }

    .analytics-card.color-7 {
        background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
    }

    .analytics-card.color-8 {
        background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 100%);
    }

    .analytics-card .card-header-row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 15px;
        padding-bottom: 15px;
        border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    }

    .analytics-card .card-title {
        font-size: 16px;
        font-weight: 700;
        margin-bottom: 0;
        opacity: 0.95;
        letter-spacing: 0.5px;
    }

    .analytics-card .restcode {
        font-size: 11px;
        opacity: 0.7;
        background: rgba(255, 255, 255, 0.2);
        padding: 3px 10px;
        border-radius: 12px;
        margin-top: 4px;
    }

    .analytics-card .running-kots-badge {
        text-align: right;
        background: rgba(255, 255, 255, 0.25);
        padding: 8px 15px;
        border-radius: 12px;
        backdrop-filter: blur(5px);
        border: 1px solid rgba(255, 255, 255, 0.3);
    }

    .analytics-card .running-kots-label {
        font-size: 10px;
        opacity: 0.8;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        margin-bottom: 3px;
    }

    .analytics-card .running-kots-value {
        font-size: 18px;
        font-weight: 700;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.15);
    }

    .analytics-card .card-value {
        font-size: 36px;
        font-weight: bold;
        margin-bottom: 15px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
    }

    .analytics-card .card-details {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 4px 10px;
        font-size: 11px;
        opacity: 0.9;
    }

    .analytics-card .detail-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 4px 8px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 6px;
    }

    .analytics-card .detail-label {
        opacity: 0.8;
        font-weight: 500;
    }

    .analytics-card .detail-value {
        font-weight: 700;
    }

    .stats-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
        margin-bottom: 30px;
    }
</style>
