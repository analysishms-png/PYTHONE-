<style>
    .popup-guide {
        position: fixed;
        top: 20px;
        right: 100px;
        text-align: center;
        z-index: 1000;
    }

    .arrow-up {
        color: #007bff;
        animation: bounce 2s infinite;
    }

    @keyframes bounce {

        0%,
        20%,
        50%,
        80%,
        100% {
            transform: translateY(0);
        }

        40% {
            transform: translateY(-20px);
        }

        60% {
            transform: translateY(-10px);
        }
    }

    .instruction-box {
        background: rgba(0, 123, 255, 0.1);
        border: 2px solid #007bff;
        border-radius: 10px;
        padding: 15px;
        margin-top: 20px;
        max-width: 300px;
    }
</style>

<div class="popup-guide">
    <i class="fa-solid fa-arrow-up fa-3x arrow-up"></i>
    <div class="instruction-box">
        <p class="mb-2"><i class="fa-solid fa-info-circle"></i> Please allow popups to continue</p>
        <small class="text-muted">Look for the popup blocker icon in your browser's address bar</small>
    </div>
</div>

<!--**********************************
            Footer start
        ***********************************-->
<div class="footer">
    <div class="copyright text-center text-bg-secondary rounded-1">
        &copy; Copyright <strong><span>{{ config('app.name', 'Analysis') }} {{ date('Y') }}</span></strong>
        Analysis HMS</a></a></p>
    </div>
</div>
<!--**********************************
            Footer end
        ***********************************-->
</div>
<!--**********************************
        Main wrapper end
    ***********************************-->

<!--**********************************
        Scripts
    ***********************************-->
<script>
    // function tryPopup() {
    //     if (localStorage.getItem('popupChecked')) {
    //         $('.popup-guide').hide();
    //         $('.content-body').fadeIn();
    //         return;
    //     }

    //     const popup = window.open('about:blank', 'PopupTest',
    //         'width=300,height=300,left=100,top=100');

    //     if (popup === null || typeof popup === 'undefined') {
    //         console.log('Popup blocked');
    //         $('.popup-guide').show();
    //         $('.content-body').hide();
    //     } else {
    //         popup.close();
    //         $('.popup-guide').hide();
    //         $('.content-body').fadeIn();
    //         localStorage.setItem('popupChecked', 'true');
    //     }
    // }

    function isMobileDevice() {
        return (navigator.maxTouchPoints > 0) || ('ontouchstart' in window) ||
            /Android|iPhone|iPad|iPod|Mobile/i.test(navigator.userAgent);
    }

    function tryPopup() {
        if (isMobileDevice()) {
            $('.popup-guide').hide();
            $('.content-body').fadeIn();
            return;
        }

        if (localStorage.getItem('popupChecked')) {
            $('.popup-guide').hide();
            $('.content-body').fadeIn();
            return;
        }

        const popup = window.open('about:blank', 'PopupTest',
            'width=300,height=300,left=100,top=100');

        if (popup === null || typeof popup === 'undefined') {
            console.log('Popup blocked');
            $('.popup-guide').show();
            $('.content-body').hide();
        } else {
            popup.close();
            $('.popup-guide').hide();
            $('.content-body').fadeIn();
            localStorage.setItem('popupChecked', 'true');
        }
    }

    $(document).ready(function() {
        tryPopup();
    });


    $(document).ready(function() {
        $('.content-body').hide();

        tryPopup();
    });
    $(document).ready(function() {
        $('#myloader').removeClass('none');
        setTimeout(() => {
            $('#myloader').addClass('none');
        }, 500);
    });
