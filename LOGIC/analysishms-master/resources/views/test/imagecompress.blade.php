<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload Test</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
{{-- test --}}
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header">
                    Image Upload Test
                </div>

                <div class="card-body">

                    @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul class="mb-0">
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form action="{{ route('test.image.upload') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3">
                            <label for="image" class="form-label">
                                Select Image
                            </label>

                            <input
                                type="file"
                                name="image"
                                id="image"
                                class="form-control"
                                accept=".jpg,.jpeg,.png,.webp,.gif"
                                required
                            >

                            <small class="text-muted">
                                Allowed: JPG, JPEG, PNG, WEBP, GIF
                            </small>
                        </div>

                        <button type="submit" class="btn btn-primary">
                            Upload Image
                        </button>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>