<!--**********************************
            Sidebar start
        ***********************************-->
<div class="nk-sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label">Dashboard</li>
            <li>
                <a href="{{ url('/superadmin') }}" aria-expanded="false">
                    <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="{{ 'companyreg' }}" aria-expanded="false">
                    <i class="fa-regular fa-building"></i><span class="nav-text">Company Register</span>
                </a>
            </li>
            <li>
                <a href="{{ url('/companylist') }}" aria-expanded="false">
                    <i class="fa-solid fa-list"></i><span class="nav-text">Company List</span>
                </a>
            </li>
            <li>
                <a href="{{ url('/updatelogform') }}" aria-expanded="false">
                    <i class="fa-solid fa-list"></i><span class="nav-text">Update Log Form</span>
                </a>
            </li>
            <li>
                <a href="{{ url('/usermasteradmin') }}" aria-expanded="false">
                    <i class="fa-solid fa-users"></i><span class="nav-text">Add User</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/permissions') }}" aria-expanded="false">
                    <i class="fa-solid fa-lock"></i><span class="nav-text">Permissions</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/expirymodule') }}" aria-expanded="false">
                    <i class="fa-solid fa-lock"></i><span class="nav-text">License</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/superadmin/backups') }}" aria-expanded="false">
                    <i class="fa-solid fa-lock"></i><span class="nav-text">Backup</span>
                </a>
            </li>

            <li>
                <a href="{{ url('/superadmin/qrgenerate') }}" aria-expanded="false">
                    <i class="fa-solid fa-qrcode"></i><span class="nav-text">QR Generate</span>
                </a>
            </li>

            <li>
                <a href="{{ route('superadmin.tickets') }}" aria-expanded="false">
                    <i class="fa-solid fa-ticket"></i>
                    <span class="nav-text">Tickets</span>
                    <span id="superadminTicketBadge" class="badge badge-danger"
                        style="margin-left: 8px; display: none;">0</span>
                </a>
            </li>
            <li>
                <a href="{{ route('superadmin.my-pages') }}" aria-expanded="false">
                    <i class="fa-solid fa-lock"></i><span class="nav-text">My Pages</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.activity.logs') }}" aria-expanded="false">
                    <i class="fa-solid fa-history"></i><span class="nav-text">Activity Logs</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.application.logs') }}" aria-expanded="false">
                    <i class="fa-solid fa-bug"></i><span class="nav-text">Application Log</span>
                </a>
            </li>
            <li class="nav-label">Performance Intelligence</li>
            <li>
                <a href="{{ route('admin.performance.overview') }}" aria-expanded="false">
                    <i class="fa-solid fa-gauge-high"></i><span class="nav-text">Performance Overview</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.performance.endpoints') }}" aria-expanded="false">
                    <i class="fa-solid fa-route"></i><span class="nav-text">HTTP Endpoints</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.performance.cpu') }}" aria-expanded="false">
                    <i class="fa-solid fa-microchip"></i><span class="nav-text">CPU Spikes</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.performance.queries') }}" aria-expanded="false">
                    <i class="fa-solid fa-database"></i><span class="nav-text">Query Intelligence</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.performance.traffic') }}" aria-expanded="false">
                    <i class="fa-solid fa-users"></i><span class="nav-text">Traffic Analysis</span>
                </a>
            </li>
            <li>
                <a href="{{ route('admin.performance.sources') }}" aria-expanded="false">
                    <i class="fa-solid fa-plug"></i><span class="nav-text">Data Sources</span>
                </a>
            </li>
