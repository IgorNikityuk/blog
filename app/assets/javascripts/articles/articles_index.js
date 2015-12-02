$(document).ready(function(){
  $('.no_matches_found').hide();
  $('.create_article_link').hover( function(){ 
    $(this).toggleClass('button_hover');
  });
  $('.delete_all_articles_link').hover( function(){ 
    $(this).toggleClass('button_hover');
  });
  $('.small_image').click( function(){
    $(this).toggleClass('medium_image');
  });
  $('.hide').click( function(){
    // $(this).toggleClass('medium_image');
    $(this).closest("tr").animate({
      opacity: 0.25,
      left: "+=50",
      height: "toggle"
    }, 1000);
  });
  if (!$('.hide').length) {
    $('.no_matches_found').show();
  }
  $('.create_article_link_with_popup').click(function(){
    $('.overlay').show();
  });
  $('.close_link').click(function(){
    $('.overlay').hide();
  });
});

