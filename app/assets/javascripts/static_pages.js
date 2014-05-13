
$(document).foundation({
  orbit: {
    next_on_click: false,
    pause_on_hover: false,
    bullets: false,
    slide_number: false
  }
});

$( document ).ready(function() {
  $(".offerings-active").closest("li").siblings(".nav-heading").addClass("active");

  var active = $("dd.active").attr('id');
  $('.interior-footer').find("."+ active).addClass('active');

  $("dl dd").on('click', function() {
    $('.interior-footer').find(".active").removeClass('active');
    var active = $(this).attr('id');
    $('.interior-footer').find("."+ active).addClass('active');

  });

  $(".about-links a").on('click', function() {
    $('.interior-footer').find(".active").removeClass('active');
    $(this).addClass('active');
  });

  $(".about-heading").on('click', function(){
    $('.interior-footer').find(".active").removeClass('active');
    $(".about_us").addClass('active');
  });

});

// $(".offerings-active").on("click", function(){
//     $(this).closest("li").siblings(".nav-heading").addClass("offering-heading-active");
//   });

// $(".nav-tile").hover(
//     function() {
//      var tileHeight = $(".nav-tile").height();
//     $(this).children(".nav-details").animate({
//       height: tileHeight + 1  }, 300
//       );
//   }, function() {
//     var captionHeight = $(".image-title").height();
//     $(this).children(".nav-details").animate({
//       height: captionHeight }, 300
//     );
//   }
// );

// $(window).resize(function() {
//   if ($(window).width() < 652)  {
//     var picHeight = $(".banner-image").height();
//     $("#slideShow").css("height", picHeight);
//   }
// });


