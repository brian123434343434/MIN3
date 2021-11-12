<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowError.Master"
    CodeBehind="Logout.aspx.vb" Inherits="BPMWebSite.Logout" Title="Salida del Sistema" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" align="center">
                                <h3>
                                    El usuario se ha desconectado de forma correcta.</h3>
                                Para volver a la página principal pulse el botón de "Aceptar".
                                <asp:Label ID="lblErrorMessage" runat="server" Text="Fin de Sesión de Administración"></asp:Label>&nbsp;
                                <br /> <br />
                                <asp:HyperLink ID="hlReturnApplication" runat="server" CssClass="cssLinkSpecial"
                                    NavigateUrl="~/Internalparticipant">Aceptar</asp:HyperLink><br />
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
</asp:Content>
<%--        </div>
    </form>
</body>
</html>
--%>
