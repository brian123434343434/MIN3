<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addForm, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblName" runat="server" Text="Nombre" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="400px" CssClass="cssTextBoxForm"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTxtName" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblHelpName" runat="server" CssClass="cssLabelForm" Text="Ingrese el nombre del formulario"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblType" runat="server" Text="Tipo" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlType" runat="server" Width="400px" CssClass="cssDDL">
                                <asp:ListItem Selected="True" Value="dynamic">Dinamico</asp:ListItem>
                                <asp:ListItem Value="DER">Basado en un DER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblHelpType" runat="server" CssClass="cssLabelForm" Text="Ingrese el tipo de formulario"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblDescription" runat="server" Text="Descripcion" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDescriptionText" runat="server" Rows="4" CssClass="cssTextBoxForm"
                                TextMode="MultiLine" Width="400px" MaxLength="200"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblHelpDescription" runat="server" Text="Texto descriptivo del formulario"
                                CssClass="cssLabelForm"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblHelpText" runat="server" Text="Texto Ayuda" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtHelpText" runat="server" Rows="4" TextMode="MultiLine" Width="400px"
                                CssClass="cssTextBoxForm" MaxLength="200"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="lblHelpHelp" runat="server" CssClass="cssLabelForm" Text="Texto de ayuda para el diligenciar de formulario"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblEndActivity" runat="server" Text="Finalizar Actividad eWorkFlow"
                                CssClass="cssLabelForm" Enabled="False"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="cbEndActivity" runat="server" Enabled="False" />
                        </td>
                        <td>
                            <asp:Label ID="lblHelpEndActivity" runat="server" CssClass="cssLabelForm" Text="Finalizar Actividad eWorkFlow"
                                Enabled="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblupdateActivity" runat="server" Text="Modificar Instancia Actividad eWorkFlow (Para Condiciones Automaticas)"
                                CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="cbupdateActivity" runat="server" Checked="True" />
                        </td>
                        <td>
                            <asp:Label ID="lblHelpupdateActivity" runat="server" CssClass="cssLabelForm" Text="Modificar la instancia de la Actividad eWorkFlow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnAddData" runat="server" Text="Agregar Datos" ValidationGroup="addForm"
                                            CssClass="cssButton" />
                                        <asp:Button ID="btnSave" runat="server" Text="Guardar" ValidationGroup="addForm"
                                            CssClass="cssButton" />
                                        <asp:Button ID="btnDelete" runat="server" Text="Eliminar" CssClass="cssButton" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="btnClone" runat="server" Text="Clonar Formulario" CssClass="cssButton"
                                            ForeColor="Red" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblMessage" CssClass="cssRequired" runat="server" Visible="False"
                                            ForeColor="Red">¿Está seguro que desea eliminar el formulario?. Se eliminarán también todos los campos y capítulos asociados a este formulario.</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnConfirmDelete" CssClass="cssButton" runat="server" Visible="False"
                                            Text="Confirmar"></asp:Button>
                                        <asp:Button ID="btnCancelDelete" CssClass="cssButton" runat="server" Visible="False"
                                            Text="Cancelar"></asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
