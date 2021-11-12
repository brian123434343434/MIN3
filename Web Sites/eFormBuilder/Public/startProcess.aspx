<%@ page language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Public_startProcess, App_Web_ggmy1egd" title="Untitled Page" %>

<%@ Register src="../Controls/DataSourceRelationatorControl.ascx" tagname="DataSourceRelationatorControl" tagprefix="uc1" %>
<%@ Register Src="../Controls/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<%@ Register src="../Controls/AutoRefreshFormList.ascx" tagname="AutoRefreshFormList" tagprefix="uc2" %>

<%@ Register src="../Controls/RulesConfigurator/RuleEvaluatorEventsHook.ascx" tagname="RuleEvaluatorEventsHook" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" runat="Server">

    <script type="text/javascript">
    
    function hideControl(obj)
    {
        if (typeof (Page_ClientValidate) == 'function') {
            if (Page_ClientValidate()) {
                obj.disabled = true;
                showProgressIndicatorPanel();
            }
        }
     }


     function printForm()
     {
        if (Page_ClientValidate(""))
            window.print();
    } 
    
    </script>

    <table width="100%">       
        <asp:PlaceHolder ID="phProcessInfo" runat="server">
        <tr>
            <td>
                Solicitud No.
                <asp:Label ID="lblIdProcessInstance" runat="server" Text=""></asp:Label>
                <br />
                Persona que diligenció:
                <asp:Label ID="lblUserRegistry" runat="server" Text=""></asp:Label>
                <br />
                Fecha de solicitud:
                <asp:Label ID="lblRegistryDate" runat="server" Text=""></asp:Label>
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
                <asp:Button ID="btnSave" runat="server" SkinID="saveFormButton" Text="Guardar" CssClass="cssButton" OnClientClick="hideControl(this);"
                    UseSubmitBehavior="false" />
<%--                <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="cssButton" OnClientClick="if(Page_ClientValidate()){this.disabled=true};"
                    UseSubmitBehavior="false" />
--%>                <asp:Button ID="btnUpdate" runat="server" SkinID="saveFormButton" Text="Modificar" Visible="False" CssClass="cssButton"
                    OnClientClick="hideControl(this);" UseSubmitBehavior="false" />
<%--                <asp:Button ID="Button1" runat="server" Text="Modificar" Visible="False" CssClass="cssButton"
                    OnClientClick="if(Page_ClientValidate()){this.disabled=true};" UseSubmitBehavior="false" />
--%>                <asp:Button ID="btnClose" SkinID="closeFormButton" runat="server" CausesValidation="False" Text="Cerrar" CssClass="cssButton" />
                <asp:Button ID="btnPrint" runat="server" CausesValidation="False" Text="Imprimir"
                    CssClass="cssButton" OnClientClick="window.print()" />
                    <asp:Button ID="btnSaveAndPrint" SkinID="saveAndPrintFormButton" runat="server" CausesValidation="True" Text="Guardar e Imprimir" CssClass="cssButton" OnClientClick="printForm()" Visible="false" />
            </td>
        </tr>
    </table>
    <div id="service" style="behavior: url(webservice.htc)">        
    </div>
    
    <uc1:DataSourceRelationatorControl ID="dataSourceRelationatorControl" runat="server" />    
    <uc1:MessageBox ID="messageBox" runat="server" />
    <uc2:AutoRefreshFormList ID="autoRefreshFormList" runat="server" />
    <uc3:RuleEvaluatorEventsHook ID="ruleEvaluatorEventsHook" runat="server" />
</asp:Content>
