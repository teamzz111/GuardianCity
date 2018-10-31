window.onload = function () {
    var barra = document.querySelector("header .barraFixed")
    barra.setAttribute('class', 'barra')
    
    window.onscroll = function (evt) {

        if (window.scrollY > 99 && window.innerWidth < 987) {
            barra.style.display = "flex"
            barra.setAttribute('class', 'barraFixed')
        } else {
            barra.setAttribute('class', 'barra')
        }
    };
}