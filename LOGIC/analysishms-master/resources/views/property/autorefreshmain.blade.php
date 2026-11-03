<a href="#" id="closeModal">Close Modal</a>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        if (window !== window.top) {
            document.getElementById('closeModal').addEventListener('click', function(event) {
                event.preventDefault();
                window.parent.location.reload();
                window.parent.document.querySelector('.modal').style.display = 'none';
            });

            document.getElementById('closeModal').click();
        }
    });
</script>
