// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(".like-link").on("change", function() {
  console.log("ok")
  $(this).parent("form").submit();
})

var hashTagActive = "";
$(".scroll").on("click touchstart" , function (event) {
    if(hashTagActive != this.hash) { //this will prevent if the user click several times the same link to freeze the scroll.
        event.preventDefault();

        //calculate destination place
        var dest = $(this.hash).offset().top - $('.list-scroll :first-child').offset().top;

        //go to destination
        $('.list-scroll').animate({
            scrollTop: dest
        }, 500, 'swing');
        hashTagActive = this.hash;
    }
});
