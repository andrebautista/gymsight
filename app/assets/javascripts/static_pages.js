$( document ).ready(function() {
  //About photo slider
  var num_photos = $(".gym-photos figure").length;
  $('.gym-photos').on('click', 'a', function() {
    var action = $(this).attr('class');
    if (action == 'next-img')  {
      var next_image = $(this).closest('figure').attr('data-attr-about');
      next_image = parseInt(next_image) + 1;
      if (next_image > num_photos)  {
        next_image = 1;
      }
      next_image = $('[data-attr-about=' + next_image + ']');
      $(this).closest('figure').hide();
      $(next_image).show();
    }
    if (action == 'prev-img')  {
      var prev_image = $(this).closest('figure').attr('data-attr-about');
      console.log(prev_image);
      prev_image = parseInt(prev_image) - 1;
      if (prev_image == 0)  {
        prev_image = num_photos;
      }
      var prev_image = $('[data-attr-about=' + prev_image + ']');
      $(this).closest('figure').hide();
      $(prev_image).show();
    }
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

  //footer nav behavior
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
});

// $(".offerings-active").on("click", function(){
//     $(this).closest("li").siblings(".nav-heading").addClass("offering-heading-active");
//   });

