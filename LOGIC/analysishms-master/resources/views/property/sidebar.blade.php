@php
use Illuminate\Support\Facades\Date;
@endphp
<meta name="csrf-token" content="{{ csrf_token() }}">

<div class="nk-sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label">Dashboard <span id="ncurdate" style="display:contents;"></span></li>

            <li>
                <a href="{{ url('/company') }}" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-gauge"></i> Dashboard</span>
                </a>
            </li>

            <li id="mainsetups" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-brands fa-meetup"></i> Main Setup</span>
                </a>
                <ul aria-expanded="true">
                    <li class="mega-menu mega-menu-sm">
                        <a id="generalsetups" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <span class="nav-text"><i class="fa-solid fa-s"></i>
                                General Setup</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_tax_masters">
                                <a href="{{ url('taxmaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Tax Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_tax_structures">
                                <a href="{{ url('taxstructure') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Tax Structure</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_pay_type_masters">
                                <a href="{{ url('paymaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Pay Type Master</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="mega-menu mega-menu-sm">
                        <a id="frontofficecheckfirsts" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <span class="nav-text"><i class="fa-solid fa-building"></i> Front
                                Office</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_fom_parameters">
                                <a href="{{ url('fomparameter') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        FOM Parameter</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_business_sources">
                                <a href="{{ url('businesssource') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Business Source</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_charge_masters">
                                <a href="{{ url('chargemaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Charge Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_room_featuress">
                                <a href="{{ url('roomfeatures') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Room Features</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_guest_statuss">
                                <a href="{{ url('gueststatus') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Guest
                                        Status</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_room_categorys">
                                <a href="{{ url('roomcategory') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Room Category</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_room_masters">
                                <a href="{{ url('roommaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> Room
                                        Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_plan_masters">
                                <a href="{{ url('planmaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> Plan
                                        Master</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="mega-menu mega-menu-sm">
                        <a id="pointofsalefirstchecks" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <span class="nav-text">
                                <i class="fa-brands fa-slack"></i> Point Of Sale</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_nc_types">
                                <a href="{{ url('nctypemaster') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> NC Type</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_setup_outlets">
                                <a href="{{ url('setupoutlet') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Setup Outlet</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_server_masters">
                                <a href="{{ url('servermaster') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Server Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_sundry_setting">
                                <a href="{{ url('sundrysetting') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Outlet Sundry Setting</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_session_masters">
                                <a href="{{ url('sessionnmaster') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Session Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_table_masters">
                                <a href="{{ url('tablemaster') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Table Master</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_item_lists">
                                <a href="{{ url('itemlist') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Item List</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_menu_groups">
                                <a href="{{ url('menugroup') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Menu Group</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_menu_categorys">
                                <a href="{{ url('menucategory') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Menu Category</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_menu_items">
                                <a href="{{ url('menuitem') }}" aria-expanded="true">
                                    <span class="nav-text">
                                        <i class="fa-brands fa-slack"></i> Menu Item</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    {{-- <li class="mega-menu mega-menu-sm">
                        <a href="{{ url('fomparameter') }}" aria-expanded="true">
                            <img width="20" src="admin/icons/custom/fomparameter.svg"><span class="nav-text">FOM
                                Parameter</span>
                        </a>
                    </li> --}}

                    <li class="mega-menu mega-menu-sm">
                        <a id="utilitiesfirstchecks" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text">
                                Utilities</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_permissions">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Permission</span>
                                </a>
                            </li>
                            <li id="menu_backup_datas">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Backup
                                        Data</span>
                                </a>
                            </li>
                            <li id="menu_user_masters">
                                <a href="{{ url('/usermaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> User
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_sundry_masters">
                                <a href="{{ url('sundrymaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Sundry
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_inconsistency_checks">
                                <a href="{{ url('/inconsistency') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> Inconsistency
                                        Check</span>
                                </a>
                            </li>
                            <li id="menu_year_and_updations">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Year And
                                        Updation</span>
                                </a>
                            </li>
                            <li id="menu_menu_item_copys">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Menu Item Copy</span>
                                </a>
                            </li>
                            <li id="menu_guest_lookups">
                                <a href="{{ url('guestlookup') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Guest
                                        Lookup</span>
                                </a>
                            </li>
                            <li id="menu_country_masters">
                                <a href="{{ url('/countryform2') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Country
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_state_masters">
                                <a href="{{ url('/stateform2') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        State
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_city_masters">
                                <a href="{{ url('/cityform2') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> City
                                        Master</span>
                                </a>
                            </li>

                            <li id="menu_company_masters">
                                <a href="{{ url('companymaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Company
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_departments">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Department</span>
                                </a>
                            </li>
                            <li id="menu_ledger_accountss">
                                <a href="{{ url('/ledgeraccount') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Ledger
                                        Accounts</span>
                                </a>
                            </li>
                            <li id="menu_unit_masters">
                                <a href="{{ url('/unitmaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text"> Unit
                                        Master</span>
                                </a>
                            </li>
                            <li id="menu_task_schedulers">
                                <a href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Task
                                        Scheduler</span>
                                </a>
                            </li>
                            <li id="menu_service_masters">
                                <a href="{{ url('servicemaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Service Master</span>
                                </a>
                            </li>
                            <li id="menu_maintenance_masters">
                                <a href="{{ url('maintenancemaster') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Maintenance Master</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                </ul>
            </li>

            <li id="reservations" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-house-laptop"></i> Reservations</span>
                </a>
                <ul aria-expanded="true">
                    <li>
                        <a id="reservationoperations" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i> <span class="nav-text">Operations</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_reservations">
                                <a href="{{ url('/reservation') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Reservation</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_reservation_lists">
                                <a href="{{ url('/reservationlist') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Reservation List</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_lookup_rooms">
                                <a href="{{ url('/openlookuproom') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Lookup Room</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                {{-- <ul aria-expanded="false">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> Reports</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Instant House Count</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul aria-expanded="false">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> FOM
                                M.I.S.</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Plan Report</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul aria-expanded="false">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> Tax
                                Reports</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        FOM Tax Details</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul> --}}
            </li>
            <li id="frontoffices" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-house-laptop"></i> Front
                        Office</span>
                </a>
                <ul aria-expanded="true">
                    <li>
                        <a id="frontofficeoperations" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i> <span class="nav-text">Operations</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_blank_grcs">
                                <a href="{{ url('/openblankgrc') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Blank Grc</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li>
                                <a id="menu_walk_in_check_ins" href="{{ url('/walkincheckin') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Walk In Check In</span>
                                </a>
                            </li>
                            <li id="menu_checkin_lists">
                                <a href="{{ url('/checkinlist') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Checkin List</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_room_statuss">
                                <a href="{{ url('/roomstatus') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Room Status</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li id="menu_bill_reprints">
                                <a onclick="openBillNoPrompt()" href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">Bill Reprint</span>
                                </a>
                            </li>
                        </ul>

                        <form id="billForm" action="{{ route('billreprint') }}" method="POST" style="display: none;">
                            @csrf
                            <input type="hidden" name="billno" id="billNoInput">
                        </form>

                        <ul aria-expanded="true">
                            <li id="menu_bill_re_settlements">
                                <a onclick="openBillresettle()" href="#" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">Bill Re-Settlement</span>
                                </a>
                            </li>
                        </ul>

                        <form id="billresettleform" action="{{ route('billresettle') }}" method="POST"
                            style="display: none;">
                            @csrf
                            <input type="hidden" name="billno" id="billnosettle">
                        </form>

                    </li>
                </ul>
                <ul aria-expanded="false">
                    <li>
                        <a id="reports" class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> Reports</span>
                        </a>
                        <ul aria-expanded="true">
                            <li id="menu_room_statuss">
                                <a href="{{ url('/checkinreg') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Checkin Register</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Instant House Count</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul aria-expanded="false">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> FOM
                                M.I.S.</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Plan Report</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul aria-expanded="false">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i><span class="nav-text"> Tax
                                Reports</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="javascript:void()" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        FOM Tax Details</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li id="housekeepings" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-broom"></i> House
                        Keeping</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">a</span>
                        </a>
                    </li>
                </ul>
            </li>
            {{-- Mall Management --}}
            <li id="mallmanagements" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-shop"></i> Mall Management</span>
                </a>
                <ul aria-expanded="false">
                    <li id="menu_lease_agreements">
                        <a href="{{ url('leaseagreemententry') }}" aria-expanded="true">
                            <i class="fa-brands fa-slack"></i><span class="nav-text">Lease Agreement</span>
                        </a>
                    </li>
                    <li id="menu_shop_master">
                        <a href="{{ url('shopmaster') }}" aria-expanded="true">
                            <i class="fa-solid fa-store"></i><span class="nav-text">Shop Master</span>
                        </a>
                    </li>
                    <li id="menu_payment_receipt">
                        <a href="{{ url('paymentreceiptentry') }}" aria-expanded="true">
                            <i class="fa-solid fa-receipt"></i><span class="nav-text">Receipt Entry</span>
                        </a>
                    </li>
                    <li id="menu_debit_credit_note">
                        <a href="{{ url('debitcreditnoteentry') }}" aria-expanded="true">
                            <i class="fa-solid fa-file-invoice-dollar"></i><span class="nav-text">Debit / Credit Note</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li id="inventrys" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-warehouse"></i>
                        Inventry</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">a</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li onclick="fetchDynamicMenu('pointofsales')" id="pointofsales" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-brands fa-salesforce"></i> Point of
                        Sale</span>
                </a>
                {{-- <ul style="display: none;" aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">New ul li 1</span>
                        </a>
                    </li>
                </ul> --}}
            </li>
            <li id="banquests" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-regular fa-building"></i> Banquet</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">a</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li id="nightaudits" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-play"></i> Night
                        Audit</span>
                </a>
                <ul aria-expanded="true">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa-brands fa-slack"></i> <span class="nav-text">Operations</span>
                        </a>
                        <ul aria-expanded="true">
                            <li>
                                <a href="{{ url('/openchargeposting') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Charges Posting</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li>
                                <a href="{{ url('/opennightaudit') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Night Audit Process</span>
                                </a>
                            </li>
                        </ul>
                        <ul aria-expanded="true">
                            <li>
                                <a href="{{ url('/opennightaudit2') }}" aria-expanded="true">
                                    <i class="fa-brands fa-slack"></i><span class="nav-text">
                                        Reverse Night Audit</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li id="payrolls" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-hryvnia-sign"></i> HR/Payroll</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">a</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li id="extrass" class="mega-menu mega-menu-sm">
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <span class="nav-text"><i class="fa-solid fa-gopuram"></i> Extras</span>
                </a>
                <ul aria-expanded="false">
                    <li>
                        <a href="{{ url('/') }}" aria-expanded="false">
                            <i class="fa-solid fa-magnifying-glass"></i><span class="nav-text">a</span>
                        </a>
                    </li>
                </ul>
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
<script src="{{ asset('admin/js/sidebar.js') }}"></script>

