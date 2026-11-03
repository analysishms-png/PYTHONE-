@php
    $chequeDesignerUrl = config('app.cheque_designer');
@endphp

@if (Auth::user()->superwiser == 1)
    <button type="button" id="designPanelBtn" class="btn btn-info ml-2" data-cheque-url="{{ $chequeDesignerUrl }}">
        <i class="fa-solid fa-palette"></i> Design Panel
    </button>
@endif

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const designPanelBtn = document.getElementById('designPanelBtn');

        if (designPanelBtn) {
            designPanelBtn.addEventListener('click', function(e) {
                e.preventDefault();

                const userid = document.getElementById('userid')?.value || '{{ Auth::id() }}';
                const username = document.getElementById('username')?.value || '{{ Auth::user()->name ?? '' }}';
                const propertyid = document.getElementById('propertyid')?.value || '{{ Auth::user()->propertyid ?? '' }}';

                if (!userid || !username || !propertyid) {
                    alert('User information not found. Please refresh the page. (userid: ' + userid + ', username: ' + username + ', propertyid: ' + propertyid + ')');
                    return;
                }

                designPanelBtn.disabled = true;
                const originalText = designPanelBtn.innerHTML;
                designPanelBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Loading...';

                fetch('/react-login', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') ||
                                document.querySelector('input[name="_token"]')?.value
                        },
                        body: JSON.stringify({
                            userid: userid,
                            username: username,
                            propertyid: propertyid
                        })
                    })
                    .then(response => {
                        if (!response.ok) {
                            throw new Error('Login failed');
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.status === 'success') {
                            const chequeUrl = designPanelBtn.getAttribute('data-cheque-url');
                            const token = data.user?.token;
                            const userIdFromResponse = data.user?.id;
                            const propertyIdFromResponse = data.user?.propertyid;
                            const usernameFromResponse = data.user?.username;

                            const autoLoginUrl = chequeUrl + '/auto-login?userid=' + userIdFromResponse + '&propertyid=' + propertyIdFromResponse + '&token=' + encodeURIComponent(token) + '&username=' + encodeURIComponent(usernameFromResponse);
                            window.open(autoLoginUrl, '_blank');
                        } else {
                            alert('Error: ' + (data.message || 'Login failed'));
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        alert('Error: ' + error.message);
                    })
                    .finally(() => {
                        designPanelBtn.disabled = false;
                        designPanelBtn.innerHTML = originalText;
                    });
            });
        }
    });
</script>
