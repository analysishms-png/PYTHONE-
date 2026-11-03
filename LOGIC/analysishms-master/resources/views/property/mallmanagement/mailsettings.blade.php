@extends('property.layouts.main')
@section('main-container')

<div class="content-body">
    <div class="container-fluid">

        {{-- Page Header --}}
        <div class="row mb-2">
            <div class="col-12">
                <div class="d-flex align-items-center justify-content-between flex-wrap">
                    <div>
                        <h4 class="font-weight-bold mb-0">Mail Settings</h4>
                        <small class="text-muted">
                            Mall Management &rsaquo; Service Bill &rsaquo; Mail Settings
                        </small>
                    </div>
                    <div class="d-flex align-items-center flex-wrap" style="gap:6px;">
                        <span class="badge badge-light border px-3 py-2" style="font-size:12px;">
                            Property ID : <strong>{{ $propertyid }}</strong>
                        </span>
                        <span class="badge badge-light border px-3 py-2" style="font-size:12px;">
                            Status : <strong id="status_badge">{{ !empty($setting) ? ($setting->activeyn ? 'ENABLED' : 'DISABLED') : 'NOT CONFIGURED' }}</strong>
                        </span>
                        <button type="button" class="btn btn-sm btn-primary" id="submitbtn" onclick="saveMailSettings()">
                            <i class="fa fa-save"></i> Save
                        </button>
                        <button type="button" class="btn btn-sm btn-light border" onclick="sendTestMail()">
                            <i class="fa fa-paper-plane"></i> Send Test Email
                        </button>
                        <a href="{{ route('servicebillentry') }}" class="btn btn-sm btn-info">
                            <i class="fa fa-arrow-left"></i> Back to Service Bill Entry
                        </a>
                    </div>
                </div>
            </div>
        </div>

        {{-- First-run helpful banner --}}
        <div class="alert alert-info py-2 px-3 mb-3" style="font-size:12px;">
            <i class="fa fa-info-circle"></i>
            <strong>To send bills from your company email:</strong>
            fill in your SMTP/email details here (bills will be emailed to your tenants
            from your own email - not from our vendor email). If you use Gmail, Outlook or Yahoo, you need an
            <strong>App Password</strong> (enable 2-Step Verification first).
            <a href="#appPasswordGuide" class="font-weight-bold">Follow the step-by-step guide in Section 3 below</a>.
            Save the details, then confirm with <em>Send Test Email</em>.
        </div>

        <form id="mailsettingsform" enctype="multipart/form-data">
            @csrf

            {{-- ===== SMTP Server ===== --}}
            <div class="row">
                <div class="col-lg-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">1. SMTP Server</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Email Provider</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" id="provider" onchange="applyProvider()">
                                        <option value="gmail" {{ $provider == 'gmail' ? 'selected' : '' }}>Gmail</option>
                                        <option value="outlook" {{ $provider == 'outlook' ? 'selected' : '' }}>Outlook / Hotmail</option>
                                        <option value="yahoo" {{ $provider == 'yahoo' ? 'selected' : '' }}>Yahoo Mail</option>
                                        <option value="zoho" {{ $provider == 'zoho' ? 'selected' : '' }}>Zoho Mail</option>
                                        <option value="custom" {{ $provider == 'custom' ? 'selected' : '' }}>My Domain / Company email (Custom)</option>
                                    </select>
                                    <small class="form-text text-muted">Choose the email you want to send bills from - the other settings will fill in automatically.</small>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">SMTP Host</label>
                                <div class="col-7">
                                    <input type="text" class="form-control form-control-sm" name="host"
                                           value="{{ old('host', $setting->host ?? '') }}" placeholder="e.g. smtp.gmail.com">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">SMTP Port</label>
                                <div class="col-7">
                                    <input type="number" class="form-control form-control-sm" name="port"
                                           value="{{ old('port', $setting->port ?? 587) }}" placeholder="587">
                                    <small class="form-text text-muted">587 (TLS) / 465 (SSL)</small>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Encryption</label>
                                <div class="col-7">
                                    <select class="form-control form-control-sm" name="encryption">
                                        <option value="tls" {{ isset($setting->encryption) && $setting->encryption == 'tls' ? 'selected' : '' }}>TLS</option>
                                        <option value="ssl" {{ isset($setting->encryption) && $setting->encryption == 'ssl' ? 'selected' : '' }}>SSL</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                {{-- ===== Login Credentials ===== --}}
                <div class="col-lg-6 col-12 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-header py-2 bg-secondary text-white">
                            <strong style="font-size:12px;">2. Login Credentials</strong>
                        </div>
                        <div class="card-body py-2 px-3">

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Username (Email)</label>
                                <div class="col-7">
                                    <input type="email" class="form-control form-control-sm" name="username"
                                           value="{{ old('username', $setting->username ?? '') }}" placeholder="accounts@property.com">
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">App Password</label>
                                <div class="col-7">
                                    <input type="password" class="form-control form-control-sm" name="password" placeholder="••••••••" autocomplete="new-password">
                                    <small class="form-text text-muted">Gmail: enable 2-Step Verification, then create an App Password. Leave blank to keep the existing password.</small>
                                </div>
                            </div>

                            <div class="form-group row mb-2">
                                <label class="col-5 col-form-label col-form-label-sm text-muted">Signature (Image)</label>
                                <div class="col-7">
                                    <input type="file" class="form-control-file" id="signature_file"
                                           name="signature_file" accept="image/png,image/jpeg,image/webp">
                                    <small class="form-text text-muted">PNG / JPG / WebP; max 2 MB. This picture is shown at the bottom of the bill email.</small>
                                    @if(!empty($setting->signature))
                                        <div class="mt-1">
                                            <img src="{{ asset('storage/' . $setting->signature) }}"
                                                 alt="Signature" style="max-height:60px;border:1px solid #ddd;border-radius:4px;padding:2px;">
                                            <a href="javascript:void(0)" class="text-danger ml-2" style="font-size:11px;" onclick="removeSignature()">
                                                <i class="fa fa-times"></i> Remove
                                            </a>
                                            <input type="hidden" name="remove_signature" id="remove_signature" value="0">
                                        </div>
                                    @endif
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

           
            {{-- ===== Section 3 : How to get an App Password (step-by-step guide) ===== --}}
            <div class="row" id="appPasswordGuide">
                <div class="col-12 mb-3">
                    <div class="card shadow-sm">
                        <div class="card-header py-2 bg-secondary text-white d-flex justify-content-between align-items-center flex-wrap">
                            <strong style="font-size:12px;">3. How to get an App Password (Step-by-Step)</strong>
                            <small style="font-size:11px;opacity:.85;">
                                Required for Gmail, Outlook &amp; Yahoo &mdash; a normal email password will not work.
                            </small>
                        </div>
                        <div class="card-body py-2 px-3">

                            <ul class="nav nav-tabs mb-3" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="javascript:void(0)" data-guide="gmail">
                                        <i class="fab fa-google"></i> Gmail
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)" data-guide="outlook">
                                        <i class="fab fa-microsoft"></i> Outlook / Hotmail
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)" data-guide="others">
                                        <i class="fas fa-envelope"></i> Yahoo / Others
                                    </a>
                                </li>
                            </ul>

                            {{-- Gmail guide --}}
                            <div class="guide-pane" data-guide="gmail">
                                <ol class="pl-3 mb-2" style="font-size:12px;">
                                    <li class="mb-1">
                                        Sign in to the Gmail account you want to send bills from.
                                        <a href="https://myaccount.google.com" target="_blank" rel="noopener noreferrer">
                                            Open Google Account <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        Go to <strong>Security</strong> and turn ON <strong>2-Step Verification</strong>
                                        (verify your phone with the OTP).
                                        <a href="https://myaccount.google.com/signinoptions/two-step-verification" target="_blank" rel="noopener noreferrer">
                                            Open 2-Step Verification <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        After 2-Step Verification is ON, open <strong>App passwords</strong>.
                                        <a href="https://myaccount.google.com/apppasswords" target="_blank" rel="noopener noreferrer">
                                            Create App Password <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        Type any name (e.g. <em>Billing</em>) and click <strong>Create</strong>.
                                        Google shows a <strong>16-character</strong> password.
                                    </li>
                                    <li class="mb-1">
                                        Copy it <strong>without spaces</strong> and paste it in the
                                        <strong>App Password</strong> field in Section 2 above.
                                    </li>
                                </ol>
                            </div>

                            {{-- Outlook guide --}}
                            <div class="guide-pane" data-guide="outlook" style="display:none;">
                                <ol class="pl-3 mb-2" style="font-size:12px;">
                                    <li class="mb-1">
                                        Sign in to your Microsoft account.
                                        <a href="https://account.microsoft.com/security" target="_blank" rel="noopener noreferrer">
                                            Open Microsoft Security <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        Open <strong>Advanced security options</strong> and turn ON
                                        <strong>Two-step verification</strong>.
                                        <a href="https://account.microsoft.com/security" target="_blank" rel="noopener noreferrer">
                                            Open Advanced Security <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        Under <strong>App passwords</strong>, create a new app password (if available).
                                    </li>
                                    <li class="mb-1">
                                        Copy it and paste it in the <strong>App Password</strong> field in Section 2 above.
                                    </li>
                                </ol>
                                <div class="alert alert-warning py-2 px-3 mb-0" style="font-size:11px;">
                                    <i class="fa fa-exclamation-triangle"></i>
                                    For <strong>Office 365 / Microsoft 365</strong> work accounts, basic SMTP may be
                                    disabled by your admin. In that case use your <strong>company domain</strong> mailbox
                                    with the "Custom" provider in Section 1, or ask your IT admin.
                                </div>
                            </div>

                            {{-- Yahoo / Others guide --}}
                            <div class="guide-pane" data-guide="others" style="display:none;">
                                <h6 class="mb-1" style="font-size:12px;"><strong>Yahoo Mail</strong></h6>
                                <ol class="pl-3 mb-2" style="font-size:12px;">
                                    <li class="mb-1">
                                        Sign in and open <strong>Account Security</strong>.
                                        <a href="https://login.yahoo.com/account/security" target="_blank" rel="noopener noreferrer">
                                            Open Yahoo Account Security <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">Turn ON <strong>Two-step verification</strong>.</li>
                                    <li class="mb-1">
                                        Click <strong>Generate app password</strong>, copy it and paste it in the
                                        <strong>App Password</strong> field in Section 2 above.
                                    </li>
                                </ol>

                                <h6 class="mb-1" style="font-size:12px;"><strong>Zoho Mail</strong></h6>
                                <ol class="pl-3 mb-2" style="font-size:12px;">
                                    <li class="mb-1">
                                        Open <strong>Security &rsaquo; App Passwords</strong>.
                                        <a href="https://accounts.zoho.com/home#security/app_password" target="_blank" rel="noopener noreferrer">
                                            Open Zoho App Passwords <i class="fas fa-external-link-alt" style="font-size:10px;"></i>
                                        </a>
                                    </li>
                                    <li class="mb-1">
                                        Generate a password and paste it in the <strong>App Password</strong> field in Section 2 above.
                                    </li>
                                </ol>

                                <h6 class="mb-1" style="font-size:12px;"><strong>Your own domain (cPanel / Office365 / Custom)</strong></h6>
                                <ol class="pl-3 mb-0" style="font-size:12px;">
                                    <li class="mb-1">Choose <strong>Custom</strong> in Section 1 and enter your hosting SMTP host/port.</li>
                                    <li class="mb-1">Use your <strong>normal email password</strong> &mdash; an App Password is usually not required.</li>
                                </ol>
                            </div>

                            <div class="alert alert-info py-2 px-3 mt-3 mb-0" style="font-size:11px;">
                                <i class="fa fa-lightbulb"></i>
                                <strong>Finish:</strong> paste the App Password in Section 2, click <strong>Save</strong>,
                                then click <strong>Send Test Email</strong> to confirm everything works.
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            {{-- Footer Audit --}}
            <div class="row">
                <div class="col-12">
                    <div class="d-flex justify-content-between text-muted" style="font-size:11px;">
                        <span>Last Saved By: <strong>{{ $username }}</strong></span>
                        <span>{{ now()->format('d/m/Y H:i') }}</span>
                    </div>
                </div>
            </div>

        </form>

    </div>
