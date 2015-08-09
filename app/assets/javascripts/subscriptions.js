$('document').ready(function() {
  // Add event handler to our submit button so that it displays a processing
  // overlay when parsing new feeds
  $(".show-processing").click(function() {
    $(".show-when-processing").css("display", "block");
  });
});



