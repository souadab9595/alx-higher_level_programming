  $(document).ready(function() {
            $.ajax({
                url: 'https://hellosalut.stefanbohacek.dev/?lang=fr',
                method: 'GET',
                dataType: 'json',
                success: function(data) {
                    // Display the translation of "hello" in the <div> with id 'hello'
                    $('#hello').text(data.hello);
