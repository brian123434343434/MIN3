var urlBuscador;

/**
Verifica la seleccion de información en el captcha
*/
function CaptchaSelectionValidation(source, arguments)
{
    var googleResponse = $('#g-recaptcha-response').val();

    if(googleResponse=='')
    {   
        arguments.IsValid = false;
    }
    else{
        arguments.IsValid = true;
    }
}

function postbackButtonClick(){
    var googleResponse = $('#g-recaptcha-response').val();
    var user = $('input[id*=txtUser]').val();
    var password = $('input[id*=txtPw]').val();

    if(googleResponse !== "" && user !== "" && user !== ""){
        $("#container-loader").show();
        $("#loader").show();
    }
}

function BuscarVITAL(){
    var datosBusqueda = $("#txtBuscar").val().replace(/\s/g,'');
    
    if(datosBusqueda === ""){
        alert("Por favor ingrese la información que desea buscar en VITAL.");
    }
    else{    
        datosBusqueda = encodeURIComponent(datosBusqueda);
		$("#container-loader").show();
        $("#loader").show();
        window.location = urlBuscador + "?dato=" + datosBusqueda;        
    }
}

function CapturarEnterBuscar(e) {
    e = e || window.event;
    if (e.keyCode == 13) {
        e.preventDefault();
        BuscarVITAL();
        return false;
    }
}

$(document).ready(function () {

    $('#homeCarousel').carousel({
        interval: 4000,
        pause: "false"
    });

    $('#homeCarouselInferior').carousel({
        interval: 7000,
        pause: "false"
    });

    $('#homeCarouselInferiorSmall').carousel({
        interval: 6000,
        pause: "false"
    });

    $("#a-img-play").click(function () {
        if ($("#img-pause-play").hasClass('bi bi-pause-fill')) {
            $("#img-pause-play").removeClass('bi bi-pause-fill').toggleClass('bi bi-play-fill');
            $('#homeCarousel').carousel('pause');
        } else {
            $("#img-pause-play").removeClass('bi bi-play-fill').toggleClass('bi bi-pause-fill');
            $('#homeCarousel').carousel('cycle');
        }
    });

    $("#cmdBuscar").click(function(){
        BuscarVITAL();
    });

    window.addEventListener("load", function() {

        // icono para mostrar contraseña
        showPassword = document.querySelector('.show-password');
        showPassword.addEventListener('click', () => {

            // elementos input de tipo clave
            password1 = document.querySelector('.text-show-password');

            if ( password1.type === "text" ) {
                password1.type = "password"
                showPassword.classList.remove('fa-eye-slash');
            } else {
                password1.type = "text"
                showPassword.classList.toggle("fa-eye-slash");
            }

        });
    });

});