</script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<!-- Notify JS -->
<script src="https://cdn.jsdelivr.net/npm/simple-notify@1.0.4/dist/simple-notify.min.js"></script>
<script src="{{ asset('admin/plugins/common/common.min.js') }}"></script>
<script src="{{ asset('admin/js/publicval.js') }}"></script>
<script src="{{ asset('admin/js/analysis.js') }}"></script>
<script src="{{ asset('admin/js/custom.min.js') }}"></script>
<script src="{{ asset('admin/js/ajax.js') }}"></script>
<script src="{{ asset('admin/js/settings.js') }}"></script>
<script src="{{ asset('admin/js/gleek.js') }}"></script>
<script src="{{ asset('admin/js/chart.js') }}"></script>
<script src="{{ asset('admin/js/styleSwitcher.js') }}"></script>
<script src="{{ asset('admin/js/autocomplete.js') }}"></script>
<!-- @if (request()->is('dashboard') || request()->is('home') || request()->is('/'))
<script src="{{ asset('admin/js/dashboard/dashboard-1.js') }}"></script>
@endif -->

<script src="{{ asset('admin/plugins/moment/moment.js') }}"></script>
<script src="{{ asset('admin/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js') }}"></script>
<!-- Clock Plugin JavaScript -->
<script src="{{ asset('admin/plugins/clockpicker/dist/jquery-clockpicker.min.js') }}"></script>
<!-- Date Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
<!-- Date range Plugin JavaScript -->
<script src="{{ asset('admin/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
<script src="{{ asset('admin/js/plugins-init/form-pickers-init.js') }}"></script>

<!-- Color Picker Plugin JavaScript -->
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asColor.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/libs/jquery-asGradient.js') }}"></script>
<script src="{{ asset('admin/plugins/jquery-asColorPicker-master/dist/jquery-asColorPicker.min.js') }}"></script>

</body>

</html>

<script>
    $(document).ready(function() {
        $(document).keydown(function(event) {
            // Check if the active element is not an input, textarea, or select
            if (!$('input, textarea, select').is(':focus')) {
                if (event.shiftKey && event.key === 'S') {
                    window.location.href = "roomstatus";
                } else if (event.shiftKey && event.key === 'W') {
                    window.location.href = "walkincheckin";
                } else if (event.shiftKey && event.key === 'C') {
                    window.location.href = "openchargeposting";
                } else if (event.shiftKey && event.key === 'H') {
                    window.location.href = "housekeepingscreen";
                } else if (event.shiftKey && event.key === 'N') {
                    window.location.href = "opennightaudit";
                } else if (event.shiftKey && event.key === 'Q') {
                    window.location.href = "reservation";
                } else if (event.shiftKey && event.key === 'F') {
                    window.location.href = "fomparameter";
                } else if (event.shiftKey && event.key === 'E') {
                    $('#main-wrapper').toggleClass("menu-toggle");
                    $(".hamburger").toggleClass("is-active");
                } else if (event.shiftKey && event.key === 'I') {
                    window.location.href = "inhoseroomstatus";
                } else if (event.shiftKey && event.key === 'B') {
                    window.location.href = "company";
                } else if (event.shiftKey && event.key === 'K') {
                    window.location.href = "servicedesk";
                }
            }
        });
    });

    // $(document).ready(function() {
    //     let depname = '';
    //     let compdetailxhr = new XMLHttpRequest();
    //     compdetailxhr.open('GET', '/getcompdetail', true);
    //     compdetailxhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    //     compdetailxhr.onreadystatechange = function() {
    //         if (compdetailxhr.readyState === 4 && compdetailxhr.status === 200) {
    //             let results = JSON.parse(compdetailxhr.responseText);
    //             let compdt = results.comp;
    //             let menuhelp = results.menuhelp;
    //             let compname = compdt.comp_name.split(' ')[0];
    //             let namelength = compname.length;
    //             let curroute = window.location.href.split('/');
    //             curroute = curroute[curroute.length - 1];
    //             let chceckpos = menuhelp.find(x => x.opt1 == 17 && x.route == curroute);
    //             if (chceckpos) {
    //                 let dcode = chceckpos.outletcode;
    //                 let departxhr = new XMLHttpRequest();
    //                 departxhr.open('POST', '/departxhr', true);
    //                 departxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    //                 departxhr.onreadystatechange = function() {
    //                     if (departxhr.status === 200 && departxhr.readyState === 4) {
    //                         let resultd = JSON.parse(departxhr.responseText);
    //                         depname = resultd ?? '';
    //                         updateUI();
    //                     }
    //                 }
    //                 departxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
    //             } else {
    //                 updateUI();
    //             }

    //             function updateUI() {
    //                 let matchname = menuhelp.find(x => x.route == curroute);
    //                 let div = `<div class="heading-container">
    //                             <h4 class="heading">
    //                             </h4>
    //                         </div>`;
    //                 let span = `${matchname.module} ${depname}`;
    //                 for (let i = 0; i < namelength; i++) {
    //                     span += `<span class="bubble bubble-${i}">${compname.charAt(i)}🫧</span>`;
    //                 }
    //                 $('.container-fluid').before(div);
    //                 $('.heading').append(span);
    //             }
    //         }
    //     }
    //     compdetailxhr.send();
    // });
