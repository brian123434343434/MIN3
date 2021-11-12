<%@ Page Language="VB" MasterPageFile="~/Master/mpLogin.master" AutoEventWireup="false"
    CodeFile="login2.aspx.vb" Inherits="Security_login" Title="BPO - Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphLogin" runat="Server">


    <table width="100px" border="0" cellpadding="0" cellspacing="0">
    
    
    
    
  
  <tr>
    <td class="LineCenterOne" valign="top" height="100%"><table width="200px" border="0" cellspacing="0" cellpadding="0">
      <tr>
       
        <td align="center" valign="top"><br />
        <table width="200px" border="0" align="center" cellpadding="0" cellspacing="0" >
            <tr>
                <td class="bgLogin">
                   <table width="400" style="position:relative;top:13px;left:45px;">
              <tr>
                <td colspan="2" align="center" class="cssLabelLogin"><asp:Label ID="Label1" runat="server" Text=""></asp:Label>                </td>
                </tr>
              <tr>
                <td align="center"><asp:TextBox ID="txtUser" runat="server" TabIndex="1"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser"
                                    Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>                </td>
              </tr>
              <tr>
                <td align="center" class="cssLabelLogin"><asp:Label ID="Label2" runat="server" Text=""></asp:Label>                </td>
              </tr>
              <tr>
                <td align="center"><asp:TextBox ID="txtPw" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPw"
                                    Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>                </td>
              </tr>
              <tr>
                <td colspan="2" align="center"><asp:Button ID="btnLogIn" runat="server" TabIndex="3" Text="Ingresar"/>                </td>
              </tr>
              <tr>
                <td colspan="2" align="center"><asp:Button ID="btnRecuperar" runat="server" TabIndex="3" Text="¿Olvidó su Contraseña?" />                </td>
              </tr>
            </table>
                </td>
            </tr>
          </table></td>
      </tr>
    </table></td>
  </tr>

</table>
</asp:Content>

