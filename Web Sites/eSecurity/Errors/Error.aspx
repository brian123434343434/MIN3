<%@ page title="" language="VB" masterpagefile="~/MasterPages/SecurityDefault.master" autoeventwireup="false" inherits="Errors_Error, App_Web_iuqambc1" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="70%">
        <tr>
            <td>
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/App_Themes/GattacaAdmin/Images/Errors/Error.gif" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="height: 32px">
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cssLinkSpecial" 
                    NavigateUrl="~/Default.aspx">Click aquí para Ingresar nuevamente</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="height: 12px">
                <asp:HyperLink ID="hlReturn" runat="server" CssClass="cssLinkSpecial">Regresar a 
                la página anterior</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

