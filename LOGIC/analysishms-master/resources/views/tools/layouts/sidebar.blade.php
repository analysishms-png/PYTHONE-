<!-- Sidebar -->
<div class="nk-sidebar" id="sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">

            <li class="nav-label">Dashboard</li>

            <li>
                <a href="{{ url('/tools/dashboard') }}">
                    <i class="icon-speedometer menu-icon"></i>
                    <span class="nav-text">Dashboard</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/tools/tablemanagement') }}">
                    <i class="icon-database menu-icon"></i>
                    <span class="nav-text">Table Management</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/tools/meta') }}">
                    <i class="icon-database menu-icon"></i>
                    <span class="nav-text">Meta Details</span>
                </a>
            </li>
            <li>
                <a href="{{ url('/tools/tickets') }}">
                    <i class="icon-support menu-icon"></i>
                    <span class="nav-text">Support Tickets</span>
                </a>
            </li>
            <li>
                <a href="{{ url('/tools/markDashboard') }}">
                    <i class="icon-database menu-icon"></i>
                    <span class="nav-text">Marketing Dashboard</span>
                </a>
            </li>
        </ul>
    </div>
</div>

<!-- Mobile Toggle Button -->
<button class="sidebar-toggle d-md-none" onclick="toggleSidebar()">
    ☰
</button>
<script>
    function toggleSidebar() {
        document.getElementById("sidebar").classList.toggle("active");
    }
</script>
