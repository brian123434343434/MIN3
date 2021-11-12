Type.registerNamespace("FormBuilder");

function executeOperation()
{ 
    ///<summary>Obtiene los valores de los campos fuente y ejecuta la operación correspondiente para luego
    ///establecer el valor resultante en el campo destino.</summary>
    ///<param name="operationInstance">Instancia de una clase en javascript que contenga un método "calculate".</param>
    ///<param name="targetControlID" type="string">Identificador dentro del html para el control que es objetivo de la operación.</param>
    ///<param name="sourceControlIDs" type="string">Identificadores dentro del html para los controles fuente de la operación.</param>
   

    var operationInstance = arguments[0];
    var targetControlID = arguments[1];
    var operandValues = new Array();        
    
    for(var i = 2; i < arguments.length; i++)
    {
        var control = $get(arguments[i]);
        
        switch(control.type)
        {
            case "text":
                operandValues[i - 2] = control.value;
                break;
            case "select-one":
                operandValues[i - 2] = control.options[control.selectedIndex].value;            
            break;            
        }        
    }        
    
    var result = operationInstance.calculate(operandValues);
    
    var targetControl = $get(targetControlID);
    targetControl.value = result;   

}

function convertFormatedStringToNumber(formatedString)
{  
    ///<summary>Convierte una cadena con un número sin formatear o formateado para tener separador de miles en un número.  </summary>
    ///<param name="formatedString" type="string">Cadena que contiene un número con o sin separados de miles.</param>
    ///<returns>Un objeto de tipo Number.</returns> 
    var number = NaN;
    formatedString = formatedString.replace(/,/gi, "");
    
    if(formatedString != "")
        number = new Number(formatedString);
    
    return number;
}


