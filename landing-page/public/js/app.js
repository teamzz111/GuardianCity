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
});

window.onload = function(){
    $('.loader, main').fadeOut();
}