</div>

{{-- ============ JAVASCRIPT ============ --}}
<script>
var PROVIDERS = {
    gmail:   { host: 'smtp.gmail.com',        port: 587, enc: 'tls' },
    outlook: { host: 'smtp-mail.outlook.com', port: 587, enc: 'tls' },
    yahoo:   { host: 'smtp.mail.yahoo.com',   port: 465, enc: 'ssl' },
    zoho:    { host: 'smtp.zoho.com',         port: 587, enc: 'tls' },
    custom:  { host: '',                      port: 587, enc: 'tls' }
};

function applyProvider(skipFill) {
    var p = $('#provider').val();
    var cfg = PROVIDERS[p] || PROVIDERS.custom;
    if (!skipFill) {
        $('input[name="host"]').val(cfg.host);
        $('input[name="port"]').val(cfg.port);
        $('select[name="encryption"]').val(cfg.enc);
    }

    var isCustom = (p === 'custom');
    $('input[name="host"], input[name="port"]').prop('readonly', !isCustom);
    if (isCustom) { $('input[name="host"]').prop('placeholder', 'e.g. smtp.aapkacompany.com'); }

    // Keep Section 3 guide in sync with the chosen provider
    var guideMap = { gmail: 'gmail', outlook: 'outlook', yahoo: 'others', zoho: 'others', custom: 'others' };
    showGuide(guideMap[p] || 'gmail');
}

