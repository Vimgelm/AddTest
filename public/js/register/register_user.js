"use strict"
$(document).ready(function () {

    $('#submit_form').click(function (e) {
        var registration_form_data = $('#registration_form').serializeArray();

        //erase erors row
        $('.error').text(' ');

        e.preventDefault(); // avoid to execute the actual submit of the form

        $.ajax({
            type: "POST",
            url: '/register',
            data: registration_form_data, // serializes the form's elements.
            success: function (user_errors) {
                var user_errors_obj  =JSON.parse(user_errors);
//insert errors row
                $('#nick').text(user_errors_obj['nick']);
                $('#email').text(user_errors_obj['email']);
                $('#password').text(user_errors_obj['password']);
            }
        })
    });
})