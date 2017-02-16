var ready = function() {
  $("#new_message").on("ajax:success", function(event,xhr,status){
    $('#message_content').val('');
  });
};

$(document).ready(ready);
$(document).on('page:change', ready);

