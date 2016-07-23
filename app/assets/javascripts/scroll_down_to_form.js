
$(document).ready(function(){
  $(".js-subscription-form").click(function() {
    console.log("baaaaaa");
      $('html, body').animate({
          scrollTop: $("#subscription_form").offset().top
      }, 2000);
  });
})
