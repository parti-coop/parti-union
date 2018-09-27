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
      navication: true,
      center: true,
      loop: false,
      margin: 20,
      autoWidth: true
  })

  $('.js-clipboard').each(function(index, elm) {
    var clipboard = new Clipboard(elm);
    clipboard.on('success', function(e) {
      $(e.trigger).tooltip('show');
      setTimeout(function() { $(e.trigger).tooltip('hide'); }, 1000);
      e.clearSelection();
    });
  });
});

