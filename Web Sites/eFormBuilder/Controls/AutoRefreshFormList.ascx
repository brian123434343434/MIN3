<%@ control language="VB" autoeventwireup="false" inherits="Controls_AutoRefreshFormList, App_Web_opgzw_gw" %>

<script type="text/javascript">
    //Arreglo en donde la llave es el id del campo en la base de datos y el valor es el id del control en el html.
    var clientIDForFormListID = new Array();
    <%= _clientIDForFormListIDJavaScript %>
    
    //Ejecuta un postback sobre el botón de actualización en el control FormList indicado
    function autoRefreshFormList(idFormListControl) {
    
    //Obtiene el script hace postback para el formlist actualizado
    var scriptToRun = clientIDForFormListID[idFormListControl];
    //Ejecuta el script inmediatamente
    setTimeout(scriptToRun, 0);
    }

</script>
