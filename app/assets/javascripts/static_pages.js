$('#slideShow').ayaSlider({
     easeIn : 'easeOutBack',
     easeOut : 'linear',
     delay : 4000
  });


$(".nav-tile").hover(
    function() {
     var tileHeight = $(".nav-tile").height();
    $(this).children(".nav-details").animate({
      height: tileHeight + 1  }, 300
      );
  }, function() {
    var captionHeight = $(".image-title").height();
    $(this).children(".nav-details").animate({
      height: captionHeight }, 300
    );
  }
);


