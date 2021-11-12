<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addListSourceValue, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
<table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                <tr>
                        <td style="width: 235px">  
                            <asp:Label ID="lbCode" runat="server" Text="Código" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCode" runat="server" Width="400px" CssClass="cssTextBoxForm" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" 
                                ControlToValidate="txtCode" ErrorMessage="*" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label2" runat="server"  CssClass="cssLabelForm" Text="Ingrese el código del ListSource"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">  
                            <asp:Label ID="lblName" runat="server" Text="Nombre" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="400px" CssClass="cssTextBoxForm" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTxtName" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="*" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblHelpName" runat="server"  CssClass="cssLabelForm" 
                                Text="Ingrese el nombre ListSource"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnAddData" runat="server" Text="Agregar Datos" ValidationGroup="addForm" CssClass="cssButton" />
                            <asp:Button ID="btnSave" runat="server" Text="Guardar" ValidationGroup="addForm" CssClass="cssButton"  />
                            <asp:Button ID="btnDelete" runat="server" Text="Eliminar" CssClass="cssButton"  />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

