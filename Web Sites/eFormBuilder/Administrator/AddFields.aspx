<%@ page language="VB" autoeventwireup="false" validaterequest="false" inherits="Administrator_AddFields, App_Web_5zwlr24r" masterpagefile="~/Master/mpAdmin.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">

    <script type="text/javascript">  
    //Nota: Este codigo hace que el ColorPicker no genere errores en tiempo de ejecución 
    Sys.Application.add_init(function() {  
        // Store the color validation Regex in a "static" object off of  
        // AjaxControlToolkit.ColorPickerBehavior.  If this _colorRegex object hasn't been  
        // created yet, initialize it for the first time.  
        if (!AjaxControlToolkit.ColorPickerBehavior._colorRegex) {  
            AjaxControlToolkit.ColorPickerBehavior._colorRegex = new RegExp('^[A-Fa-f0-9]{6}$');  
        }  
    });  
    function colorChanged(sender) {  
        sender.get_element().style.color = 
   "#" + sender.get_selectedColor();  
    }  
    
    
    function regularExpresionChanged(){
    
    var list = $get("listRegularExpression");
    var textBox = $get("<%= txtFormatRule.ClientID %>");
    
    textBox.value = list.options[list.selectedIndex].value
    
    }
    
    function formatValidationChanged(){
    
        var listRegEx = $get("listRegularExpression");
        var listFormat = $get("<%= ddlFormatValidationMode.ClientID %>");
        
        if(listFormat.options[listFormat.selectedIndex].value == "RegularExpression")
            listRegEx.style.visibility = "visible";
        else
            listRegEx.style.visibility = "hidden";
    
    }
    </script>

    <asp:Literal ID="ltRelationErrorMessage" runat="server" EnableViewState="false" Visible="false">
        El campo tiene una relación con otro campo.
        <br />
        Para cambiar el formulario, el tipo de campo o el tipo de dato primero debe 
    eliminar las relaciones de este control.
    </asp:Literal>
    <asp:UpdatePanel ID="upTabPanels" runat="server">
        <ContentTemplate>
       
      
    
           
        
            <table style="width: 100%">
                <tr>
                    <td>
                        <cc1:TabContainer ID="tcControls" runat="server" ActiveTabIndex="0">
                            <cc1:TabPanel ID="tpBasic" runat="server" HeaderText="Controles Basicos">
                                <HeaderTemplate>
                                    Controles Basicos
</HeaderTemplate>
                                
