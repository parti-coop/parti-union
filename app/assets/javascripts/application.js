//= require jquery
//= require jquery_ujs
//= require masonry.pkgd
//= require bootstrap
//= require blocs.min
//= require owl.carousel
//= require social-share-button

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
});
