<%@ page language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Public_childFormInstance, App_Web_ggmy1egd" title="Untitled Page" %>

<%@ Register src="../Controls/DataSourceRelationatorControl.ascx" tagname="DataSourceRelationatorControl" tagprefix="uc1" %>
<%@ Register src="../Controls/AutoRefreshFormList.ascx" tagname="AutoRefreshFormList" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" Runat="Server">
 <script type="text/javascript">
     function printChildForm() {
         if (Page_ClientValidate(""))
             window.print();             
     } 
 </script> 
  
  
    <table width="100%">
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="lblProcessIntance" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblActivityIntance" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Table ID="tControls" runat="server" Height="100%" Width="100%">
                </asp:Table>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            
            <td>
                <%-- Boton Save y Update al parecer no tienen funcionalidad asociada --%>
                <asp:Button ID="btnSave" runat="server" Text="Guardar" CssClass="cssButton" />
                <asp:Button ID="btnUpdate" runat="server" Text="Modificar" Visible="False" CssClass="cssButton" />
                
                <asp:Button ID="btnSendForm" runat="server" CausesValidation="True" SkinID="saveChildFormButton" Text="Guardar" CssClass="cssButton" />
                <asp:Button ID="btnClose" runat="server" Text="Cerrar" OnClientClick="window.close()" SkinID="closeFormButton" CausesValidation="false" CssClass="cssButton" />                

                <asp:Button ID="btnPrintReadOnly" runat="server" CausesValidation="False" Text="Imprimir" 
                    CssClass="cssButton" OnClientClick="window.print()" Visible="false" />
                <asp:Button ID="btnPrint" runat="server" CausesValidation="True" Text="Guardar e imprimir" SkinID="saveAndPrintChildFormButton" 
                    CssClass="cssButton" OnClientClick="printChildForm()" />
            </td>
        </tr>
    </table>
    <div id="service" style="behavior: url(webservice.htc)"></div>
    
    <uc1:DataSourceRelationatorControl ID="dataSourceRelationatorControl" runat="server" /> 
    <uc2:AutoRefreshFormList ID="autoRefreshFormList" runat="server" />   
</asp:Content>

