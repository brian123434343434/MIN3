<%@ Page Language="VB" AutoEventWireup="false" CodeFile="colaDeMensajes.aspx.vb" Inherits="vital_colaDeMensajes" MasterPageFile="~/Master/mpAdmin.master"  %>
<asp:Content ID="contenido" ContentPlaceHolderID="cphPrincipal" runat="Server">        
    <asp:Repeater ID="rptPermisos" runat="server">
        <HeaderTemplate>
              <table style="background-color:White;border-color:White;border-width:2px;border-style:Ridge;font-family:Tahoma;font-size:10px;width:100%;">
              <tr style="color:White;background-color:#BDBE9A;font-weight:bold;">
                    <th>expediente</th>
                    <th>Num. Vital</th>
                    <th>id del recurso</th>
                    <th>nombre del recurso</th>
                    <th>intentos</th>
                    <th>ultimo error</th>
                    <th>Fecha</th> 
                    <th>&nbsp;</th>
              </tr>
        </HeaderTemplate>

        <ItemTemplate>
              <tr style="<%# IIf(Container.ItemIndex Mod 2 = 0, "color:#333333;background-color:#F7F6F3;font-size:10px;", "color:#284775;background-color:White;font-size:10px;") %>">
                  <td>
                    <asp:Label runat="server" ID="lblPkCodigoExpediente" 
                        text='<%# Eval("PkCodigoExpediente") %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblPkNumeroVital" 
                          text='<%# Eval("PkNumeroVital") %>' />
                  </td>
                   <td>
                      <asp:Label runat="server" ID="lblpkRecId" 
                          text='<%# Eval("pkRecId")  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="Label1" 
                          text='<%# Eval("nombreRecurso")  %>' />
                  </td>                  
                  <td>
                      <asp:Label runat="server" ID="lblIntentos" 
                          text='<%# Eval("intentos")  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblUltimoError" 
                          text='<%# Eval("ultimoError")  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblFechaProceso" 
                          text='<%# Eval("fechaProceso")  %>' />
                  </td>

                  <td style="width:120px;height:30px;">
                      <asp:ImageButton  runat="server" ID="btnRegistrar" ImageUrl="/vital/img/botRegistrar.jpg" CommandName="registrar" CommandArgument='<%# Eval("PkCodigoExpediente") & ";" & Eval("PkNumeroVital") & ";" & Eval("pkRecId") & ";" & Eval("idEstadoRecurso") & ";" & Eval("intentos") %>' />
                  </td>
              </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater> 
</asp:Content>


