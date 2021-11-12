<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowForm.Master"
    Codebehind="AddProcessCaseSimulation.aspx.vb" Inherits="BPMWebSite.AddProcessCaseSimulation"
    Title="Untitled Page" Theme="SoftManagement"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
       
       
       
            <asp:GridView ID="gvActivities" runat="server" DataKeyNames="ID">
                <Columns>
                    <asp:TemplateField HeaderText="Columna1">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Condiciones">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
         
            </asp:GridView>
       
        
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
