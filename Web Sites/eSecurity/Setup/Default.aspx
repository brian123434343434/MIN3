<%@ page language="VB" autoeventwireup="false" inherits="Setup_Default, App_Web_ogmrujjs" theme="GattacaAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Instalación Producto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="cboClient" runat="server" DataSourceID="ClientDataSource" DataTextField="Name"
            DataValueField="Value" Width="152px">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboClient"
            ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Actualizar" />
        <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
        </asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
