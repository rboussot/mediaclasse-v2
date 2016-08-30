// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(".like-link").on("change", function() {
  $(this).parent("form").submit();
})
