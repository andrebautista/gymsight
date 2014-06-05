$( document ).ready(function() {
  $(".fancybox").fancybox({
    beforeShow: function(){
     this.title = $(this.element).next('.newTitle').text();
     this.title += "<a class='prev-img' style='position:absolute;top:25px;right:35px;' href='javascript:void(0)'></a>"
     this.title += "<a class='next-img' style='position:absolute;top:25px;right:0; href='javascript:void(0)'></a>"
    },
    helpers : {
      overlay : {
            css : {
                'background' : 'rgba(0, 0, 0, 0.85)'
            }
      }
    },
    // beforeShow: function () {
    //         if (this.title) {
    //             // Add tweet button
    //             this.title += '<a href="https://twitter.com/share" class="twitter-share-button" data-count="none" data-url="' + this.href + '">Tweet</a> ';

    //             // Add FaceBook like button
    //             this.title += '<iframe src="//www.facebook.com/plugins/like.php?href=' + this.href + '&amp;layout=button_count&amp;show_faces=true&amp;width=500&amp;action=like&amp;font&amp;colorscheme=light&amp;height=23" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:110px; height:23px;" allowTransparency="true"></iframe>';
    //         }
    //     },
    padding :[10,10,10,10]
  });
  $('body').on("click", ".next-img", function() {
    $.fancybox.next();
  });
  $('body').on("click", ".prev-img", function() {
    $.fancybox.prev();
  });
  //change filter on click
  $(".tag").on("click", function() {
    $('.tags').find(".active").removeClass('active');
    $(this).addClass('active');
    var tag_text = $(this).text();
    $(".tag-type").replaceWith("<span class='tag-type'>" + tag_text + " </span>");
  });
  $(".media").on("click", function() {
    $('.media-type').find(".active").removeClass('active');
    $(this).addClass('active');
    var media_text = $(this).text();
    $(".media-nav-text").replaceWith("<span class='media-nav-text'>" + media_text + " </span>");
  });

  //foundation JS
  $(document).foundation({
    orbit: {
      next_on_click: false,
      pause_on_hover: false,
      bullets: false,
      slide_number: false
    }
  });
//isotope behavior
  var $container = $('#isotope-container').imagesLoaded( function() {
    $container.isotope({
      itemSelector: '.item',
    });
  });

  $("#gallery").on('click', function() {
    var $container = $('#isotope-container').imagesLoaded( function() {
    $container.isotope({
      itemSelector: '.item',
    });
    $container.isotope('layout');
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

  //footer menu behavior
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

//gallery dropdown
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


