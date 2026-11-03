<meta name="csrf-token" content="{{ csrf_token() }}">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<style>
    @media (max-width: 767px) {
        .nk-sidebar {
            position: fixed;
            top: 82px;
            left: -100% !important; /* hide by default */
            width: 250px;
            height: 100%;
            background: #fff;
            z-index: 2000;
            transition: left 0.3s ease;
        }

        .nk-sidebar.open {
            left: 0 !important;
            /* show when open */
        }

        .sidebar-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1999;
        }

        .sidebar-overlay.show {
            display: block;
        }
    }
</style>
<div class="nk-sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label">Dashboard <span id="ncurdate" style="display:contents;"></span></li>
            <li id="dashboardid">
                <a href="{{ url('/company') }}" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-gauge"></i> Dashboard</span>
                </a>
            </li>
            <li id="myticketsid">
                <a href="{{ route('tools.myTickets') }}" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-ticket"></i> My Tickets & Status</span>
                </a>
            </li>
        </ul>
        {{--
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                let dashboardid = document.getElementById('dashboardid');
                let fetchmainmenu = new XMLHttpRequest();
                fetchmainmenu.open('GET', '/getmainmenu', true);
                fetchmainmenu.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                fetchmainmenu.onreadystatechange = function () {
                    if (fetchmainmenu.readyState === 4 && fetchmainmenu.status === 200) {
                        let results = JSON.parse(fetchmainmenu.responseText);
                        let menudata = '';
                        results.forEach((data, index) => {
                            menudata += `
                    <li id="${data.module_name.toLowerCase()}" class="mega-menu mega-menu-sm">
                        <a code="${data.opt1}" href="${data.route}" class="has-arrow mainmenu" aria-expanded="false">
                            <span class="nav-text"><i class="fa-brands fa-meetup"></i> ${data.module}</span>
                        </a>
                    </li>
                    `;
                        });
                        let tempDiv = document.createElement('div');
                        tempDiv.innerHTML = menudata;
                        while (tempDiv.firstChild) {
                            dashboardid.parentNode.insertBefore(tempDiv.firstChild, dashboardid.nextSibling);
                        }
                    }
                };
                fetchmainmenu.send();
            });
        </script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                let clickcount = 0;

                document.addEventListener('click', function (event) {
                    if (event.target.matches('.mainmenu') || event.target.closest('.mainmenu')) {
                        clickcount++;
                        let target = event.target.matches('.mainmenu') ? event.target : event.target.closest('.mainmenu');
                        let mcode = target.getAttribute('code');
                        let limain = target.closest('li');
                        let expanded = limain.querySelector('ul[aria-expanded="true"]');

                        if (clickcount % 2 !== 0) {
                            limain.classList.add('active');
                            target.setAttribute('aria-expanded', 'true');
                            if (!expanded) {
                                let menuxhr = new XMLHttpRequest();
                                menuxhr.open('POST', '/fetchsubmenu', true);
                                menuxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                menuxhr.onreadystatechange = function () {
                                    if (menuxhr.readyState === 4 && menuxhr.status === 200) {
                                        let results = JSON.parse(menuxhr.responseText);
                                        let menu2 = '<ul aria-expanded="true" class="collapse in">';
                                        results.forEach(data => {
                                            menu2 += `
                                    <li class="mega-menu mega-menu-sm">
                                        <a code="${data.opt2}" code2="${data.opt1}" id="${data.module_name.toLowerCase()}" class="has-arrow mainmenusub" href="${data.route}" aria-expanded="false">
                                            <span class="nav-text"><i class="fa-solid fa-bars"></i> ${data.module}</span>
                                        </a>
                                    </li>
                                `;
                                        });
                                        menu2 += '</ul>';
                                        limain.insertAdjacentHTML('beforeend', menu2);
                                    }
                                };
                                menuxhr.send(`code=${mcode}&_token={{ csrf_token() }}`);
                            }
                            if (expanded) {
                                expanded.style.height = '';
                                expanded.classList.add('in');
                            }
                        } else {
                            limain.classList.remove('active');
                            if (expanded) {
                                expanded.style.height = '0px';
                                expanded.classList.remove('in');
                            }
                            target.setAttribute('aria-expanded', 'false');
                        }
                    }
                });
            });
        </script>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                let clickcount2 = 0;
                document.addEventListener('click', function (event) {
                    if (event.target.matches('.mainmenusub')) {
                        clickcount2++;
                        let mcode = event.target.getAttribute('code');
                        let code2 = event.target.getAttribute('code2');
                        let limain = event.target.closest('li');
                        let expanded = limain.querySelector('ul[aria-expanded="true"]');

                        if (clickcount2 % 2 !== 0) {
                            limain.classList.add('active');
                            event.target.setAttribute('aria-expanded', 'true');

                            if (!expanded) {
                                let menuxhr = new XMLHttpRequest();
                                menuxhr.open('POST', '/fetchlastmenu', true);
                                menuxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                menuxhr.onreadystatechange = function () {
                                    if (menuxhr.readyState === 4 && menuxhr.status === 200) {
                                        let results = JSON.parse(menuxhr.responseText);
                                        let menu2 = '<ul aria-expanded="true" class="collapse in">';
                                        results.forEach(data => {
                                            menu2 += `
                                        <li class="mega-menu mega-menu-sm">
                                            <a code="${data.opt2}" id="${data.module_name.toLowerCase()}" href="{{ url('') }}/${data.route}" aria-expanded="false">
                                                <span class="nav-text"><i class="fa-solid fa-chevron-right"></i>  ${data.module}</span>
                                            </a>
                                        </li>
                                    `;
                                        });
                                        menu2 += '</ul>';
                                        limain.insertAdjacentHTML('beforeend', menu2);
                                    }
                                };
                                menuxhr.send(`code=${mcode}&code2=${code2}&_token={{ csrf_token() }}`);
                            }
                            if (expanded) {
                                expanded.style.height = '';
                                expanded.classList.add('in');
                            }
                        } else {
                            limain.classList.remove('active');
                            if (expanded) {
                                expanded.style.height = '0px';
                                expanded.classList.remove('in');
                            }
                            event.target.setAttribute('aria-expanded', 'false');
                        }
                    }
                });
            });
        </script>

    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const sidebar = document.querySelector('.nk-sidebar');
        const toggleBtn = document.querySelector('.toggle-icon');
        const overlay = document.createElement('div');
        overlay.classList.add('sidebar-overlay');
        document.body.appendChild(overlay);

        // Sidebar toggle
        toggleBtn.addEventListener('click', function () {
            sidebar.classList.toggle('open');  // This triggers left:0 or -100%
            overlay.classList.toggle('show');
        });

        // Close when overlay clicked
        overlay.addEventListener('click', function () {
            sidebar.classList.remove('open');
            overlay.classList.remove('show');
        });

        // Always hidden when page loads on mobile
        if (window.innerWidth <= 767) {
            sidebar.classList.remove('open');
        }

        // Auto close if resized to desktop
        window.addEventListener('resize', function () {
            if (window.innerWidth >= 768) {
                sidebar.classList.remove('open');
                overlay.classList.remove('show');
            }
        });
    });
</script>


<script src="{{ asset('admin/js/sidebar.js') }}"></script>

<script>
    function fetchncur(element) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', '/ncurfetch', true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                var date = new Date(this.responseText);
                var formattedDate = date.getDate() + '-' + (date.getMonth() + 1) + '-' + date.getFullYear();
                element.textContent = formattedDate;
            } else {
                console.error('Failed to fetch booked rooms. Status:', this.status);
            }
        };
        xhr.send();
    }
    let element = document.getElementById('ncurdate');
    fetchncur(element);
    setTimeout(function () {
        document.querySelector('.nav-control').click();
    }, 500);
</script>