<%@ page language="VB" autoeventwireup="false" inherits="Security_showAppSettings, App_Web_ss47c5xs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblTitle" runat="server" 
            Text="LISTA DE PARAMETROS DE LA APLICACION - MODUDO VBFORMBUILDER"></asp:Label>
    </div>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnShowParams" runat="server" TabIndex="3" Text="Mostrar los parametros cargados"/>
                <asp:Button ID="btnReloadParams" runat="server" TabIndex="3" 
                    Text="Recargar los parametros"/>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvData" runat="server" Width="100%">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
