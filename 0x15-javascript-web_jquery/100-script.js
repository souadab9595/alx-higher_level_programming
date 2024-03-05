<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Header Text Color</title>
    <script>
        // Wait for the document to be ready before executing the script
        document.addEventListener('DOMContentLoaded', function() {
            // Get the <header> element using document.querySelector
            var headerElement = document.querySelector('header');

            // Update the text color to red (#FF0000)
            headerElement.style.color = '#FF0000';
        });
    </script>
</head>
<body>

    <header>
        <h1>Hello, this is the header</h1>
    </header>

</body>
</html>
