// One initial page load, slowly Fade out 'byline' underneath each story to give more whitespace
$(function() {
      $('.byline').fadeTo(4000, 0);
    }
  );

// Show byline for each individual story when hovered over
// $("[id^=story]") is a wildcard id selector of for `li` elements that have  individualized class names starting with `story`
// When you hover over an `li` with a class name that starts with `story`, find the `.byline` element **in the context of** the hovered over `li` (represented by `this`)
$(function() {
  $("[id^=story]").hover(function() {
    $('.byline', this).fadeTo(200, 1);
    }, function() {
    $('.byline', this).fadeTo(300, 0);
    });
});
