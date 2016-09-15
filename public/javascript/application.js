 $(document).ready(function() {

  var target = $('#songs_header');
  var targetHeight = target.outerHeight();

  $(window).scroll(function(){
    var scrollPercent = (targetHeight - window.scrollY) / targetHeight;
    if(scrollPercent >= 0){
      target.css('opacity', scrollPercent);
    }
  }); 
//   // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

$(function() {
    //----- OPEN
    $('[data-popup-open]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-open');
        $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);
 
        e.preventDefault();
    });
 
    //----- CLOSE
    $('[data-popup-close]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-close');
        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);
 
        e.preventDefault();
    });
  });
});

// $(function() {
//     //----- OPEN
//     $('[data-popup-open]').on('click', function(e)  {
//         var targeted_popup_class = jQuery(this).attr('data-popup-open');
//         $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);
 
//         e.preventDefault();
//     });
 
//     //----- CLOSE
//     $('[data-popup-close]').on('click', function(e)  {
//         var targeted_popup_class = jQuery(this).attr('data-popup-close');
//         $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);
 
//         e.preventDefault();
//     });
//   });
// });