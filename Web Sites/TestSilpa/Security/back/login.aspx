<%@ Page Language="VB" MasterPageFile="~/Master/mpLogin.master" AutoEventWireup="false"
    CodeFile="login2.aspx.vb" Inherits="Security_login" Title="VITAL - Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphLogin" runat="Server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td class="LineCenterOne" valign="top" height="100%">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center" valign="top" style="height: 299px">
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="width: 300px; height:300px">
                            
                                <tr>
                                    <td style="width: 300px; height: 304px">
                                        <table align="center" class="anybglogin">
                                            <tr><td style="height:10px"></td></tr>
                                            <tr>
                                                <td align="center" class="cssLabelLogin">
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:TextBox ID="txtUser" runat="server" TabIndex="1"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUser"
                                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="cssLabelLogin">
                                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:TextBox ID="txtPw" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPw"
                                                        Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Button ID="btnLogIn" runat="server" TabIndex="3" Text="Ingresar" />&nbsp;<asp:Button
                                                        ID="btnCancelar" runat="server" TabIndex="3" Text="Cancelar" PostBackUrl="http://160.160.160.25:8000/ventanillasilpa/"
                                                        CausesValidation="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Button ID="btnReestablecer" runat="server" TabIndex="3" Text="¿Olvidó su Contraseña?" PostBackUrl="http://160.160.160.25:8000/SILPA_UT_PRE/ReestablecerClave.aspx" CausesValidation="false"/>
                                                </td>
											</tr>
											<tr>
												<td align="center">
                                                    <asp:Button ID="btnCambiar" runat="server" TabIndex="4" Text="Cambiar Contraseña" PostBackUrl="http://160.160.160.25:8000/SILPA_UT_PRE/CambiarClave.aspx" CausesValidation="false"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="middle">
                                                    ¿No se encuentra registrado?&nbsp;&nbsp;&nbsp;
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnRegistrar" runat="server" TabIndex="3" Text="Regístrese" PostBackUrl="http://160.160.160.25:8000/SILPA_UT_PRE/Datospersonales.aspx?reg=registro" CausesValidation="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
													<span style="font-size: 8pt; font-family: Calibri">Versión 1.0.0.6</span>
                                                </td>
                                            </tr>
                                            <!--
                                            <tr>
                                               <td>
                                                  <asp:Button ID="btnTramitesPublicos" runat="server" TabIndex="4" Text="Trámites al público" PostBackUrl="http://192.168.1.31/SILPA_UT/audienciapublica/menuaudienciapublica.aspx" CausesValidation="false" />
                                               </td>
                                            </tr>
											-->
                                            
                                        </table>
                                        <table align="center" 
                                            style="position: absolute; top: 500px; left: 652px; width: 338px;">
                                            
                                        </table>
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></td>
                                </tr>
                            </table>
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <img src="../App_Themes/SoftManagement/Images/Template/soft/enlaces.jpg" width="1000"
                    height="60" border="0" usemap="#Map2" />
            </td>
            <!--- FOOTER END --->
        </tr>
    </table>
    <map name="Map" id="Map">
        <area shape="rect" coords="16,3,121,29" href="#" alt="Inicio" />
        <area shape="rect" coords="163,3,271,30" href="#" alt="Registrese" />
        <area shape="rect" coords="311,1,431,31" href="#" alt="Mapa del Sitio" />
        <area shape="rect" coords="474,3,615,34" href="#" alt="Direcctorio AA" />
        <area shape="rect" coords="667,2,770,30" href="#" alt="Ayuda" />
        <area shape="rect" coords="946,4,986,30" href="#" alt="Buscar" />
    </map>
    <map name="Map2" id="Map2">
        <area shape="rect" coords="123,1,356,61" href="#" />
        <area shape="rect" coords="396,2,707,67" href="#" />
        <area shape="rect" coords="738,1,815,59" href="#" />
    </map>
</asp:Content>