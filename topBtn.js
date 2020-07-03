$(document).ready(function(){

  $(window).scroll(function(){
    if($(this).scrollTop() > 40){
      $('#topBtn').fadeIn();
    } else{
      $('#topBtn').fadeOut();
    }
  });

  $("#topBtn").click(function(){
    $('html ,body').animate({scrollTop : 0},1350);
  
  });
  
   //$("#sourceDescStile").children().hide(); $("#sourceDescStile").click(function(){$(this).children().toggle();});//
    $("#cartolina1").hide();
      $("#cartolina2").hide();
  $("#ps1").click(function(){
      $("#cartolina1").toggle();
  });
  $("#ps2").click(function(){
      $("#cartolina2").toggle();
  });
});
