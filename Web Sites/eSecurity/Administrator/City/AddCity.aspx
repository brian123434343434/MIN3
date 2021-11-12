<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_City_AddCity, App_Web_a_fjogsw" title="Ciudad" theme="GattacaAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="white"
                            style="width: 483px">
                            <tr>
                                <td class="cssFormFieldName" style="text-align: left; ">
                                    Código
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtCode" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="15"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCode"
                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="color: #333333">
                                <td class="cssFormFieldName" style="text-align: left; ">
                                    Nombre
                                </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtName" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="color: #333333">
                                <td class="cssFormFieldName" style="text-align: left; ">
                                    País
                                </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="ddlCountry" runat="server" AppendDataBoundItems="True" Width="229px"
                                        AutoPostBack="True" BackColor="WhiteSmoke">
                                        <asp:ListItem Selected="True" Value=" ">-- SELECCIONE --</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCountry"
                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="cssFormFieldName" style="text-align: left">
                                    Departamento / Estado
                                </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="ddlDepto" runat="server" AppendDataBoundItems="True" Width="229px"
                                        BackColor="WhiteSmoke">
                                        <asp:ListItem Selected="True" Value=" ">-- SELECCIONE --</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlDepto"
                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="cssFormFieldName" style="text-align: left; ">
                                    Estado
                                </td>
                                <td style="text-align: left">
                                    <asp:RadioButtonList ID="rblHabilitado" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="True" Selected="True">Habilitado</asp:ListItem>
                                        <asp:ListItem Value="False">Deshabilitado</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="btnAdd" runat="server" Text="Crear" Width="60px" />&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Text="Guardar" Width="60px" />&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Eliminar" Width="60px" /><br />
                        <asp:Label ID="lblMessage" runat="server" CssClass="cssRequired" ForeColor="Red"
                            Visible="False">Si elimina los cambios no pueden ser revertidos. ¿Está 
                        seguro que desea eliminar?</asp:Label><br />
                        <br />
                        <asp:Button ID="btnConfirmDelete" runat="server" Text="Eliminar" Visible="False"
                            Width="60px" />
                        <asp:Button ID="btnCancelDelete" runat="server" Text="Cancelar" Visible="False" Width="60px" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
