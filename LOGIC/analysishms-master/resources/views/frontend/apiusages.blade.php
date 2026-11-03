@extends('frontend.layouts.main')
@section('title', 'API Reference')
@section('main-container')

<style>
  .badge-method { font-size: 11px; font-weight: 500; padding: 3px 10px; border-radius: 6px; letter-spacing: .05em; text-transform: uppercase; background: #e6f1fb; color: #185fa5; }
  .endpoint-card { border: 1px solid rgba(0,0,0,.08); border-radius: 12px; overflow: hidden; }
  .endpoint-header { cursor: pointer; user-select: none; }
  .endpoint-header:hover { background-color: #f8f9fa; }
  .code-block { background: #f6f8fa; border: 1px solid rgba(0,0,0,.08); border-radius: 8px; padding: .65rem 1rem; font-family: 'Courier New', monospace; font-size: 12px; position: relative; overflow-x: auto; white-space: pre; }
  .copy-btn { position: absolute; top: 7px; right: 8px; font-size: 11px; padding: 2px 10px; border-radius: 5px; border: 1px solid #dee2e6; background: #fff; cursor: pointer; }
  .copy-btn:hover { background: #f1f3f5; }
  .param-table td { font-size: 13px; padding: 7px 0; border-bottom: 1px solid rgba(0,0,0,.06); vertical-align: top; }
  .param-table tr:last-child td { border-bottom: none; }
  .param-name { font-family: monospace; font-size: 12px; color: #185fa5; padding-right: 14px !important; white-space: nowrap; }
  .badge-required { font-size: 10px; background: #fcebeb; color: #a32d2d; border-radius: 4px; padding: 2px 6px; }
  .status-card { border-radius: 8px; background: #f6f8fa; padding: 10px 14px; }
  .section-label { font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: .07em; color: #6c757d; margin-bottom: 6px; margin-top: 14px; }
  .chevron { font-size: 11px; color: #adb5bd; transition: transform .2s; }
  .collapsed .chevron { transform: rotate(-90deg); }
</style>

<div class="container-lg py-4">

  {{-- Hero --}}
  <div class="card border rounded-3 mb-4 p-4">
    <h1 class="h4 fw-semibold mb-1">Analysis HMS — API reference</h1>
    <p class="text-muted small mb-0">Base URL: <code>http://analysishms.com/api/</code></p>

    <hr class="my-3">

    <div class="bg-light rounded-3 p-3 small mb-3">
      <strong>Authentication</strong><br>
      Every request requires an <code>api_key</code> in the URL path and a Bearer token in the header.<br>
      <code>Authorization: Bearer &lt;your_token&gt;</code>
    </div>

    <p class="section-label mb-2">Status codes</p>
    <div class="row g-2">
      @foreach([['200','Success','success'],['401','Unauthorized','warning'],['404','Not found','danger'],['500','Server error','danger']] as [$code,$label,$type])
      <div class="col-6 col-sm-3">
        <div class="status-card">
          <div class="fw-semibold" style="font-family:monospace;font-size:16px;">{{ $code }}</div>
          <div class="text-muted" style="font-size:11px;">{{ $label }}</div>
        </div>
      </div>
      @endforeach
    </div>
  </div>

  {{-- Endpoints --}}
  @php
  $endpoints = [
    ['id'=>'ep1','title'=>'Get company info','url'=>'http://analysishms.com/api/companyinfo/{api_key}','desc'=>'Retrieve general company information associated with the authenticated account.'],
    ['id'=>'ep2','title'=>'Get inhouse booked rooms','url'=>'http://analysishms.com/api/bookedrooms/{api_key}','desc'=>'Returns a list of all rooms currently booked and in-house.'],
    ['id'=>'ep3','title'=>'Get inhouse reserved rooms','url'=>'http://analysishms.com/api/reservedrooms/{api_key}','desc'=>'Returns a list of all rooms that are reserved and in-house.'],
  ];
  @endphp

  <div class="d-flex flex-column gap-3">
    @foreach($endpoints as $ep)
    <div class="endpoint-card card border-0 shadow-sm">
      <div class="endpoint-header card-header bg-white d-flex align-items-center gap-2 flex-wrap py-3 px-4 collapsed"
           data-bs-toggle="collapse" data-bs-target="#body-{{ $ep['id'] }}">
        <span class="badge-method">GET</span>
        <span class="fw-medium flex-grow-1" style="font-size:14px;">{{ $ep['title'] }}</span>
        <span class="chevron">▼</span>
      </div>
      <div class="collapse" id="body-{{ $ep['id'] }}">
        <div class="card-body px-4 pb-4">
          <p class="text-muted small">{{ $ep['desc'] }}</p>

          <p class="section-label">Endpoint</p>
          <div class="code-block mb-3" id="{{ $ep['id'] }}">{{ $ep['url'] }}
            <button class="copy-btn" onclick="copyCode('{{ $ep['id'] }}', this)">Copy</button>
          </div>

          <p class="section-label">Parameters</p>
          <div class="border rounded-3 px-3 mb-3">
            <table class="param-table w-100">
              <tr>
                <td class="param-name">api_key</td>
                <td class="text-muted">Unique API key passed in the URL path.</td>
                <td class="text-end"><span class="badge-required">required</span></td>
              </tr>
              <tr>
                <td class="param-name">Authorization</td>
                <td class="text-muted">Bearer token in the request header.</td>
                <td class="text-end"><span class="badge-required">required</span></td>
              </tr>
            </table>
          </div>

          <p class="section-label">Response</p>
          <div class="code-block mb-2">{ "status": true, "message": "...", "data": { ... } }
            <button class="copy-btn" onclick="copyText('{ &quot;status&quot;: true, &quot;message&quot;: &quot;...&quot;, &quot;data&quot;: {} }', this)">Copy</button>
          </div>
          <div class="code-block" style="color:#a32d2d;">{ "status": false, "message": "Unauthorized" }
            <button class="copy-btn" onclick="copyText('{ &quot;status&quot;: false, &quot;message&quot;: &quot;Unauthorized&quot; }', this)">Copy</button>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>

<script>
function copyCode(id, btn) {
  const text = document.getElementById(id).innerText.replace('Copy', '').trim();
  navigator.clipboard.writeText(text).then(() => { btn.textContent = 'Copied!'; setTimeout(() => btn.textContent = 'Copy', 1500); });
}
function copyText(text, btn) {
  navigator.clipboard.writeText(text).then(() => { btn.textContent = 'Copied!'; setTimeout(() => btn.textContent = 'Copy', 1500); });
}
document.querySelectorAll('[data-bs-toggle="collapse"]').forEach(el => {
  el.addEventListener('click', () => el.classList.toggle('collapsed'));
});
</script>
@endsection