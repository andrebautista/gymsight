$( document ).ready(function() {
  //isotope behavior
  var $container = $('#isotope-container').imagesLoaded( function() {
    $container.isotope({
      itemSelector: '.item',
      masonry: {
        columnWidth: 220,
        gutter: 20
      }
    });
    $container.isotope('layout');
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

  //fancybox implementation (expanded view)
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
    padding :[10,10,10,10]
  });
  $('body').on("click", ".next-img", function() {
    $.fancybox.next();
  });
  $('body').on("click", ".prev-img", function() {
    $.fancybox.prev();
  });

  //add active class to clicked filter
  $(".tag").on("click", function() {
    $('.tags').find(".active").removeClass('active');
    $(this).addClass('active');
    var tag_text = $(this).text();
    console.log(tag_text);
    if (tag_text == "All content")
      $(".tag-type").replaceWith("<span class='tag-type'> " + tag_text + " </span>");
    else
    $(".tag-type").replaceWith("<span class='tag-type'>Filter: " + tag_text + " </span>");
  });
  // $(".media").on("click", function() {
  //   $('.media-type').find(".active").removeClass('active');
  //   $(this).addClass('active');
  //   var media_text = $(this).text();
  //   $(".media-nav-text").replaceWith("<span class='media-nav-text'>" + media_text + " </span>");
  // });

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
