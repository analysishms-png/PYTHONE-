@extends('tools.layouts.main')

@section('main-container')
<div class="content-body">
<div class="container-fluid">

    <div class="card shadow-sm">

        <!-- Header -->
        <div class="card-header d-flex flex-column flex-md-row justify-content-between align-items-md-center gap-2">
            <h2 class="mx-auto fw-bold">Meta Tags Management</h2>

            <button class="btn btn-primary w-20 w-md-auto" onclick="openAddMetaModal()">
                <i class="fas fa-plus"></i> Add New Meta
            </button>
        </div>

        <!-- Table -->
        <div class="card-body px-5">

            <div class="table-responsive">

                <table class="table table-hover table-bordered mb-0" id="metaTable">

                    <thead class="table-dark text-nowrap">
                        <tr>
                            <th>Page</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Keywords</th>
                            <th>Date</th>
                            <th style="min-width:140px">Actions</th>
                        </tr>
                    </thead>

                    <tbody>

                        @forelse($metas as $meta)

                        <tr>
                            <td>
                                <span class="badge bg-info">
                                    {{ $meta->page_name }}
                                </span>
                            </td>

                            <td>{{ Str::limit($meta->title, 40) }}</td>
                            <td>{{ Str::limit($meta->description, 40) }}</td>
                            <td>{{ Str::limit($meta->keywords, 40) }}</td>
                            <td class="text-nowrap">
                                {{ $meta->created_at->format('d-m-Y H:i') }}
                            </td>

                            <td>

                                <div class="d-flex flex-column flex-sm-row gap-1">

                                    <button class="btn btn-sm btn-warning w-100 mx-2"
                                            onclick="openEditMetaModal({{ $meta->id }})">
                                        <i class="fas fa-edit"></i>
                                    </button>

                                    <button class="btn btn-sm btn-danger w-100 px-2"
                                            onclick="deleteMetaTag({{ $meta->id }})">
                                        <i class="fas fa-trash"></i>
                                    </button>

                                </div>

                            </td>
                        </tr>

                        @empty

                        <tr>
                            <td colspan="6" class="text-center text-muted py-4">
                                No meta tags found
                            </td>
                        </tr>

                        @endforelse

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>
</div>

<!-- Responsive Modal -->
<div class="modal fade" id="metaModal" tabindex="-1">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">

            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">Meta Tag</h5>
                <button class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">

                <form id="metaForm">
                    @csrf
                    <input type="hidden" id="metaId" name="id">

                    <div class="row g-3">

                        <div class="col-md-6 col-12">
                            <label class="form-label">Page Name *</label>
                            <input class="form-control" name="page_name" required>
                        </div>

                        <div class="col-md-6 col-12">
                            <label class="form-label">Meta Title</label>
                            <input class="form-control" name="title">
                        </div>

                        <div class="col-12">
                            <label class="form-label">Description</label>
                            <textarea class="form-control" name="description" rows="3"></textarea>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Keywords</label>
                            <textarea class="form-control" name="keywords" rows="2"></textarea>
                        </div>

                    </div>

                </form>

            </div>

            <div class="modal-footer flex-column flex-sm-row gap-2">
                <button class="btn btn-secondary w-100" data-bs-dismiss="modal">
                    Cancel
                </button>

                <button class="btn btn-primary w-100" onclick="submitMetaForm()">
                    Save Meta
                </button>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
function openAddMetaModal() {
    window.location.href = "{{ route('meta.create') }}";
}

function openEditMetaModal(id) {
    window.location.href = "{{ route('meta.edit') }}/" + id;
}

function deleteMetaTag(id) {
    Swal.fire({
        title: 'Delete meta?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#dc3545',
        confirmButtonText: 'Delete'
    }).then(result => {
        if (result.isConfirmed) {
            window.location.href = "{{ route('meta.destroy') }}/" + id;
        }
    });
}
</script>

@endsection
