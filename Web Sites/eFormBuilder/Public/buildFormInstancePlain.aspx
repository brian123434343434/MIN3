<%@ page title="" language="VB" masterpagefile="~/Master/mpClientPlain.master" autoeventwireup="false" inherits="Public_buildFormInstancePlain, App_Web_ggmy1egd" %>

<%@ Register src="../Controls/DataSourceRelationatorControl.ascx" tagname="DataSourceRelationatorControl" tagprefix="uc1" %>
<%@ Register src="../Controls/AutoRefreshFormList.ascx" tagname="AutoRefreshFormList" tagprefix="uc2" %>

<%@ Register src="../Controls/RulesConfigurator/RuleEvaluatorEventsHook.ascx" tagname="RuleEvaluatorEventsHook" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" runat="Server">
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
                <asp:Button ID="btnSave"  SkinID="saveFormButton" runat="server" Text="Guardar" CssClass="cssButton" />
                <asp:Button ID="btnUpdate"  SkinID="saveFormButton" runat="server" Text="Modificar" Visible="False" CssClass="cssButton" />
            </td>
        </tr>
    </table>
    <div id="service" style="behavior: url(webservice.htc)"></div>
    
    <uc1:datasourcerelationatorcontrol ID="dataSourceRelationatorControl" runat="server" /> 
    <uc2:AutoRefreshFormList ID="autoRefreshFormList" runat="server" />     
    <uc3:RuleEvaluatorEventsHook ID="ruleEvaluatorEventsHook" runat="server" />
    
</asp:Content>

