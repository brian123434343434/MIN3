<%@ page language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" enableeventvalidation="" inherits="Public_addFormInstance, App_Web_ggmy1egd" title="Untitled Page" %>

<%@ Register src="../Controls/DataSourceRelationatorControl.ascx" tagname="DataSourceRelationatorControl" tagprefix="uc1" %>
<%@ Register src="../Controls/AutoRefreshFormList.ascx" tagname="AutoRefreshFormList" tagprefix="uc2" %>

<%@ Register src="../Controls/RulesConfigurator/RuleEvaluatorEventsHook.ascx" tagname="RuleEvaluatorEventsHook" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" runat="Server">

    <script type="text/javascript">
    
    function hideControl(obj)
    {
        if (typeof(Page_ClientValidate) == 'function')
            if (Page_ClientValidate())
                obj.disabled=true;
    }


        function printForm() {
            if (Page_ClientValidate(""))
                window.print();
        } 
    
    </script>

    <table width="100%">
        
        <asp:PlaceHolder ID="phInstanceInfo" runat="server">        
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
        </asp:PlaceHolder>
        
        
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
                <asp:Button ID="btnSave" SkinID="saveFormButton"  runat="server" Text="Guardar" CssClass="cssButton" OnClientClick="hideControl(this);"
                    UseSubmitBehavior="false" />
                <asp:Button ID="btnUpdate" SkinID="saveFormButton"  runat="server" Text="Modificar" Visible="False" CssClass="cssButton"
                    OnClientClick="hideControl(this);" UseSubmitBehavior="false" />
<%--                <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="cssButton" OnClientClick="if(Page_ClientValidate()){this.disabled=true};"
                    UseSubmitBehavior="false" />
                <asp:Button ID="Button2" runat="server" Text="Modificar" Visible="False" CssClass="cssButton"
                    OnClientClick="if(Page_ClientValidate()){this.disabled=true};" UseSubmitBehavior="false" />
--%>                <asp:Button ID="btnClose" SkinID="closeFormButton"  runat="server" CausesValidation="False" Text="Cerrar" CssClass="cssButton" />
                <asp:Button ID="btnPrint" runat="server" CausesValidation="False" Text="Imprimir"
                    CssClass="cssButton" OnClientClick="window.print()" />
                <asp:Button ID="btnUpdateAndPrint" SkinID="saveAndPrintFormButton"  runat="server" CausesValidation="True" Text="Actualizar e imprimir"
                    CssClass="cssButton" OnClientClick="printForm()" Visible="False" />
                <asp:Button ID="btnSaveAndPrint" SkinID="saveAndPrintFormButton"  runat="server" CausesValidation="True" Text="Guardar e imprimir"
                    CssClass="cssButton" OnClientClick="printForm()" Visible="False" />
            </td>
        </tr>
    </table>
    <div id="service" style="behavior: url(webservice.htc)">
    </div>
    
    <uc1:datasourcerelationatorcontrol ID="dataSourceRelationatorControl" runat="server" />    
    <uc2:AutoRefreshFormList ID="autoRefreshFormList" runat="server" />
    <uc3:RuleEvaluatorEventsHook ID="ruleEvaluatorEventsHook" runat="server" />
</asp:Content>
