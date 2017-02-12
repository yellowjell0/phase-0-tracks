$(document).ready(function() {
    $("#table").css({
        "background" : "url('images/caps.jpg')",
        "filter" : "brightness(55%)"
        });
    $("#table").css("color", "#fffae6");

    $("#beer_steps_list").accordion({
        animate: 1000,
        active: 1,
        collapsible: true, 
        event: "click",
        heightStyle: "content"
    });




  
    $("#slideshow > div:gt(0)").hide();

setInterval(function() { 
  $('#slideshow > div:first')
    .fadeOut(0)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
},  4000);



});

