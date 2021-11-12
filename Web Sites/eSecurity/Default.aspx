<%@ page language="VB" masterpagefile="MasterPages/SecurityDefault.master" autoeventwireup="false" inherits="_Default, App_Web_3snivjku" title="Gattaca eSecurity" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center" valign="middle">
                    <table width="464" height="387" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td valign="middle" align="center">
                                <br />
                                <span align="center"><b>Sistema Administrador de Seguridad</b></span><br />
                                <br />
                                <table border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="lblClientName" runat="server" Text="Cliente"></asp:Label>
                                        </td>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="cboClient" runat="server" DataSourceID="ClientDataSource" DataTextField="Name"
                                                DataValueField="Value" Width="152px">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboClient"
                                                ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="lblUserName" runat="server" Text="Usuario"></asp:Label>
                                        </td>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtUserName" runat="server" Width="144px" Text="" meta:resourcekey="txtUserNameResource1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvUsr" runat="server" ControlToValidate="txtUserName"
                                                ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <span id="Span3">
                                                <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label></span>
                                        </td>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Text="" Width="144px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvPw" runat="server" ControlToValidate="txtPassword"
                                                ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" align="right" style="height: 8px; text-align: center;">
                                            <asp:Label ID="lblMessageError" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                        <td align="left">
                                            &nbsp;<asp:Button ID="btnLogIn" runat="server" Text="Ingresar" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
        </asp:XmlDataSource>
    </div>
</asp:Content>
