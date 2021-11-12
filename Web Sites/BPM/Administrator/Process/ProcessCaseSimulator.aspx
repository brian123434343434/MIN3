<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    Codebehind="ProcessCaseSimulator.aspx.vb" Inherits="BPMWebSite.ProcessCaseSimulator"
    Title="Untitled Page" Theme="SoftManagement"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <ajaxToolkit:TabContainer runat="server" ID="Tabs" Width="780px" ActiveTabIndex="0">
        <ajaxToolkit:TabPanel runat="server" ID="Panel1" HeaderText="Busquedas Rapidas">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="ProcessHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    Ver Simulaciones por Proceso</div>
                                <div style="float: left; margin-left: 20px;">
                                    <asp:Label ID="Label5" runat="server">(Mostrar...)</asp:Label>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                        AlternateText="(Mostrar...)" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Process" runat="server" CssClass="collapsePanel" Height="0">
                            <br />
                            <p>
                                <asp:Label ID="Label7" runat="server" Text="Seleccionar Proceso"></asp:Label>
                                <asp:DropDownList ID="cboProcessCase" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cboProcessCase_SelectedIndexChanged">
                                </asp:DropDownList>
                                <br />
                                
                            </p>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender" runat="Server"
                            TargetControlID="Process" ExpandControlID="ProcessHeader" CollapseControlID="ProcessHeader"
                            Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                            CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg" SuppressPostBack="true" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
            <HeaderTemplate>
                Simulaciones
            </HeaderTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="True">
        <ContentTemplate>
            <asp:Panel ID="DataGridPanel" runat="server" BackColor="white" Width="880px">
           
                <asp:GridView ID="gvSimulations" runat="server" AutoGenerateColumns="false"   DataKeyNames="ID" >
               <Columns>
              
               <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Administrator/Process/AddProcessCaseSimulation.aspx?Operation=Update&amp;IdSimulation={0}"
															HeaderText="" Text="Editar">
															<ItemStyle HorizontalAlign="Center" />
													</asp:HyperLinkField>
               
              <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Code" HeaderText="Código" />
                 <asp:BoundField DataField="Name" HeaderText="Nombre" />
                 <asp:TemplateField >
                 <ItemTemplate>
                 <asp:Button ID="BtnRunSimulation" CommandName="RunSimulation"  runat="server" Text="Correr Simulación" />
                 <asp:HyperLink ID="lnkViewSimulation" runat="server" Visible="false" >Ver Simulación</asp:HyperLink>
                 </ItemTemplate> 
                 </asp:TemplateField>
               </Columns>  
                </asp:GridView>
          
            
            </asp:Panel>
            <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" TargetControlID="DataGridPanel"
                Radius="6" Corners="All" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</asp:Content>
