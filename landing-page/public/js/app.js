var estado=0
$(document).ready(function () {
    $("header .barraFixed").attr('class', 'barra');
    $("header .barraFixed").fadeOut(1);
    $(window).scroll(function () {
        if ($(this).scrollTop() > 60 && $(window).width() < 987) {
            $("header .barra").attr('class', 'barraFixed');
        } else {
            $("header .barraFixed").attr('class', 'barra');
        }
    });
    $(".img_chat img").click(function(){
        if(estado==0)
        {
            $(".chat").css("display", "flex")
            estado=1;
        }
        else
        {
            $(".chat").css("display", "none")
            estado=0;
        }
    })
});

window.onload = function(){
    $('.loader, main').fadeOut();
}