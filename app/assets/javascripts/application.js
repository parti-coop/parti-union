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
//= require scrollreveal


// unobtrusive_flash
UnobtrusiveFlash.flashOptions['timeout'] = 3000;

$(function() {
  ScrollReveal({ duration: 900 });
  ScrollReveal().reveal('.mission', { delay: 120 });
  ScrollReveal().reveal('.who-we-are', { delay: 120 });
  ScrollReveal().reveal('.movement', { delay: 120 });
  ScrollReveal().reveal('.contents', { delay: 120 });
  ScrollReveal().reveal('.platforms', { delay: 120 });
  ScrollReveal().reveal('.contact', { delay: 120 });
});

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

  $(document).on('click', '.js-parti-link', function(e) {
    var href = $(e.target).closest('a').attr('href')
    if (href && href != "#") {
      return true;
    }

    var $no_parti_link = $(e.target).closest('[data-no-parti-link="no"]')
    if ($no_parti_link.length) {
      return true;
    }

    e.preventDefault();
    var url = $(e.currentTarget).data("url");
    if(!url) {
      var $url_source = $($(e.currentTarget).data("url-source"));
      if($url_source.length > 0) {
        url = $url_source.data("url");
      }
    }

    if(!url) {
      return;
    }

    window.open(url, '_blank');
  });
});

