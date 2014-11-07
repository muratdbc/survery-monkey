$(document).ready(function() {



    $(function(){
        $('#open').click(function(){
            $('#open').hide();
            $('#modal-background').fadeIn();
        })



    $('#close').click(function(){
            $('#modal-background').fadeOut(function(){
                $('#open').show();
            });
        })
    })



    $(function(){
      $("#add_question").click(function(){

        $new_question_form=$("#question_form").clone()
        $("#title").after($new_question_form);
        $("#question_form").css("display","inline");
        $("#add_question").hide();


      })
    })




});