</script>

<script>
    $(document).ready(function() {
        $("#updateLogModal").on("show.bs.modal", function() {
            $.getJSON("/getUpdateLogs")
                .done(function(data) {
                    let content = "";
                    if (data.length > 0) {
                        content = "<ul class='list-group'>";
                        $.each(data, function(index, log) {
                            content += `<li class='list-group-item'>${log.summary}</li>`;
                        });
                        content += "</ul>";
                    } else {
                        content =
                            "<p class='text-muted text-center'>No updates available at the moment.</p>";
                    }
                    $("#updateLogContent").html(content);
                })
                .fail(function() {
                    $("#updateLogContent").html(
                        "<p class='text-danger text-center'>Failed to load updates.</p>");
                });
        });
    });
</script>

<!-- Support Ticket Floating Button -->
<style>
    .support-ticket-btn {
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 60px;
        height: 60px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
        z-index: 1000;
        transition: all 0.3s ease;
        animation: pulse 2s infinite;
    }

    .support-ticket-btn:hover {
        transform: scale(1.1);
        box-shadow: 0 6px 20px rgba(102, 126, 234, 0.6);
    }

    .support-ticket-btn i {
        color: white;
        font-size: 24px;
    }

    @keyframes pulse {
        0% {
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
        }

        50% {
            box-shadow: 0 4px 25px rgba(102, 126, 234, 0.7);
        }

        100% {
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
        }
    }

    .support-ticket-sidebar {
        position: fixed;
        top: 0;
        right: -450px;
        width: 450px;
        height: 100%;
        background: white;
        box-shadow: -2px 0 15px rgba(0, 0, 0, 0.2);
        z-index: 1001;
        transition: right 0.3s ease;
        overflow-y: auto;
    }

    .support-ticket-sidebar.active {
        right: 0;
    }

    .support-ticket-overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1000;
        display: none;
    }

    .support-ticket-overlay.active {
        display: block;
    }

    .ticket-sidebar-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .ticket-sidebar-header h4 {
        margin: 0;
        color: white;
    }

    .close-sidebar-btn {
        background: none;
        border: none;
        color: white;
        font-size: 24px;
        cursor: pointer;
        padding: 0;
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .ticket-form-container {
        padding: 25px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #333;
    }

    /* .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
    } */

    .form-group input:focus,
    .form-group textarea:focus {
        outline: none;
        border-color: #667eea;
        box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
    }

    .submit-ticket-btn {
        width: 100%;
        padding: 12px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    .submit-ticket-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
    }

    .submit-ticket-btn:disabled {
        opacity: 0.6;
        cursor: not-allowed;
    }

    .ticket-success-message {
        background: #d4edda;
        color: #155724;
        padding: 15px;
        border-radius: 5px;
        margin-bottom: 20px;
        display: none;
    }

    .ticket-error-message {
        background: #f8d7da;
        color: #721c24;
        padding: 15px;
        border-radius: 5px;
        margin-bottom: 20px;
        display: none;
    }

    .note-editor {
        border-radius: 5px !important;
    }

    .note-editor.note-frame {
        border: 1px solid #ddd;
    }

    .note-editor.note-frame .note-editing-area .note-editable {
        min-height: 250px;
    }

    .note-modal .close {
        display: none;
    }

    .note-image-input {
        display: none;
    }

    /* Better image dialog styling */
    .note-modal-content {
        border-radius: 10px;
    }

    .note-modal-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        border-radius: 10px 10px 0 0;
    }

    .note-modal-title {
        color: white;
        font-weight: 600;
    }

    /* Image upload hint */
    .note-editing-area::before {
        content: '💡 Tip: आप Screenshot को सीधे Ctrl+V से paste कर सकते हैं या drag & drop कर सकते हैं!';
        display: block;
        padding: 10px;
        background: #e3f2fd;
        border-radius: 5px;
        margin: 10px;
        font-size: 12px;
        color: #1976d2;
    }

    .note-editing-area .note-editable:not(:empty)~*::before {
        display: none;
    }
