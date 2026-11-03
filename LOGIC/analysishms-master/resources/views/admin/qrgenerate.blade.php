@extends('admin.layouts.main')
@section('main-container')
    <div class="content-body">
        <div class="container-fluid qr-container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col-sm-10">
                    <div class="card qr-card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="card-title mb-0 text-white">
                                <i class="fas fa-qrcode me-2"></i>QR Code Generator
                            </h4>
                        </div>
                        <div class="card-body p-4">
                            <form id="qrForm" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group mb-3">
                                    <label for="fileUpload" class="form-label">Select File</label>
                                    <input type="file" class="form-control" id="fileUpload" name="file" required
                                        accept=".pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.txt,.jpg,.jpeg,.png,.gif,.zip,.rar">
                                    <small class="form-text text-muted">Supported formats: PDF, DOC, XLS, PPT, TXT, Images, ZIP (Max: 10MB)</small>
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary btn-lg" id="submitBtn">
                                        <i class="fas fa-qrcode me-2"></i>
                                        <span id="btnText">Generate QR Code</span>
                                        <span id="loadingSpinner" class="spinner-border spinner-border-sm d-none ms-2"></span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#fileUpload').on('change', function() {
                const file = this.files[0];
                if (file) {
                    const fileSize = (file.size / 1024 / 1024).toFixed(2);
                    if (fileSize > 100) {
                        Swal.fire({
                            icon: 'error',
                            title: 'File Too Large!',
                            text: `File size is ${fileSize}MB. Maximum allowed size is 10MB.`,
                        });
                        this.value = '';
                        return;
                    }

                    const fileName = file.name;
                    const fileType = file.type;
                    console.log(`Selected: ${fileName} (${fileSize}MB)`);
                }
            });

            $('#qrForm').on('submit', function(e) {
                e.preventDefault();

                const fileInput = $('#fileUpload')[0];
                if (!fileInput.files.length) {
                    Swal.fire({
                        icon: 'warning',
                        title: 'No File Selected!',
                        text: 'Please select a file first.',
                    });
                    return;
                }

                const formData = new FormData(this);
                const submitBtn = $('#submitBtn');
                const btnText = $('#btnText');
                const loadingSpinner = $('#loadingSpinner');

                submitBtn.prop('disabled', true);
                btnText.text('Processing...');
                loadingSpinner.removeClass('d-none');

                $.ajax({
                    url: '{{ url('superadmin/qrgenerate') }}',
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        if (response.success) {
                            const link = document.createElement('a');
                            link.href = response.qr_path;
                            link.download = response.filename;
                            document.body.appendChild(link);
                            link.click();
                            document.body.removeChild(link);

                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                html: `<p>QR code generated successfully!</p>
                                       <p><small>File URL: <a href="${response.file_url}" target="_blank">${response.file_url}</a></small></p>`,
                                timer: 3000,
                                showConfirmButton: true
                            });

                            $('#qrForm')[0].reset();
                        }
                    },
                    error: function(xhr) {
                        let errorMsg = 'Something went wrong!';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMsg = xhr.responseJSON.message;
                        } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                            errorMsg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: errorMsg,
                        });
                    },
                    complete: function() {
                        submitBtn.prop('disabled', false);
                        btnText.text('Generate QR Code');
                        loadingSpinner.addClass('d-none');
                    }
                });
            });
        });
    </script>
@endsection
