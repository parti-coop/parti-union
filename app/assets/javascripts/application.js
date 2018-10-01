//= require jquery
//= require jquery_ujs
//= require masonry.pkgd
//= require bootstrap
//= require unobtrusive_flash
//= require unobtrusive_flash_bootstrap
//= require blocs.min
//= require owl.carousel
//= require social-share-button
//= require clipboard


// unobtrusive_flash
UnobtrusiveFlash.flashOptions['timeout'] = 3000;

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

  $.fn.modal.Constructor.prototype.enforceFocus = function() {};
  $.fn.modal.Constructor.prototype._enforceFocus = function() {};

  var clipboard = new Clipboard('.js-clipboard');
  clipboard.on('success', function(e) {
    $(e.trigger).tooltip('show');
    setTimeout(function() { $(e.trigger).tooltip('hide'); }, 1000);
    e.clearSelection();
  });


});

