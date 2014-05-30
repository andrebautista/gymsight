$(document).foundation({
  orbit: {
    next_on_click: false,
    pause_on_hover: false,
    bullets: false,
    slide_number: false
  }
});

$( document ).ready(function() {
  var $container = $('#isotope-container').imagesLoaded( function() {
    $container.isotope({
      itemSelector: '.item',
    });
  });

  var filters = {};

$(".filters").on( 'click', 'li', function() {
  var $this = $(this);
  // get group key
  var $buttonGroup = $this.parents('.filter-group');
  var filterGroup = $buttonGroup.attr('data-filter-group');
  // set filter for group
  filters[ filterGroup ] = $this.attr('data-filter');
  // combine filters
  var filterValue = '';
  for ( var prop in filters ) {
    filterValue += filters[ prop ];
  }
  // set filter for Isotope
  $container.isotope({ filter: filterValue });
});

  $(".offerings-active").closest("li").siblings(".nav-heading").addClass("active");
  var active = $("dd.active").attr('id');
  $('.interior-footer').find("."+ active).addClass('active');

  $("dl dd").on('click', function() {
    $('.interior-footer').find(".active").removeClass('active');
    var active = $(this).attr('id');
    $('.interior-footer').find("."+ active).addClass('active');

  });

  $(".about-links a, .contact-links a").on('click', function() {
    $('.interior-footer').find(".active").removeClass('active');
    $(this).addClass('active');
  });

  $(".gallery-nav-button").on("click", function(){
    $(this).addClass("active");
    if( $(".filters").is(":hidden") ) {
      $(".filters").slideDown("medium");
    } else {
      $(".filters").slideUp("medium");
      $(this).removeClass("active");
    }
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


