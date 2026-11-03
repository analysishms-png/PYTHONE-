@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="icon-speedometer menu-icon"></i> Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('superadmin.my-pages') }}">My Pages</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Edit Page</a></li>
                </ol>
            </div>
        </div>

        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('superadmin.pages.update', $page->id) }}" method="POST">
                        @csrf
                        @method('PUT')

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Page Name</label>
                                    <input type="text" name="name" id="name" class="form-control" value="{{ old('name', $page->name) }}" required>
                                    @error('name')<span class="text-danger">{{ $message }}</span>@enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="slug">Slug</label>
                                    <input type="text" name="slug" id="slug" class="form-control" value="{{ old('slug', $page->slug) }}" required>
                                    @error('slug')<span class="text-danger">{{ $message }}</span>@enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="title">Title</label>
                                    <input type="text" name="title" id="title" class="form-control" value="{{ old('title', $page->title) }}">
                                    @error('title')<span class="text-danger">{{ $message }}</span>@enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="active" {{ old('status', $page->status) == 'active' ? 'selected' : '' }}>Active</option>
                                        <option value="inactive" {{ old('status', $page->status) == 'inactive' ? 'selected' : '' }}>Inactive</option>
                                    </select>
                                    @error('status')<span class="text-danger">{{ $message }}</span>@enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" id="description" class="form-control" placeholder="Enter page description or content">{{ old('description', $page->description) }}</textarea>
                            @error('description')<span class="text-danger">{{ $message }}</span>@enderror
                        </div>

                        <div class="form-group mt-3">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-floppy-disk"></i> Update</button>
                            <a href="{{ route('superadmin.my-pages') }}" class="btn btn-secondary">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

<script src="https://cdn.ckeditor.com/ckeditor5/39.0.0/classic/ckeditor.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        ClassicEditor
            .create(document.querySelector('#description'), {
                toolbar: [
                    'heading', '|',
                    'bold', 'italic', 'link',
                    'bulletedList', 'numberedList',
                    'alignment',
                    'imageUpload', 'mediaEmbed',
                    '|',
                    'blockQuote',
                    'undo', 'redo'
                ],
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3' }
                    ]
                },
                alignment: {
                    options: ['left', 'center', 'right', 'justify']
                }
            })
            .catch(error => console.error(error));
        const nameInput = document.getElementById('name');
        const slugInput = document.getElementById('slug');

        if (!nameInput || !slugInput) {
            console.error('name or slug input not found');
            return;
        }

        let manuallyEdited = false;

        function generateSlug(text) {
            return text
                .toLowerCase()
                .trim()
                .replace(/\s+/g, '-')
                .replace(/[^\w\-]+/g, '')
                .replace(/\-\-+/g, '-')
                .replace(/^\-+|\-+$/g, '');
        }

        // Generate slug when name is typed
        nameInput.addEventListener('keyup', function() {
            if (!manuallyEdited) {
                slugInput.value = generateSlug(this.value);
            }
        });

        // Track if user manually edits slug
        slugInput.addEventListener('input', function() {
            manuallyEdited = true;
        });
    });
</script>