<ContentTemplate>
                                    <asp:UpdatePanel ID="upControlDetail" runat="server" UpdateMode="Conditional"><ContentTemplate>
                                            <table>
                                            </table>
                                            <table width="100%">
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm" Text="Código"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField"
                                                            Width="158px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                                            ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblIdForm" runat="server" Text="Formulario" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlIdForm" runat="server" Width="400px" CssClass="cssDDL" AutoPostBack="True">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvDdlIdForm" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="ddlIdForm" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblType" runat="server" Text="Tipo de Campo" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlType" runat="server" Width="164px" AutoPostBack="True" Height="30px"
                                                            CssClass="cssDDL">
                                                            <asp:ListItem>Label</asp:ListItem>
                                                            <asp:ListItem>TextBox</asp:ListItem>
                                                            <asp:ListItem>DropDownList</asp:ListItem>
                                                            <asp:ListItem>Calendar</asp:ListItem>
                                                            <asp:ListItem>CheckBox</asp:ListItem>
                                                            <asp:ListItem>FileUpLoad</asp:ListItem>
                                                            <asp:ListItem>HyperLink</asp:ListItem>
                                                            <asp:ListItem>HR</asp:ListItem>
                                                            <asp:ListItem>BR</asp:ListItem>
                                                            <asp:ListItem>DynamicTable</asp:ListItem>
                                                            <asp:ListItem>FormList</asp:ListItem>
                                                            <asp:ListItem>DoubleList</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvDdlType" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="ddlType" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblSortOrder" runat="server" Text="Orden" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtSortOrder" runat="server" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtSortOrder" runat="server" ErrorMessage="*"
                                                            ValidationGroup="addField" ControlToValidate="txtSortOrder" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                                                ID="revSortOrder" runat="server" ControlToValidate="txtSortOrder" ErrorMessage="Ingresar solo números"
                                                                ValidationExpression="[0-9]*" ValidationGroup="addField" 
                                                            SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblText" runat="server" Text="Texto del control" Visible="False" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtText" runat="server" Visible="False" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtText" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="txtText" Visible="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblTable" runat="server" Text="Nombre de la Tabla" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtTable" runat="server" Visible="False" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtTable" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="txtTable" Visible="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblField" runat="server" Text="Nombre de la Columna" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtField" runat="server" Visible="False" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtField" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="txtField" Visible="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblDataType" runat="server" Text="Tipo del Dato" Visible="False" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlDataType" runat="server" Width="72%" CssClass="cssDDL" Visible="False"
                                                            AutoPostBack="True">
                                                            <asp:ListItem Selected="True" Value="No Aplica">No Aplica</asp:ListItem>
                                                            <asp:ListItem Value="String">String</asp:ListItem>
                                                            <asp:ListItem Value="Integer">Integer</asp:ListItem>
                                                            <asp:ListItem Value="Double">Double</asp:ListItem>
                                                            <asp:ListItem Value="DateTime">DateTime</asp:ListItem>
                                                            <asp:ListItem Value="Boolean">Boolean</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvDdlDataType" runat="server" ErrorMessage="*" ValidationGroup="addField"
                                                            ControlToValidate="ddlDataType" Visible="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblSourceType" runat="server" Text="Tipo de Fuente" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlSourceType" runat="server" Width="164px" Visible="False"
                                                            CssClass="cssDDL" AutoPostBack="True" OnSelectedIndexChanged="ddlSourceType_SelectedIndexChanged">
                                                            <asp:ListItem Selected="True">No Aplica</asp:ListItem>
                                                            <asp:ListItem Value="SQL">SQL</asp:ListItem>
                                                            <asp:ListItem Value="String">Lista</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:CompareValidator ID="cvSourceType" runat="server" ErrorMessage="Debe seleccionar un valor"
                                                            ValidationGroup="addField" ValueToCompare='No Aplica' ControlToValidate="ddlSourceType"
                                                            Operator="NotEqual"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblsourceSQL" runat="server" Text="Fuente de Datos" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtsourceSQL" runat="server" Visible="False" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                        <img id="btDataSourceHelp" runat="server" alt="Ayuda" src="../Images/helpicon.png" visible="false" />
                                                                                                           
                                                            
                                                              <asp:Panel ID="pnlDataSourceHelp" runat="server" style="display:none" Width="400px" BorderWidth="2px" BorderStyle="Solid"  BackColor="White">
                                                                
                                                                Parámetros:<br />
                                                               
                                                                  <ul>
                                                                      <li>
                                                                          @ : se reemplaza por el valor seleccionado en el campo padre.
                                                                      </li>
                                                                      <li>
                                                                        @userid: se reemplaza por el identificador del usuario que está autenticado.
                                                                      </li>
                                                                  </ul>
                                                                  
                                                                  <br />
                                                                  Cuando es una lista hija, debe encerrar entre /* y */ la sentencia "where". Ej: Select ID, Name From Table1 /* Where IDParent = @ */.</asp:Panel>
                                                                        
                                                                <cc1:popupcontrolextender ID="PopEx" runat="server"
                                                                    TargetControlID="btDataSourceHelp"
                                                                    PopupControlID="pnlDataSourceHelp"
                                                                    Position="Right" />
                                                            
                                                            
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtSourceSql" runat="server" ErrorMessage="*"
                                                            ValidationGroup="addField" ControlToValidate="txtsourceSQL" Visible="False"></asp:RequiredFieldValidator><asp:Label
                                                                ID="lblSourceMsg" runat="server" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                </tr>                                                
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblListFieldValue" runat="server" Text="Campo del Valor" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtListFieldValue" runat="server" Visible="False" Width="164px"
                                                            CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtListFieldValue" runat="server" ErrorMessage="*"
                                                            ValidationGroup="addField" ControlToValidate="txtListFieldValue" Visible="False"
                                                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblListTextValue" runat="server" Text="Campo del Texto" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtListTextValue" runat="server" Visible="False" Width="164px" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvTxtListTextValue" runat="server" ErrorMessage="*"
                                                            ValidationGroup="addField" ControlToValidate="txtListTextValue" Visible="False"
                                                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblRows" runat="server" CssClass="cssLabelForm" Visible="False" Text="Número de Filas"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtRows" runat="server" CssClass="cssTextBoxForm" Visible="False"
                                                            ValidationGroup="addField" Width="164px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRows"
                                                            Visible="False" ErrorMessage="Ingresar solo numeros" ValidationExpression="[0-9]*"
                                                            ValidationGroup="addField" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblColumns" runat="server" CssClass="cssLabelForm" Visible="False"
                                                            Text="Número de Columnas"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:TextBox ID="txtColumns" runat="server" CssClass="cssTextBoxForm" Visible="False"
                                                            ValidationGroup="addField" Width="164px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtColumns"
                                                            Visible="False" ErrorMessage="Ingresar solo numeros" ValidationExpression="[0-9]*"
                                                            ValidationGroup="addField" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblHelpText" runat="server" Text="Texto de Ayuda" Visible="False"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtHelpText" runat="server" Height="93px" TextMode="MultiLine" Width="315px"
                                                            Visible="False" CssClass="cssTextBoxForm"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblIdFormFormList" runat="server" Text="Formulario para la lista"
                                                            CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlIdFormFormList" runat="server" Width="400px" CssClass="cssDDL">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        &#160;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblVisible" runat="server" Text="Es Visible" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="rbVisible" runat="server" CssClass="cssTextBoxForm" Checked="True" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblRequired" runat="server" Text="Es Requerido" Visible="False" CssClass="cssLabelForm"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="rbRequired" runat="server" CssClass="cssTextBoxForm" Visible="False" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblMultiline" runat="server" Text="Usar Multiples Lineas" CssClass="cssLabelForm"
                                                            Visible="False"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="cbMultiLine" runat="server" CssClass="cssTextBoxForm" Visible="False" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblThousandsSeparator" runat="server" Text="Usar separador de miles" CssClass="cssLabelForm"
                                                            Visible="False"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="cbThousandsSeparator" runat="server" CssClass="cssTextBoxForm"
                                                            Visible="False" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblProcessInfo" runat="server" CssClass="cssLabelForm" Text="Mostrar Contenido del Campo en la Lista de Tareas"
                                                            Visible="False"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="cbProcessInfo" runat="server" CssClass="cssTextBoxForm" Visible="False" />
                                                    </td>
                                                    <td>
                                                        &#160;&#160;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="isLblPreLoadField" runat="server" CssClass="cssLabelForm" Text="Cargar el Valor de Otro Formulario"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="cbxPreLoadField" runat="server" AutoPostBack="True" CssClass="cssTextBoxForm"
                                                            OnCheckedChanged="cbxPreLoadField_CheckedChanged" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblPre_LoadForm" runat="server" CssClass="cssLabelForm" Text="Seleccione el Formulario"
                                                            Visible="False"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlPre_LoadForm" runat="server" CssClass="cssDDL" Height="30px"
                                                            Visible="False" Width="164px" AutoPostBack="True" OnSelectedIndexChanged="ddlPre_LoadForm_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvDdlPreLoadForm" runat="server" ControlToValidate="ddlPre_LoadForm"
                                                            ErrorMessage="*" SetFocusOnError="True" ValidationGroup="addField" Width="4px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblPreLoadField" runat="server" CssClass="cssLabelForm" Text="Seleccione el Campo"
                                                            Visible="False"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:DropDownList ID="ddlPreLoadField" runat="server" CssClass="cssDDL" Height="30px"
                                                            Visible="False" Width="164px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="rfvPreLoadField" runat="server" ControlToValidate="ddlPreLoadField"
                                                            ErrorMessage="*" SetFocusOnError="True" ValidationGroup="addField" Width="4px"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblhaveChildFiled" runat="server" CssClass="cssLabelForm" 
                                                            Text="Tiene Listas Hijas"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">
                                                        <asp:CheckBox ID="cbHaveChildFiled" runat="server" AutoPostBack="True" CssClass="cssTextBoxForm" />
                                                    </td>
                                                    <td>
                                                        &#160;&#160;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 314px">
                                                        <asp:Label ID="lblChildField" runat="server" CssClass="cssLabelForm" Text="Lista Hija"></asp:Label>
                                                    </td>
                                                    <td style="width: 227px">                                                    
                                                        <asp:CheckBoxList ID="cblChildFields" runat="server" RepeatColumns="4" RepeatLayout="Table">                                                        
                                                        </asp:CheckBoxList>
                                                    </td>
                                                    <td>
                                                        *
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <table width="100%">
                                                            <asp:PlaceHolder ID="pnlRulesTitle" runat="server" Visible="false">
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        <span style="font-size: medium">Reglas y validaciones </span>
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                            <asp:PlaceHolder ID="pnlMaxLenght" runat="server" Visible="false">
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        Longitud Máxima
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtMaxLenght" runat="server" CssClass="cssTextBoxForm"></asp:TextBox><cc1:FilteredTextBoxExtender
                                                                            ID="ftMaxLenght" runat="server" FilterType="Numbers" TargetControlID="txtMaxLenght" />
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                            <asp:PlaceHolder ID="pnlFormatRule" runat="server" Visible="false">
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        Modo validación (Solo para String)
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlFormatValidationMode" runat="server" CssClass="cssDDL" onchange="formatValidationChanged()"
                                                                            Width="169px">
                                                                            <asp:ListItem Value="NoValidation">Sin Validar</asp:ListItem>
                                                                            <asp:ListItem Value="ValidCharacters">Caracteres Válidos</asp:ListItem>
                                                                            <asp:ListItem Value="InvalidCharacters">Caracteres Inválidos</asp:ListItem>
                                                                            <asp:ListItem Value="RegularExpression">Expresión Regular</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        Caractéres a validar
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtFormatRule" runat="server" CssClass="cssTextBoxForm" Width="296px"></asp:TextBox>
                                                                        <cc1:TextBoxWatermarkExtender
                                                                            ID="tweFormatRule" runat="server" TargetControlID="txtFormatRule" WatermarkCssClass="watermarked"
                                                                            WatermarkText="Caracteres o expresión regular" />
                                                                        <select id="listRegularExpression" onchange="regularExpresionChanged()" style="visibility: hidden">
                                                                            <option value="">Personalizada</option>
                                                                            <option value="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">E-Mail</option>
                                                                            <option value="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">Internet URL</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                            <asp:PlaceHolder ID="pnlCheckBoxValue" runat="server" Visible="false">
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        Iniciar seleccionado
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="cbDefaultCheck" runat="server" />
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                            <asp:PlaceHolder ID="pnlRangeValues" runat="server" Visible="false">
                                                                <tr>
                                                                    <td style="width: 314px">
                                                                        Rango de valores
                                                                    
                                                                    </td>
                                                                    <td>
                                                                        Desde: <asp:TextBox ID="tbMinimunValue" runat="server"></asp:TextBox> 
                                                                    <br />                                                                    
                                                                        Hasta: <asp:TextBox ID="tbMaximunValue" runat="server"></asp:TextBox>                                                                        
                                                                        <asp:CompareValidator ID="rangeRuleValidator" runat="server" ErrorMessage=" * Este debe ser el valor mayor." ControlToValidate="tbMinimunValue" ControlToCompare="tbMaximunValue" Operator="LessThan"></asp:CompareValidator>
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- Validadores y reglas -->
                                        
