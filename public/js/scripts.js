$(document).ready(function() {

  var taglines = ["We're not racists. We just don't serve Chinese food.", "You definitely won't find any Chinese food here!", "Your average non-Chinese fusion restaurant.", "We're mostly a pizzeria.", "Just like Mom used to make, unless she made Chinese food.", "An equal opportunity employer."];

  var tagline = $('<p>').html(taglines[Math.floor(Math.random() * taglines.length)]);

  $('.jumbotron').append(tagline);

  $('body').css('opacity', '0').fadeTo(800, 1, 'swing');

  $('ul.nav > li > a[href="' + (document.location.pathname[0] + document.location.pathname.split('/')[1]) + '"]').parent().addClass('active');

  $('.add-food-course').selectize({create: true});

  $('.prime-edit').on('click', function() {
    $(this).css({display: 'none'});
    $('.edit-food').addClass('edit-focus');
    $('.post-edit').css({display: 'inline-block'});
  });

  $('.prime-hire').on('click', function(e) {
    e.preventDefault();
    $(this).css({display: 'none'});
    $('.new-hire').css({display: 'block'});
    $('.post-hire').css({display: 'block'});
  })

  $('.courseListing').click(function() {
    $(this).toggleClass('food-active');
  });

  $('[data-toggle="tooltip"]').tooltip();

  $('.swipe-order').on('swipeleft', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
    $(this).animate({marginBottom: '-30px'}, 300).addClass('slide fade out');
    $(this).submit();
  });

  $('.swipe-order').on('swiperight', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
    $(this).animate({marginBottom: '-30px'}).addClass('slide fade out reverse');
    $(this).submit();
  });

  $('.swipe-waiter').on('swipeleft', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
    $(this).animate({marginBottom: '-30px'}, 300).addClass('slide fade out');
    $(this).submit();
  });

  $('.swipe-waiter').on('swiperight', function() {
    $('.overlay').css({display: 'block', zIndex: '1000'});
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
