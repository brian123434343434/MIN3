<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowUser.Master"
    Codebehind="MainMenu.aspx.vb" Inherits="BPMWebSite.MainMenu1" Title="Procesos en Linea" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="upDefault" runat="server">
        <ContentTemplate>
            <table style="width: 100%; height: 100%" border="0">
                <tr>
                    <td style="width:176px" class="cssLeftPanel" valign="top" align="left">
                        <asp:TreeView ID="tvTaskSelector" SkinID="TreeViewUser" runat="server" ShowLines="True"
                            OnSelectedNodeChanged="tvTaskSelector_SelectedNodeChanged">
                            <HoverNodeStyle CssClass="cssTreeViewHoverNode" />
                            <SelectedNodeStyle CssClass="cssTreeViewSelectedNode" />
                            <RootNodeStyle CssClass="cssTreeViewRootNode" />
                            <LeafNodeStyle CssClass="cssTreeViewLeafNode" />
                            <NodeStyle CssClass="cssTreeViewNode" />
                        </asp:TreeView>
                        <asp:Panel ID="pMessages" runat="server" Width="148px">
                                <table border="0" cellpadding="0" cellspacing="0" width="148px">
                                    <tr>
                                        <td style="border:1px solid #CCC; padding:1px;">
                                            <asp:Label ID="lblMessage" runat="server" Text="No tiene mensajes recientes" ForeColor="red"
                                                Font-Bold="True"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                    </td>
                    <td class="cssCentralPanel" valign="top" align="left">
                        <!-- Procesos disponibles -->
                        <div id="dvdgridTitle" class="cssGridTitle">
                            <asp:Label ID="lblSummary" runat="server" Text="Procesos disponibles" CssClass="cssGridSummary"></asp:Label></div>
                        <asp:Label ID="lblOrder" runat="server" Text="Seleccione el Tipo de Proceso que desea realizar :"
                            CssClass="cssGridSummary"></asp:Label>
                        <asp:DropDownList ID="ddlPackage" runat="server" AutoPostBack="True" AppendDataBoundItems="true"
                            OnSelectedIndexChanged="ddlPackage_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:GridView ID="gvProcessCaseList" runat="server" BorderWidth="1px" PageSize="25"
                            AutoGenerateColumns="False" AllowSorting="True" AllowPaging="False" EnableViewState="False"
                            DataKeyNames="Id" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre del Proceso">
                                    <ItemStyle />
                                    <ItemTemplate>                                        
                                        <a class="lnk" href="#" onclick="javascript:window.open('<%#Container.DataItem.URLService%>Case=<%#Container.DataItem.Id%>&Form=<%#Container.DataItem.associatedData.EntryData%>&IdRelated=<%=Session("UserID") %>&ClientName=<%=Session("AppClient")%>', 'FormBuilder'); return false;" >
                                            <%#Container.DataItem.Name%>
                                        </a>                                 
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Description" HeaderText="Descripción del Proceso">
                                    <ItemStyle />
                                </asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="Responsable">
                                    <ItemStyle />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Información de ayuda">
                                    <ItemStyle Wrap="False" />
                                    <ItemTemplate>
                                        <a class="lnk" target="_blank" href='<%#Container.DataItem.URLHelp%>'>Más 
                                        Información</a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle CssClass="cssGridFooter" />
                            <RowStyle CssClass="cssGridRow" />
                            <HeaderStyle CssClass="cssGridHeader" />
                            <AlternatingRowStyle CssClass="cssGridAlternatingRow" />
                        </asp:GridView>
                        <!-- /Procesos disponibles -->
                        
                        <!-- Procesos en curso -->
                        <asp:GridView ID="gvProcess" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                            AllowPaging="False" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Opciones" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkViewProcess" runat="server" CausesValidation="False" CommandArgument='<%# Bind("Id") %>'
                                            CommandName="ViewProcessCases">Consultar</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Name" HeaderText="Procesos en curso" ItemStyle-HorizontalAlign="Center" />
                            </Columns>
                        </asp:GridView>
                        <!-- /Procesos en curso -->
                        
                        <!-- Instancias del proceso en curso -->
                        <asp:GridView ID="gvProcessInstance" runat="server" AutoGenerateColumns="False" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Consultar">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="lnkViewEntryData" runat="server" Text="Solicitud" NavigateUrl="#"></asp:HyperLink>
                                        <asp:HyperLink ID="lnkProcessCase" runat="server" Text="Estado Actual" NavigateUrl="#"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="lblIdProcessInstance" runat="server" Text="<%#Container.DataItem.Id%>"></asp:Label>
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
                                <asp:TemplateField HeaderText="Fecha de Inicio">
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
                        <!-- /Instancias del proceso en curso -->

                        <!-- Detalles de las Instancias del proceso en curso -->
                        <asp:GridView ID="gvProcessInstanceDetail" runat="server" AutoGenerateColumns="False" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Consultar">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkViewProcess" runat="server" CausesValidation="False" CommandArgument='<%#Container.DataItem.Id%>'
                                            CommandName="ViewProcessCases">Detalles</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="lblIdProcessInstance" runat="server" Text="<%#Container.DataItem.Id%>"></asp:Label>
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
                        <!-- /Detalles de las Instancias del proceso en curso -->

                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