</ContentTemplate>
</asp:UpdatePanel>
                                

                                
</ContentTemplate>
                            
</cc1:TabPanel>
                            <cc1:TabPanel ID="tpDinamyc" runat="server" HeaderText="Tablas Dinamicas" Visible="False">
                                <HeaderTemplate>
                                    Tablas Dinamicas
</HeaderTemplate>
                                
<ContentTemplate>
                                    <asp:UpdatePanel ID="upDinamicTableSettings" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <table width="100%">
                                                <tr>
                                                    <td colspan="2">
                                                        <table width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblColumName" runat="server" CssClass="cssLabelForm" Text="Nombre de la Columna"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtColumName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                                        ID="rfvColumName" runat="server" ControlToValidate="txtColumName" ErrorMessage="*"
                                                                        ValidationGroup="dinamycTable"></asp:RequiredFieldValidator>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblFieldData" runat="server" CssClass="cssLabelForm" Text="Campo"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtFieldData" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                                                        ID="rfvFieldData" runat="server" ControlToValidate="txtFieldData" ErrorMessage="*"
                                                                        ValidationGroup="dinamycTable"></asp:RequiredFieldValidator>
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="btnAddColum" runat="server" Text="Agregar Columna" CssClass="cssButton"
                                                                        OnClick="btnAddColum_Click" ValidationGroup="dinamycTable" Visible="False" /><asp:Button
                                                                            ID="btnDeleteColum" runat="server" Text="Quitar Columna" CssClass="cssButton"
                                                                            ValidationGroup="dinamycTable" OnClick="btnDeleteColum_Click" Visible="False" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:GridView ID="gvTable" runat="server" CssClass="cssGrid" Width="100%">
                                                            <RowStyle CssClass="cssItemStyle" />
                                                            <PagerStyle CssClass="cssPager" />
                                                            <HeaderStyle CssClass="cssHeaderStyle" />
                                                            <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="cbChildProcess" runat="server" CssClass="cssLabel" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblChildProcess" runat="server" CssClass="cssLabelForm" Text="Crear un Proceso para cada uno de los registros ingresados en la tabla. (Solo funciona para los formularios de inicio de proceso.)"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                
                                
