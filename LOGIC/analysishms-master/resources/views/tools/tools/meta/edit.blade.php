@extends('tools.layouts.main')

@section('main-container')

<div class="container-fluid py-5">
    <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-9 col-md-11">

            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white text-center">
                    <h5 class="mb-0">
                        {{ $meta ? 'Edit Meta Tags' : 'Add New Meta Tags' }}
                    </h5>
                </div>

                <div class="card-body">

                    <form id="metaForm">
                        @csrf
                        <input type="hidden" id="metaId" name="id" value="{{ $meta->id ?? '' }}">

                        <!-- Page Name -->
                        <div class="mb-3">
                            <label class="form-label">Page Name *</label>
                            <input type="text" class="form-control"
                                   name="page_name"
                                   value="{{ $meta->page_name ?? '' }}"
                                   placeholder="about, home, contact"
                                   required>
                            <small class="text-muted">Example: about, home, contact</small>
                        </div>

                        <!-- Basic Meta -->
                        <div class="row g-3">

                            <div class="col-md-6 col-12">
                                <label class="form-label">Meta Title</label>
                                <input type="text" class="form-control"
                                       name="title"
                                       value="{{ $meta->title ?? '' }}">
                            </div>

                            <div class="col-md-6 col-12">
                                <label class="form-label">Author</label>
                                <input type="text" class="form-control"
                                       name="author"
                                       value="{{ $meta->author ?? '' }}">
                            </div>

                            <div class="col-12">
                                <label class="form-label">Meta Description</label>
                                <textarea class="form-control"
                                          name="description"
                                          rows="3">{{ $meta->description ?? '' }}</textarea>
                            </div>

                            <div class="col-12">
                                <label class="form-label">Keywords</label>
                                <textarea class="form-control"
                                          name="keywords"
                                          rows="2">{{ $meta->keywords ?? '' }}</textarea>
                            </div>

                            <div class="col-md-6 col-12">
                                <label class="form-label">Robots</label>
                                <input type="text" class="form-control"
                                       name="robots"
                                       value="{{ $meta->robots ?? 'index, follow' }}">
                            </div>

                            <div class="col-md-6 col-12">
                                <label class="form-label">Canonical URL</label>
                                <input type="url" class="form-control"
                                       name="canonical_url"
                                       value="{{ $meta->canonical_url ?? '' }}">
                            </div>

                            <div class="col-12">
                                <label class="form-label">Theme Color</label>
                                <input type="text" class="form-control"
                                       name="theme_color"
                                       value="{{ $meta->theme_color ?? '' }}">
                            </div>

                        </div>

                        <hr>

                        <h6 class="fw-bold mb-3">OpenGraph Tags</h6>

                        <div class="row g-3">

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="OG Type"
                                       name="og_type"
                                       value="{{ $meta->og_type ?? '' }}">
                            </div>

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="OG Locale"
                                       name="og_locale"
                                       value="{{ $meta->og_locale ?? '' }}">
                            </div>

                            <div class="col-12">
                                <input class="form-control" placeholder="OG Title"
                                       name="og_title"
                                       value="{{ $meta->og_title ?? '' }}">
                            </div>

                            <div class="col-12">
                                <textarea class="form-control"
                                          placeholder="OG Description"
                                          name="og_description"
                                          rows="2">{{ $meta->og_description ?? '' }}</textarea>
                            </div>

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="OG URL"
                                       name="og_url"
                                       value="{{ $meta->og_url ?? '' }}">
                            </div>

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="OG Site Name"
                                       name="og_site_name"
                                       value="{{ $meta->og_site_name ?? '' }}">
                            </div>

                            <div class="col-12">
                                <input class="form-control" placeholder="OG Image URL"
                                       name="og_image"
                                       value="{{ $meta->og_image ?? '' }}">
                            </div>

                        </div>

                        <hr>

                        <h6 class="fw-bold mb-3">Twitter Tags</h6>

                        <div class="row g-3">

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="Twitter Card"
                                       name="twitter_card"
                                       value="{{ $meta->twitter_card ?? '' }}">
                            </div>

                            <div class="col-md-6 col-12">
                                <input class="form-control" placeholder="Twitter Site"
                                       name="twitter_site"
                                       value="{{ $meta->twitter_site ?? '' }}">
                            </div>

                            <div class="col-12">
                                <input class="form-control" placeholder="Twitter Title"
                                       name="twitter_title"
                                       value="{{ $meta->twitter_title ?? '' }}">
                            </div>

                            <div class="col-12">
                                <textarea class="form-control"
                                          placeholder="Twitter Description"
                                          name="twitter_description"
                                          rows="2">{{ $meta->twitter_description ?? '' }}</textarea>
                            </div>

                            <div class="col-12">
                                <input class="form-control" placeholder="Twitter Image URL"
                                       name="twitter_image"
                                       value="{{ $meta->twitter_image ?? '' }}">
                            </div>

                        </div>

                    </form>

                </div>

                <div class="card-footer d-flex flex-column flex-md-row gap-2">
                    <button class="btn btn-secondary w-100 w-md-auto"
                            onclick="window.location.href='{{ route('meta.index') }}'">
                        Cancel
                    </button>

                    <button class="btn btn-primary w-100 w-md-auto ms-md-auto"
                            id="submitBtn"
                            onclick="submitMetaForm()">
                        Save Meta Tags
                    </button>
                </div>

            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
function submitMetaForm() {
    const form = document.getElementById('metaForm');
    const formData = new FormData(form);
    const btn = document.getElementById('submitBtn');
    const original = btn.innerHTML;

    btn.disabled = true;
    btn.innerHTML = "Saving...";

    $.ajax({
        url: '{{ route("meta.store") }}',
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function(res) {
            Swal.fire("Success!", res.message, "success")
            .then(() => window.location.href = '{{ route('meta.index') }}');
        },
        error: function(xhr) {
            Swal.fire("Error!", "Something went wrong", "error");
        },
        complete: function() {
            btn.disabled = false;
            btn.innerHTML = original;
        }
    });
}
</script>

@endsection
