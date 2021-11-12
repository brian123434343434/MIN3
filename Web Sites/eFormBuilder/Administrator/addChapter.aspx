<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addChapter, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td> 
                <table style="width: 100%">
                    <tr>
                        <td> 
                            <asp:Label ID="lblIdForm" runat="server" Text="Formulario" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td style="width: 367px">
                            <asp:DropDownList ID="ddlIdForm" runat="server" Width="400px" CssClass="cssDDL">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td style="width: 66px">
                            <asp:Label ID="lblHelpIdForm" runat="server"  CssClass="cssLabelForm" Text="Seleccione el formulario" Width="149px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblheaderText" runat="server" Text="Nombre Capitulo" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td style="width: 367px">                            
                            <asp:TextBox ID="txtheaderText" runat="server" Width="400px" CssClass="cssTextBoxForm" MaxLength="50" ValidationGroup="addChapter"></asp:TextBox>&nbsp;
						</td>
                        <td style="width: 100px">
                            &nbsp;<asp:RequiredFieldValidator ID="rfvheaderText" runat="server" ControlToValidate="txtheaderText"
                                ErrorMessage="*" ValidationGroup="addChapter"></asp:RequiredFieldValidator></td>
                        <td style="width: 66px">
                            <asp:Label ID="lblHelpheaderText" runat="server" CssClass="cssLabelForm" 
                                Text="Nombre que aparece en el tab" Width="152px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblhelpText" runat="server" Text="Texto de Ayuda" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td style="width: 367px">                            
                            <asp:TextBox ID="txthelpText" runat="server" Rows="4"  CssClass="cssTextBoxForm" TextMode="MultiLine" Width="400px" MaxLength="300"></asp:TextBox>
						</td>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblhelphelpText" runat="server" Text="Texto ayuda del Capitulo" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltabOrder" runat="server" Text="Orden del Tab" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td style="width: 367px">
                            <asp:TextBox ID="txttabOrder" runat="server" Width="400px" CssClass="cssTextBoxForm" ValidationGroup="addChapter"></asp:TextBox>
                        </td>
                        <td style="width: 100px">
                            <asp:RegularExpressionValidator ID="revTabOrder" runat="server" ControlToValidate="txttabOrder"
                                ErrorMessage="Ingresar solo números" ValidationExpression="[0-9]*" ValidationGroup="addChapter"></asp:RegularExpressionValidator>&nbsp;<br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttabOrder"
                                ErrorMessage="*" ValidationGroup="addChapter"></asp:RequiredFieldValidator></td>
                        <td style="width: 66px">
                            <asp:Label ID="lblhelptabOrder" runat="server"  CssClass="cssLabelForm" Text="Orden del Tab en el contenedor" Width="150px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnAddData" runat="server" Text="Agregar Datos" ValidationGroup="addChapter" 
                                CssClass="cssButton" />&nbsp;<asp:Button 
                                ID="btnSave" runat="server" 
                                Text="Guardar" ValidationGroup="addChapter" CssClass="cssButton" />
                                &nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />&nbsp;                            
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="cssButton" />
                            <cc1:ConfirmButtonExtender ID="deleteConfirmButtonExtender" runat="server" ConfirmText="¿Está seguro que desea eliminar el capítulo? Tenga en cuenta que no se borrarán los campos asociados a este." 
                             TargetControlID="btnEliminar">
                            </cc1:ConfirmButtonExtender>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

