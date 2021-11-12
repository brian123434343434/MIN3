<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AdmProcInstance.aspx.vb" Inherits="BPMWebSite.AdmProcInstance"
    Title="Administración de Procesos en ejecución" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <ajaxToolkit:TabContainer ID="Tabs" runat="server" ActiveTabIndex="0" Width="100%">
        <ajaxToolkit:TabPanel ID="Panel1" runat="server" HeaderText="Busquedas Rapidas">
            <ContentTemplate>
                <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>--%>
                        <asp:Panel ID="ProcessHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                cursor: pointer; padding-top: 5px">
                                <div style="float: left">
                                    Ver Instancias por Proceso</div>
                                <div style="float: left; margin-left: 20px">
                                    <asp:Label ID="Label5" runat="server">(Mostrar...)</asp:Label>
                                </div>
                                <div style="float: right; vertical-align: middle">
                                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="(Mostrar...)" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Process" runat="server" CssClass="collapsePanel" Height="0">
                            <br />
                            <p>
                                <asp:Label ID="Label7" runat="server" Text="Seleccionar Caso de Proceso"></asp:Label>
                                <asp:DropDownList ID="cboProcess" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cboProcess_SelectedIndexChanged">
                                </asp:DropDownList>
                                <br />
                            </p>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender" runat="Server"
                            CollapseControlID="ProcessHeader" Collapsed="True" CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            CollapsedText="(Mostrar...)" ExpandControlID="ProcessHeader" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            ExpandedText="(Ocultar...)" ImageControlID="Image1" SuppressPostBack="true" TargetControlID="Process"
                            TextLabelID="Label1">
                        </ajaxToolkit:CollapsiblePanelExtender>
                        <asp:Panel ID="BasicSearchHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                cursor: pointer; padding-top: 5px">
                                <div style="float: left">
                                    Buscador General</div>
                                <div style="float: left; margin-left: 20px">
                                    <asp:Label ID="Label1" runat="server">(Mostrar...)</asp:Label>
                                </div>
                                <div style="float: right; vertical-align: middle">
                                    <asp:ImageButton ID="Image1" runat="server" AlternateText="(Mostrar...)" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="BasicSearch" runat="server" CssClass="collapsePanel" Height="0">
                            <br />
                            <p>
                                <asp:Label ID="lblSearchText" runat="server" Text="Buscar"></asp:Label>
                                <asp:TextBox ID="txtSearchText" runat="server"></asp:TextBox>
                                <asp:Label ID="lblSearchField" runat="server" Text="Criterio de Busqueda"></asp:Label>
                                <asp:DropDownList ID="cboSearchField" runat="server">
                                    <asp:ListItem Selected="True" Value="ID">ID</asp:ListItem>
                                    <%--<asp:ListItem Value="IdProcess">Id Proceso</asp:ListItem>--%>
                                </asp:DropDownList>
                                <asp:Button ID="btnSearch" runat="server" Text="Buscar" />
                            </p>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="BasicSearchCollapsiblePanelExtender" runat="Server"
                            CollapseControlID="BasicSearchHeader" Collapsed="True" CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            CollapsedText="(Mostrar...)" ExpandControlID="BasicSearchHeader" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            ExpandedText="(Ocultar...)" ImageControlID="Image1" SuppressPostBack="true" TargetControlID="BasicSearch"
                            TextLabelID="Label1">
                        </ajaxToolkit:CollapsiblePanelExtender>
                    <%--</ContentTemplate>
                </asp:UpdatePanel>--%>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="True">
        <ContentTemplate>
            <asp:Panel ID="DataGridPanel" runat="server" BackColor="white" Width="99%">
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    AllowPaging="True" Width="100%" PageSize="25">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Administrator/RunTime/AddProcInstance.aspx?Operation=Update&amp;IdProcess={0}"
                            Text="Editar">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:TemplateField HeaderText="Tipo de Proceso">
                            <ItemTemplate>
                                <asp:Label ID="lblProcessName" runat="server" Text="<%#Container.DataItem.ProcessCase.Name%>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Entrada de Datos">
                            <ItemTemplate>
                                <asp:Label ID="lblProcessInstanceEntryData" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <ItemTemplate>
                                <asp:Label ID="lblStateProcessInstance" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha de Creaci&#243;n">
                            <ItemTemplate>
                                <asp:Label ID="lblCreateTimeProcessInstance" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fehca de Inicio">
                            <ItemTemplate>
                                <asp:Label ID="lblStartTimeProcessInstance" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha de Finalizaci&#243;n">
                            <ItemTemplate>
                                <asp:Label ID="lblEndTimeProcessInstance" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</asp:Content>