<script>
    async function fetchDataBatch(dataArray) {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    const requests = dataArray.map(async ({ column, element }) => {
        try {
            const response = await fetch('checkparam', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrfToken
                },
                body: JSON.stringify({ column })
            });
            const responseData = await response.json();
            const firstValue = Object.values(responseData)[0];
            if (firstValue !== 1) {
                const targetElement = document.querySelector(element);
                if (targetElement) {
                    targetElement.style.display = 'none';
                }
            }
        } catch (error) {
            console.error('Request failed:', error);
        }
    });
    await Promise.all(requests);
}



const elements = [
    { column: 'm1', element: '#mainsetups' },
    { column: 'm1s1', element: '#generalsetups' },
    { column: 'm1s1sm1', element: '#menu_tax_masters' },
    { column: 'm1s1sm2', element: '#menu_tax_structures' },
    { column: 'm1s1sm3', element: '#menu_pay_type_masters' },
    { column: 'm1s2', element: '#frontofficecheckfirsts' },
    { column: 'm1s2sm1', element: '#menu_fom_parameters' },
    { column: 'm1s2sm2', element: '#menu_business_sources' },
    { column: 'm1s2sm3', element: '#menu_charge_masters' },
    { column: 'm1s2sm4', element: '#menu_room_featuress' },
    { column: 'm1s2sm5', element: '#menu_guest_statuss' },
    { column: 'm1s2sm6', element: '#menu_room_categorys' },
    { column: 'm1s2sm7', element: '#menu_room_masters' },
    { column: 'm1s2sm8', element: '#menu_plan_masters' },
    { column: 'm1s3', element: '#pointofsalefirstchecks' },
    { column: 'm1s3sm1', element: '#menu_nc_types' },
    { column: 'm1s3sm2', element: '#menu_setup_outlets' },
    { column: 'm1s3sm3', element: '#menu_server_masters' },
    { column: 'm1s3sm4', element: '#menu_session_masters' },
    { column: 'm1s3sm5', element: '#menu_table_masters' },
    { column: 'm1s3sm6', element: '#menu_item_lists' },
    { column: 'm1s3sm7', element: '#menu_menu_groups' },
    { column: 'm1s3sm8', element: '#menu_menu_categorys' },
    { column: 'm1s3sm9', element: '#menu_menu_items' },
    { column: 'm1s4', element: '#utilitiesfirstchecks' },
    { column: 'm1s4sm1', element: '#menu_permissions' },
    { column: 'm1s4sm2', element: '#menu_backup_datas' },
    { column: 'm1s4sm3', element: '#menu_user_masters' },
    { column: 'm1s4sm4', element: '#menu_sundry_masters' },
    { column: 'm1s4sm5', element: '#menu_inconsistency_checks' },
    { column: 'm1s4sm6', element: '#menu_year_and_updations' },
    { column: 'm1s4sm7', element: '#menu_menu_item_copys' },
    { column: 'm1s4sm8', element: '#menu_guest_lookups' },
    { column: 'm1s4sm9', element: '#menu_country_masters' },
    { column: 'm1s4sm10', element: '#menu_state_masters' },
    { column: 'm1s4sm11', element: '#menu_city_masters' },
    { column: 'm1s4sm12', element: '#menu_company_masters' },
    { column: 'm1s4sm13', element: '#menu_departments' },
    { column: 'm1s4sm14', element: '#menu_ledger_accountss' },
    { column: 'm1s4sm15', element: '#menu_unit_masters' },
    { column: 'm1s4sm16', element: '#menu_task_schedulers' },
    { column: 'm1s4sm17', element: '#menu_service_masters' },
    { column: 'm1s4sm18', element: '#menu_maintenance_masters' },
    { column: 'm2', element: '#reservations' },
    { column: 'm2s1', element: '#reservationoperations' },
    { column: 'm2s1sm1', element: '#menu_reservations' },
    { column: 'm2s1sm2', element: '#menu_reservation_lists' },
    { column: 'm2s1sm3', element: '#menu_lookup_rooms' },
    { column: 'm3', element: '#frontoffices' },
    { column: 'm3s1', element: '#frontofficeoperations' },
    { column: 'm3s1sm1', element: '#menu_blank_grcs' },
    { column: 'm3s1sm2', element: '#menu_walk_in_check_ins' },
    { column: 'm3s1sm3', element: '#menu_checkin_lists' },
    { column: 'm3s1sm4', element: '#menu_room_statuss' },
    { column: 'm3s1sm5', element: '#menu_bill_reprints' },
    { column: 'm3s1sm6', element: '#menu_bill_re_settlements' },
    { column: 'm4', element: '#housekeepings' },
    { column: 'm5', element: '#inventrys' },
    { column: 'm6', element: '#pointofsales' },
    // { column: 'm6s1', element: '#m6s1' },
    // { column: 'm6s1sm1', element: '#m6s1sm1' },
    // { column: 'm6s1sm2', element: '#m6s1sm2' },
    // { column: 'm6s1sm3', element: '#m6s1sm3' },
    // { column: 'm6s1sm4', element: '#m6s1sm4' },
    // { column: 'm6s1sm5', element: '#m6s1sm5' },
    // { column: 'm6s1sm6', element: '#m6s1sm6' },
    // { column: 'm6s1sm7', element: '#m6s1sm7' },
    // { column: 'm6s1sm8', element: '#m6s1sm8' },
    // { column: 'm6s1sm9', element: '#m6s1sm9' },
    // { column: 'm6s1sm10', element: '#m6s1sm10' },
    // { column: 'm6s1sm11', element: '#m6s1sm11' },
    // { column: 'm6s1sm12', element: '#m6s1sm12' },
    // { column: 'm6s1sm13', element: '#m6s1sm13' },
    // { column: 'm6s1sm14', element: '#m6s1sm14' },
    // { column: 'm6s2', element: '#m6s2' },
    // { column: 'm6s2sm1', element: '#m6s2sm1' },
    // { column: 'm6s2sm2', element: '#m6s2sm2' },
    // { column: 'm6s2sm3', element: '#m6s2sm3' },
    // { column: 'm6s2sm4', element: '#m6s2sm4' },
    // { column: 'm6s2sm5', element: '#m6s2sm5' },
    // { column: 'm6s2sm6', element: '#m6s2sm6' },
    // { column: 'm6s2sm7', element: '#m6s2sm7' },
    // { column: 'm6s2sm8', element: '#m6s2sm8' },
    // { column: 'm6s2sm9', element: '#m6s2sm9' },
    // { column: 'm6s2sm10', element: '#m6s2sm10' },
    // { column: 'm6s2sm11', element: '#m6s2sm11' },
    // { column: 'm6s2sm12', element: '#m6s2sm12' },
    // { column: 'm6s2sm13', element: '#m6s2sm13' },
    // { column: 'm6s2sm14', element: '#m6s2sm14' },
    // { column: 'm6s3', element: '#m6s3' },
    // { column: 'm6s3sm1', element: '#m6s3sm1' },
    // { column: 'm6s3sm2', element: '#m6s3sm2' },
    // { column: 'm6s3sm3', element: '#m6s3sm3' },
    // { column: 'm6s3sm4', element: '#m6s3sm4' },
    // { column: 'm6s3sm5', element: '#m6s3sm5' },
    // { column: 'm6s3sm6', element: '#m6s3sm6' },
    // { column: 'm6s3sm7', element: '#m6s3sm7' },
    // { column: 'm6s3sm8', element: '#m6s3sm8' },
    // { column: 'm6s3sm9', element: '#m6s3sm9' },
    // { column: 'm6s3sm10', element: '#m6s3sm10' },
    // { column: 'm6s3sm11', element: '#m6s3sm11' },
    // { column: 'm6s3sm12', element: '#m6s3sm12' },
    // { column: 'm6s3sm13', element: '#m6s3sm13' },
    // { column: 'm6s3sm14', element: '#m6s3sm14' },
    // { column: 'm6s4', element: '#m6s4' },
    // { column: 'm6s4sm1', element: '#m6s4sm1' },
    // { column: 'm6s4sm2', element: '#m6s4sm2' },
    // { column: 'm6s4sm3', element: '#m6s4sm3' },
    // { column: 'm6s4sm4', element: '#m6s4sm4' },
    // { column: 'm6s4sm5', element: '#m6s4sm5' },
    // { column: 'm6s4sm6', element: '#m6s4sm6' },
    // { column: 'm6s4sm7', element: '#m6s4sm7' },
    // { column: 'm6s4sm8', element: '#m6s4sm8' },
    // { column: 'm6s4sm9', element: '#m6s4sm9' },
    // { column: 'm6s4sm10', element: '#m6s4sm10' },
    // { column: 'm6s4sm11', element: '#m6s4sm11' },
    // { column: 'm6s4sm12', element: '#m6s4sm12' },
    // { column: 'm6s4sm13', element: '#m6s4sm13' },
    // { column: 'm6s4sm14', element: '#m6s4sm14' },
    // { column: 'm6s5', element: '#m6s5' },
    // { column: 'm6s5sm1', element: '#m6s5sm1' },
    // { column: 'm6s5sm2', element: '#m6s5sm2' },
    // { column: 'm6s5sm3', element: '#m6s5sm3' },
    // { column: 'm6s5sm4', element: '#m6s5sm4' },
    // { column: 'm6s5sm5', element: '#m6s5sm5' },
    // { column: 'm6s5sm6', element: '#m6s5sm6' },
    // { column: 'm6s5sm7', element: '#m6s5sm7' },
    // { column: 'm6s5sm8', element: '#m6s5sm8' },
    // { column: 'm6s5sm9', element: '#m6s5sm9' },
    // { column: 'm6s5sm10', element: '#m6s5sm10' },
    // { column: 'm6s5sm11', element: '#m6s5sm11' },
    // { column: 'm6s5sm12', element: '#m6s5sm12' },
    // { column: 'm6s5sm13', element: '#m6s5sm13' },
    // { column: 'm6s5sm14', element: '#m6s5sm14' },
    // { column: 'm6s6', element: '#m6s6' },
    // { column: 'm6s6sm1', element: '#m6s6sm1' },
    // { column: 'm6s6sm2', element: '#m6s6sm2' },
    // { column: 'm6s6sm3', element: '#m6s6sm3' },
    // { column: 'm6s6sm4', element: '#m6s6sm4' },
    // { column: 'm6s6sm5', element: '#m6s6sm5' },
    // { column: 'm6s6sm6', element: '#m6s6sm6' },
    // { column: 'm6s6sm7', element: '#m6s6sm7' },
    // { column: 'm6s6sm8', element: '#m6s6sm8' },
    // { column: 'm6s6sm9', element: '#m6s6sm9' },
    // { column: 'm6s6sm10', element: '#m6s6sm10' },
    // { column: 'm6s6sm11', element: '#m6s6sm11' },
    // { column: 'm6s6sm12', element: '#m6s6sm12' },
    // { column: 'm6s6sm13', element: '#m6s6sm13' },
    // { column: 'm6s6sm14', element: '#m6s6sm14' },
    // { column: 'm6s7', element: '#m6s7' },
    // { column: 'm6s7sm1', element: '#m6s7sm1' },
    // { column: 'm6s7sm2', element: '#m6s7sm2' },
    // { column: 'm6s7sm3', element: '#m6s7sm3' },
    // { column: 'm6s7sm4', element: '#m6s7sm4' },
    // { column: 'm6s7sm5', element: '#m6s7sm5' },
    // { column: 'm6s7sm6', element: '#m6s7sm6' },
    // { column: 'm6s7sm7', element: '#m6s7sm7' },
    // { column: 'm6s7sm8', element: '#m6s7sm8' },
    // { column: 'm6s7sm9', element: '#m6s7sm9' },
    // { column: 'm6s7sm10', element: '#m6s7sm10' },
    // { column: 'm6s7sm11', element: '#m6s7sm11' },
    // { column: 'm6s7sm12', element: '#m6s7sm12' },
    // { column: 'm6s7sm13', element: '#m6s7sm13' },
    // { column: 'm6s7sm14', element: '#m6s7sm14' },
    // { column: 'm6s8', element: '#m6s8' },
    // { column: 'm6s8sm1', element: '#m6s8sm1' },
    // { column: 'm6s8sm2', element: '#m6s8sm2' },
    // { column: 'm6s8sm3', element: '#m6s8sm3' },
    // { column: 'm6s8sm4', element: '#m6s8sm4' },
    // { column: 'm6s8sm5', element: '#m6s8sm5' },
    // { column: 'm6s8sm6', element: '#m6s8sm6' },
    // { column: 'm6s8sm7', element: '#m6s8sm7' },
    // { column: 'm6s8sm8', element: '#m6s8sm8' },
    // { column: 'm6s8sm9', element: '#m6s8sm9' },
    // { column: 'm6s8sm10', element: '#m6s8sm10' },
    // { column: 'm6s8sm11', element: '#m6s8sm11' },
    // { column: 'm6s8sm12', element: '#m6s8sm12' },
    // { column: 'm6s8sm13', element: '#m6s8sm13' },
    // { column: 'm6s8sm14', element: '#m6s8sm14' },
    // { column: 'm6s9', element: '#m6s9' },
    // { column: 'm6s9sm1', element: '#m6s9sm1' },
    // { column: 'm6s9sm2', element: '#m6s9sm2' },
    // { column: 'm6s9sm3', element: '#m6s9sm3' },
    // { column: 'm6s9sm4', element: '#m6s9sm4' },
    // { column: 'm6s9sm5', element: '#m6s9sm5' },
    // { column: 'm6s9sm6', element: '#m6s9sm6' },
    // { column: 'm6s9sm7', element: '#m6s9sm7' },
    // { column: 'm6s9sm8', element: '#m6s9sm8' },
    // { column: 'm6s9sm9', element: '#m6s9sm9' },
    // { column: 'm6s9sm10', element: '#m6s9sm10' },
    // { column: 'm6s9sm11', element: '#m6s9sm11' },
    // { column: 'm6s9sm12', element: '#m6s9sm12' },
    // { column: 'm6s9sm13', element: '#m6s9sm13' },
    // { column: 'm6s9sm14', element: '#m6s9sm14' },
    // { column: 'm6s10', element: '#m6s10' },
    // { column: 'm6s10sm1', element: '#m6s10sm1' },
    // { column: 'm6s10sm2', element: '#m6s10sm2' },
    // { column: 'm6s10sm3', element: '#m6s10sm3' },
    // { column: 'm6s10sm4', element: '#m6s10sm4' },
    // { column: 'm6s10sm5', element: '#m6s10sm5' },
    // { column: 'm6s10sm6', element: '#m6s10sm6' },
    // { column: 'm6s10sm7', element: '#m6s10sm7' },
    // { column: 'm6s10sm8', element: '#m6s10sm8' },
    // { column: 'm6s10sm9', element: '#m6s10sm9' },
    // { column: 'm6s10sm10', element: '#m6s10sm10' },
    // { column: 'm6s10sm11', element: '#m6s10sm11' },
    // { column: 'm6s10sm12', element: '#m6s10sm12' },
    // { column: 'm6s10sm13', element: '#m6s10sm13' },
    // { column: 'm6s10sm14', element: '#m6s10sm14' },
    // { column: 'm6s11', element: '#m6s11' },
    // { column: 'm6s11sm1', element: '#m6s11sm1' },
    // { column: 'm6s11sm2', element: '#m6s11sm2' },
    // { column: 'm6s11sm3', element: '#m6s11sm3' },
    // { column: 'm6s11sm4', element: '#m6s11sm4' },
    // { column: 'm6s11sm5', element: '#m6s11sm5' },
    // { column: 'm6s11sm6', element: '#m6s11sm6' },
    // { column: 'm6s11sm7', element: '#m6s11sm7' },
    // { column: 'm6s11sm8', element: '#m6s11sm8' },
    // { column: 'm6s11sm9', element: '#m6s11sm9' },
    // { column: 'm6s11sm10', element: '#m6s11sm10' },
    // { column: 'm6s11sm11', element: '#m6s11sm11' },
    // { column: 'm6s11sm12', element: '#m6s11sm12' },
    // { column: 'm6s11sm13', element: '#m6s11sm13' },
    // { column: 'm6s11sm14', element: '#m6s11sm14' },
    // { column: 'm6s12', element: '#m6s12' },
    // { column: 'm6s12sm1', element: '#m6s12sm1' },
    // { column: 'm6s12sm2', element: '#m6s12sm2' },
    // { column: 'm6s12sm3', element: '#m6s12sm3' },
    // { column: 'm6s12sm4', element: '#m6s12sm4' },
    // { column: 'm6s12sm5', element: '#m6s12sm5' },
    // { column: 'm6s12sm6', element: '#m6s12sm6' },
    // { column: 'm6s12sm7', element: '#m6s12sm7' },
    // { column: 'm6s12sm8', element: '#m6s12sm8' },
    // { column: 'm6s12sm9', element: '#m6s12sm9' },
    // { column: 'm6s12sm10', element: '#m6s12sm10' },
    // { column: 'm6s12sm11', element: '#m6s12sm11' },
    // { column: 'm6s12sm12', element: '#m6s12sm12' },
    // { column: 'm6s12sm13', element: '#m6s12sm13' },
    // { column: 'm6s12sm14', element: '#m6s12sm14' },
    // { column: 'm6s13', element: '#m6s13' },
    // { column: 'm6s13sm1', element: '#m6s13sm1' },
    // { column: 'm6s13sm2', element: '#m6s13sm2' },
    // { column: 'm6s13sm3', element: '#m6s13sm3' },
    // { column: 'm6s13sm4', element: '#m6s13sm4' },
    // { column: 'm6s13sm5', element: '#m6s13sm5' },
    // { column: 'm6s13sm6', element: '#m6s13sm6' },
    // { column: 'm6s13sm7', element: '#m6s13sm7' },
    // { column: 'm6s13sm8', element: '#m6s13sm8' },
    // { column: 'm6s13sm9', element: '#m6s13sm9' },
    // { column: 'm6s13sm10', element: '#m6s13sm10' },
    // { column: 'm6s13sm11', element: '#m6s13sm11' },
    // { column: 'm6s13sm12', element: '#m6s13sm12' },
    // { column: 'm6s13sm13', element: '#m6s13sm13' },
    // { column: 'm6s13sm14', element: '#m6s13sm14' },
    // { column: 'm6s14', element: '#m6s14' },
    // { column: 'm6s14sm1', element: '#m6s14sm1' },
    // { column: 'm6s14sm2', element: '#m6s14sm2' },
    // { column: 'm6s14sm3', element: '#m6s14sm3' },
    // { column: 'm6s14sm4', element: '#m6s14sm4' },
    // { column: 'm6s14sm5', element: '#m6s14sm5' },
    // { column: 'm6s14sm6', element: '#m6s14sm6' },
    // { column: 'm6s14sm7', element: '#m6s14sm7' },
    // { column: 'm6s14sm8', element: '#m6s14sm8' },
    // { column: 'm6s14sm9', element: '#m6s14sm9' },
    // { column: 'm6s14sm10', element: '#m6s14sm10' },
    // { column: 'm6s14sm11', element: '#m6s14sm11' },
    // { column: 'm6s14sm12', element: '#m6s14sm12' },
    // { column: 'm6s14sm13', element: '#m6s14sm13' },
    // { column: 'm6s14sm14', element: '#m6s14sm14' },
    // { column: 'm6s15', element: '#m6s15' },
    // { column: 'm6s15sm1', element: '#m6s15sm1' },
    // { column: 'm6s15sm2', element: '#m6s15sm2' },
    // { column: 'm6s15sm3', element: '#m6s15sm3' },
    // { column: 'm6s15sm4', element: '#m6s15sm4' },
    // { column: 'm6s15sm5', element: '#m6s15sm5' },
    // { column: 'm6s15sm6', element: '#m6s15sm6' },
    // { column: 'm6s15sm7', element: '#m6s15sm7' },
    // { column: 'm6s15sm8', element: '#m6s15sm8' },
    // { column: 'm6s15sm9', element: '#m6s15sm9' },
    // { column: 'm6s15sm10', element: '#m6s15sm10' },
    // { column: 'm6s15sm11', element: '#m6s15sm11' },
    // { column: 'm6s15sm12', element: '#m6s15sm12' },
    // { column: 'm6s15sm13', element: '#m6s15sm13' },
    // { column: 'm6s15sm14', element: '#m6s15sm14' },
    { column: 'm7', element: '#banquests' },
    { column: 'm8', element: '#nightaudits' },
    { column: 'm9', element: '#payrolls' },
    { column: 'm10', element: '#extrass' },
];