</style>

@if (auth()->check() && optional(auth()->user())->propertyid != '')
    <!-- Floating Button -->
    <div class="support-ticket-btn" id="supportTicketBtn" title="How may I assist you?">
        <i class="fas fa-headset"></i>
    </div>

    <!-- Overlay -->
    <div class="support-ticket-overlay" id="supportTicketOverlay"></div>

    <!-- Sidebar Form -->
    <div class="support-ticket-sidebar" id="supportTicketSidebar">
        <div class="ticket-sidebar-header">
            <h4><i class="fas fa-ticket-alt me-2"></i>How may I assist you?</h4>
            <button class="close-sidebar-btn" id="closeSidebarBtn">
                <i class="fas fa-times"></i>
            </button>
        </div>

        <div class="ticket-form-container">
            <div class="ticket-success-message" id="ticketSuccessMessage"></div>
            <div class="ticket-error-message" id="ticketErrorMessage"></div>

            <form id="supportTicketForm">
                @csrf
                <div class="form-group">
                    <label for="ticket_name">
                        <i class="fas fa-user me-1"></i>Name <span class="text-danger">*</span>
                    </label>
                    <input type="text" id="ticket_name" name="name" class="form-control" required placeholder="Enter your name">
                </div>

                <div class="form-group">
                    <label for="ticket_mobile">
                        <i class="fas fa-phone me-1"></i>Mobile Number <span class="text-danger">*</span>
                    </label>
                    <input type="tel" id="ticket_mobile" name="mobile_number" class="form-control" required placeholder="Enter your mobile number" pattern="[0-9]{10,15}">
                </div>

                <div class="form-group">
                    <label for="ticket_problem">
                        <i class="fas fa-edit me-1"></i>Describe Your Problem <span class="text-danger">*</span>
                    </label>
                    <textarea id="ticket_problem" name="problem" class="form-control" rows="5"></textarea>
                    <small class="text-muted mt-2 d-block">
                        <i class="fas fa-info-circle me-1"></i>
                        <strong>Image add karne ke tarike:</strong><br>
                        • <i class="fas fa-image"></i> Picture button click karke upload karein<br>
                        • <kbd>Ctrl+V</kbd> se screenshot directly paste karein<br>
                        • Images को drag & drop karein<br>
                        • Har image ka size 2MB se kam hona chahiye
                    </small>
                </div>

                <button type="submit" class="submit-ticket-btn">
                    <i class="fas fa-paper-plane me-2"></i>Submit Ticket
                </button>
            </form>
        </div>
    </div>
@endif

