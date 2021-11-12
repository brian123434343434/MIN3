<%@ page language="VB" masterpagefile="~/Master/mpLogin.master" autoeventwireup="false" inherits="Security_login, App_Web_ss47c5xs" title="eFormBuilder V83 - Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphLogin" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%">
                <tr>
                    <td valign="bottom" align="center">
                        <div class="cssTitleLogin">
                            Módulo de Formularios Dinamicos.
                        </div>
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="cssNone">
                                    <asp:Label ID="lblClientName" runat="server" Text="Cliente"></asp:Label>
                                </td>
                                <td rowspan="6" valign="top" class="cssBtnLogin">
                                    <asp:Button ID="btnLogIn" runat="server" TabIndex="3" />
                                </td>
                            </tr>
                            <tr>
                                <td class="cssTextBoxCliente">
                                    <asp:DropDownList ID="ddlClient" runat="server" DataSourceID="ClientDataSource" CssClass="FormularioLogin"
                                        DataTextField="Name" DataValueField="Value" TabIndex="1">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="cssNone">
                                    <asp:Label ID="lblUserName" runat="server" Text="Usuario"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="inputLoginUser">
                                    <asp:TextBox ID="txtUser" runat="server" TabIndex="1">administrator</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsr" runat="server" ControlToValidate="txtUser"
                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="cssNone">
                                    <asp:Label ID="lblPassword" runat="server" Text="Contrase&ntilde;a"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="inputLoginPass">
                                    <asp:TextBox ID="txtPw" runat="server" TextMode="Password" TabIndex="2">admingtk</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPw" runat="server" ControlToValidate="txtPw" Display="Dynamic"
                                        ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <table width="100%" height="0" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="cssTxtFooterLogin">
                                    Derechos Reservados de Autor<br />
                                    Gattaca S.A. © 2000 -
                                    <%=Year(Now) %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
    </asp:XmlDataSource>
</asp:Content>
