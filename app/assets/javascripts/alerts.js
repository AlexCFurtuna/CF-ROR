$(document).ready(function() {
  setTimeout(function() {
    $(".alert").fadeOut("fast", function() {
      $(this).remove();
    })
  }, 1500);
  $(".alert_close").click(function(e) {
    e.preventDefault();
    $(".alert").remove();
  })
});
