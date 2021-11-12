<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ViewEntryData.aspx.vb" Inherits="BPMWebSite.ViewEntryData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Gattaca BPM Suite</title>

    <script language="javascript" type="text/javascript">
        window.height=600;
        window.width=1024;
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True">La página a la cual esta intentado ingresar no esta disponible o no se encuentra [error: 404]</asp:Label>
    </div>
    </form>
</body>
</html>
