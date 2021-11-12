<%@ control language="VB" autoeventwireup="false" inherits="Controls_ExpressionEditor, App_Web_opgzw_gw" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server">
</asp:ScriptManagerProxy>

<script type="text/javascript">
function addSelectedFieldToEditor(){
    var fieldList = $get("<%= lbFormFields.ClientID %>");
    if (fieldList.selectedIndex != -1) {
        var fieldCode = fieldList.options[fieldList.selectedIndex].value;
        addElementToEditor(fieldCode);
    }
}

function addElementToEditor(element){
    var editor = $get("<%= tbCodeEditor.ClientID %>");
    editor.value += " " + element + " ";
}
</script>


<fieldset>
    <div>
        <div>            
            <!-- Barra de botones -->
            <input type="button" value="+" title="Suma" onclick="addElementToEditor('+')" />
            <input type="button" value="-" title="Resta" onclick="addElementToEditor('-')" />
            <input type="button" value="*" title="Multiplicación" onclick="addElementToEditor('*')" />
            <input type="button" value="/" title="División" onclick="addElementToEditor('/')" />
            <input type="button" value="<" title="Menor" onclick="addElementToEditor('<')" />
            <input type="button" value="<&#61;" title="Menor o Igual" onclick="addElementToEditor('<=')" />
            <input type="button" value=">" title="Mayor" onclick="addElementToEditor('>')" />
            <input type="button" value=">&#61;" title="Mayor o Igual" onclick="addElementToEditor('>=')" />
            <input type="button" value="<>" title="Diferente" onclick="addElementToEditor('<>')" />
            <input type="button" value="=" title="Igual" onclick="addElementToEditor('=')" />
            <input type="button" value="and" title="Y" onclick="addElementToEditor('and')" />
            <input type="button" value="or" title="O" onclick="addElementToEditor('or')" />
            <input type="button" value="not" title="Negado" onclick="addElementToEditor('not')" />
            <input type="button" value="true" title="Verdadero" onclick="addElementToEditor('true')" />
            <input type="button" value="false" title="Falso" onclick="addElementToEditor('false')" />
        </div>        
        
        <div style="width:500px; float:left">
            <label>Expresión lógica</label>
            <asp:TextBox ID="tbCodeEditor" runat="server" Height="240px" Width="490px" TextMode="MultiLine"></asp:TextBox>
        </div>
        
        <div style="width:400px">
            <label>Campos del formulario</label>
            <asp:ListBox ID="lbFormFields" runat="server" 
                ondblclick="addSelectedFieldToEditor()" Height="240px" Width="345px" ></asp:ListBox>
        </div>
        
        <div>
            <asp:Button ID="btValidateExpression" runat="server" Text="Validar" ValidationGroup="expressionValidations" />       
            <asp:Label ID="lbValidationMessage" runat="server" Text="" EnableViewState="false"></asp:Label> 
        </div>
       
    </div>
</fieldset>

