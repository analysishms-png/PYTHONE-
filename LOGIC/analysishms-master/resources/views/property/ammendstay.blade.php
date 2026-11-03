<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (isset($message))
    <script>
        Swal.fire({
            icon: '{{ $type }}',
            title: '{{ $type == 'success' ? 'Success' : 'Error' }}',
            text: '{{ $message }}',
            timer: 5000,
            showConfirmButton: true
        });
    </script>
@endif

<body>
    <form class="form" action="{{ route('ammendstayupdate') }}" name="ammendstayform" id="ammendstayform" method="POST">
        @csrf
        <div class="form-group col-7 offset-2">
            <label for="departuredate">Departure Date</label>
            <input type="date" value="{{ $nextdate }}" class="form-control" id="departuredate"
                name="departuredate">
            <input type="hidden" value="{{ $ncurdate }}" name="ncurdate" id="ncurdate">
            <input type="hidden" value="{{ $data->docid }}" name="docid" id="docid">
            <input type="hidden" value="{{ $data->sno1 }}" name="sno1" id="sno1">
            <input type="hidden" value="{{ $data->sno }}" name="sno" id="sno">
        </div>
        <div class="form-group row">
            <div class="text-center mt-4">
                <button id="submitBtn" type="submit" class="btn btn-primary">Update</button>
            </div>
        </div>
    </form>
</body>

</html>

<script>
    $(document).ready(function() {
        // handleFormSubmission('#ammendstayform', '#submitBtn', 'ammendstayupdate');
    });
</script>
