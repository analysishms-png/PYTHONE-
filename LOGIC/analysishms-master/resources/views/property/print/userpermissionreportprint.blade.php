@include('property.print._header', [
    'company'  => $company,
    'title'    => $reportTitle,
])

<style>
    body { font-size: 8px; margin: 8px; }
    table { width: 100%; border-collapse: collapse; margin-top: 6px; table-layout: fixed; }
    th, td { border: 1px solid #000; padding: 2px 3px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 7px; }
    td { font-size: 7px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .user-col { min-width: 70px; font-weight: 700; color: #00008b; }
    .tfoot-row td { background-color: #d3d3d3; font-weight: 700; }
    .type-info { text-align: center; font-size: 9px; margin-bottom: 4px; }
    .section-title {
        background-color: #5c2d91;
        color: #fff;
        text-align: center;
        font-size: 10px;
        font-weight: bold;
        padding: 4px;
        margin-top: 10px;
    }
</style>

<p class="type-info">
    User: {{ $userLabel }}
</p>

{{-- ─── Section A: Module Permissions (menuhelp) ─── --}}
<div class="section-title">A. Module Permissions</div>
<table>
    <thead>
        <tr>
            <th style="width:5%; text-align:center;">#</th>
            <th style="min-width:80px; text-align:left;">Username</th>
            <th style="min-width:180px; text-align:left;">Module</th>
            <th style="width:9%;">Is View</th>
            <th style="width:9%;">Is Add</th>
            <th style="width:9%;">Is Edit</th>
            <th style="width:10%;">Is Delete</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($data as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="user-col">{{ $row->username }}</td>
                <td>{{ $row->module }}</td>
                <td class="text-center">{{ $row->isview == '' ? '-' : $row->isview }}</td>
                <td class="text-center">{{ $row->isadd == '' ? '-' : $row->isadd }}</td>
                <td class="text-center">{{ $row->isedit == '' ? '-' : $row->isedit }}</td>
                <td class="text-center">{{ $row->isdelete == '' ? '-' : $row->isdelete }}</td>
            </tr>
        @empty
            <tr>
                <td colspan="7" class="text-center" style="padding:12px;">
                    No data found.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($data) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="6" class="text-right">Total Modules</td>
            <td class="text-center">{{ count($data) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

<pagebreak></pagebreak>

{{-- ─── Section B: User Settings (userpermission) ─── --}}
<div class="section-title">B. User Settings</div>
<table>
    <thead>
        <tr>
            <th style="width:2.5%;">#</th>
            <th style="min-width:55px;">User Name</th>
            <th style="width:6%;">POS Dis.UPTO</th>
            <th style="width:6%;">FOM Dis.UPTO</th>
            <th style="width:5.5%;">Edit Item In KOT</th>
            <th style="width:5.5%;">Free Item In KOT</th>
            <th style="width:5.5%;">Guest Bill Cancel</th>
            <th style="width:5.5%;">Change Room Detail</th>
            <th style="width:5.5%;">Delete Guest Charges</th>
            <th style="width:5.5%;">Guest Charge Change</th>
            <th style="width:5.5%;">Change Guest Profile</th>
            <th style="width:5.5%;">Cancel Reservation</th>
            <th style="width:5.5%;">Check Out Time Change</th>
            <th style="width:5.5%;">Edit Advance Voucher</th>
            <th style="width:5.5%;">POS Rate Edit</th>
            <th style="width:5.5%;">Voucher Verify Allow</th>
            <th style="width:8%;">Last Update</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($settings as $row)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td class="user-col">{{ $row->username }}</td>
                <td class="text-right">{{ number_format((float)$row->posdisupto, 2) }}</td>
                <td class="text-right">{{ number_format((float)$row->fomdisupto, 2) }}</td>
                <td class="text-center">{{ $row->edititeminkot }}</td>
                <td class="text-center">{{ $row->freeiteminkot }}</td>
                <td class="text-center">{{ $row->guestbillcancel }}</td>
                <td class="text-center">{{ $row->changeroomdetail }}</td>
                <td class="text-center">{{ $row->deleteguestcharges }}</td>
                <td class="text-center">{{ $row->guestchargechange }}</td>
                <td class="text-center">{{ $row->changeguestprofile }}</td>
                <td class="text-center">{{ $row->cancelreservation }}</td>
                <td class="text-center">{{ $row->chkouttimechange }}</td>
                <td class="text-center">{{ $row->editadvancevoucher }}</td>
                <td class="text-center">{{ $row->posrateedit }}</td>
                <td class="text-center">{{ $row->voucherverify }}</td>
                <td class="text-center">
                    {{ $row->lastupdate ? \Carbon\Carbon::parse($row->lastupdate)->format('d/m/Y h:i A') : '-' }}
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="17" class="text-center" style="padding:12px;">
                    No data found.
                </td>
            </tr>
        @endforelse
    </tbody>
    @if (count($settings) > 0)
    <tfoot>
        <tr class="tfoot-row">
            <td colspan="16" class="text-right">Total Users</td>
            <td class="text-center">{{ count($settings) }}</td>
        </tr>
    </tfoot>
    @endif
</table>

</body>
</html>
