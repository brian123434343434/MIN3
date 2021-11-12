<%@ page title="" language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Test_TestBack, App_Web_lsfw60ot" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" Runat="Server">
    <script type="text/javascript" language="javascript">
     function show() {
         alert('hola');
        }
    </script>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="javascript:showProgressIndicatorPanel()" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Button" />
    <br />
</asp:Content>

