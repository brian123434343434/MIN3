<%@ Page Language="VB" AutoEventWireup="false" CodeFile="permisos.aspx.vb" Inherits="vital_permisos" MasterPageFile="~/Master/mpAdmin.master"  %>
<asp:Content ID="contenido" ContentPlaceHolderID="cphPrincipal" runat="Server">   
        
    <link type="text/css" rel="stylesheet"  href="/vital/css/jquery-ui.min.css" />    
    <script type="text/javascript"  src="/vital/js/jquery.js"></script> 
    <script type="text/javascript"  src="/vital/js/jquery-ui.min.js"></script> 

    <script type="text/javascript"> 
        $(document).ready(function() { 
            $('#<%=txtFechaInicial.ClientID %>').datepicker( 
            {
                inline: true,
                dateFormat: 'dd/mm/yy',
                minDate: '-2Y', 
                maxDate: '+0D', 
                changeMonth: true, 
                changeYear: true, 
                numberOfMonths: 1, 
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'], 
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 
                    'Junio', 'Julio', 'Agosto', 'Septiembre', 
                    'Octubre', 'Noviembre', 'Diciembre'], 
                monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 
                    'May', 'Jun', 'Jul', 'Ago', 
                    'Sep', 'Oct', 'Nov', 'Dic']  
            });          
        });
        $(document).ready(function() { 
            $('#<%=txtFechaFinal.ClientID %>').datepicker( 
            {
                inline: true,
                dateFormat: 'dd/mm/yy',
                minDate: '-2Y',
                maxDate: '+0D',
                changeMonth: true, 
                changeYear: true, 
                numberOfMonths: 1, 
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'], 
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 
                    'Junio', 'Julio', 'Agosto', 'Septiembre', 
                    'Octubre', 'Noviembre', 'Diciembre'], 
                monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 
                    'May', 'Jun', 'Jul', 'Ago', 
                    'Sep', 'Oct', 'Nov', 'Dic']  
            });          
        }); 
    </script>  
  
    <table style="background-color:White;border-color:White;border-width:2px;border-style:Ridge;font-family:Tahoma;font-size:10px;width:100%;">
        <tr>
            <td style="width:200px;">
                &nbsp;
            </td>
            <td>
                Fecha Inicial
            </td>
            <td>                
                <asp:TextBox ID="txtFechaInicial" runat="server" autocomplete="off"></asp:TextBox>
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
                Fecha Final
            </td>
            <td>                
                <asp:TextBox ID="txtFechaFinal" runat="server" autocomplete="off"></asp:TextBox>
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
                    <th>Documento</th>
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
                    <asp:Label runat="server" ID="lblDocumento" 
                        text='<%# Eval("Documento") %>' />
                  </td>
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
                          text='<%# nombreTipo(Eval("tipoPermiso"))  %>' />
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


