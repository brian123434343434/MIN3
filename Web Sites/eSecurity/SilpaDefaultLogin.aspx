<%@ Page Language="VB" MasterPageFile="~/MasterPages/SecurityLogin.master" AutoEventWireup="false"
    CodeFile="SilpaDefaultLogin.aspx.vb" Inherits="SilpaDefaultLogin" Title="Untitled Page" Theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td class="cssNone">
                <asp:Label ID="Label1" runat="server" Text="Cliente"></asp:Label>
            </td>
            <td rowspan="6" valign="top" class="cssBtnLogin">
                <asp:Button ID="btnLogIn" runat="server" TabIndex="3" />
            </td>
        </tr>
        <tr>
            <td style="padding: 4px 0 0 0;">
                <asp:DropDownList ID="cboClient" runat="server" DataSourceID="ClientDataSource" CssClass="FormularioLogin"
                    DataTextField="Name" DataValueField="Value" TabIndex="1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboClient"
                    ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="cssNone">
                <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="inputLoginUser">
                <asp:TextBox ID="txtUserName" runat="server" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName"
                    Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="cssNone">
                <asp:Label ID="Label3" runat="server" Text="Contrase&ntilde;a"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="inputLoginPass">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword"
                    Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
    </asp:XmlDataSource>
</asp:Content>
