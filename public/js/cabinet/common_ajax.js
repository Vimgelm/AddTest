"use strict";
$(document).ready(function () {
    $('.data_block').on('click','span',function () {
        $(".test_list").remove();
        var name_btn2 = $(this).attr("id");
        console.log(name_btn2);

        $.ajax({
            type: "POST",
            url: "/cabinet",
            data: {'name_btn': name_btn2},
            success: function (data) {
                $(".data_block").html(data); //fill datablock server response

                // var server_response = JSON.parse();

            }
        })

    })
$('#btn_group').on('click','div',function () { //add button in #button group for call by ajax
    $(".first_cabinet_block").remove();
    var name_btn = $(this).attr("id");

    $.ajax({
        type: "POST",
        url: "/cabinet",
        data: {'name_btn': name_btn},
        success: function (data) {
            $(".data_block").html(data); //fill datablock server response

            // var server_response = JSON.parse();

            }
        })
    })
})