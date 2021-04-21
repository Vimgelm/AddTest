"use strict"
$(document).ready(function () {

    $('#submit_form').click(function (e) {
        var registration_form_data = $('#login_form').serializeArray();

        //erase erors row
        $('.error').text(' ');

        e.preventDefault(); // avoid to execute the actual submit of the form

        $.ajax({
            type: "POST",
            url: '/login',
            data: registration_form_data, // serializes the form's elements.
            success: function (user_errors_json) {
                var user_errors_obj = JSON.parse(user_errors_json);
                if (typeof user_errors_obj.redirect == 'undefined') {
                    //insert errors row
                    $('#email').text(user_errors_obj['email']);
                } else {
                    //redirect to previous page
                    window.location.replace("http://addtest/home/1");
                }

            }
        })
    });
})