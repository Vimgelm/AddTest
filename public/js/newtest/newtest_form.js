$(document).ready(function () {

    var name_question_label = "Question #";//prefix for text question label

    // save test data for aja
    $('.save').click(function (e) {
        //prepare form data
        e.preventDefault(); // avoid to execute the actual submit of the form.

        var form = $(".form-all").serializeArray();

        //send
        $.ajax({
            type: "POST",
            url: '/newtest',
            data: form, // serializes the form's elements.
            success: function (test_errors) {
                $('.alert').html(test_errors);
                console.log(test_errors);
                var server_response = JSON.parse(test_errors);

                if (typeof (!(server_response['email']) === undefined)) { //if user not login
                    $('#email').text(server_response['email'])
                }
                //set error msg for named row

                $("#name").text(server_response['name']);
                delete server_response['name'];
                $("#description").text(server_response['description']);
                delete server_response['description'];

                delete server_response['tags'];// TODO:// заглушка теги не реализованы

                var last_symbol; //last symbol key server response
                for (var key in server_response) {
                    for (var row in server_response[key]) {
                        if (row === 'question') {
                            last_symbol = 0;
                        } else {
                            last_symbol = row.slice(-1);// extract last symbol error key
                        }
                        var error_selector = '#' + key + last_symbol;//make name selector for error row
                        $(error_selector).text(server_response[key][row]);
                    }
                }
                    var place_for_redirect = "http://addtest/" + server_response['redirect']; //make source for redirect
                if (!(typeof (server_response['redirect']) === "undefined")) {
                    window.location.replace(place_for_redirect);
                }
            }
        });
    })

    //button add_quest. Auto generate
    $(".add_quest").click(function () {
        //select last question name and insert number of question
        var $last_question_number = Number($(".quest_label:last").text().substring(10));

        //clone object .question_block
        var $last_question_block = $(".question_block:last").clone();

        //
        $last_question_block.find(".quest_label").text(name_question_label + ($last_question_number + 1))

        //set right [name] like array index
        $last_question_block.find("[name]").each(function (key, value) {
            var $attr_name = $(value).attr("name").substring(1);//delete first symbol [name]
            var $attr_name = ($last_question_number + 1) + $attr_name;
            $(value).attr("name", $attr_name);
            if ($(value).is("#del_quest")) {
            } else {
                $(value).val("");//clean value after function .clone
            }

        })

        //set id for error rows
        $last_question_block.find(".error").each(function (key, value) {
            var id = $(value).attr("id");//delete first symbol [name]
            var new_id = Number(id) + 10;

            $(value).attr("id", new_id);
        })

        //add del button if not in the set last_question_block
        if (($last_question_block.children().is("#del_quest"))) {
        } else {
            $last_question_block.find("div:last").after(
                "<input class ='btn btn-danger' id='del_quest' type='button' value='Delete last question' name='1'></input>");
        }


        $(".question_block:last").after($last_question_block);
    })

    //button del_last_question

    $("form").delegate("#del_quest","click", function () {
        console.log('98');
        //delete this .question_block
        $(this).parent().remove();

        //rewrite question_name in order
        var i = 1;
        var $label = $(".quest_label");
        $label.each(function (key, value) {
            $(value).text(name_question_label + i);
            i = i + 1;
        });
    })


})