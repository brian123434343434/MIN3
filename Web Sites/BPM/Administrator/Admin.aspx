<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="BPMWebSite.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Gattaca BPM - Business Process Management</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right" class="cssBgBPM">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="cssLoginTable">
                  <tr>
                            <td valign="bottom" align="center">
                                <div class="cssTitleLogin">
                                    Módulo de Administración de Procesos
                              </div>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td class="cssNone"><asp:Label ID="lblClientName" runat="server" Text="Cliente"></asp:Label>                                      </td>
                                      <td rowspan="6" valign="top" class="cssBtnLogin"><asp:Button ID="btnLogIn" runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:4px 0 0 0;">                                        
										<asp:DropDownList ID="cboClient" runat="server" DataSourceID="ClientDataSource" CssClass="FormularioLogin" DataTextField="Name" DataValueField="Value"></asp:DropDownList>                                        </td>
                                    </tr>
                                    <tr>
                                      <td class="cssNone"><asp:Label ID="lblUserName" runat="server" Text="Usuario"></asp:Label>                                      </td>
                                    </tr>
                                    <tr>
                                        <td class="inputLoginUser">                                        
                                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUsr" runat="server" ControlToValidate="txtUserName"
                                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>                                        </td>
                                    </tr>
                                    <tr>
                                      <td class="cssNone"><asp:Label ID="lblPassword" runat="server" Text="Contrase&ntilde;a"></asp:Label>                                      </td>
                                    </tr>
                                    <tr>
                                        <td class="inputLoginPass">                                        
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPw" runat="server" ControlToValidate="txtPassword"
                                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>                                        </td>
                                    </tr>
                                    
                                </table>
								<table width="100%" height="0" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="cssTxtFooterLogin">
                                            Derechos Reservados de Autor<br />
                                            Gattaca S.A. © 2000 -
                                            <%=Year(Now) %>                                                                                </td>
                                    </tr>
                               </table>
                    </td>
                        </tr>
                    </table>
              </td>
            </tr>
        </table>
        <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
        </asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
