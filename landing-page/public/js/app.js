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

    $('#formessage').submit(function(e){
        $.ajax({
            type: 'GET',
            url: 'https://guardianapi.herokuapp.com/watsons/?message='+$("#mensaje").val(),
            success: function (data) {
                $('.chat .cuadro').append("<div class='text2'><p> " + $("#mensaje").val() + "</p></div>");
                $('.chat .cuadro').append("<div class='text1'><p> " + data.output.generic[0].text+"</p></div>");
                $('.chat .cuadro').scrollTop(9999);
            },
            error: function (data) {
                $(".exito").text("¡REGISTRO SIN ÉXITO, NO TENEMOS MÁS INFORMACIÓN");
                $('.exito').fadeIn(2000, function () {
                    window.location.reload(true);
                });
            }
        });

        e.preventDefault();
    });
});

window.onload = function(){
    $('.loader, main').fadeOut();
}