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
      loop: false,
      margin: 18,
      items: 1,
      nav: true,
      navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"]
  });

  var width = $(window).width();

  $.fn.modal.Constructor.prototype.enforceFocus = function() {};
  $.fn.modal.Constructor.prototype._enforceFocus = function() {};

  var clipboard = new Clipboard('.js-clipboard');
  clipboard.on('success', function(e) {
    $(e.trigger).tooltip('show');
    setTimeout(function() { $(e.trigger).tooltip('hide'); }, 1000);
    e.clearSelection();
  });


});

