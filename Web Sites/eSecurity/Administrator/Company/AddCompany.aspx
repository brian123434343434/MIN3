<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AddCompany, App_Web__yjwvz_k" theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 549px;
        }
        .style2
        {
            height: 23px;
            width: 549px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="White">
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            C&oacute;digo
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtCode" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" Display="Dynamic" ErrorMessage="Dato requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Nombre
                            <asp:Label ID="lblTypeCompany" runat="server"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtName" runat="server" MaxLength="49" Width="225px" BackColor="WhiteSmoke"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Razón Social</td>
                        <td class="style1">
                            <asp:TextBox ID="txtLegalName" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLegalName"
                                Display="Dynamic" ErrorMessage="Dato requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Nombre corto</td>
                        <td class="style1">
                            <asp:TextBox ID="txtShortName" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Nit</td>
                        <td class="style1">
                            <asp:TextBox ID="txtIdentification" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtIdentification"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Departamento</td>
                        <td class="style1">
                            <asp:DropDownList ID="ddlDepto" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                OnSelectedIndexChanged="ddlDepto_SelectedIndexChanged" Width="229px" BackColor="WhiteSmoke">
                                <asp:ListItem Selected="True" Value=" ">-- SELECCIONE --</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlDepto"
                                Display="Dynamic" ErrorMessage="Dato requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Ciudad</td>
                        <td class="style1">
                            <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="True" Width="229px"
                                BackColor="WhiteSmoke">
                                <asp:ListItem Selected="True" Value=" ">-- SELECCIONE --</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlCity"
                                Display="Dynamic" ErrorMessage="Dato requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Direcci&oacute;n</td>
                        <td class="style1">
                            <asp:TextBox ID="txtAddress" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Tel&eacute;fono 1</td>
                        <td class="style1">
                            <asp:TextBox ID="txtPhoneNumber1" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtPhoneNumber1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="width: 150px">
                            Tel&eacute;fono 2</td>
                        <td class="style1">
                            <asp:TextBox ID="txtPhoneNumber2" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px; height: 23px">
                            Fax</td>
                        <td class="style2">
                            <asp:TextBox ID="txtFax" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Página Web</td>
                        <td class="style1">
                            <asp:TextBox ID="txtURL" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            e-Mail</td>
                        <td class="style1">
                            <asp:TextBox ID="txtemail" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail"
                                Display="Dynamic" ErrorMessage="Formato de correo no válido" Font-Bold="true"
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <!--<tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            &nbsp;&nbsp;Logo</td>
                        <td style="width: 254px">
                            <asp:TextBox ID="txtLogo" runat="server" Width="225px"></asp:TextBox></td>
                    </tr>-->
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            R&eacute;gimen de impuestos</td>
                        <td class="style1">
                            <asp:DropDownList ID="ddlTaxRegimen" runat="server" Width="229px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Nombre del Propietario</td>
                        <td class="style1">
                            <asp:TextBox ID="txtManagerName" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="49"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtManagerName"
                                Display="Dynamic" ErrorMessage="Dato requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            e-Mail del Propietario</td>
                        <td class="style1">
                            <asp:TextBox ID="txtManagerEMail" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtManagerEMail"
                                Display="Dynamic" ErrorMessage="Formato de correo no válido" Font-Bold="true"
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Nombre del Contacto</td>
                        <td class="style1">
                            <asp:TextBox ID="txtContactName" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="height: 23px; width: 150px;">
                            Cargo del Contacto</td>
                        <td class="style2">
                            <asp:TextBox ID="txtContactPosition" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            e-Mail del Contacto</td>
                        <td class="style1">
                            <asp:TextBox ID="txtContactEMail" runat="server" Width="225px" MaxLength="49"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContactEMail"
                                Display="Dynamic" ErrorMessage="Formato de correo no válido" Font-Bold="true"
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 150px">
                            Estado</td>
                        <td class="style1">
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
                <asp:Button ID="btnAdd" runat="server" Text="Crear" Width="60px" />&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Guardar" Width="60px" />&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Eliminar" Width="60px" CausesValidation="False" /><br />
                <asp:Label ID="lblMessage" runat="server" CssClass="cssRequired" ForeColor="Red"
                    Visible="False">Si elimina, los cambios no podrán ser revertidos. ¿Está seguro que desea eliminar?</asp:Label><br />
                <br />
                <asp:Button ID="btnConfirmDelete" runat="server" Text="Eliminar" Visible="False"
                    Width="60px" CausesValidation="False" />
                <asp:Button ID="btnCancelDelete" runat="server" Text="Cancelar" Visible="False" Width="60px"
                    CausesValidation="False" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:DropDownList ID="ddlLocalCurrency" runat="server" Width="229px" Visible="False">
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="txtPOBox" runat="server" Width="225px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlExchangeCurrency" runat="server" Width="229px" Visible="False">
                </asp:DropDownList>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
