<%@ control language="VB" autoeventwireup="false" inherits="Controls_DataSourceRelationatorControl, App_Web_v_ppcifq" %>
<%@ Register src="MessageBox.ascx" tagname="MessageBox" tagprefix="uc1" %>

<asp:ScriptManagerProxy ID="ScriptpManager1" runat="server">
    <Services>
        <asp:ServiceReference 
            Path="~/services/DataSourceRelationator.asmx" />
    </Services>
</asp:ScriptManagerProxy>

<uc1:MessageBox ID="messageBox" runat="server" />

<script type="text/javascript">

var clientIdByFieldId = new Array();
var relationClientsIdAndTriggerFieldId = new Array();

<%= _clientIdByFieldIdScript %> //Arreglo de ClientID por FieldID
<%= _addEventsScript %> //Se añaden los llamados para enlazar los campos primarios con un evento
<%= _relationClientsIdAndTriggerFieldIdScript %> //arreglo que tendra la relacion clientId de control y id field del control trigger

//Añade un evento de carga de datos a un control
function addEventForCallDataSource(controlClientID, idTriggerField)
{
    var control = $get(controlClientID)    
    var functionString = "getDataFromDataSourceRelationator('" + controlClientID + "','" + idTriggerField + "')";
    
    var eventName = "blur"
    
    switch(control.type)
    {            
        case "select-one":
            eventName = "change";            
    } 
    
    $addHandler(control, eventName, new Function(functionString));    
}

//Llama a un servicio para obtener llenar un formulario automaticamente
function getDataFromDataSourceRelationator(controlClientID, idTriggerField)
{
    //Obtiene el control disparador
    var control = $get(controlClientID);
    
    if(control != null && control != undefined)
    {    
        var callClearControls = false;
    
        switch(control.type)
        {            
            case "select-one":
                //Si el valor seleccionado es el valor por defecto, o no hay ninguno seleccionado
                if (control.selectedIndex == 0 || control.selectedIndex == -1)
                    callClearControls = true;
            break;
        }  
    
    
        //Obtiene el contenido del control
        var value = control.value;
                                
        if(value != null && value != undefined && value != "" && !callClearControls)
        {
            showMessageBox("Fuente de datos", "Cargando información, por favor espere...", false);
            //Llama al servicio que se comunica con la fuente de datos
            DataSourceRelationator.getDataFromDataSourceRelationator(idTriggerField, value, setFieldValuesFromDataSource, showDataSourceErrorMessage, idTriggerField);            
        }
        else
        {            
            clearControls(idTriggerField);
        }
    }
}

//Función de llamado exitoso - Procesa los datos de la fuente de datos y los asigna a los controles
function setFieldValuesFromDataSource(result, userContext)
{
    hideMessageBox();
    var dictionary = result;
    //Por cada valor retornado busca el control html al que debe poner el valor y lo asigna
    
    //Si se la fuente de datos retornó datos entonces los asigna.
    if(dictionary.length > 0)
    {    
        for (var i = 0; i < dictionary.length; i++)
        {
            //Obtiene la pareja idField, valor
            var val = dictionary[i];
            var dataValue = val.Key;
            
            //Obtiene el id del html (ClientID) basado en el idField 
            var clientID = clientIdByFieldId[dataValue];
            var dataControl = $get(clientID);
            if(dataControl != null && dataControl != undefined)
            {
                //Asigna el valor al control html
                dataControl.value = val.Value;
            }
        }
    }
    else //No se encontraron datos
    {
        //alert("No se encontró información con ese valor.");
        showMessageBox("Fuente de datos", "No se encontró información con ese valor", true);
        
        clearControls(userContext);   
    }
}

//Muestra un mensaje de error si el servicio falla o no contesta.
function showDataSourceErrorMessage(exception)
{    
    hideMessageBox();
    
    if (exception.get_timedOut())
        showMessageBox("Fuente de datos", "No fue posible traer los datos necesarios para llenar el formulario. La fuente de datos no contesta.", true);
    else        
        showMessageBox("Fuente de datos", "Ocurrió un problema conectandose a la fuente de datos. " + error.get_message(), true);        
}

//Funcion que busca el clientId de un control mediante el id en la base de datos 
function findClientNameByControlId(ctrlId)
{
   var clientName = new String;
   var count = document.forms[0].elements.length;
    
    for (i=0; i<count; i++) 
      {
        var element = document.forms[0].elements[i]; 
        var names = new Array();
        names = element.id.split('_');
        
        if (names[names.length - 1] == "control" + ctrlId) 
            { 
               clientName = element.id;
	        }
	 }       
    return clientName;    
}


//Funcion que limpia los valores de los controles 
function clearControls(idTriggerField)
{
 //Limpia los campos del formulario que están relacionados
    for(var id in clientIdByFieldId)
    {
       if(id != undefined)
       {
           var clientId = clientIdByFieldId[id];
           var relationTriggerId = relationClientsIdAndTriggerFieldId[clientId];
           
           if(idTriggerField == relationTriggerId)
           {
                var control = $get(clientId);
                control.value = "";
           }
       }
    }        

}


</script>