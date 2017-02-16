var ready = function() {
  $("#new_message").bind("ajax:complete", function(event,xhr,status){
    $('p').css('color', 'red');
    $('#message_content').val('');
  });
};

$(document).ready(ready);
$(document).on('page:change', ready);

