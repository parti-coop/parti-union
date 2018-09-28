//= require jquery
//= require jquery_ujs
//= require masonry.pkgd
//= require bootstrap
//= require blocs.min
//= require owl.carousel
//= require social-share-button
//= require clipboard

$(function(){
  $('.masonry-container').masonry();
})

$(function(){
  $('.preload-modal').modal('show');
});

$(document).ready(function(){
  $('.owl-carousel').owlCarousel({
      navigation: true,
      center: true,
      loop: false,
      margin: 18,
      autoWidth: true,
      autoplay: true,
      autoplayTimeout:20000,
      freeDrag: true,
      nav: true,
      navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
  });

  var width = $(window).width();
  $(window).on('resize', function(){
     if($(this).width() != width){
        width = $(this).width();
        $('.owl-item').find('.card').map(function(){
          $(this).width(width * 0.8);
        });
     }
  });

  $('.js-clipboard').each(function(index, elm) {
    var clipboard = new Clipboard(elm);
    clipboard.on('success', function(e) {
      $(e.trigger).tooltip('show');
      setTimeout(function() { $(e.trigger).tooltip('hide'); }, 1000);
      e.clearSelection();
    });
  });
});

