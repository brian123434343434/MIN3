<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="BPMWebSite._Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>WorkFlow V8 - Tareas</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle"><table width="464" height="387" border="0" cellpadding="0" cellspacing="0" class="cssLoginTable">
      <tr>
        <td valign="bottom"><br />
          <br />
            <br />
            <table border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td align="left"><span id="Span1">
                                                <asp:Label ID="lblClientName" runat="server" Text="Client" meta:resourcekey="lblClientNameResource1"></asp:Label></span></td>
            <td align="left">&nbsp;</td>
            <td align="left"><asp:DropDownList ID="cboClient" runat="server" DataSourceID="ClientDataSource"
                                                    DataTextField="Name" DataValueField="Value" Width="152px" meta:resourcekey="cboClientResource1">
                                                </asp:DropDownList></td>
          </tr>
          <tr>
            <td align="left"><span id="Span2">
                                                <asp:Label ID="lblUserName" runat="server" Text="User Name" meta:resourcekey="lblUserNameResource1"></asp:Label></span></td>
            <td align="left">&nbsp;</td>
            <td align="left"><asp:TextBox ID="txtUserName" runat="server" Width="144px" meta:resourcekey="txtUserNameResource1"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="left"><span id="Span3">
                                                <asp:Label ID="lblPassword" runat="server" Text="Password" meta:resourcekey="lblPasswordResource1" ></asp:Label></span></td>
            <td align="left">&nbsp;</td>
            <td align="left"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="144px" meta:resourcekey="txtPasswordResource1"></asp:TextBox></td>
          </tr>
          <tr>
            <td colspan="3" align="right" style="height: 8px;">&nbsp;</td>
          </tr>
          <tr>
            <td align="left">&nbsp;</td>
            <td align="left">&nbsp;</td>
            <td align="left">
                &nbsp;<asp:Button ID="btnLogIn" runat="server" Text="Ingresar" meta:resourcekey="btnLogInResource1" /></td>
          </tr>
        </table>
          <br />
          <br />
          <table width="474" height="0" border="0" cellpadding="0" cellspacing="0">
            
            <tr>
              <td width="55">&nbsp;</td>
              <td width="162" valign="top"><table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><a href="#"><asp:Image ID="Image1" Runat="Server" SkinID="Espanol"/></a></td>
                  <td>&nbsp;</td>
                  <td><a href="#"><asp:Image ID="Image2" Runat="Server" SkinID="English"/></a></td>
                  </tr>
              </table></td>
              <td width="179" class="cssTxtFooterLogin">Derechos Reservados de Autor<br /> 
                2000 - 2007 </td>
              <td width="78">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="4" style="height:23px;">&nbsp;</td>
              </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>
</table> 
        
        <asp:XmlDataSource ID="ClientDataSource" runat="server" DataFile="~/Include/Server/LicenseInformation.xml">
        </asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
