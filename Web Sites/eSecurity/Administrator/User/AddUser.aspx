<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_User_AddUser, App_Web_z2f_sopw" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="2" style="height: 20px">
            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle"></asp:Label>
            <hr />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table align="center" bgcolor="White" border="0" cellpadding="1" 
                cellspacing="1">
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Código</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtCode" runat="server" BackColor="WhiteSmoke" MaxLength="50" 
                            Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCode" Display="Dynamic" ErrorMessage="Dato Requerido" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Identificación
                    </td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtIdentification" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="50" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtIdentification" Display="Dynamic" 
                            ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Primer Nombre</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtFirstName" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="50" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtFirstName" Display="Dynamic" 
                            ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Segundo Nombre</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtMiddleName" runat="server" MaxLength="50" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Apellidos</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtLastName" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="50" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Dato Requerido" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Contraseña</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtPassword" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="20" TextMode="Password" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Dato Requerido" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Verificar Contraseña</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtCheckPassword" runat="server" MaxLength="20" 
                            TextMode="Password" Width="225px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtPassword" ControlToValidate="txtCheckPassword" 
                            Display="Dynamic" ErrorMessage="Contraseña no coincide" Font-Bold="True" 
                            SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Cargo</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtPositionName" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="50" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtPositionName" Display="Dynamic" 
                            ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Sucursal</td>
                    <td style="width: 430px">
                        <asp:DropDownList ID="ddlIDLocality" runat="server" Width="229px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp;&nbsp;Dirección de correo electrónico</td>
                    <td style="width: 430px">
                        <asp:TextBox ID="txtemail" runat="server" BackColor="WhiteSmoke" 
                            MaxLength="100" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Dato Requerido" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" 
                            ErrorMessage="Formato de correo no válido" Font-Bold="true" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp; Última Entrada</td>
                    <td style="width: 430px">
                        <asp:Label ID="lblLastLogin" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp; Última Salida</td>
                    <td style="width: 430px">
                        <asp:Label ID="lblLastLogOut" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp; Cambiar contraseña</td>
                    <td style="width: 430px">
                        <asp:CheckBox ID="chkPassword" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="cssFormFieldName" style="width: 211px">
                        &nbsp; Estado</td>
                    <td style="width: 430px; margin-left: 40px;">
                        <asp:DropDownList ID="ddlState" runat="server" Width="229px">
                            <asp:ListItem Value="T">Habilitado</asp:ListItem>
                            <asp:ListItem Selected="True" Value="F">Deshabilitado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblIdCompany" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnAdd" runat="server" Text="Crear" Width="60px" />
            &nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Guardar" Width="60px" />
            &nbsp;
            <asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                Text="Eliminar" Width="60px" />
            &nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancelar" 
                CausesValidation="False" />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="cssRequired" 
                ForeColor="Red" Visible="False">Si elimina, los cambios no pueden ser revertidos. Está seguro que desea eliminar?</asp:Label>
            <br />
            <asp:Label ID="lblErrorMessage" runat="server" CssClass="cssRequired" 
                ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="btnConfirmDelete" runat="server" CausesValidation="False" 
                Text="Eliminar" Visible="False" Width="60px" />
            <asp:Button ID="btnCancelDelete" runat="server" CausesValidation="False" 
                Text="Cancelar" Visible="False" Width="60px" />
        </td>
    </tr>
</table>
</asp:Content>

