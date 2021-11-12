<%@ page language="VB" autoeventwireup="false" inherits="Test_Default2, App_Web_lsfw60ot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="{0}" Target="_blank" Text="Ver" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
