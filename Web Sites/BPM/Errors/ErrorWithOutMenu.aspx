<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ErrorWithOutMenu.aspx.vb" Inherits="BPMWebSite.ErrorWithOutMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Error en la Aplicación</title>
</head>
<body>
--%>

<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowError.Master"
    Codebehind="ErrorWithOutMenu.aspx.vb" Inherits="BPMWebSite.ErrorWithOutMenu"
    Title="Error en la Aplicacióna" %>

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
