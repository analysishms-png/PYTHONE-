<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Astrogeek Sagar</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
        }

        .wrapper {
            min-height: 85vh;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 10px 0;
            text-align: center;
        }

        .footer a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="wrapper">
            <div class="content">
                <form id="myForm">
                    @csrf
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="text" class="form-control" id="phone" name="phone" required
                            pattern="\d{10}" title="Phone number must be 10 digits long">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <footer class="footer">
        <p>Coder <a href="https://github.com/astrogeeksagar" target="_blank">astrogeeksagar</a> | <a href="https://www.astrogeeksagar.com" target="_blank">astrogeeksagar.com</a></p>
    </footer>

    <script>
        $(document).ready(function() {
            $(document).on('input', '#phone', function() {
                let inputval = $(this).val().replace(/[^0-9]|^(.{10}).*$/g, '$1');
                $(this).val(inputval);
            });

            $('#myForm').on('submit', function(event) {
                event.preventDefault();
                var formData = $(this).serialize();
                $.ajax({
                    url: '/mobilesubmit',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        toastr.success(response.message);
                        $('#phone').val('');
                        namefetch().then(names => {
                            $('#name').val(names);
                        });
                    },
                    error: function(errors) {
                        let terror = JSON.parse(errors.responseText);
                        toastr.error(terror.message);
                    }
                });
            });

            namefetch().then(names => {
                $('#name').val(names);
            });
        });

        function namefetch() {
            return new Promise((resolve, reject) => {
                let namexhr = new XMLHttpRequest();
                namexhr.open('GET', '/maxmobiledata', true);
                namexhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                namexhr.onreadystatechange = function() {
                    if (namexhr.readyState === 4) {
                        if (namexhr.status === 200) {
                            let result = JSON.parse(namexhr.responseText);
                            let value = `User ${result + 1}`;
                            resolve(value);
                        } else {
                            reject('Error fetching name');
                        }
                    }
                };
                namexhr.send();
            });
        }
    </script>
</body>

</html>
