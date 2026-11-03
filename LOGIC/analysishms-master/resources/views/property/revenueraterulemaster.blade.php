@extends('property.layouts.main')
@section('main-container')

<style>
    .rrm-card { border:none; border-radius:12px; box-shadow:0 2px 10px rgba(0,0,0,.07); background:#fff; }
    .rrm-section-title { font-size:15px; font-weight:700; color:#2b3544; margin-bottom:0; }
    .rrm-sub-title { font-size:13.5px; font-weight:700; color:#1a73e8; margin:18px 0 10px; }
    .rrm-table th { font-size:11.5px; font-weight:700; color:#5f6b7a; text-transform:uppercase; }
    .rrm-table td { font-size:13px; vertical-align:middle; }
    .rrm-rule-line { font-size:12px; color:#4b5563; line-height:1.5; }
</style>

<div class="content-body">
    <div class="container-fluid">

        {{-- Page Title --}}
        <div class="row page-titles mx-0 mb-3">
            <div class="col-sm-12 p-md-0 d-flex align-items-center">
                <h4 class="mb-0" style="font-weight:700; color:#2b3544;">
                    <i class="fa fa-sliders mr-2" style="color:#1a73e8;"></i> Revenue Rate Rule Master
                </h4>
            </div>
        </div>

        @if (session('success'))
            <div class="alert alert-success alert-dismissible fade show">
                <i class="fa fa-check-circle mr-1"></i> {{ session('success') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        @if ($errors->any())
            <div class="alert alert-danger alert-dismissible fade show">
                <i class="fa fa-exclamation-circle mr-1"></i> <strong>Please check the form:</strong>
                <ul class="mb-0 mt-1" style="font-size:13px;">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        <form action="{{ route('raterulemasterstore') }}" method="POST" id="rrmForm">
            @csrf

            {{-- Entry Point --}}
            <div class="card rrm-card mb-4">
                <div class="card-header bg-white border-bottom d-flex align-items-center py-3 px-4">
                    <h6 class="rrm-section-title">
                        <i class="fa fa-plus-circle mr-2" style="color:#0f9d58;"></i> Rate Rule Entry
                    </h6>
                </div>
                <div class="card-body px-4">

                    <div class="row">
                        <div class="col-md-3 col-sm-6 mb-3">
                            <label class="col-form-label" for="rule_name">Rule Name</label>
                            <select name="rule_name" id="rule_name" class="form-control" required>
                                <option value="">Select Rule</option>
                                @foreach (\App\Http\Controllers\RevenueRateRuleMasterController::RULE_NAMES as $ruleName)
                                    <option value="{{ $ruleName }}"{{ old('rule_name') === $ruleName ? ' selected' : '' }}>
                                        {{ $ruleName }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-3">
                            <label class="col-form-label" for="fromdate">From Date</label>
                            <input type="date" name="fromdate" id="fromdate" class="form-control"
                                value="{{ old('fromdate', \Carbon\Carbon::parse($ncurdate)->format('Y-m-d')) }}" required>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-3">
                            <label class="col-form-label" for="todate">To Date</label>
                            <input type="date" name="todate" id="todate" class="form-control"
                                value="{{ old('todate', \Carbon\Carbon::parse($ncurdate)->format('Y-m-d')) }}" required>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-3 d-flex align-items-end">
                            <div class="custom-control custom-switch" style="padding-top:8px;">
                                <input type="checkbox" class="custom-control-input" id="activeSwitch" name="active"
                                    value="Y" {{ old('active', 'Y') === 'Y' ? 'checked' : '' }}>
                                <label class="custom-control-label" for="activeSwitch" style="font-weight:600; color:#2b3544;">
                                    Active
                                </label>
                                <div class="text-muted" style="font-size:11.5px;">On / Off</div>
                            </div>
                        </div>
                    </div>

                    {{-- Occupancy Based Rate Adjustment --}}
                    <h6 class="rrm-sub-title">
                        <i class="fa fa-percent mr-1"></i> Occupancy Based Rate Adjustment
                    </h6>

                    <div class="table-responsive">
                        <table class="table rrm-table mb-2" id="ruleTable">
                            <thead style="background:#f7f9fc;">
                                <tr>
                                    <th class="px-3 py-2" style="width:70px;">SNO</th>
                                    <th class="px-2 py-2">Occupancy From (%)</th>
                                    <th class="px-2 py-2">Occupancy To (%)</th>
                                    <th class="px-2 py-2">Rate Adjustment</th>
                                    <th class="px-2 py-2" style="width:180px;">Adjustment Type</th>
                                    <th class="px-3 py-2 text-center" style="width:80px;">Action</th>
                                </tr>
                            </thead>
                            <tbody id="ruleRows"></tbody>
                        </table>
                    </div>

                    <button type="button" class="btn btn-outline-primary btn-sm" id="addRule">
                        <i class="fa fa-plus mr-1"></i> Add Rule Range
                    </button>
                </div>
                <div class="card-footer bg-white text-right py-3 px-4">
                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-save mr-1"></i> Save Rate Rule
                    </button>
                </div>
            </div>
        </form>

        {{-- Rate Rule Master List --}}
        <div class="card rrm-card mb-4">
            <div class="card-header bg-white border-bottom d-flex align-items-center justify-content-between py-3 px-4">
                <h6 class="rrm-section-title">
                    <i class="fa fa-table mr-2" style="color:#374151;"></i> Rate Rule Master List
                </h6>
                <span class="text-muted" style="font-size:12px;">{{ $masters->count() }} record(s)</span>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-hover rrm-table mb-0">
                        <thead style="background:#f7f9fc;">
                            <tr>
                                <th class="px-3 py-2">Sn</th>
                                <th class="px-2 py-2">Rule Name</th>
                                <th class="px-2 py-2">From Date</th>
                                <th class="px-2 py-2">To Date</th>
                                <th class="px-2 py-2">Active</th>
                                <th class="px-2 py-2">Occupancy Rules</th>
                                <th class="px-2 py-2">Created By</th>
                                <th class="px-2 py-2">Created At</th>
                                <th class="px-3 py-2 text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($masters as $i => $master)
                                <tr>
                                    <td class="px-3 py-2">{{ $i + 1 }}</td>
                                    <td class="px-2 py-2">
                                        <strong style="color:#2b3544;">{{ $master->rule_name }}</strong>
                                    </td>
                                    <td class="px-2 py-2" style="white-space:nowrap;">
                                        {{ \Carbon\Carbon::parse($master->from_date)->format('d M Y') }}
                                    </td>
                                    <td class="px-2 py-2" style="white-space:nowrap;">
                                        {{ \Carbon\Carbon::parse($master->to_date)->format('d M Y') }}
                                    </td>
                                    <td class="px-2 py-2">
                                        <span class="badge {{ $master->activeYN === 'Y' ? 'badge-success' : 'badge-secondary' }}"
                                            style="font-size:11px;padding:3px 8px;border-radius:20px;">
                                            {{ $master->activeYN === 'Y' ? 'Active' : 'Inactive' }}
                                        </span>
                                    </td>
                                    <td class="px-2 py-2">
                                        @foreach ($master->rules as $rule)
                                            <div class="rrm-rule-line">
                                                {{ rtrim(rtrim(number_format((float) $rule->occupancy_from, 2), '0'), '.') }}% –
                                                {{ rtrim(rtrim(number_format((float) $rule->occupancy_to, 2), '0'), '.') }}% :
                                                <strong>
                                                    {{ $rule->adjustment_type === 'FIXED'
                                                        ? '₹' . rtrim(rtrim(number_format((float) $rule->rate_adjustment, 2), '0'), '.')
                                                        : rtrim(rtrim(number_format((float) $rule->rate_adjustment, 2), '0'), '.') . '%' }}
                                                </strong>
                                                <span class="text-muted">
                                                    ({{ $rule->adjustment_type === 'FIXED' ? 'Fixed Amount' : 'Percentage' }})
                                                </span>
                                            </div>
                                        @endforeach
                                    </td>
                                    <td class="px-2 py-2">{{ $master->u_name }}</td>
                                    <td class="px-2 py-2" style="white-space:nowrap;">
                                        {{ $master->created_at ? \Carbon\Carbon::parse($master->created_at)->format('d M Y h:i A') : '—' }}
                                    </td>
                                    <td class="px-3 py-2 text-center" style="white-space:nowrap;">
                                        <form action="{{ route('raterulemastertoggle', [$master->rule_name, $master->from_date]) }}" method="POST"
                                            class="d-inline">
                                            @csrf
                                            <button type="submit" class="btn btn-sm btn-outline-primary"
                                                title="{{ $master->activeYN === 'Y' ? 'Deactivate' : 'Activate' }}">
                                                <i class="fa fa-power-off"></i>
                                            </button>
                                        </form>
                                        <form action="{{ route('raterulemasterdelete', [$master->rule_name, $master->from_date]) }}" method="POST"
                                            class="d-inline" onsubmit="return confirm('Delete this rate rule master?');">
                                            @csrf
                                            <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="9" class="text-center text-muted py-4">No rate rule master found</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>

<script>
(function () {
    var tbody = document.getElementById('ruleRows');
    var addBtn = document.getElementById('addRule');
    var form = document.getElementById('rrmForm');

    function rowHtml(values) {
        values = values || {};
        var occFrom = values.occ_from != null ? values.occ_from : '';
        var occTo = values.occ_to != null ? values.occ_to : '';
        var adjust = values.rate_adjustment != null ? values.rate_adjustment : '';
        var type = values.adjustment_type || 'PERCENT';

        return '<tr>' +
            '<td class="px-3 py-2 sno" style="font-weight:600;color:#374151;"></td>' +
            '<td class="px-2 py-2"><input type="number" class="form-control form-control-sm rule-from" step="0.01" min="0" max="100" placeholder="0" value="' + occFrom + '" required></td>' +
            '<td class="px-2 py-2"><input type="number" class="form-control form-control-sm rule-to" step="0.01" min="0" max="100" placeholder="100" value="' + occTo + '" required></td>' +
            '<td class="px-2 py-2"><input type="number" class="form-control form-control-sm rule-adjust" step="0.01" placeholder="0" value="' + adjust + '" required></td>' +
            '<td class="px-2 py-2">' +
                '<select class="form-control form-control-sm rule-type">' +
                    '<option value="PERCENT"' + (type === 'PERCENT' ? ' selected' : '') + '>Percentage (%)</option>' +
                    '<option value="FIXED"' + (type === 'FIXED' ? ' selected' : '') + '>Fixed Amount (₹)</option>' +
                '</select>' +
            '</td>' +
            '<td class="px-3 py-2 text-center">' +
                '<button type="button" class="btn btn-sm btn-outline-danger remove-row" title="Remove">' +
                    '<i class="fa fa-trash"></i>' +
                '</button>' +
            '</td>' +
        '</tr>';
    }

    function reindex() {
        var rows = tbody.querySelectorAll('tr');
        rows.forEach(function (row, i) {
            row.querySelector('.sno').textContent = i + 1;
            row.querySelector('.rule-from').name = 'rules[' + i + '][occ_from]';
            row.querySelector('.rule-to').name = 'rules[' + i + '][occ_to]';
            row.querySelector('.rule-adjust').name = 'rules[' + i + '][rate_adjustment]';
            row.querySelector('.rule-type').name = 'rules[' + i + '][adjustment_type]';
        });
    }

    function addRow(values) {
        tbody.insertAdjacentHTML('beforeend', rowHtml(values));
        reindex();
    }

    addBtn.addEventListener('click', function () {
        addRow();
    });

    tbody.addEventListener('click', function (e) {
        var btn = e.target.closest('.remove-row');
        if (!btn) return;
        btn.closest('tr').remove();
        reindex();
    });

    // Repopulate rows after a validation failure, otherwise start with one row.
    var oldRules = @json(old('rules', []));
    if (Array.isArray(oldRules) && oldRules.length) {
        oldRules.forEach(function (rule) { addRow(rule); });
    } else {
        addRow();
    }

    form.addEventListener('submit', function (e) {
        var rows = tbody.querySelectorAll('tr');
        if (!rows.length) {
            e.preventDefault();
            alert('Kam se kam ek rule range add karo.');
            return;
        }

        var invalid = null;
        rows.forEach(function (row) {
            var from = parseFloat(row.querySelector('.rule-from').value);
            var to = parseFloat(row.querySelector('.rule-to').value);

            if (isNaN(from) || isNaN(to) || from < 0 || to > 100) {
                invalid = 'Occupancy values 0 se 100 ke beech hone chahiye.';
            } else if (to <= from) {
                invalid = 'Occupancy To, Occupancy From se bada hona chahiye.';
            }
        });

        if (invalid) {
            e.preventDefault();
            alert(invalid);
        }
    });
})();
</script>

@endsection