"
            <li class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-globe-alt menu-icon"></i><span class="nav-text">CSC</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/countryform') }}" aria-expanded="false">
                            <i class="fa-solid fa-globe"></i><span class="nav-text">Country Form</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ url('/stateform') }}" aria-expanded="false">
                            <i class="fa-solid fa-layer-group"></i><span class="nav-text">State Form</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{ url('/cityform') }}" aria-expanded="false">
                            <i class="fa-solid fa-city"></i><span class="nav-text">City Form</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="{{ url('/tools/markDashboard') }}">
                    <i class="icon-database menu-icon"></i>
                    <span class="nav-text">Marketing Dashboard</span>
                </a>
            </li>
            {{-- <li class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-globe-alt menu-icon"></i><span class="nav-text">Layouts</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./layout-blank.html">Blank</a></li>
                    <li><a href="./layout-one-column.html">One Column</a></li>
                    <li><a href="./layout-two-column.html">Two column</a></li>
                    <li><a href="./layout-compact-nav.html">Compact Nav</a></li>
                    <li><a href="./layout-vertical.html">Vertical</a></li>
                    <li><a href="./layout-horizontal.html">Horizontal</a></li>
                    <li><a href="./layout-boxed.html">Boxed</a></li>
                    <li><a href="./layout-wide.html">Wide</a></li>


                    <li><a href="./layout-fixed-header.html">Fixed Header</a></li>
                    <li><a href="layout-fixed-sidebar.html">Fixed Sidebar</a></li>
                </ul>
            </li>
            <li class="nav-label">Apps</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-envelope menu-icon"></i> <span class="nav-text">Email</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./email-inbox.html">Inbox</a></li>
                    <li><a href="./email-read.html">Read</a></li>
                    <li><a href="./email-compose.html">Compose</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">Apps</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./app-profile.html">Profile</a></li>
                    <li><a href="./app-calender.html">Calender</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./chart-flot.html">Flot</a></li>
                    <li><a href="./chart-morris.html">Morris</a></li>
                    <li><a href="./chart-chartjs.html">Chartjs</a></li>
                    <li><a href="./chart-chartist.html">Chartist</a></li>
                    <li><a href="./chart-sparkline.html">Sparkline</a></li>
                    <li><a href="./chart-peity.html">Peity</a></li>
                </ul>
            </li>
            <li class="nav-label">UI Components</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./ui-accordion.html">Accordion</a></li>
                    <li><a href="./ui-alert.html">Alert</a></li>
                    <li><a href="./ui-badge.html">Badge</a></li>
                    <li><a href="./ui-button.html">Button</a></li>
                    <li><a href="./ui-button-group.html">Button Group</a></li>
                    <li><a href="./ui-cards.html">Cards</a></li>
                    <li><a href="./ui-carousel.html">Carousel</a></li>
                    <li><a href="./ui-dropdown.html">Dropdown</a></li>
                    <li><a href="./ui-list-group.html">List Group</a></li>
                    <li><a href="./ui-media-object.html">Media Object</a></li>
                    <li><a href="./ui-modal.html">Modal</a></li>
                    <li><a href="./ui-pagination.html">Pagination</a></li>
                    <li><a href="./ui-popover.html">Popover</a></li>
                    <li><a href="./ui-progressbar.html">Progressbar</a></li>
                    <li><a href="./ui-tab.html">Tab</a></li>
                    <li><a href="./ui-typography.html">Typography</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-layers menu-icon"></i><span class="nav-text">Components</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./uc-nestedable.html">Nestedable</a></li>
                    <li><a href="./uc-noui-slider.html">Noui Slider</a></li>
                    <li><a href="./uc-sweetalert.html">Sweet Alert</a></li>
                    <li><a href="./uc-toastr.html">Toastr</a></li>
                </ul>
            </li>
            <li>
                <a href="widgets.html" aria-expanded="false">
                    <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                </a>
            </li>
            <li class="nav-label">Forms</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./form-basic.html">Basic Form</a></li>
                    <li><a href="./form-validation.html">Form Validation</a></li>
                    <li><a href="./form-step.html">Step Form</a></li>
                    <li><a href="./form-editor.html">Editor</a></li>
                    <li><a href="./form-picker.html">Picker</a></li>
                </ul>
            </li>
            <li class="nav-label">Table</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                    <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                </ul>
            </li>
            <li class="nav-label">Pages</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./page-login.html">Login</a></li>
                    <li><a href="./page-register.html">Register</a></li>
                    <li><a href="./page-lock.html">Lock Screen</a></li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                        <ul aria-expanded="false">
                            <li><a href="./page-error-404.html">Error 404</a></li>
                            <li><a href="./page-error-403.html">Error 403</a></li>
                            <li><a href="./page-error-400.html">Error 400</a></li>
                            <li><a href="./page-error-500.html">Error 500</a></li>
                            <li><a href="./page-error-503.html">Error 503</a></li>
                        </ul>
                    </li>
                </ul> --}}
            </li>
        </ul>
    </div>
</div>
<!--**********************************
            Sidebar end
        ***********************************-->

<script>
    (function() {
        const badge = document.getElementById('superadminTicketBadge');
        if (!badge) {
            return;
        }

        async function fetchCount(url) {
            try {
                const response = await fetch(url, {
                    method: 'GET',
                    credentials: 'same-origin',
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest'
                    }
                });

                if (!response.ok) {
                    return 0;
                }

                const data = await response.json();
                if (!data || data.success !== true) {
                    return 0;
                }

                if (typeof data.count === 'number') {
                    return data.count;
                }

                return Array.isArray(data.tickets) ? data.tickets.length : 0;
            } catch (error) {
                return 0;
            }
        }

        async function refreshTicketBadge() {
            const pendingUrl = '{{ route('tools.getPendingNotifications') }}';
            const messageUrl = '{{ route('tools.getTicketMessageNotifications') }}';

            const [pendingCount, messageCount] = await Promise.all([
                fetchCount(pendingUrl),
                fetchCount(messageUrl)
            ]);

            const totalCount = Number(pendingCount || 0) + Number(messageCount || 0);

            if (totalCount > 0) {
                badge.textContent = totalCount > 99 ? '99+' : String(totalCount);
                badge.style.display = 'inline-block';
            } else {
                badge.style.display = 'none';
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            refreshTicketBadge();
            setInterval(refreshTicketBadge, 36000);
        });
    })();
</script>
