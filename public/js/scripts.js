$(document).ready(function() {

  $('body').css('opacity', '0').fadeTo(400, 1, 'swing');

  $(".nav").find(".active").removeClass("active");

  $('ul.nav > li > a[href="' + (document.location.pathname[0] + document.location.pathname.split('/')[1]) + '"]').parent().addClass('active');

  $('.panel-heading').on('click', function() {
    $(this).find('select').addClass('focusedSelect');
    $(this).on('blur', function() { // this isn't working the way i want it to
      $(this).find('select').removeClass('focusedSelect');
    })
  });

  $('.add-food-course').selectize({create: true});

  $('.prime-edit').on('click', function() {
    $(this).css({display: 'none'});
    $('.edit-food').addClass('edit-focus');
    $('.post-edit').css({display: 'inline-block'});
  });

  $('.courseListing').click(function() {
    $(this).toggleClass('food-active');
  });

  $('[data-toggle="tooltip"]').tooltip();

  $('.swipe-order').on('swipeleft', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
    // $('body').css('opacity', '1').fadeTo(800, 0.25, 'swing');
    $(this).animate({marginBottom: '-30px'}, 300).addClass('slide fade out');
    $(this).submit();
  });

  $('.swipe-order').on('swiperight', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
    // $('body').css('opacity', '1').fadeTo(800, 0.25, 'swing');
    $(this).animate({marginBottom: '-30px'}).addClass('slide fade out reverse');
    $(this).submit();
  });

  $('.kitchen').sortable({
    axis: "y",
    containment: "parent",
    cursor: "-webkit-grabbing",
    items: '.kitchen-row',
    helper: function(e, tr) {
      var $originals = tr.children();
      var $helper = tr.clone();
      $helper.children().each(function(index)
        {$(this).width($originals.eq(index).width());
      });
      return $helper;
    },
  });

  $('.order-checkmark').on('click', function() {
    window.document.location = $(this).data('href');
  });

});
