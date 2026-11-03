/**
 * Global AJAX POST Handler with SweetAlert2
 * 
 * @param {string} url - The endpoint URL
 * @param {Object} data - The payload/data to send
 * @param {Object} options - Optional overrides (success message, confirm prompt, etc.)
 */
async function sendAjaxPost(url, data = {}, options = {}) {
    // Optional: Ask for confirmation before proceeding if requested
    if (options.confirmMessage) {
        const result = await Swal.fire({
            title: options.confirmTitle || 'Are you sure?',
            text: options.confirmMessage,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, proceed!'
        });

        if (!result.isConfirmed) return null;
    }

    // Show loading spinner
    pushNotify('info', 'Room Status', 'Please Wait.....', 'fade', 300, '', '', true, true, true, 2000, 20, 20, 'outline', 'left top');

    try {
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || ''
            },
            body: JSON.stringify(data)
        });

        const result = await response.json();

        if (!response.ok) {
            // Handle validation errors or server errors thrown by Laravel (status 422, 500, etc.)
            let errorMessage = result.message || 'Something went wrong on the server.';

            if (response.status === 422 && result.errors) {
                // Combine validation errors if present
                errorMessage = Object.values(result.errors).flat().join('<br>');
            }

            Swal.fire({
                icon: 'error',
                title: 'Action Failed',
                html: errorMessage
            });
            return { success: false, errors: result.errors, status: response.status };
        }

        // Success notification
        if (options.showSuccessAlert !== false) {
            Swal.fire({
                icon: 'success',
                title: options.successTitle || 'Success!',
                text: options.successText || result.message || 'Operation completed successfully.',
                timer: options.timer || 2000,
                showConfirmButton: false
            });
        } else {
            Swal.close();
        }

        return { success: true, data: result };

    } catch (error) {
        console.error('AJAX Error:', error);
        Swal.fire({
            icon: 'error',
            title: 'Network Error',
            text: 'Unable to connect to the server. Please check your internet connection.'
        });
        return { success: false, error: error };
    }
}