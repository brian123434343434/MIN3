<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LogOff.aspx.vb" Inherits="BPMWebSite.LogOff"
    Theme="SoftManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WorkFlow V8 - Tareas</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" style="margin: auto; width: 100%;">
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="cssHeaderBg">
                    <tr>
                        <td style="width: 261px">
                            <a href="#"><asp:Image ID="headerLeft" runat="Server" SkinID="headerLeft" /></a></td>
                        <td></td>
                        <td align="right"><asp:Image ID="headerRight" runat="Server" SkinID="headerRight" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="cssBkgPageLeft">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            &nbsp;&nbsp;
                        </td>
                        <td>
                            <%--<asp:Menu ID="mnInternalParticipant" runat="server" DataSourceID="InternalParticipantMenuDataSource"
                                    Orientation="Horizontal">
                                    <StaticMenuStyle CssClass="cssStaticMenu" />
                                    <StaticMenuItemStyle CssClass="cssStaticMenuItem" />
                                    <DynamicHoverStyle CssClass="cssDynamicMenuHover" />
                                    <DynamicMenuStyle CssClass="cssDynamicMenu" />
                                    <StaticSelectedStyle CssClass="cssStaticMenuSelected" />
                                    <DynamicSelectedStyle CssClass="cssDynamicMenuSelected" />
                                    <DynamicMenuItemStyle CssClass="cssDynamicMenuItem" />
                                    <StaticHoverStyle CssClass="cssStaticMenuHover" />
                                </asp:Menu>--%>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="cssBkgPageLeft">
                    <tr>
                        <td valign="bottom">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="cssBkgPageLeft">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="34">
                            &nbsp;
                        </td>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <div align="center">
                                            <table height="350">
                                                <tr>
                                                    <td style="text-align: left">
                                                        <asp:Image ID="ErrorTop" SkinID="ErrorTop" runat="server" /><table width="530" border="0"
                                                            cellspacing="0" cellpadding="0" class="cssErrorBox">
                                                            <tr>
                                                                <td rowspan="2" valign="top">
                                                                    <asp:Image ID="ErrorLeft" SkinID="ErrorLeft" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <b>Fin de Sesión de Administración </b>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top">
                                                                    <p>
                                                                        <a href="default.aspx">Ingresar Nuevamente</a></p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="34">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="cssFooterBg">
                    <tr>
                        <td class="cssTxtFooter">
                            Derechos Reservados de Autor / 2000 -
                            <%=Year(Now)%>
                        </td>
                        <td width="50" align="right">
                            <a href="http://www.e-gattaca.com">
                                <asp:Image ID="Image4" runat="Server" SkinID="footerRight" /></a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <map name="Gattaca" id="Gattaca">
        <area shape="rect" coords="4,13,111,43" href="http://www.e-gattaca.com" target="_blank" />
    </map>
    </form>
</body>
</html>