function showGuide(name) {
    $('.guide-pane').hide();
    $('.guide-pane[data-guide="' + name + '"]').show();
    $('.nav-link[data-guide]').removeClass('active');
    $('.nav-link[data-guide="' + name + '"]').addClass('active');
}

$(document).on('click', '.nav-link[data-guide]', function () {
    showGuide($(this).data('guide'));
});

@if(!empty($setting->host))
    applyProvider(true);
@else
    applyProvider();
@endif

function saveMailSettings(afterSave) {
    $('#submitbtn').prop('disabled', true);

    var formData = new FormData(document.getElementById('mailsettingsform'));

    $.ajax({
        url: '{{ route("mailsettings.save") }}',
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function (res) {
            $('#submitbtn').prop('disabled', false);
            if (res.success) {
                $('#status_badge').text('ENABLED').removeClass().addClass('badge border px-3 py-2').addClass('badge-success');
                if (res.signature_path) {
                    // Update preview image if uploaded
                    var previewHtml = '<div class="mt-1"><img src="{{ asset("storage") }}/' + res.signature_path + '" alt="Signature" style="max-height:60px;border:1px solid #ddd;border-radius:4px;padding:2px;"><a href="javascript:void(0)" class="text-danger ml-2" style="font-size:11px;" onclick="removeSignature()"><i class="fa fa-times"></i> Remove</a><input type="hidden" name="remove_signature" id="remove_signature" value="0"></div>';
                    $('#signature_file').closest('.col-7').find('.mt-1').remove();
                    $('#signature_file').after(previewHtml);
                }
                if (afterSave) {
                    afterSave();
                } else {
                    Swal.fire({ icon: 'success', title: 'Saved!', text: res.message, timer: 1500, showConfirmButton: false });
                }
            } else {
                Swal.fire('Error', res.message, 'error');
            }
        },
        error: function (xhr) {
            $('#submitbtn').prop('disabled', false);
            let msg = 'Something went wrong. Please try again.';
            if (xhr.responseJSON && xhr.responseJSON.message) {
                msg = xhr.responseJSON.message;
            } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
            }
            Swal.fire('Error', msg, 'error');
        }
    });
}

function sendTestMail() {
    // Save first; the test runs only after save succeeds
    // (so the new password is saved before the test uses it).
    const to = prompt('Where should the test email be sent?', '{{ $setting->username ?? "you@example.com" }}');
    if (!to) { return; }

    saveMailSettings(function () {
        Swal.fire({ icon: 'info', title: 'Sending test email...', text: to, showConfirmButton: false, allowOutsideClick: false });
        $.ajax({
            url: '{{ route("mailsettings.test") }}',
            type: 'POST',
            data: { _token: '{{ csrf_token() }}', email: to },
            success: function (res) {
                if (res.success) {
                    Swal.fire({ icon: 'success', title: 'Test Email Sent!', text: res.message, timer: 2000, showConfirmButton: false });
                } else {
                    Swal.fire('Error', res.message, 'error');
                }
            },
            error: function (xhr) {
                let msg = 'Test failed.';
                if (xhr.responseJSON && xhr.responseJSON.message) { msg = xhr.responseJSON.message; }
                Swal.fire('Error', msg, 'error');
            }
        });
    });
}
function removeSignature() {
    $('#remove_signature').val('1');
    $('#signature_file').closest('.col-7').find('.mt-1').hide();
}
</script>

@endsection