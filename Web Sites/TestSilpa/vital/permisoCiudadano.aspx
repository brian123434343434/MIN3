<%@ Page Language="VB" AutoEventWireup="false" CodeFile="permisoCiudadano.aspx.vb" Inherits="vital_permisos" MasterPageFile="~/Master/mpAdmin.master" %>
<asp:Content ID="contenido" ContentPlaceHolderID="cphPrincipal" runat="Server">        
    <table style="background-color:White;border-color:White;border-width:2px;border-style:Ridge;font-family:Tahoma;font-size:10px;width:100%;">
        <tr>
            <td style="width:200px;">
                &nbsp;
            </td>
            <td>
                tipo de documento
            </td>
            <td>
                <asp:dropdownlist runat="server" id="ddlTipoDocumento">
                    <asp:ListItem Text="Cédula de Ciudadanía" Value="1" Selected="true"></asp:ListItem>
                    <asp:ListItem Text="NIT" Value="2"></asp:ListItem>
                </asp:dropdownlist>
            </td>
            <td style="width:200px;">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width:200px;">
                &nbsp;
            </td>
            <td>
                Número de documento
            </td>
            <td>
                <asp:textbox runat="server" id="txtNumeroDocumento"></asp:textbox>
            </td>
            <td style="width:200px;">
                &nbsp;
            </td>
        </tr>
         <tr>
            <td style="width:200px;">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:button runat="server" text="buscar" id="btnBuscar" />
            </td>
            <td style="width:200px;">
                &nbsp;
            </td>
        </tr>
    </table>
    <asp:Repeater ID="rptPermisos" runat="server">
        <HeaderTemplate>            
            <table style="background-color:White;border-color:White;border-width:2px;border-style:Ridge;font-family:Tahoma;font-size:10px;width:100%;">
              <tr style="color:White;background-color:#BDBE9A;font-weight:bold;">
                    <th>Nombre</th>
                    <th>Lugar</th>
                    <th>Dir. Aprovechamiento</th>
                    <th>Tipo permiso</th>
                    <th>Fecha de expedición</th> 
                    <th>&nbsp;</th>
              </tr>
        </HeaderTemplate>

        <ItemTemplate>
              <tr style="<%# IIf(Container.ItemIndex Mod 2 = 0, "color:#333333;background-color:#F7F6F3;font-size:10px;", "color:#284775;background-color:White;font-size:10px;") %>">
                  
                  <td>
                      <asp:Label runat="server" ID="lblNombre" 
                          text='<%# Eval("primerApellido") & "-" & Eval("primerNombre")  %>' />
                  </td>
                   <td>
                      <asp:Label runat="server" ID="lblMunicipioApr" 
                          text='<%# divipol(Eval("municipioApr"))  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblDireccionApr" 
                          text='<%# Eval("direccionApr")  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblTipoPermiso" 
                          text='<%# Eval("tipoPermiso")  %>' />
                  </td>
                  <td>
                      <asp:Label runat="server" ID="lblFechaExpedicion" 
                          text='<%# DateTime.ParseExact(Eval("fechaExpedicion"), "yyyyMMdd", Nothing).ToString("dd\/MM\/yyyy")  %>' />
                  </td>
                  <td style="width:120px;height:30px;">
                      <asp:ImageButton  runat="server" ID="btnRegistrar" ImageUrl="../vital/img/botRegistrar.jpg" CommandName="registrar" CommandArgument='<%# Container.ItemIndex  %>' Visible='<%# IIf(String.IsNullOrEmpty(Eval("estado")), True, IIf(Eval("estado") = "P", True, False)) %>' />
                  </td>
              </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater> 
</asp:Content>


