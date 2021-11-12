<%@ page language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Administrator_showForm, App_Web_5zwlr24r" title="eFormBuilder V83 - Show Form. " culture="auto" uiculture="auto" %>
<%@ Register src="../Controls/DataSourceRelationatorControl.ascx" tagname="DataSourceRelationatorControl" tagprefix="uc1" %>
<%@ Register Src="../Controls/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<%@ Register src="../Controls/AutoRefreshFormList.ascx" tagname="AutoRefreshFormList" tagprefix="uc2" %>
<%@ Register src="../Controls/RulesConfigurator/RuleEvaluatorEventsHook.ascx" tagname="RuleEvaluatorEventsHook" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" Runat="Server">  
    <table width="100%">
        <tr>
            <td></td>
        </tr>
        <tr>
            <td><asp:Table ID="tControls" runat="server" Height="100%" Width="100%"></asp:Table></td>
        </tr>
        <tr>  
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnTest" runat="server" Text="Probar Validaciones" />
                <asp:Button ID="btnPrint" runat="server" CausesValidation="False" Text="Imprimir" CssClass="cssButton" OnClientClick="window.print()" />
            </td>
        </tr>
    </table>
    <div id="service" style="behavior: url(webservice.htc)">        
    </div>
    <uc1:DataSourceRelationatorControl ID="dataSourceRelationatorControl" runat="server" />      
    <uc2:AutoRefreshFormList ID="autoRefreshFormList" runat="server" />
    <uc1:MessageBox ID="messageBox" runat="server" />  
    <uc3:RuleEvaluatorEventsHook ID="ruleEvaluatorEventsHook" runat="server" />    
   
    
 </asp:Content>