</ContentTemplate>
                            
</cc1:TabPanel>
                            <cc1:TabPanel ID="tpStyles" runat="server" HeaderText="Estilos del título">
                                <HeaderTemplate>
                                    Estilos del título
</HeaderTemplate>
                                
<ContentTemplate>
                                    <table width="100%">
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%">
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Fuente
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlFont" runat="server">
                                                                <asp:ListItem Text="Por defecto" Value="default" />
                                                                <asp:ListItem Text="Arial" Value="Arial, Helvetica, sans-serif" />
                                                                <asp:ListItem Text="Comic Sans MS" Value="'Comic Sans MS', cursive, sans-serif" />
                                                                <asp:ListItem Text="Courier New" Value="'Courier New', Courier, monospace" />
                                                                <asp:ListItem Text="Tahoma" Value="Tahoma, Geneva, sans-serif" />
                                                                <asp:ListItem Text="Times New Roman" Value="'Times New Roman', Times, serif" />
                                                                <asp:ListItem Text="Verdana" Value="Verdana, Geneva, sans-serif" />
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Color
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tbTitleColor" MaxLength="6" Style="float: left" /><asp:ImageButton
                                                                runat="server" ID="ibTitleColor" Style="float: left; margin: 0 3px" ImageUrl="../Images/colorselectbutton.png"
                                                                AlternateText="Haga clic para seleccionar un color" /><asp:Panel EnableTheming="False"
                                                                    ID="pnlTitleColor" Style="width: 18px; height: 18px; border: 1px solid #000;
                                                                    margin: 0 3px; float: left" runat="server">
                                                                </asp:Panel>
                                                            <cc1:ColorPickerExtender ID="cpeTitleColor" runat="server" TargetControlID="tbTitleColor"
                                                                PopupButtonID="ibTitleColor" SampleControlID="pnlTitleColor" Enabled="True">
                                                            </cc1:ColorPickerExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Negrita
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="cbBold" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Cursiva
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="cbItalic" runat="server"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Subrayado
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="cbUnderline" runat="server"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 118px">
                                                            Alineación
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlHorizontalAlign" runat="server">
                                                                <asp:ListItem Value="Left">Izquierda</asp:ListItem>
                                                                <asp:ListItem Value="Right">Derecha</asp:ListItem>
                                                                <asp:ListItem Value="Center">Centrado</asp:ListItem>
                                                                <asp:ListItem Value="Justify">Justificado</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                
                                
</ContentTemplate>
                            
</cc1:TabPanel>
                        </cc1:TabContainer>
                    </td>
                </tr>
                <tr>
                    <td style="height: 77px">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAddFields" runat="server" Text="Agregar" ValidationGroup="addField"
                            CssClass="cssButton" />
                        <asp:Button ID="btnSave" runat="server" Text="Guardar" ValidationGroup="addField"
                            CssClass="cssButton" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="cssButton" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
