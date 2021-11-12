<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addInvokeMethod, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
<script type="text/javascript" language="javascript" >
function validateEvents()
{
    
    var item1 = document.getElementById("ctl00_cphPrincipal_ddlFormEvent");
    var item2 = document.getElementById("ctl00_cphPrincipal_ddlFieldEvent");
    
    if(item1.value == "Empty" && item2.value == "Empty")
    {
        alert("Debe seleccionar al menos un evento");
    }
    
}
</script>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:UpdatePanel ID="upControlDetail" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table width="100%">
                            <tr>
                                <td width="50%" valign="top">
                                    <table width="70%">
                                        <tr>
                                          <td width="30%">
                                                <asp:Label ID="lbCode" runat="server" CssClass="cssLabelForm" Text="Código"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField"
                                                    Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                                    ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm" Text="Nombre"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField"
                                                    Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                                    ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblPartnerLinl" runat="server" CssClass="cssLabelForm" Text="Enlace Servicio Web"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlPartnerLink" runat="server" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbMethod" runat="server" CssClass="cssLabelForm" Text="Método"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="ddlMethod" width="158px" ValidationGroup="addField"></asp:DropDownList>
                                                <%--<asp:TextBox ID="txtMethod" runat="server" Enabled ="False" CssClass="cssTextBoxForm"
                                                    ValidationGroup="addField" Width="158px"></asp:TextBox>--%>
                                            </td>
                                            <td>
                                                <%--<asp:RequiredFieldValidator ID="rfvURL" runat="server" ControlToValidate="txtMethod"
                                                    ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbForm" runat="server" CssClass="cssLabelForm" Text="Formulario"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbFormEvent" runat="server" CssClass="cssLabelForm" Text="Evento"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlFormEvent" runat="server" onblur="validateEvents();"  >
                                                    <asp:ListItem Text="Empty" Value="Empty"></asp:ListItem>
                                                    <asp:ListItem Text="Load" Value="Load"></asp:ListItem>
                                                    <asp:ListItem Text="Save" Value="Save"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbField" runat="server" CssClass="cssLabelForm" Text="Campo"></asp:Label>
                                            </td>
                                            <td>
                                            <cc1:ListSearchExtender ID="lseDdlField" runat="server" PromptText="buscar .." TargetControlID="ddlField" PromptPosition="Bottom">
                                                </cc1:ListSearchExtender>
                                                <asp:DropDownList ID="ddlField" runat="server" DataValueField="ID" DataTextField="code">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbFieldEvent" runat="server" CssClass="cssLabelForm" Text="Evento"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlFieldEvent" runat="server" onblur="validateEvents();"   >
                                                    <asp:ListItem Text="Empty" Value="Empty"></asp:ListItem>
                                                    <asp:ListItem Text="Load" Value="Load"></asp:ListItem>
                                                    <asp:ListItem Text="OnBlur" Value="OnBlur"></asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                        </tr>
                                        <tr><td colspan="4">
                                        <asp:CustomValidator ID="compEvent" runat="server" CssClass="errorText" 
                                                ClientValidationFunction="validateEvents"  ControlToValidate="ddlFormEvent"  
                                                 ValidationGroup="addField" Type="String"  ></asp:CustomValidator>
                                                </td></tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbInvokeType" runat="server" CssClass="cssLabelForm" Text="Tipo"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlInvokeType" runat="server" AutoPostBack="true">
                                                    <asp:ListItem Text="Seleccione" Value="-1"></asp:ListItem>
                                                    <asp:ListItem Text="Operation" Value="Xml Invoke"></asp:ListItem>
                                                    <asp:ListItem Text="Object Invoke" Value="Object"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <%--<td width="50%" valign="top" align="center">
                                    <asp:Label ID="lbMethodsText" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                        Text="Métodos del WebService"></asp:Label>
                                    <div style="overflow: auto; height: 150px;">
                                        <asp:GridView runat="server" ID="gvWebMethods" AutoGenerateColumns="false" Width="100%">
                                            <Columns>
                                                <asp:CommandField SelectText="Seleccionar" HeaderText="Acciones" ShowSelectButton="true" />
                                                <asp:BoundField HeaderText="Nombre" DataField="Name" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </td>--%>
                            </tr>
                            <tr>
                                <td >
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%" valign="top">
                                    <table width="50%" runat="server" id="tbXmlInvoke" visible="false" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbInvokeTypeText" runat="server" CssClass="cssLabelForm" Font-Size="Large"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeCode" runat="server" CssClass="cssLabelForm" Text="Código"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtXmlInvokeCode" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField"
                                                    Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvXmlInvokeCode" runat="server" ControlToValidate="txtXmlInvokeCode"
                                                    ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeName" runat="server" CssClass="cssLabelForm" Text="Nombre"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtXmlInvokeName" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField"
                                                    Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtXmlInvokeCode"
                                                    ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeParamList" runat="server" CssClass="cssLabelForm" Text="Tipo de parametros"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlXmlInvokeParamType" runat="server" AutoPostBack="true">
                                                    <asp:ListItem Text="Seleccione" Value="-1"></asp:ListItem>
                                                    <asp:ListItem Text="Field" Value="Field"></asp:ListItem>
                                                    <asp:ListItem Text="Text" Value="Text"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <%--agregar campo--%>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeField" runat="server" CssClass="cssLabelForm" Text="Campo"
                                                    Visible="false"></asp:Label>
                                            </td>
                                            <td>
                                                <cc1:ListSearchExtender ID="lseDdlXmlInvokeField" runat="server" PromptText="buscar" TargetControlID="ddlXmlInvokeField" PromptPosition="Bottom">
                                                </cc1:ListSearchExtender>
                                                <asp:DropDownList ID="ddlXmlInvokeField" runat="server" DataValueField="ID" DataTextField="code"
                                                    Visible="false">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Button runat="server" ID="BtnAddParamField" Text="Agregar" CssClass="cssButton"
                                                    Visible="false" ValidationGroup="addField" />
                                            </td>
                                        </tr>
                                        <%--Agregar texto--%>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeTextName" runat="server" CssClass="cssLabelForm" Text="Nombre"
                                                    Visible="false"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTextName" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addParam"
                                                    Visible="false" Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvTextoNombre" runat="server" ControlToValidate="txtTextName"
                                                    Visible="false" ErrorMessage="*" ValidationGroup="addParam" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lbXmlInvokeTextValue" runat="server" CssClass="cssLabelForm" Text="Valor"
                                                    Visible="false"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTextValue" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addParam"
                                                    Visible="false" Width="158px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvTextValue" runat="server" ControlToValidate="txtTextValue"
                                                    ErrorMessage="*" ValidationGroup="addParam" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                <asp:Button runat="server" ID="BtnAddParamText" Text="Agregar" CssClass="cssButton"
                                                    Visible="false" ValidationGroup="addField" />
                                            </td>
                                        </tr>
                                    </table>
                                </td></tr>
                                <tr>
                                <td valign="top" align="center" >
                                    <asp:UpdatePanel runat="server" ID="upParams" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label ID="lbParameteresText" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                                Text="Parametros de invocación"></asp:Label>
                                            <br />
                                            <div style="overflow: auto; height: 150px;">
                                                <asp:GridView runat="server" ID="gvParams" AutoGenerateColumns="false" Width="90%">
                                                    <Columns>
                                                        <asp:CommandField DeleteText="Eliminar" HeaderText="Acciones" ShowDeleteButton="true" />
                                                        <asp:BoundField HeaderText="Nombre" DataField="Name" />
                                                        <asp:BoundField HeaderText="Valor" DataField="Value" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="height: 77px">
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAddInvokeMethod" runat="server" Text="Agregar" ValidationGroup="addField"
                    CssClass="cssButton" Visible="False" />
                <asp:Button ID="btnSave" runat="server" Text="Guardar" ValidationGroup="addField"
                    CssClass="cssButton" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="cssButton" />
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" ID="lbResult"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
