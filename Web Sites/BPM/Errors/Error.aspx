<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowError.Master"
    Codebehind="Error.aspx.vb" Inherits="BPMWebSite._Error" Title="Error en la Aplicación" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table height="350">
            <tr>
                <td style="text-align: left">
                    <asp:Image ID="ErrorTop" SkinID="ErrorTop" runat="server" /><table width="530" border="0"
                        cellspacing="0" cellpadding="0" class="cssErrorBox">
                        <tr>
                            <td rowspan="2" valign="top">
                                <asp:Image ID="ErrorLeft" SkinID="ErrorLeft" runat="server" /></td>
                            <td>
                                <span class="cssErrorTitle">Error</span></td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p>
                                    <asp:Label ID="lblErrorMessage" runat="server" Text="Mensaje de Error"></asp:Label>&nbsp;</p>
                                <p>
                                    <a href="javascript:window.history.back();" target="_top">Regresar a la página anterior</a></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                &nbsp;</td>
                            <td valign="top">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<%--        </div>
    </form>
</body>
</html>
--%>