@if (auth()->check() && optional(auth()->user())->propertyid != '')
    <!-- Summernote CSS & JS (Free Rich Text Editor) -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

    <script>
        $(document).ready(function() {
            // Initialize Summernote for rich text editing (Free & No API Key Required)
            $('#ticket_problem').summernote({
                height: 250,
                minHeight: 200,
                maxHeight: 400,
                placeholder: 'यहाँ अपनी समस्या विस्तार से लिखें...\n\n💡 Tips:\n• आप सीधे Screenshot paste (Ctrl+V) कर सकते हैं\n• Images को drag & drop कर सकते हैं\n• Text को format कर सकते हैं',
                toolbar: [
                    ['style', ['bold', 'italic', 'underline', 'clear']],
                    ['font', ['strikethrough']],
                    ['fontsize', ['fontsize']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture']],
                    ['view', ['fullscreen', 'codeview']]
                ],
                fontSizes: ['10', '12', '14', '16', '18', '20', '24'],
                // Disable image dialog, use direct file chooser
                dialogsInBody: true,
                disableDragAndDrop: false,
                callbacks: {
                    onImageUpload: function(files) {
                        // Handle multiple images
                        for (let i = 0; i < files.length; i++) {
                            uploadImage(files[i]);
                        }
                    },
                    // Handle paste event for images
                    onPaste: function(e) {
                        let clipboardData = e.originalEvent.clipboardData;
                        if (clipboardData && clipboardData.items) {
                            let items = clipboardData.items;
                            for (let i = 0; i < items.length; i++) {
                                if (items[i].type.indexOf('image') !== -1) {
                                    e.preventDefault();
                                    let file = items[i].getAsFile();
                                    uploadImage(file);
                                }
                            }
                        }
                    }
                }
            });

            // Override picture button to directly open file chooser
            $(document).on('click', '.note-btn[data-event="insertImage"]', function(e) {
                e.preventDefault();
                let input = document.createElement('input');
                input.type = 'file';
                input.accept = 'image/*';
                input.multiple = true;
                input.onchange = function(e) {
                    let files = e.target.files;
                    for (let i = 0; i < files.length; i++) {
                        uploadImage(files[i]);
                    }
                };
                input.click();
            });

            // Add drag and drop visual feedback
            $('.note-editable').on('dragover', function(e) {
                e.preventDefault();
                $(this).css('background-color', '#e3f2fd');
            }).on('dragleave drop', function() {
                $(this).css('background-color', '');
            });

            // Optimized image upload function
            function uploadImage(file) {
                // Check file size (max 2MB per image)
                if (file.size > 2 * 1024 * 1024) {
                    showError('Image size should be less than 2MB. Please use a smaller image.');
                    return;
                }

                // Show loading indicator
                let loadingHtml = '<div class="text-center"><i class="fas fa-spinner fa-spin"></i> Uploading image...</div>';
                $('#ticket_problem').summernote('insertText', '[Uploading image...]');

                let reader = new FileReader();
                reader.onloadend = function() {
                    // Compress and optimize image
                    let img = new Image();
                    img.onload = function() {
                        let canvas = document.createElement('canvas');
                        let ctx = canvas.getContext('2d');

                        // Resize if too large
                        let maxWidth = 800;
                        let maxHeight = 600;
                        let width = img.width;
                        let height = img.height;

                        if (width > maxWidth || height > maxHeight) {
                            let ratio = Math.min(maxWidth / width, maxHeight / height);
                            width = width * ratio;
                            height = height * ratio;
                        }

                        canvas.width = width;
                        canvas.height = height;
                        ctx.drawImage(img, 0, 0, width, height);

                        // Convert to base64 with compression
                        let compressedImage = canvas.toDataURL('image/jpeg', 0.7);

                        // Remove loading text and insert image
                        let content = $('#ticket_problem').summernote('code');
                        content = content.replace('[Uploading image...]', '');
                        $('#ticket_problem').summernote('code', content);
                        $('#ticket_problem').summernote('insertImage', compressedImage);
                    };
                    img.src = reader.result;
                };
                reader.readAsDataURL(file);
            }

            // Open sidebar
            $('#supportTicketBtn').click(function() {
                $('#supportTicketSidebar').addClass('active');
                $('#supportTicketOverlay').addClass('active');
                $('body').css('overflow', 'hidden');
            });

            // Close sidebar
            function closeSidebar() {
                $('#supportTicketSidebar').removeClass('active');
                $('#supportTicketOverlay').removeClass('active');
                $('body').css('overflow', 'auto');
            }

            $('#closeSidebarBtn, #supportTicketOverlay').click(function() {
                closeSidebar();
            });

            // Submit form
            $('#supportTicketForm').submit(function(e) {
                e.preventDefault();

                // Get content from Summernote
                const problemContent = $('#ticket_problem').summernote('code');

                if (!problemContent || problemContent.trim() === '' || problemContent === '<p><br></p>') {
                    showError('Please describe your problem');
                    return;
                }

                // Check content size (approximately 4MB limit for safety)
                const contentSize = new Blob([problemContent]).size;
                if (contentSize > 4000000) {
                    showError('Content is too large. Please reduce the number or size of images.');
                    return;
                }

                const formData = {
                    _token: $('input[name="_token"]').val(),
                    name: $('#ticket_name').val(),
                    mobile_number: $('#ticket_mobile').val(),
                    problem: problemContent
                };

                // Disable button and show loading
                const submitBtn = $('.submit-ticket-btn');
                const originalText = submitBtn.html();
                submitBtn.html('<i class="fas fa-spinner fa-spin me-2"></i>Submitting...').prop('disabled', true);

                // Hide previous messages
                $('#ticketSuccessMessage, #ticketErrorMessage').hide();

                $.ajax({
                    url: '{{ route('company.submitTicket') }}',
                    method: 'POST',
                    data: formData,
                    success: function(response) {
                        if (response.success) {
                            showSuccess('Ticket submitted successfully! Your ticket number is: ' + response.ticket_number);

                            // Reset form
                            $('#supportTicketForm')[0].reset();
                            $('#ticket_problem').summernote('reset');

                            // Close sidebar after 3 seconds
                            setTimeout(function() {
                                closeSidebar();
                                $('#ticketSuccessMessage').hide();
                            }, 3000);
                        } else {
                            showError(response.message || 'Failed to submit ticket');
                        }
                    },
                    error: function(xhr) {
                        console.log('Error:', xhr);
                        let errorMessage = 'An error occurred while submitting the ticket';

                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                            // Handle validation errors
                            let errors = xhr.responseJSON.errors;
                            errorMessage = Object.values(errors).flat().join(', ');
                        } else if (xhr.status === 413) {
                            errorMessage = 'Content too large. Please reduce image sizes.';
                        } else if (xhr.status === 500) {
                            errorMessage = 'Server error. Please try again or contact support.';
                        }

                        showError(errorMessage);
                    },
                    complete: function() {
                        submitBtn.html(originalText).prop('disabled', false);
                    }
                });
            });

            function scrollToAndFocusMessage(selector) {
                const sidebar = $('#supportTicketSidebar');
                const messageBox = $(selector);

                sidebar.stop(true).animate({
                    scrollTop: 0
                }, 300);

                messageBox.attr('tabindex', '-1');
                setTimeout(function() {
                    messageBox.trigger('focus');
                }, 320);
            }

            function showSuccess(message) {
                $('#ticketErrorMessage').hide();
                $('#ticketSuccessMessage').html('<i class="fas fa-check-circle me-2"></i>' + message).fadeIn();
                scrollToAndFocusMessage('#ticketSuccessMessage');
            }

            function showError(message) {
                $('#ticketSuccessMessage').hide();
                $('#ticketErrorMessage').html('<i class="fas fa-exclamation-circle me-2"></i>' + message).fadeIn();
                scrollToAndFocusMessage('#ticketErrorMessage');
            }
        });
    </script>
@endif
