$(document).ready(function () {

    // send answer checkbox
    $('.check_test_btn').click(function (e) {
        //prepare form data
        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $("#check_form").serializeArray();

        var pathname = window.location.pathname; // return curent path
        //send
        $.ajax({
            type: "POST",
            url: pathname,
            data: form, // serializes the form's elements.
            success: function (answer_errors) {
                console.log(answer_errors);
                 var server_response = JSON.parse(answer_errors);

                $(".title").text(" ");// errase field common error

                for (var key in server_response){ //fill error field for some question
                     var error_selector = '.' + key;
                     $(error_selector).text(server_response[key]);
                     //if the test is complete, redirect to home
                     if(server_response.redirect == true){
                         window.location = "/home/1";
                     }
                }
            }
        })
    })
})