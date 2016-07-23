
$(document).ready(function(){
  $(".js-scroll-story").click(function() {
    console.log("baaaaaa");
      $('html, body').animate({
          scrollTop: $("#story").offset().top
      }, 2000);
  });
})
