
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

$(document).foundation({
  orbit: {
    next_on_click: false,
    pause_on_hover: false,
    bullets: false,
    slide_number: false
  }
});
