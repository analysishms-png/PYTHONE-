<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel PMS — Dashboard</title>

    <!-- Bootstrap 5.3 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome 6 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=IBM+Plex+Mono:wght@500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --bg: #eef1f5;
            --panel: #ffffff;
            --border: #e2e6ec;
            --border-soft: #eceff3;
            --ink: #1a2233;
            --ink-soft: #5b6472;
            --ink-faint: #8992a1;
            --navy: #132449;
            --navy-2: #1c3564;
            --teal: #0b7c85;
            --teal-soft: #e5f4f4;
            --amber: #b3760a;
            --amber-soft: #fdf2df;
            --red: #c0392b;
            --red-soft: #fbe9e7;
            --green: #1a7f5a;
            --green-soft: #e5f6ee;
            --blue: #2360a5;
            --blue-soft: #e8f1fb;
            --violet: #6a3fb5;
            --violet-soft: #f0eafa;
            --radius: 7px;
            --radius-sm: 5px;
            --shadow: 0 1px 2px rgba(20, 30, 50, 0.05), 0 1px 1px rgba(20, 30, 50, 0.03);
            --font-ui: 'Inter', system-ui, -apple-system, sans-serif;
            --font-num: 'IBM Plex Mono', ui-monospace, monospace;
        }

        .dashboard-content {
            background: var(--bg);
            font-family: var(--font-ui);
            color: var(--ink);
            font-size: 12.5px;
            line-height: 1.35;
            padding: 8px 10px 30px;
        }

        .dashboard-content * {
            box-sizing: border-box;
        }

        .dashboard-content .num {
            font-family: var(--font-num);
        }

        /* ===== Generic compact card ===== */
        .dc-card {
            background: var(--panel);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            margin-bottom: 8px;
        }

        .dc-card-head {
            display: flex;
            align-items: center;
            justify-content: between;
            padding: 7px 10px;
            border-bottom: 1px solid var(--border-soft);
            font-size: 11.5px;
            font-weight: 700;
            letter-spacing: .2px;
            color: var(--navy);
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: linear-gradient(180deg, #fafbfc, #ffffff);
            border-radius: var(--radius) var(--radius) 0 0;
        }

        .dc-card-head .sub-actions i {
            color: var(--ink-faint);
            font-size: 11px;
            margin-left: 8px;
            cursor: pointer;
        }

        .dc-card-head .sub-actions i:hover {
            color: var(--navy);
        }

        .dc-card-body {
            padding: 9px 10px;
        }

        .dc-card-body.tight {
            padding: 6px 8px;
        }

        .dc-scroll {
            max-height: 230px;
            overflow-y: auto;
        }

        .dc-scroll-tall {
            max-height: 320px;
            overflow-y: auto;
        }

        .dc-scroll::-webkit-scrollbar,
        .dc-scroll-tall::-webkit-scrollbar,
        .ticker-wrap::-webkit-scrollbar {
            width: 5px;
            height: 5px;
        }

        .dc-scroll::-webkit-scrollbar-thumb,
        .dc-scroll-tall::-webkit-scrollbar-thumb {
            background: #d3d8e0;
            border-radius: 4px;
        }

        .section-title {
            font-size: 12.5px;
            font-weight: 800;
            color: var(--navy);
            text-transform: uppercase;
            letter-spacing: .4px;
            margin: 14px 0 6px 2px;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .section-title i {
            color: var(--teal);
            font-size: 11px;
        }

        .section-title::after {
            content: "";
            flex: 1;
            height: 1px;
            background: var(--border);
            margin-left: 6px;
        }

        /* ===== Welcome bar ===== */
        .welcome-bar {
            background: linear-gradient(90deg, var(--navy) 0%, var(--navy-2) 100%);
            border-radius: var(--radius);
            color: #eaeefb;
            padding: 8px 14px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            min-height: 58px;
            max-height: 64px;
            box-shadow: var(--shadow);
            flex-wrap: nowrap;
            gap: 10px;
        }

        .welcome-bar .wb-item {
            display: flex;
            flex-direction: column;
            line-height: 1.15;
            padding-right: 14px;
            border-right: 1px solid rgba(255, 255, 255, .12);
        }

        .welcome-bar .wb-item:last-of-type {
            border-right: none;
        }

        .welcome-bar .wb-label {
            font-size: 9px;
            text-transform: uppercase;
            letter-spacing: .5px;
            color: #9fb0d6;
        }

        .welcome-bar .wb-value {
            font-size: 12.5px;
            font-weight: 700;
            color: #fff;
            font-family: var(--font-num);
        }

        .welcome-bar .wb-search {
            background: rgba(255, 255, 255, .08);
            border: 1px solid rgba(255, 255, 255, .18);
            border-radius: 5px;
        }

        .welcome-bar .wb-search input {
            background: transparent;
            border: none;
            color: #fff;
            font-size: 11.5px;
        }

        .welcome-bar .wb-search input::placeholder {
            color: #a9b6d6;
        }

        .welcome-bar .wb-search input:focus {
            box-shadow: none;
            background: transparent;
            color: #fff;
        }

        .welcome-bar .btn-wb {
            background: rgba(255, 255, 255, .09);
            border: 1px solid rgba(255, 255, 255, .2);
            color: #e8ecfb;
            font-size: 11px;
            padding: 4px 8px;
        }

        .welcome-bar .btn-wb:hover {
            background: rgba(255, 255, 255, .18);
            color: #fff;
        }

        .wb-bell {
            position: relative;
        }

        .wb-bell .badge-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--red);
            border-radius: 50%;
            font-size: 8.5px;
            padding: 1.5px 4px;
        }

        /* ===== Ticker ===== */
        .ticker-wrap {
            background: #0f1c38;
            border-radius: var(--radius);
            margin-top: 6px;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            overflow: hidden;
            height: 26px;
            box-shadow: var(--shadow);
        }

        .ticker-tag {
            background: var(--teal);
            color: #fff;
            font-size: 9.5px;
            font-weight: 800;
            letter-spacing: .5px;
            padding: 0 10px;
            height: 100%;
            display: flex;
            align-items: center;
            flex-shrink: 0;
        }

        .ticker-track {
            display: flex;
            white-space: nowrap;
            animation: ticker-scroll 42s linear infinite;
        }

        .ticker-wrap:hover .ticker-track {
            animation-play-state: paused;
        }

        .ticker-item {
            font-size: 11px;
            color: #dbe4fb;
            padding: 0 20px;
            font-family: var(--font-num);
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .ticker-item .up {
            color: #5fd6a0;
        }

        .ticker-item .down {
            color: #ff8a80;
        }

        @keyframes ticker-scroll {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-50%);
            }
        }

        /* ===== KPI cards ===== */
        .kpi-card {
            background: var(--panel);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: 7px 9px;
            height: 98px;
            position: relative;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .kpi-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .kpi-icon {
            width: 22px;
            height: 22px;
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10.5px;
            flex-shrink: 0;
        }

        .kpi-title {
            font-size: 9.5px;
            color: var(--ink-soft);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: .3px;
            margin-top: 3px;
        }

        .kpi-value {
            font-size: 19px;
            font-weight: 700;
            font-family: var(--font-num);
            color: var(--ink);
            line-height: 1;
            margin-top: 2px;
        }

        .kpi-value small {
            font-size: 11px;
            font-weight: 600;
            color: var(--ink-faint);
        }

        .kpi-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 2px;
        }

        .kpi-trend {
            font-size: 9.5px;
            font-weight: 700;
            font-family: var(--font-num);
            display: flex;
            align-items: center;
            gap: 2px;
        }

        .kpi-trend.up {
            color: var(--green);
        }

        .kpi-trend.down {
            color: var(--red);
        }

        .kpi-spark {
            width: 52px;
            height: 20px;
        }

        .kpi-yst {
            font-size: 9px;
            color: var(--ink-faint);
        }

        /* ===== Widgets ===== */
        .mini-stat-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 3px 0;
            font-size: 11.5px;
            border-bottom: 1px dashed var(--border-soft);
        }

        .mini-stat-row:last-child {
            border-bottom: none;
        }

        .mini-stat-row .lbl {
            color: var(--ink-soft);
        }

        .mini-stat-row .val {
            font-weight: 700;
            font-family: var(--font-num);
        }

        .progress {
            background: #eef0f4;
            border-radius: 4px;
            height: 6px;
        }

        .progress-bar {
            border-radius: 4px;
        }

        .badge-soft {
            font-weight: 700;
            font-size: 9.5px;
            padding: 3px 6px;
            border-radius: 4px;
        }

        .bg-teal-soft {
            background: var(--teal-soft);
            color: var(--teal);
        }

        .bg-amber-soft {
            background: var(--amber-soft);
            color: var(--amber);
        }

        .bg-red-soft {
            background: var(--red-soft);
            color: var(--red);
        }

        .bg-green-soft {
            background: var(--green-soft);
            color: var(--green);
        }

        .bg-blue-soft {
            background: var(--blue-soft);
            color: var(--blue);
        }

        .bg-violet-soft {
            background: var(--violet-soft);
            color: var(--violet);
        }

        /* Room status board */
        .room-chip {
            width: 44px;
            height: 34px;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-size: 9.5px;
            font-weight: 700;
            font-family: var(--font-num);
            cursor: pointer;
            border: 1px solid transparent;
        }

        .room-chip small {
            font-size: 7px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .room-occupied {
            background: var(--blue-soft);
            color: var(--blue);
            border-color: #cfe0f5;
        }

        .room-vacant {
            background: var(--green-soft);
            color: var(--green);
            border-color: #cdeee0;
        }

        .room-dirty {
            background: var(--amber-soft);
            color: var(--amber);
            border-color: #f5e2ba;
        }

        .room-clean {
            background: #eef6f0;
            color: #2f8a54;
            border-color: #d8ecdd;
        }

        .room-inspected {
            background: var(--violet-soft);
            color: var(--violet);
            border-color: #e0d3f5;
        }

        .room-ooo {
            background: var(--red-soft);
            color: var(--red);
            border-color: #f3cfc9;
        }

        .room-blocked {
            background: #efeff2;
            color: #5b6472;
            border-color: #dcdfe4;
        }

        .room-checkout {
            background: #fdeef0;
            color: #c0396b;
            border-color: #f7d3dd;
        }

        .legend-dot {
            width: 9px;
            height: 9px;
            border-radius: 2px;
            display: inline-block;
            margin-right: 4px;
        }

        /* Timeline */
        .tl-item {
            display: flex;
            gap: 8px;
            padding: 6px 0;
            border-bottom: 1px solid var(--border-soft);
        }

        .tl-item:last-child {
            border-bottom: none;
        }

        .tl-icon {
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10px;
            flex-shrink: 0;
        }

        .tl-time {
            font-size: 9.5px;
            color: var(--ink-faint);
            font-family: var(--font-num);
            white-space: nowrap;
        }

        .tl-desc {
            font-size: 11.3px;
        }

        .tl-dept {
            font-size: 8.5px;
            padding: 1px 5px;
            border-radius: 3px;
            font-weight: 700;
        }

        /* Notification */
        .notif-item {
            display: flex;
            gap: 7px;
            padding: 6px 2px;
            border-bottom: 1px solid var(--border-soft);
            align-items: flex-start;
        }

        .notif-item:last-child {
            border-bottom: none;
        }

        .notif-dot {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            margin-top: 5px;
            flex-shrink: 0;
        }

        /* Quick actions */
        .qa-btn {
            border: 1px solid var(--border);
            background: #fff;
            border-radius: var(--radius-sm);
            padding: 9px 4px;
            text-align: center;
            font-size: 10px;
            font-weight: 600;
            color: var(--ink);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 5px;
            transition: .12s;
        }

        .qa-btn i {
            font-size: 15px;
            color: var(--teal);
        }

        .qa-btn:hover {
            background: var(--navy);
            color: #fff;
            border-color: var(--navy);
        }

        .qa-btn:hover i {
            color: #fff;
        }

        /* Insights */
        .insight-item {
            display: flex;
            align-items: flex-start;
            gap: 8px;
            padding: 7px 9px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border-soft);
            margin-bottom: 6px;
            font-size: 11.3px;
        }

        .insight-item i {
            margin-top: 2px;
            font-size: 12px;
        }

        /* Calendar */
        .mini-cal {
            width: 100%;
            border-collapse: collapse;
        }

        .mini-cal th {
            font-size: 9px;
            color: var(--ink-faint);
            text-transform: uppercase;
            padding: 3px 0;
            font-weight: 700;
        }

        .mini-cal td {
            text-align: center;
            font-size: 10.5px;
            padding: 3px 0;
            border-radius: 4px;
            position: relative;
            color: var(--ink);
        }

        .mini-cal td.today {
            background: var(--navy);
            color: #fff;
            font-weight: 700;
        }

        .mini-cal td .dot-row {
            display: flex;
            justify-content: center;
            gap: 1.5px;
            margin-top: 1px;
        }

        .mini-cal td .evdot {
            width: 3.5px;
            height: 3.5px;
            border-radius: 50%;
        }

        .mini-cal td.muted {
            color: var(--ink-faint);
            opacity: .45;
        }

        /* Weather */
        .wx-hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .wx-temp {
            font-size: 30px;
            font-weight: 700;
            font-family: var(--font-num);
        }

        .wx-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 5px;
            margin-top: 6px;
        }

        .wx-grid div {
            background: #f6f8fb;
            border-radius: 5px;
            padding: 5px;
            text-align: center;
            font-size: 9.5px;
        }

        .wx-grid .wv {
            font-weight: 700;
            font-size: 11px;
            font-family: var(--font-num);
            display: block;
        }

        .wx-forecast {
            display: flex;
            justify-content: space-between;
            margin-top: 7px;
        }

        .wx-forecast div {
            text-align: center;
            font-size: 9px;
            color: var(--ink-soft);
        }

        .wx-forecast .wf-t {
            font-weight: 700;
            color: var(--ink);
            font-size: 10.5px;
            font-family: var(--font-num);
        }

        /* Status footer */
        .status-footer {
            display: flex;
            flex-wrap: wrap;
            gap: 14px;
            background: var(--panel);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 7px 12px;
            font-size: 10.5px;
            box-shadow: var(--shadow);
            margin-top: 10px;
        }

        .status-footer .sf-item {
            display: flex;
            align-items: center;
            gap: 5px;
            color: var(--ink-soft);
        }

        .status-dot {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            flex-shrink: 0;
        }

        .status-dot.ok {
            background: var(--green);
            box-shadow: 0 0 0 2px var(--green-soft);
        }

        .status-dot.bad {
            background: var(--red);
            box-shadow: 0 0 0 2px var(--red-soft);
        }

        .status-dot.warn {
            background: var(--amber);
            box-shadow: 0 0 0 2px var(--amber-soft);
        }

        /* Tables */
        .dc-table {
            font-size: 11px;
            margin-bottom: 0;
        }

        .dc-table thead th {
            font-size: 9.5px;
            text-transform: uppercase;
            color: var(--ink-faint);
            font-weight: 700;
            border-bottom: 1px solid var(--border);
            padding: 4px 6px;
            background: #fafbfc;
        }

        .dc-table td {
            padding: 4.5px 6px;
            vertical-align: middle;
            border-bottom: 1px solid var(--border-soft);
        }

        .dc-table tbody tr:last-child td {
            border-bottom: none;
        }

        .chart-box {
            position: relative;
            height: 150px;
        }

        .chart-box.sm {
            height: 120px;
        }

        .avatar-sm {
            width: 22px;
            height: 22px;
            border-radius: 50%;
            background: var(--navy);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 9px;
            font-weight: 700;
            flex-shrink: 0;
        }

        @media (max-width:767px) {
            .welcome-bar {
                flex-wrap: wrap;
                min-height: auto;
                max-height: none;
                padding: 8px;
            }

            .welcome-bar .wb-item {
                padding-right: 8px;
                padding-bottom: 4px;
            }

            .kpi-card {
                height: auto;
                min-height: 92px;
            }
        }
    </style>
