$(document).ready(function() {

  var target = $('#songs_header');
  var targetHeight = target.outerHeight();

  $(window).scroll(function(){
    var scrollPercent = (targetHeight - window.scrollY) / targetHeight;
    if(scrollPercent >= 0){
      target.css('opacity', scrollPercent);
    }
  }); 
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