fetchDataBatch(elements);


function fetchncur(element) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/ncurfetch', true);
    xhr.onload = function() {
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
setTimeout(() => {
let element = document.getElementById('ncurdate');
fetchncur(element);
}, 1000);

// function fetchDynamicMenu(elementId) {
//     const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
//     const xhr = new XMLHttpRequest();

//     xhr.onreadystatechange = function () {
//         if (xhr.readyState === 4 && xhr.status === 200) {
//             const data = JSON.parse(xhr.responseText);
//             const pointOfSale = document.getElementById(elementId);
//             let outerCount = 1;
//             data.forEach(function (item) {
//                 let idmain = 'm6' + 's' + outerCount;
//                 // let idatag = idmain + 'sm' + outerCount;
//                 const outerUl = document.createElement('ul');
//                 outerUl.setAttribute('aria-expanded', 'true');

//                 const outerLi = document.createElement('li');
//                 outerLi.setAttribute('class', 'mega-menu mega-menu-sm');

//                 const outerA = document.createElement('a');
//                 outerA.setAttribute('class', 'has-arrow');
//                 outerA.setAttribute('id', idmain);
//                 outerA.setAttribute('href', 'javascript:void(0)');
//                 outerA.setAttribute('aria-expanded', 'false');
//                 outerA.innerHTML = '<i class="fa-solid fa-s"></i><span class="nav-text">' + item.name + '</span>';

//                 const innerUl = document.createElement('ul');
//                 innerUl.setAttribute('aria-expanded', 'true');

//                 const innerLi = document.createElement('li');
//                 const innerA1 = document.createElement('a');
//                 const queryparamsa1 = new URLSearchParams();
//                 queryparamsa1.set('dcode', item.dcode);
//                 const salebillentryurl = '/salebillentry?' + queryparamsa1.toString();
//                 innerA1.setAttribute('href', salebillentryurl);
//                 innerA1.setAttribute('id', idmain + 'sm' + 1);
//                 innerA1.setAttribute('aria-expanded', 'true');
//                 innerA1.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Sale Bill Entry</span>';

//                 const innerA2 = document.createElement('a');
//                 const queryparamsa2 = new URLSearchParams();
//                 queryparamsa2.set('dcode', item.dcode);
//                 const posbillentryurl = '/posbillentry?' + queryparamsa2.toString();
//                 innerA2.setAttribute('href', posbillentryurl);
//                 innerA2.setAttribute('id', 'id', idmain + 'sm' + 2);
//                 innerA2.setAttribute('aria-expanded', 'true');
//                 innerA2.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">POS Bill Reprint</span>';

//                 innerLi.appendChild(innerA1);
//                 innerLi.appendChild(innerA2);
//                 innerUl.appendChild(innerLi);
//                 if (item.kot_yn == 'Y' && item.rest_type == 'Outlet') {
//                     const innerA3 = document.createElement('a');
//                     const queryparamsa3 = new URLSearchParams();
//                     queryparamsa3.set('dcode', item.dcode);
//                     const kotentryurl = '/kotentry?' + queryparamsa3.toString();
//                     innerA3.setAttribute('href', kotentryurl);
//                     innerA3.setAttribute('id', 'id', idmain + 'sm' + 3);
//                     innerA3.setAttribute('aria-expanded', 'true');
//                     innerA3.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Entry</span>';
//                     innerLi.appendChild(innerA3);
//                     innerUl.appendChild(innerLi);

//                     const innerA4 = document.createElement('a');
//                     const queryParamsa4 = new URLSearchParams();
//                     queryParamsa4.set('dcode', item.dcode);
//                     const tablechangeentryurl = '/tablechangeentry?' + queryParamsa4.toString();
//                     innerA4.setAttribute('href', tablechangeentryurl);
//                     innerA4.setAttribute('id', 'id', idmain + 'sm' + 4);
//                     innerA4.setAttribute('aria-expanded', 'true');
//                     innerA4.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Table Change Entry</span>';
//                     innerLi.appendChild(innerA4);
//                     innerLi.appendChild(innerA4);
//                     innerUl.appendChild(innerLi);

//                     const innerA5 = document.createElement('a');
//                     const queryParamsA5 = new URLSearchParams();
//                     queryParamsA5.set('dcode', item.dcode);
//                     const tableBookingUrl = '/tablebooking?' + queryParamsA5.toString();
//                     innerA5.setAttribute('href', tableBookingUrl);
//                     innerA5.setAttribute('id', 'id', idmain + 'sm' + 5);
//                     innerA5.setAttribute('aria-expanded', 'true');
//                     innerA5.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Table Booking</span>';
//                     innerLi.appendChild(innerA5);
//                     innerUl.appendChild(innerLi);

//                     const innerA6 = document.createElement('a');
//                     const queryParamsa6 = new URLSearchParams();
//                     queryParamsa6.set('dcode', item.dcode);
//                     const billlockupurl = '/billlockup?' + queryParamsa6.toString();
//                     innerA6.setAttribute('href', billlockupurl);
//                     innerA6.setAttribute('id', 'id', idmain + 'sm' + 6);
//                     innerA6.setAttribute('aria-expanded', 'true');
//                     innerA6.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Bill Lockup</span>';
//                     innerLi.appendChild(innerA6);
//                     innerLi.appendChild(innerA6);
//                     innerUl.appendChild(innerLi);

//                     const innerA7 = document.createElement('a');
//                     const queryParams = new URLSearchParams();
//                     queryParams.set('dcode', item.dcode);
//                     const displayTableUrl = '/displaytable?' + queryParams.toString();
//                     innerA7.setAttribute('href', displayTableUrl);
//                     innerA7.setAttribute('id', 'id', idmain + 'sm' + 7);
//                     innerA7.setAttribute('aria-expanded', 'true');
//                     innerA7.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Display Table</span>';

//                     innerLi.appendChild(innerA7);
//                     innerLi.appendChild(innerA7);
//                     innerUl.appendChild(innerLi);

//                     const innerA8 = document.createElement('a');
//                     const queryparamsa8 = new URLSearchParams();
//                     queryparamsa8.set('dcode', item.dcode);
//                     const kottransferurl = '/kottransfer?' + queryparamsa8.toString();
//                     innerA8.setAttribute('href', kottransferurl);
//                     innerA8.setAttribute('id', 'id', idmain + 'sm' + 8);
//                     innerA8.setAttribute('aria-expanded', 'true');
//                     innerA8.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Transfer</span>';
//                     innerLi.appendChild(innerA8);
//                     innerUl.appendChild(innerLi);

//                     const innerA9 = document.createElement('a');
//                     const queryparamsa9 = new URLSearchParams();
//                     queryparamsa9.set('dcode', item.dcode);
//                     const paymentreceivedurl = '/paymentreceived?' + queryparamsa9.toString();
//                     innerA9.setAttribute('href', paymentreceivedurl);
//                     innerA9.setAttribute('id', idmain + 'sm' + 9);
//                     innerA9.setAttribute('aria-expanded', 'true');
//                     innerA9.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Payment Received</span>';

//                     innerLi.appendChild(innerA9);
//                     innerUl.appendChild(innerLi);

//                     const innerA11 = document.createElement('a');
//                     innerA11.setAttribute('href', 'settlemententry/' + item.dcode);
//                     innerA11.setAttribute('id', idmain + 'sm' + 11);
//                     innerA11.setAttribute('aria-expanded', 'true');
//                     innerA11.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Settlement Entry</span>';

//                 } else if (item.kot_yn == 'Y' && ['ROOM SERVICE', 'Outlet'].includes(item.rest_type)) {
//                     const innerA3 = document.createElement('a');
//                     const queryparamsa3 = new URLSearchParams();
//                     queryparamsa3.set('dcode', item.dcode);
//                     const kotentryurl = '/kotentry?' + queryparamsa3.toString();
//                     innerA3.setAttribute('href', kotentryurl);
//                     innerA3.setAttribute('id', idmain + 'sm' + 3);
//                     innerA3.setAttribute('aria-expanded', 'true');
//                     innerA3.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Entry</span>';
//                     innerLi.appendChild(innerA3);
//                     innerUl.appendChild(innerLi);

//                     const innerA7 = document.createElement('a');
//                     const queryParams = new URLSearchParams();
//                     queryParams.set('dcode', item.dcode);
//                     const displayTableUrl = '/displaytable?' + queryParams.toString();
//                     innerA7.setAttribute('href', displayTableUrl);
//                     innerA7.setAttribute('id', idmain + 'sm' + 7);
//                     innerA7.setAttribute('aria-expanded', 'true');
//                     innerA7.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Display Table</span>';

//                     innerLi.appendChild(innerA7);
//                     innerLi.appendChild(innerA7);
//                     innerUl.appendChild(innerLi);

//                     const innerA8 = document.createElement('a');
//                     innerA8.setAttribute('href', 'kottransfer/' + item.dcode);
//                     innerA8.setAttribute('id', idatag);
//                     innerA8.setAttribute('aria-expanded', 'true');
//                     innerA8.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Transfer</span>';
//                     innerLi.appendChild(innerA8);
//                     innerUl.appendChild(innerLi);
//                 } else if (item.rest_type != 'ROOM SERVICE') {
//                     const innerA10 = document.createElement('a');
//                     const queryparamsa10 = new URLSearchParams();
//                     queryparamsa10.set('dcode', item.dcode);
//                     const splitbillurl = '/splitbill?' + queryparamsa10.toString();
//                     innerA10.setAttribute('href', splitbillurl);
//                     innerA10.setAttribute('id', idmain + 'sm' + 10);
//                     innerA10.setAttribute('aria-expanded', 'true');
//                     innerA10.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Split Bill</span>';

//                     innerLi.appendChild(innerA10);
//                     innerUl.appendChild(innerLi);

//                     const innerA11 = document.createElement('a');
//                     const queryparamsa11 = new URLSearchParams();
//                     queryparamsa11.set('dcode', item.dcode);
//                     const settlemententryurl = '/settlemententry?' + queryparamsa11.toString();
//                     innerA11.setAttribute('href', settlemententryurl);
//                     innerA11.setAttribute('id', idmain + 'sm' + 11);
//                     innerA11.setAttribute('aria-expanded', 'true');
//                     innerA11.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Settlement Entry</span>';

//                     innerLi.appendChild(innerA11);
//                     innerUl.appendChild(innerLi);
//                 } else if (item.order_booking == 'Y') {

//                     const innerA12 = document.createElement('a');
//                     const queryparamsa12 = new URLSearchParams();
//                     queryparamsa12.set('dcode', item.dcode);
//                     const orderbookingurl = '/orderbooking?' + queryparamsa12.toString();
//                     innerA12.setAttribute('href', orderbookingurl);
//                     innerA12.setAttribute('id', idmain + 'sm' + 12);
//                     innerA12.setAttribute('aria-expanded', 'true');
//                     innerA12.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Order Booking</span>';

//                     innerLi.appendChild(innerA12);
//                     innerUl.appendChild(innerLi);

//                     const innerA13 = document.createElement('a');
//                     const queryparamsa13 = new URLSearchParams();
//                     queryparamsa13.set('dcode', item.dcode);
//                     const orderbookingadvanceurl = '/orderbookingadvance?' + queryparamsa13.toString();
//                     innerA13.setAttribute('href', orderbookingadvanceurl);
//                     innerA13.setAttribute('id', idmain + 'sm' + 13);
//                     innerA13.setAttribute('aria-expanded', 'true');
//                     innerA13.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Order Booking Advance</span>';

//                     innerLi.appendChild(innerA13);
//                     innerUl.appendChild(innerLi);
//                 }

//                 outerLi.appendChild(outerA);
//                 outerLi.appendChild(innerUl);
//                 outerUl.appendChild(outerLi);
//                 pointOfSale.appendChild(outerUl);
//                 outerCount++;
//             });


//         } else {
//             // console.error('Request failed with status:', xhr.status);
//         }
//     };
//     xhr.open('GET', 'getoutletlist', true);
//     xhr.setRequestHeader('Content-Type', 'application/json');
//     xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
//     xhr.send();
//     fetchDataBatch(elements);
// }


setTimeout(function() {
    document.querySelector('.nav-control').click();
}, 500);
</script>