</head>

<body>

    <div class="dashboard-content">

        <!-- ========================= WELCOME BAR ========================= -->
        <div class="welcome-bar">
            <div class="d-flex align-items-center flex-wrap" style="gap:0;">
                <div class="wb-item">
                    <span class="wb-label"><i class="fa-solid fa-hotel"></i> Property</span>
                    <span class="wb-value">Grand Meridian Palace — Lucknow</span>
                </div>
                <div class="wb-item">
                    <span class="wb-label">Business Date</span>
                    <span class="wb-value" id="bizDate">31 Jul 2026</span>
                </div>
                <div class="wb-item">
                    <span class="wb-label">Time</span>
                    <span class="wb-value" id="liveClock">--:--:--</span>
                </div>
                <div class="wb-item">
                    <span class="wb-label">Shift</span>
                    <span class="wb-value">Day <span class="badge bg-success ms-1" style="font-size:8px;">Active</span></span>
                </div>
                <div class="wb-item">
                    <span class="wb-label">Weather</span>
                    <span class="wb-value"><i class="fa-solid fa-cloud-sun text-warning"></i> 34°C Lucknow</span>
                </div>
                <div class="wb-item">
                    <span class="wb-label">User</span>
                    <span class="wb-value"><i class="fa-solid fa-circle-user"></i> Sagar Verma · Duty Mgr</span>
                </div>
            </div>
            <div class="d-flex align-items-center" style="gap:8px;">
                <div class="wb-search input-group input-group-sm d-none d-lg-flex" style="width:190px;">
                    <span class="input-group-text bg-transparent border-0 text-white-50 pe-0"><i class="fa-solid fa-magnifying-glass fa-xs"></i></span>
                    <input type="text" class="form-control form-control-sm" placeholder="Search guest, room, res#...">
                </div>
                <button class="btn btn-wb btn-sm"><i class="fa-solid fa-bolt fa-xs me-1"></i>Quick Actions</button>
                <div class="wb-bell text-white"><i class="fa-solid fa-bell"></i><span class="badge-count">17</span></div>
                <div class="wb-bell text-white"><i class="fa-solid fa-envelope"></i><span class="badge-count">4</span></div>
            </div>
        </div>

        <!-- ========================= LIVE TICKER ========================= -->
        <div class="ticker-wrap">
            <div class="ticker-tag">LIVE</div>
            <div class="ticker-track" id="tickerTrack"></div>
        </div>

        <!-- ========================= KPI STRIP ========================= -->
        <div class="row g-2" id="kpiRow"></div>

        <!-- ========================= OPERATIONS WIDGETS ========================= -->
        <div class="section-title"><i class="fa-solid fa-bed"></i>Hotel Operations</div>
        <div class="row g-2">
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Today's Arrivals <span class="badge-soft bg-blue-soft">42</span></div>
                    <div class="dc-card-body tight">
                        <div class="progress mb-1">
                            <div class="progress-bar bg-primary" style="width:64%"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Checked-in</span><span class="val">27</span></div>
                        <div class="mini-stat-row"><span class="lbl">Pending</span><span class="val">15</span></div>
                        <div class="mini-stat-row"><span class="lbl">VIP</span><span class="val">3</span></div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Today's Departures <span class="badge-soft bg-amber-soft">36</span></div>
                    <div class="dc-card-body tight">
                        <div class="progress mb-1">
                            <div class="progress-bar bg-warning" style="width:47%"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Checked-out</span><span class="val">17</span></div>
                        <div class="mini-stat-row"><span class="lbl">Pending</span><span class="val">19</span></div>
                        <div class="mini-stat-row"><span class="lbl">Late C/O</span><span class="val">4</span></div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">In-House Guests <span class="badge-soft bg-green-soft">318</span></div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Rooms</span><span class="val">212</span></div>
                        <div class="mini-stat-row"><span class="lbl">Group</span><span class="val">64</span></div>
                        <div class="mini-stat-row"><span class="lbl">Corporate</span><span class="val">51</span></div>
                        <div class="mini-stat-row"><span class="lbl">Long-stay</span><span class="val">12</span></div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Booking Source</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Direct</span><span class="val">38%</span></div>
                        <div class="mini-stat-row"><span class="lbl">OTA</span><span class="val">41%</span></div>
                        <div class="mini-stat-row"><span class="lbl">Corporate</span><span class="val">15%</span></div>
                        <div class="mini-stat-row"><span class="lbl">Travel Agent</span><span class="val">6%</span></div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Cancellations</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Cancelled</span><span class="val text-danger">7</span></div>
                        <div class="mini-stat-row"><span class="lbl">No-shows</span><span class="val text-danger">3</span></div>
                        <div class="mini-stat-row"><span class="lbl">Amendments</span><span class="val">11</span></div>
                        <div class="mini-stat-row"><span class="lbl">Waitlist</span><span class="val">5</span></div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-md-4 col-xl-2">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Walk-ins / VIP</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Walk-ins today</span><span class="val">9</span></div>
                        <div class="mini-stat-row"><span class="lbl">VIP arriving</span><span class="val">3</span></div>
                        <div class="mini-stat-row"><span class="lbl">Repeat guests</span><span class="val">22</span></div>
                        <div class="mini-stat-row"><span class="lbl">Complaints open</span><span class="val text-danger">2</span></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= ROOM STATUS BOARD ========================= -->
        <div class="row g-2">
            <div class="col-lg-8">
                <div class="dc-card h-100">
                    <div class="dc-card-head">
                        <span><i class="fa-solid fa-border-all me-1 text-muted"></i>Live Room Status Board — 260 Rooms</span>
                        <span class="sub-actions"><i class="fa-solid fa-expand"></i><i class="fa-solid fa-rotate"></i></span>
                    </div>
                    <div class="dc-card-body">
                        <div class="d-flex flex-wrap gap-3 mb-2" style="font-size:9.5px;">
                            <span><span class="legend-dot" style="background:#2360a5"></span>Occupied 212</span>
                            <span><span class="legend-dot" style="background:#1a7f5a"></span>Vacant 31</span>
                            <span><span class="legend-dot" style="background:#b3760a"></span>Dirty 18</span>
                            <span><span class="legend-dot" style="background:#2f8a54"></span>Clean 9</span>
                            <span><span class="legend-dot" style="background:#6a3fb5"></span>Inspected 6</span>
                            <span><span class="legend-dot" style="background:#c0392b"></span>OOO 3</span>
                            <span><span class="legend-dot" style="background:#5b6472"></span>Blocked 4</span>
                            <span><span class="legend-dot" style="background:#c0396b"></span>Checkout Due 12</span>
                        </div>
                        <div class="dc-scroll" id="roomBoard" style="display:flex;flex-wrap:wrap;gap:4px;"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Smart Insights</div>
                    <div class="dc-card-body dc-scroll" id="insightsPanel"></div>
                </div>
            </div>
        </div>

        <!-- ========================= HOUSEKEEPING ========================= -->
        <div class="section-title"><i class="fa-solid fa-broom"></i>Housekeeping Dashboard</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Cleaning Progress</div>
                    <div class="dc-card-body tight">
                        <div class="d-flex justify-content-between mb-1"><span class="lbl" style="font-size:11px;">Rooms Cleaned</span><span class="val num fw-bold">146 / 212</span></div>
                        <div class="progress mb-2">
                            <div class="progress-bar bg-success" style="width:69%"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Pending</span><span class="val text-warning">42</span></div>
                        <div class="mini-stat-row"><span class="lbl">Supervisor Pending</span><span class="val">14</span></div>
                        <div class="mini-stat-row"><span class="lbl">Inspected</span><span class="val">90</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Linen &amp; Laundry</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">In Laundry</span><span class="val">184 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Ready Stock</span><span class="val">920 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Damaged</span><span class="val text-danger">6 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Amenities Used</span><span class="val">312 units</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Lost &amp; Found</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">Room 214 — Phone charger</span><span class="badge-soft bg-blue-soft">Open</span></div>
                        <div class="mini-stat-row"><span class="lbl">Room 108 — Sunglasses</span><span class="badge-soft bg-green-soft">Claimed</span></div>
                        <div class="mini-stat-row"><span class="lbl">Room 322 — Wallet</span><span class="badge-soft bg-red-soft">Escalated</span></div>
                        <div class="mini-stat-row"><span class="lbl">Banquet Hall — Umbrella</span><span class="badge-soft bg-blue-soft">Open</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">HK Staff Performance</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="hkPerfChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= RESERVATION DASHBOARD ========================= -->
        <div class="section-title"><i class="fa-solid fa-calendar-check"></i>Reservation Dashboard</div>
        <div class="row g-2">
            <div class="col-lg-4">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Reservation Funnel</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Enquiries</span><span class="val">640</span></div>
                        <div class="progress mb-1" style="height:5px;">
                            <div class="progress-bar" style="width:100%;background:#2360a5"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Quotes Sent</span><span class="val">410</span></div>
                        <div class="progress mb-1" style="height:5px;">
                            <div class="progress-bar" style="width:64%;background:#0b7c85"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Confirmed</span><span class="val">268</span></div>
                        <div class="progress mb-1" style="height:5px;">
                            <div class="progress-bar" style="width:42%;background:#1a7f5a"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Cancelled</span><span class="val text-danger">31</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Room Type Availability</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:150px;">
                        <table class="table dc-table">
                            <thead>
                                <tr>
                                    <th>Type</th>
                                    <th>Total</th>
                                    <th>Sold</th>
                                    <th>Avail</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Deluxe</td>
                                    <td>90</td>
                                    <td>78</td>
                                    <td class="text-success fw-bold">12</td>
                                </tr>
                                <tr>
                                    <td>Executive</td>
                                    <td>60</td>
                                    <td>52</td>
                                    <td class="text-success fw-bold">8</td>
                                </tr>
                                <tr>
                                    <td>Suite</td>
                                    <td>40</td>
                                    <td>36</td>
                                    <td class="text-success fw-bold">4</td>
                                </tr>
                                <tr>
                                    <td>Premium Suite</td>
                                    <td>30</td>
                                    <td>28</td>
                                    <td class="text-warning fw-bold">2</td>
                                </tr>
                                <tr>
                                    <td>Presidential</td>
                                    <td>10</td>
                                    <td>9</td>
                                    <td class="text-danger fw-bold">1</td>
                                </tr>
                                <tr>
                                    <td>Standard</td>
                                    <td>30</td>
                                    <td>9</td>
                                    <td class="text-success fw-bold">21</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Top Travel Agencies / Companies</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:150px;">
                        <div class="mini-stat-row"><span class="lbl">MakeMyTrip</span><span class="val">62 rm</span></div>
                        <div class="mini-stat-row"><span class="lbl">Goibibo</span><span class="val">44 rm</span></div>
                        <div class="mini-stat-row"><span class="lbl">TCS Ltd (Corp)</span><span class="val">38 rm</span></div>
                        <div class="mini-stat-row"><span class="lbl">Yatra Corporate</span><span class="val">29 rm</span></div>
                        <div class="mini-stat-row"><span class="lbl">Infosys (Corp)</span><span class="val">24 rm</span></div>
                        <div class="mini-stat-row"><span class="lbl">SOTC Travels</span><span class="val">17 rm</span></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= FRONT OFFICE ========================= -->
        <div class="section-title"><i class="fa-solid fa-concierge-bell"></i>Front Office Dashboard</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Guest Demographics</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="nationalityChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Guest Requests</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">Wake-up Calls</span><span class="val">14</span></div>
                        <div class="mini-stat-row"><span class="lbl">Extra Amenities</span><span class="val">21</span></div>
                        <div class="mini-stat-row"><span class="lbl">Room Change</span><span class="val">5</span></div>
                        <div class="mini-stat-row"><span class="lbl">Late Checkout</span><span class="val">9</span></div>
                        <div class="mini-stat-row"><span class="lbl">Messages Pending</span><span class="val">3</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Billing Snapshot</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Pending Bills</span><span class="val text-danger">27</span></div>
                        <div class="mini-stat-row"><span class="lbl">Express Checkout</span><span class="val">6</span></div>
                        <div class="mini-stat-row"><span class="lbl">Complaints Open</span><span class="val text-danger">2</span></div>
                        <div class="mini-stat-row"><span class="lbl">Repeat Guests</span><span class="val">22</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Long Stay / Group Guests</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Long Stay (7+ nights)</span><span class="val">12</span></div>
                        <div class="mini-stat-row"><span class="lbl">Group Bookings</span><span class="val">6 grps</span></div>
                        <div class="mini-stat-row"><span class="lbl">Group Rooms Blocked</span><span class="val">64</span></div>
                        <div class="mini-stat-row"><span class="lbl">Gender Split (M/F)</span><span class="val">58% / 42%</span></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= RESTAURANT / POS ========================= -->
        <div class="section-title"><i class="fa-solid fa-utensils"></i>Restaurant / POS</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Today's Sales</div>
                    <div class="dc-card-body tight">
                        <div class="kpi-value" style="font-size:20px;">₹2,84,600</div>
                        <div class="mini-stat-row"><span class="lbl">Open Tables</span><span class="val">18 / 40</span></div>
                        <div class="mini-stat-row"><span class="lbl">Running KOT</span><span class="val">14</span></div>
                        <div class="mini-stat-row"><span class="lbl">Cancelled Bills</span><span class="val text-danger">3</span></div>
                        <div class="mini-stat-row"><span class="lbl">Avg Bill Value</span><span class="val">₹1,860</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Top Selling Items</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">Butter Chicken</span><span class="val">86 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Paneer Tikka</span><span class="val">74 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Dal Makhani</span><span class="val">68 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Masala Dosa</span><span class="val">55 pcs</span></div>
                        <div class="mini-stat-row"><span class="lbl">Cold Coffee</span><span class="val">49 pcs</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Top Waiters / Fastest Service</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">Ravi Kumar</span><span class="val">₹42,600</span></div>
                        <div class="mini-stat-row"><span class="lbl">Amit Singh</span><span class="val">₹38,150</span></div>
                        <div class="mini-stat-row"><span class="lbl">Priya Nair</span><span class="val">₹35,900</span></div>
                        <div class="mini-stat-row"><span class="lbl">Fastest KOT</span><span class="val">6 min 12s</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Hourly Sales</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="hourlySalesChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= INVENTORY ========================= -->
        <div class="section-title"><i class="fa-solid fa-boxes-stacked"></i>Inventory</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Stock Status</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Current Stock Items</span><span class="val">1,240</span></div>
                        <div class="mini-stat-row"><span class="lbl">Critical Stock</span><span class="val text-warning">18</span></div>
                        <div class="mini-stat-row"><span class="lbl">Out of Stock</span><span class="val text-danger">6</span></div>
                        <div class="mini-stat-row"><span class="lbl">Near Expiry</span><span class="val text-warning">11</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Procurement</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Purchase Orders Open</span><span class="val">9</span></div>
                        <div class="mini-stat-row"><span class="lbl">Pending GRN</span><span class="val">4</span></div>
                        <div class="mini-stat-row"><span class="lbl">Pending Requisition</span><span class="val">7</span></div>
                        <div class="mini-stat-row"><span class="lbl">Vendor Rating Avg</span><span class="val">4.3 / 5</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Consumption</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Kitchen Consumption</span><span class="val">₹64,200</span></div>
                        <div class="mini-stat-row"><span class="lbl">Store Consumption</span><span class="val">₹22,800</span></div>
                        <div class="mini-stat-row"><span class="lbl">Housekeeping Consumption</span><span class="val">₹9,450</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Inventory Movement</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="inventoryMoveChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= BANQUET ========================= -->
        <div class="section-title"><i class="fa-solid fa-champagne-glasses"></i>Banquet</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Today's / Upcoming Events</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">Sharma Wedding — Grand Hall</span><span class="badge-soft bg-blue-soft">Today</span></div>
                        <div class="mini-stat-row"><span class="lbl">TCS Annual Meet — Crystal Rm</span><span class="badge-soft bg-blue-soft">Today</span></div>
                        <div class="mini-stat-row"><span class="lbl">Verma Sangeet — Lawn</span><span class="badge-soft bg-green-soft">Tomorrow</span></div>
                        <div class="mini-stat-row"><span class="lbl">Infosys Conf — Emerald Rm</span><span class="badge-soft bg-green-soft">3 Aug</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Venue Status</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Grand Hall</span><span class="badge-soft bg-red-soft">Occupied</span></div>
                        <div class="mini-stat-row"><span class="lbl">Crystal Room</span><span class="badge-soft bg-red-soft">Occupied</span></div>
                        <div class="mini-stat-row"><span class="lbl">Emerald Room</span><span class="badge-soft bg-green-soft">Free</span></div>
                        <div class="mini-stat-row"><span class="lbl">Lawn</span><span class="badge-soft bg-amber-soft">Setup</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Banquet Revenue</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Total Revenue (MTD)</span><span class="val">₹48.6 L</span></div>
                        <div class="mini-stat-row"><span class="lbl">Advance Received</span><span class="val text-success">₹31.2 L</span></div>
                        <div class="mini-stat-row"><span class="lbl">Outstanding</span><span class="val text-danger">₹17.4 L</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Venue Occupancy</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="banquetChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= FINANCE ========================= -->
        <div class="section-title"><i class="fa-solid fa-sack-dollar"></i>Finance</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Today's Collection</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl"><i class="fa-solid fa-money-bill-wave text-success me-1"></i>Cash</span><span class="val">₹1.8 L</span></div>
                        <div class="mini-stat-row"><span class="lbl"><i class="fa-solid fa-credit-card text-primary me-1"></i>Card</span><span class="val">₹4.2 L</span></div>
                        <div class="mini-stat-row"><span class="lbl"><i class="fa-solid fa-qrcode text-info me-1"></i>UPI</span><span class="val">₹2.6 L</span></div>
                        <div class="mini-stat-row"><span class="lbl"><i class="fa-solid fa-building-columns text-secondary me-1"></i>Bank</span><span class="val">₹1.1 L</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">P&amp;L Snapshot</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Revenue (MTD)</span><span class="val">₹1.92 Cr</span></div>
                        <div class="mini-stat-row"><span class="lbl">Expenses (MTD)</span><span class="val">₹1.14 Cr</span></div>
                        <div class="mini-stat-row"><span class="lbl">Gross Profit</span><span class="val text-success">₹78.4 L</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Receivables / Payables</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Outstanding Receivable</span><span class="val text-danger">₹34.2 L</span></div>
                        <div class="mini-stat-row"><span class="lbl">Outstanding Payable</span><span class="val text-warning">₹21.6 L</span></div>
                        <div class="mini-stat-row"><span class="lbl">GST Payable (CGST+SGST)</span><span class="val">₹6.8 L</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Revenue Distribution</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="revDistChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= HR / NIGHT AUDIT ========================= -->
        <div class="section-title"><i class="fa-solid fa-users"></i>HR &amp; Night Audit</div>
        <div class="row g-2">
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Attendance Today</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Present</span><span class="val text-success">184</span></div>
                        <div class="mini-stat-row"><span class="lbl">Absent</span><span class="val text-danger">6</span></div>
                        <div class="mini-stat-row"><span class="lbl">On Leave</span><span class="val">9</span></div>
                        <div class="mini-stat-row"><span class="lbl">Late Arrivals</span><span class="val text-warning">5</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Upcoming Birthdays / Holidays</div>
                    <div class="dc-card-body tight dc-scroll" style="max-height:110px;">
                        <div class="mini-stat-row"><span class="lbl">🎂 Neha Gupta (F&amp;B)</span><span class="val">2 Aug</span></div>
                        <div class="mini-stat-row"><span class="lbl">🎂 Arjun Rathi (Front Office)</span><span class="val">5 Aug</span></div>
                        <div class="mini-stat-row"><span class="lbl">Independence Day</span><span class="val">15 Aug</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Night Audit Status</div>
                    <div class="dc-card-body tight">
                        <div class="mini-stat-row"><span class="lbl">Status</span><span class="badge-soft bg-amber-soft">Pending</span></div>
                        <div class="progress mb-1">
                            <div class="progress-bar bg-warning" style="width:72%"></div>
                        </div>
                        <div class="mini-stat-row"><span class="lbl">Pending Postings</span><span class="val">14</span></div>
                        <div class="mini-stat-row"><span class="lbl">Pending Charges</span><span class="val">6</span></div>
                        <div class="mini-stat-row"><span class="lbl">Warnings</span><span class="val text-danger">2</span></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Department Strength</div>
                    <div class="dc-card-body tight">
                        <div class="chart-box sm"><canvas id="deptStrengthChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= CALENDAR / WEATHER / NOTIFICATIONS / TIMELINE ========================= -->
        <div class="section-title"><i class="fa-solid fa-layer-group"></i>Overview Panels</div>
        <div class="row g-2">
            <div class="col-lg-3 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">August 2026<span class="sub-actions"><i class="fa-solid fa-chevron-left"></i><i class="fa-solid fa-chevron-right"></i></span></div>
                    <div class="dc-card-body tight">
                        <table class="mini-cal">
                            <thead>
                                <tr>
                                    <th>S</th>
                                    <th>M</th>
                                    <th>T</th>
                                    <th>W</th>
                                    <th>T</th>
                                    <th>F</th>
                                    <th>S</th>
                                </tr>
                            </thead>
                            <tbody id="miniCalBody"></tbody>
                        </table>
                        <div class="d-flex flex-wrap gap-2 mt-1" style="font-size:8.5px;">
                            <span><span class="legend-dot" style="background:#2360a5"></span>Check-in/out</span>
                            <span><span class="legend-dot" style="background:#6a3fb5"></span>Banquet</span>
                            <span><span class="legend-dot" style="background:#c0392b"></span>Holiday</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Weather — Lucknow</div>
                    <div class="dc-card-body tight">
                        <div class="wx-hero">
                            <div>
                                <div class="wx-temp">34°</div>
                                <div style="font-size:10px;color:var(--ink-soft);">Feels 37° · Partly Cloudy</div>
                            </div>
                            <i class="fa-solid fa-cloud-sun-rain fa-2x text-warning"></i>
                        </div>
                        <div class="wx-grid">
                            <div>Humidity<span class="wv">68%</span></div>
                            <div>Wind<span class="wv">12 km/h</span></div>
                            <div>AQI<span class="wv">142</span></div>
                            <div>Rain<span class="wv">40%</span></div>
                            <div>Sunrise<span class="wv">5:42a</span></div>
                            <div>Sunset<span class="wv">7:08p</span></div>
                        </div>
                        <div class="wx-forecast">
                            <div>Sat<i class="fa-solid fa-cloud-sun d-block text-warning my-1"></i><span class="wf-t">35°</span></div>
                            <div>Sun<i class="fa-solid fa-cloud-showers-heavy d-block text-info my-1"></i><span class="wf-t">31°</span></div>
                            <div>Mon<i class="fa-solid fa-cloud d-block text-secondary my-1"></i><span class="wf-t">32°</span></div>
                            <div>Tue<i class="fa-solid fa-sun d-block text-warning my-1"></i><span class="wf-t">36°</span></div>
                            <div>Wed<i class="fa-solid fa-cloud-sun d-block text-warning my-1"></i><span class="wf-t">34°</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Notifications <span class="badge-soft bg-red-soft">17 new</span></div>
                    <div class="dc-card-body tight dc-scroll" id="notifPanel"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Live Activity Timeline</div>
                    <div class="dc-card-body tight dc-scroll" id="timelinePanel"></div>
                </div>
            </div>
        </div>

        <!-- ========================= CHARTS SECTION ========================= -->
        <div class="section-title"><i class="fa-solid fa-chart-line"></i>Analytics</div>
        <div class="row g-2">
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Occupancy Trend (14 Days)</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="occTrendChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Revenue Trend (14 Days)</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="revTrendChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">ADR vs RevPAR</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="adrRevparChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Reservation Sources</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="resSourceChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Department Revenue</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="deptRevChart"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="dc-card h-100">
                    <div class="dc-card-head">Payment Methods</div>
                    <div class="dc-card-body">
                        <div class="chart-box"><canvas id="paymentMethodChart"></canvas></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========================= QUICK ACTIONS ========================= -->
        <div class="section-title"><i class="fa-solid fa-bolt"></i>Quick Actions</div>
        <div class="row g-2 mb-2" id="quickActions"></div>

        <!-- ========================= STATUS FOOTER ========================= -->
        <div class="status-footer" id="statusFooter"></div>

    </div><!-- /dashboard-content -->

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Bootstrap 5.3 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
    <!-- Chart.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.4/chart.umd.min.js"></script>

    <script>
        $(function() {

            /* ============ Live clock ============ */
            function tickClock() {
                const d = new Date();
                $('#liveClock').text(d.toLocaleTimeString('en-IN', {
                    hour12: true
                }));
            }
            tickClock();
            setInterval(tickClock, 1000);

            /* ============ Sparkline generator (inline SVG, no chart instance overhead) ============ */
            function sparkSVG(data, color) {
                const w = 52,
                    h = 20,
                    max = Math.max(...data),
                    min = Math.min(...data);
                const range = (max - min) || 1;
                const pts = data.map((v, i) => {
                    const x = (i / (data.length - 1)) * w;
                    const y = h - ((v - min) / range) * h;
                    return x.toFixed(1) + ',' + y.toFixed(1);
                }).join(' ');
                return `<svg viewBox="0 0 ${w} ${h}" width="${w}" height="${h}" preserveAspectRatio="none">
    <polyline points="${pts}" fill="none" stroke="${color}" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
  </svg>`;
            }

            function randSeries(base, vol, n) {
                let v = base;
                const out = [];
                for (let i = 0; i < n; i++) {
                    v += (Math.random() - 0.5) * vol;
                    out.push(Math.max(0, v));
                }
                return out;
            }

            /* ============ KPI Data ============ */
            const kpis = [{
                    title: 'Occupancy %',
                    val: '81.5',
                    suf: '%',
                    icon: 'fa-percent',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+4.2%',
                    up: true,
                    yst: '77.3%'
                },
                {
                    title: 'Available Rooms',
                    val: '48',
                    icon: 'fa-door-open',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    trend: '-6',
                    up: false,
                    yst: '54'
                },
                {
                    title: 'Occupied Rooms',
                    val: '212',
                    icon: 'fa-bed',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+9',
                    up: true,
                    yst: '203'
                },
                {
                    title: 'Vacant Rooms',
                    val: '31',
                    icon: 'fa-door-closed',
                    color: '#5b6472',
                    bg: '#eef0f3',
                    trend: '-4',
                    up: false,
                    yst: '35'
                },
                {
                    title: 'Dirty Rooms',
                    val: '18',
                    icon: 'fa-broom',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    trend: '+3',
                    up: false,
                    yst: '15'
                },
                {
                    title: 'Clean Rooms',
                    val: '9',
                    icon: 'fa-spray-can-sparkles',
                    color: '#2f8a54',
                    bg: '#eef6f0',
                    trend: '-1',
                    up: false,
                    yst: '10'
                },
                {
                    title: 'Expected Check-ins',
                    val: '42',
                    icon: 'fa-right-to-bracket',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+6',
                    up: true,
                    yst: '36'
                },
                {
                    title: 'Expected Check-outs',
                    val: '36',
                    icon: 'fa-right-from-bracket',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    trend: '-2',
                    up: false,
                    yst: '38'
                },
                {
                    title: 'Walk-ins',
                    val: '9',
                    icon: 'fa-person-walking',
                    color: '#6a3fb5',
                    bg: 'var(--violet-soft)',
                    trend: '+2',
                    up: true,
                    yst: '7'
                },
                {
                    title: 'VIP Guests',
                    val: '11',
                    icon: 'fa-crown',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    trend: '+3',
                    up: true,
                    yst: '8'
                },
                {
                    title: 'Room Revenue',
                    val: '18.6',
                    pre: '₹',
                    suf: 'L',
                    icon: 'fa-bed',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    trend: '+12%',
                    up: true,
                    yst: '₹16.6L'
                },
                {
                    title: 'POS Revenue',
                    val: '2.85',
                    pre: '₹',
                    suf: 'L',
                    icon: 'fa-utensils',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    trend: '+8%',
                    up: true,
                    yst: '₹2.64L'
                },
                {
                    title: 'Banquet Revenue',
                    val: '6.2',
                    pre: '₹',
                    suf: 'L',
                    icon: 'fa-champagne-glasses',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    trend: '+22%',
                    up: true,
                    yst: '₹5.1L'
                },
                {
                    title: "Today's Collection",
                    val: '9.7',
                    pre: '₹',
                    suf: 'L',
                    icon: 'fa-cash-register',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    trend: '+15%',
                    up: true,
                    yst: '₹8.4L'
                },
                {
                    title: 'Pending Bills',
                    val: '27',
                    icon: 'fa-file-invoice',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    trend: '+5',
                    up: false,
                    yst: '22'
                },
                {
                    title: 'Outstanding Amount',
                    val: '34.2',
                    pre: '₹',
                    suf: 'L',
                    icon: 'fa-hand-holding-dollar',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    trend: '+2.1L',
                    up: false,
                    yst: '₹32.1L'
                },
                {
                    title: 'ADR',
                    val: '6,240',
                    pre: '₹',
                    icon: 'fa-tag',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+3.4%',
                    up: true,
                    yst: '₹6,035'
                },
                {
                    title: 'RevPAR',
                    val: '5,085',
                    pre: '₹',
                    icon: 'fa-chart-simple',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+6.1%',
                    up: true,
                    yst: '₹4,793'
                },
                {
                    title: 'Avg Room Rate',
                    val: '6,110',
                    pre: '₹',
                    icon: 'fa-coins',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    trend: '+1.8%',
                    up: true,
                    yst: '₹6,001'
                },
                {
                    title: 'Maintenance Requests',
                    val: '8',
                    icon: 'fa-screwdriver-wrench',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    trend: '+2',
                    up: false,
                    yst: '6'
                },
                {
                    title: 'Complaints',
                    val: '2',
                    icon: 'fa-triangle-exclamation',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    trend: '-1',
                    up: true,
                    yst: '3'
                },
                {
                    title: 'Pending Housekeeping',
                    val: '42',
                    icon: 'fa-broom',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    trend: '+6',
                    up: false,
                    yst: '36'
                },
                {
                    title: 'Open Kitchen Orders',
                    val: '14',
                    icon: 'fa-kitchen-set',
                    color: '#6a3fb5',
                    bg: 'var(--violet-soft)',
                    trend: '+3',
                    up: false,
                    yst: '11'
                },
                {
                    title: 'Inventory Alerts',
                    val: '24',
                    icon: 'fa-boxes-stacked',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    trend: '+7',
                    up: false,
                    yst: '17'
                },
            ];

            let kpiHtml = '';
            kpis.forEach(k => {
                const spark = sparkSVG(randSeries(parseFloat(k.val) || 10, (parseFloat(k.val) || 10) * 0.15 + 1, 10), k.up ? '#1a7f5a' : '#c0392b');
                kpiHtml += `
  <div class="col-6 col-sm-4 col-md-3 col-lg-2">
    <div class="kpi-card">
      <div class="kpi-top">
        <div>
          <div class="kpi-icon" style="background:${k.bg};color:${k.color}"><i class="fa-solid ${k.icon}"></i></div>
          <div class="kpi-title">${k.title}</div>
        </div>
      </div>
      <div class="kpi-value">${k.pre||''}${k.val}<small>${k.suf||''}</small></div>
      <div class="kpi-bottom">
        <div>
          <div class="kpi-trend ${k.up?'up':'down'}"><i class="fa-solid fa-arrow-${k.up?'up':'down'}"></i>${k.trend}</div>
          <div class="kpi-yst">vs yst: ${k.yst}</div>
        </div>
        <div class="kpi-spark">${spark}</div>
      </div>
    </div>
  </div>`;
            });
            $('#kpiRow').html(kpiHtml);

            /* ============ Ticker ============ */
            const tickerData = [{
                    l: 'Occupancy',
                    v: '81.5%',
                    up: true
                }, {
                    l: 'ADR',
                    v: '₹6,240',
                    up: true
                }, {
                    l: 'RevPAR',
                    v: '₹5,085',
                    up: true
                },
                {
                    l: 'Room Revenue',
                    v: '₹18.6L',
                    up: true
                }, {
                    l: 'POS Sales',
                    v: '₹2.85L',
                    up: true
                }, {
                    l: 'Pending Bills',
                    v: '27',
                    up: false
                },
                {
                    l: 'Arrivals',
                    v: '42',
                    up: true
                }, {
                    l: 'Departures',
                    v: '36',
                    up: false
                }, {
                    l: 'Housekeeping Pending',
                    v: '42',
                    up: false
                },
                {
                    l: 'Kitchen Orders',
                    v: '14',
                    up: false
                }, {
                    l: 'Inventory Alerts',
                    v: '24',
                    up: false
                }, {
                    l: 'Banquet Revenue',
                    v: '₹6.2L',
                    up: true
                },
                {
                    l: 'Outstanding',
                    v: '₹34.2L',
                    up: false
                }, {
                    l: 'Cash Collection',
                    v: '₹9.7L',
                    up: true
                },
            ];

            function tickerHTML() {
                return tickerData.map(t => `<span class="ticker-item">${t.l} <b class="${t.up?'up':'down'}">${t.v}</b><i class="fa-solid fa-caret-${t.up?'up':'down'} ${t.up?'up':'down'}"></i></span>`).join('');
            }
            $('#tickerTrack').html(tickerHTML() + tickerHTML());

            /* ============ Room Status Board ============ */
            const roomTypes = [{
                    cls: 'room-occupied',
                    label: 'OCC',
                    count: 130
                },
                {
                    cls: 'room-vacant',
                    label: 'VAC',
                    count: 22
                },
                {
                    cls: 'room-dirty',
                    label: 'DTY',
                    count: 16
                },
                {
                    cls: 'room-clean',
                    label: 'CLN',
                    count: 8
                },
                {
                    cls: 'room-inspected',
                    label: 'INS',
                    count: 6
                },
                {
                    cls: 'room-ooo',
                    label: 'OOO',
                    count: 3
                },
                {
                    cls: 'room-blocked',
                    label: 'BLK',
                    count: 4
                },
                {
                    cls: 'room-checkout',
                    label: 'C/O',
                    count: 11
                },
            ];
            let roomHtml = '';
            let roomNum = 101;
            roomTypes.forEach(rt => {
                for (let i = 0; i < rt.count; i++) {
                    roomHtml += `<div class="room-chip ${rt.cls}" title="Room ${roomNum} — ${rt.label}" data-bs-toggle="tooltip">${roomNum}<small>${rt.label}</small></div>`;
                    roomNum++;
                    if (roomNum % 100 < 1 || (roomNum % 10) === 0 && roomNum % 100 === 0) roomNum += 2; // simple gaps between floors
                }
                roomNum = Math.ceil(roomNum / 100) * 100 + 1; // jump to next floor block
            });
            $('#roomBoard').html(roomHtml);

            /* ============ Smart Insights ============ */
            const insights = [{
                    icon: 'fa-arrow-trend-up',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    text: 'Occupancy increased by <b>8%</b> compared to yesterday.'
                },
                {
                    icon: 'fa-person-walking-arrow-right',
                    color: '#2360a5',
                    bg: 'var(--blue-soft)',
                    text: '<b>12 guests</b> arriving in the next 2 hours.'
                },
                {
                    icon: 'fa-broom',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    text: '<b>42 rooms</b> still pending housekeeping cleaning.'
                },
                {
                    icon: 'fa-kitchen-set',
                    color: '#6a3fb5',
                    bg: 'var(--violet-soft)',
                    text: 'Kitchen has <b>14 pending KOTs</b> — avg wait 9 min.'
                },
                {
                    icon: 'fa-boxes-stacked',
                    color: '#c0392b',
                    bg: 'var(--red-soft)',
                    text: 'Inventory has <b>5 critical items</b> below reorder level.'
                },
                {
                    icon: 'fa-sack-dollar',
                    color: '#1a7f5a',
                    bg: 'var(--green-soft)',
                    text: 'Revenue is <b>18% higher</b> than yesterday same time.'
                },
                {
                    icon: 'fa-crown',
                    color: '#b3760a',
                    bg: 'var(--amber-soft)',
                    text: 'VIP guest <b>Mr. R. Kapoor</b> arriving in 2 hours — Suite 412.'
                },
                {
                    icon: 'fa-moon',
                    color: '#132449',
                    bg: '#e9ecf5',
                    text: 'Night Audit for <b>30 Jul</b> still pending closure.'
                },
                {
                    icon: 'fa-champagne-glasses',
                    color: '#6a3fb5',
                    bg: 'var(--violet-soft)',
                    text: 'Large banquet (450 pax) scheduled <b>tomorrow, Grand Hall</b>.'
                },
            ];
            $('#insightsPanel').html(insights.map(i => `
  <div class="insight-item" style="background:${i.bg}"><i class="fa-solid ${i.icon}" style="color:${i.color}"></i><span>${i.text}</span></div>
`).join(''));

            /* ============ Notifications ============ */
            const notifs = [{
                    c: '#c0392b',
                    icon: 'fa-triangle-exclamation',
                    t: 'Guest complaint — Room 318, AC not working',
                    time: '2 min ago'
                },
                {
                    c: '#2360a5',
                    icon: 'fa-calendar-plus',
                    t: 'New OTA booking received — Booking.com, 3N',
                    time: '6 min ago'
                },
                {
                    c: '#b3760a',
                    icon: 'fa-boxes-stacked',
                    t: 'Inventory alert — Bath towels below reorder level',
                    time: '11 min ago'
                },
                {
                    c: '#c0392b',
                    icon: 'fa-screwdriver-wrench',
                    t: 'Maintenance alert — Elevator 2 reported fault',
                    time: '18 min ago'
                },
                {
                    c: '#b3760a',
                    icon: 'fa-broom',
                    t: 'Housekeeping alert — Room 214 cleaning overdue',
                    time: '24 min ago'
                },
                {
                    c: '#1a7f5a',
                    icon: 'fa-sack-dollar',
                    t: 'Payment received — ₹48,600 via UPI, Folio #2291',
                    time: '31 min ago'
                },
                {
                    c: '#6a3fb5',
                    icon: 'fa-plane-arrival',
                    t: 'OTA alert — Rate parity mismatch on Agoda',
                    time: '40 min ago'
                },
                {
                    c: '#2360a5',
                    icon: 'fa-credit-card',
                    t: 'Finance alert — Card settlement batch completed',
                    time: '55 min ago'
                },
            ];
            $('#notifPanel').html(notifs.map(n => `
  <div class="notif-item"><span class="notif-dot" style="background:${n.c}"></span>
    <div><i class="fa-solid ${n.icon} me-1" style="color:${n.c}"></i>${n.t}<div style="color:var(--ink-faint);font-size:9.5px;">${n.time}</div></div>
  </div>
`).join(''));

            /* ============ Live Activity Timeline ============ */
            const timeline = [{
                    av: 'RK',
                    c: '#2360a5',
                    t: 'Reservation created for Verma family, 2 Aug — 3N',
                    dept: 'Reservations',
                    dc: 'var(--blue-soft)',
                    dtc: '#2360a5',
                    time: '10:42 AM'
                },
                {
                    av: 'AS',
                    c: '#1a7f5a',
                    t: 'Guest checked in — Room 220, Mr. Anil Sharma',
                    dept: 'Front Office',
                    dc: 'var(--green-soft)',
                    dtc: '#1a7f5a',
                    time: '10:37 AM'
                },
                {
                    av: 'PN',
                    c: '#b3760a',
                    t: 'Bill settled — Folio #2288, ₹12,400 via Card',
                    dept: 'Front Office',
                    dc: 'var(--amber-soft)',
                    dtc: '#b3760a',
                    time: '10:31 AM'
                },
                {
                    av: 'HK',
                    c: '#6a3fb5',
                    t: 'Room 118 marked cleaned & inspected',
                    dept: 'Housekeeping',
                    dc: 'var(--violet-soft)',
                    dtc: '#6a3fb5',
                    time: '10:24 AM'
                },
                {
                    av: 'ST',
                    c: '#c0392b',
                    t: 'Inventory issued — 40 bath towels to HK store',
                    dept: 'Inventory',
                    dc: 'var(--red-soft)',
                    dtc: '#c0392b',
                    time: '10:15 AM'
                },
                {
                    av: 'KT',
                    c: '#2360a5',
                    t: 'Kitchen order #4471 fired — Table 12',
                    dept: 'F&B',
                    dc: 'var(--blue-soft)',
                    dtc: '#2360a5',
                    time: '10:09 AM'
                },
                {
                    av: 'NA',
                    c: '#132449',
                    t: 'Night audit for 29 Jul completed',
                    dept: 'Finance',
                    dc: '#e9ecf5',
                    dtc: '#132449',
                    time: '9:58 AM'
                },
            ];
            $('#timelinePanel').html(timeline.map(t => `
  <div class="tl-item">
    <div class="tl-icon" style="background:${t.c}22;color:${t.c}">${t.av}</div>
    <div class="flex-grow-1">
      <div class="tl-desc">${t.t}</div>
      <div class="d-flex justify-content-between align-items-center mt-1">
        <span class="tl-dept" style="background:${t.dc};color:${t.dtc}">${t.dept}</span>
        <span class="tl-time">${t.time}</span>
      </div>
    </div>
  </div>
`).join(''));

            /* ============ Mini calendar ============ */
            (function() {
                const daysInMonth = 31,
                    startOffset = 6,
                    today = 31; // Aug 2026 starts Saturday
                const events = {
                    2: 'blue',
                    5: 'blue',
                    9: 'violet',
                    12: 'red',
                    15: 'red',
                    18: 'blue',
                    22: 'violet',
                    26: 'blue'
                };
                const colorMap = {
                    blue: '#2360a5',
                    violet: '#6a3fb5',
                    red: '#c0392b'
                };
                let html = '';
                let cell = 0;
                html += '<tr>';
                for (let i = 0; i < startOffset; i++) {
                    html += '<td class="muted"></td>';
                    cell++;
                }
                for (let d = 1; d <= daysInMonth; d++) {
                    if (cell % 7 === 0 && cell !== 0) html += '</tr><tr>';
                    const isToday = d === today;
                    let dotRow = '';
                    if (events[d]) dotRow = `<div class="dot-row"><span class="evdot" style="background:${colorMap[events[d]]}"></span></div>`;
                    html += `<td class="${isToday?'today':''}">${d}${dotRow}</td>`;
                    cell++;
                }
                html += '</tr>';
                $('#miniCalBody').html(html);
            })();

            /* ============ Quick Actions ============ */
            const actions = [{
                    icon: 'fa-calendar-plus',
                    label: 'New Reservation'
                },
                {
                    icon: 'fa-person-walking',
                    label: 'Walk-in'
                },
                {
                    icon: 'fa-right-to-bracket',
                    label: 'Check-in'
                },
                {
                    icon: 'fa-border-all',
                    label: 'Room Status'
                },
                {
                    icon: 'fa-broom',
                    label: 'Housekeeping'
                },
                {
                    icon: 'fa-cash-register',
                    label: 'POS'
                },
                {
                    icon: 'fa-boxes-stacked',
                    label: 'Inventory'
                },
                {
                    icon: 'fa-champagne-glasses',
                    label: 'Banquet'
                },
                {
                    icon: 'fa-magnifying-glass',
                    label: 'Guest Search'
                },
                {
                    icon: 'fa-moon',
                    label: 'Night Audit'
                },
                {
                    icon: 'fa-chart-column',
                    label: 'Reports'
                },
                {
                    icon: 'fa-gear',
                    label: 'Settings'
                },
            ];
            $('#quickActions').html(actions.map(a => `
  <div class="col-4 col-sm-3 col-md-2">
    <button class="qa-btn w-100"><i class="fa-solid ${a.icon}"></i>${a.label}</button>
  </div>
`).join(''));

            /* ============ Status Footer ============ */
            const statuses = [{
                    l: 'Server',
                    s: 'ok'
                }, {
                    l: 'Database',
                    s: 'ok'
                }, {
                    l: 'API Gateway',
                    s: 'ok'
                }, {
                    l: 'Payment Gateway',
                    s: 'ok'
                },
                {
                    l: 'Channel Manager',
                    s: 'warn'
                }, {
                    l: 'License',
                    s: 'ok'
                }, {
                    l: 'Internet',
                    s: 'ok'
                }, {
                    l: 'Last Backup: 2:00 AM',
                    s: 'ok'
                },
            ];
            $('#statusFooter').html(statuses.map(s => `
  <div class="sf-item"><span class="status-dot ${s.s}"></span>${s.l}${s.s==='ok'?' — Online':s.s==='warn'?' — Delayed':' — Offline'}</div>
`).join(''));

            /* ============ Enable tooltips ============ */
            document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(el => new bootstrap.Tooltip(el));

            /* ============ Chart.js global defaults ============ */
            Chart.defaults.font.family = "'Inter',sans-serif";
            Chart.defaults.font.size = 10;
            Chart.defaults.color = '#5b6472';
            Chart.defaults.plugins.legend.labels.boxWidth = 8;
            Chart.defaults.plugins.legend.labels.padding = 8;

            const days14 = Array.from({
                length: 14
            }, (_, i) => {
                const d = new Date();
                d.setDate(d.getDate() - 13 + i);
                return d.toLocaleDateString('en-IN', {
                    day: '2-digit',
                    month: 'short'
                });
            });

            /* Occupancy Trend */
            new Chart(document.getElementById('occTrendChart'), {
                type: 'line',
                data: {
                    labels: days14,
                    datasets: [{
                        label: 'Occupancy %',
                        data: randSeries(75, 10, 14).map(v => Math.min(98, v)),
                        borderColor: '#2360a5',
                        backgroundColor: 'rgba(35,96,165,0.08)',
                        fill: true,
                        tension: .35,
                        pointRadius: 0,
                        borderWidth: 2
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            ticks: {
                                callback: v => v + '%'
                            },
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Revenue Trend */
            new Chart(document.getElementById('revTrendChart'), {
                type: 'bar',
                data: {
                    labels: days14,
                    datasets: [{
                        label: 'Revenue (₹L)',
                        data: randSeries(18, 5, 14),
                        backgroundColor: '#0b7c85',
                        borderRadius: 3
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* ADR vs RevPAR */
            new Chart(document.getElementById('adrRevparChart'), {
                type: 'line',
                data: {
                    labels: days14,
                    datasets: [{
                            label: 'ADR',
                            data: randSeries(6200, 300, 14),
                            borderColor: '#132449',
                            pointRadius: 0,
                            tension: .3,
                            borderWidth: 2
                        },
                        {
                            label: 'RevPAR',
                            data: randSeries(5000, 300, 14),
                            borderColor: '#c0392b',
                            pointRadius: 0,
                            tension: .3,
                            borderWidth: 2
                        }
                    ]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'top'
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Reservation Sources */
            new Chart(document.getElementById('resSourceChart'), {
                type: 'doughnut',
                data: {
                    labels: ['Direct', 'OTA', 'Corporate', 'Travel Agent'],
                    datasets: [{
                        data: [38, 41, 15, 6],
                        backgroundColor: ['#2360a5', '#0b7c85', '#b3760a', '#6a3fb5']
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'right'
                        }
                    },
                    cutout: '62%',
                    maintainAspectRatio: false
                }
            });
            /* Department Revenue */
            new Chart(document.getElementById('deptRevChart'), {
                type: 'bar',
                data: {
                    labels: ['Rooms', 'F&B', 'Banquet', 'Spa', 'Laundry', 'Other'],
                    datasets: [{
                        data: [18.6, 2.85, 6.2, 1.1, 0.4, 0.6],
                        backgroundColor: '#2360a5',
                        borderRadius: 3
                    }]
                },
                options: {
                    indexAxis: 'y',
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        y: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Payment Methods */
            new Chart(document.getElementById('paymentMethodChart'), {
                type: 'pie',
                data: {
                    labels: ['Cash', 'Card', 'UPI', 'Bank Transfer'],
                    datasets: [{
                        data: [18.6, 42.1, 26.3, 11.4],
                        backgroundColor: ['#1a7f5a', '#2360a5', '#b3760a', '#6a3fb5']
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'right'
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* HK Performance */
            new Chart(document.getElementById('hkPerfChart'), {
                type: 'bar',
                data: {
                    labels: ['Sunita', 'Ramesh', 'Geeta', 'Manoj', 'Kavita'],
                    datasets: [{
                        data: [28, 24, 31, 19, 26],
                        backgroundColor: '#6a3fb5',
                        borderRadius: 3
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Guest Nationality */
            new Chart(document.getElementById('nationalityChart'), {
                type: 'doughnut',
                data: {
                    labels: ['India', 'USA', 'UK', 'UAE', 'Others'],
                    datasets: [{
                        data: [58, 12, 10, 8, 12],
                        backgroundColor: ['#2360a5', '#0b7c85', '#b3760a', '#6a3fb5', '#5b6472']
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'right'
                        }
                    },
                    cutout: '60%',
                    maintainAspectRatio: false
                }
            });
            /* Hourly Sales */
            new Chart(document.getElementById('hourlySalesChart'), {
                type: 'line',
                data: {
                    labels: ['8a', '10a', '12p', '2p', '4p', '6p', '8p', '10p'],
                    datasets: [{
                        data: [8, 14, 32, 26, 12, 18, 38, 22],
                        borderColor: '#b3760a',
                        backgroundColor: 'rgba(179,118,10,0.1)',
                        fill: true,
                        tension: .35,
                        pointRadius: 0,
                        borderWidth: 2
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Inventory Movement */
            new Chart(document.getElementById('inventoryMoveChart'), {
                type: 'bar',
                data: {
                    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                    datasets: [{
                            label: 'In',
                            data: [12, 18, 9, 14, 20, 11, 7],
                            backgroundColor: '#1a7f5a',
                            borderRadius: 3
                        },
                        {
                            label: 'Out',
                            data: [9, 15, 11, 10, 17, 14, 8],
                            backgroundColor: '#c0392b',
                            borderRadius: 3
                        }
                    ]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'top'
                        }
                    },
                    scales: {
                        y: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Banquet venue occupancy */
            new Chart(document.getElementById('banquetChart'), {
                type: 'doughnut',
                data: {
                    labels: ['Occupied', 'Setup', 'Free'],
                    datasets: [{
                        data: [2, 1, 1],
                        backgroundColor: ['#c0392b', '#b3760a', '#1a7f5a']
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'right'
                        }
                    },
                    cutout: '60%',
                    maintainAspectRatio: false
                }
            });
            /* Revenue Distribution */
            new Chart(document.getElementById('revDistChart'), {
                type: 'pie',
                data: {
                    labels: ['Rooms', 'F&B', 'Banquet', 'Other'],
                    datasets: [{
                        data: [62, 15, 20, 3],
                        backgroundColor: ['#2360a5', '#0b7c85', '#6a3fb5', '#b3760a']
                    }]
                },
                options: {
                    plugins: {
                        legend: {
                            position: 'right'
                        }
                    },
                    maintainAspectRatio: false
                }
            });
            /* Dept strength */
            new Chart(document.getElementById('deptStrengthChart'), {
                type: 'bar',
                data: {
                    labels: ['F&B', 'Housekeeping', 'Front Office', 'Kitchen', 'Sales', 'Maint.'],
                    datasets: [{
                        data: [46, 38, 24, 32, 14, 16],
                        backgroundColor: '#132449',
                        borderRadius: 3
                    }]
                },
                options: {
                    indexAxis: 'y',
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                color: '#eef0f4'
                            }
                        },
                        y: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    maintainAspectRatio: false
                }
            });

        });
    </script>
</body>

</html>
