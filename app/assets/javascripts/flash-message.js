$(document).ready(function() {

  // timed function to fade out the flash messages
  setTimeout(function() {
    // target notice_wrapper div and fade it out after 2,5 sec
    $('#notice-wrapper').fadeOut("slow", function() {
      $(this).remove();
    })
  }, 2500);
});
