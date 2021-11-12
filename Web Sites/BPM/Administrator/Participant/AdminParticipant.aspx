<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AdminParticipant.aspx.vb" Inherits="BPMWebSite.AdminParticipant"
    Title="Gattaca WorkFlow - Administración de Participantes" Theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <AjaxControlToolkit:TabContainer runat="server" ID="Tabs" Width="100%" ActiveTabIndex="0">
        <AjaxControlToolkit:TabPanel runat="server" ID="Panel1" HeaderText="Busquedas Rapidas">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding: 5px; vertical-align: middle;">
                                <div style="float: left;">
                                    Crear Nuevos Participantes</div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:Button ID="btnAdd" runat="server" Text="Adicionar Participante" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding: 5px; vertical-align: middle;">
                                <div style="float: left;">
                                    Ver Participantes Habilitados</div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="btnShowEnabled" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                        AlternateText="(Mostrar...)" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="BasicSearchHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    Buscador General</div>
                                <div style="float: left; margin-left: 20px;">
                                    <asp:Label ID="Label1" runat="server">(Mostrar...)</asp:Label>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                        AlternateText="(Mostrar...)" />
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
                                    <asp:ListItem Value="Participant.ID">ID</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="Participant.Code">Código</asp:ListItem>
                                    <asp:ListItem Value="Participant.Name">Nombre</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="btnSearch" runat="server" Text="Buscar" />
                            </p>
                        </asp:Panel>
                        <AjaxControlToolkit:CollapsiblePanelExtender ID="BasicSearchCollapsiblePanelExtender"
                            runat="Server" TargetControlID="BasicSearch" ExpandControlID="BasicSearchHeader"
                            CollapseControlID="BasicSearchHeader" Collapsed="True" TextLabelID="Label1" ImageControlID="Image1"
                            ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            SuppressPostBack="true" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </AjaxControlToolkit:TabPanel>
        <AjaxControlToolkit:TabPanel runat="server" ID="Panel3" HeaderText="Busquedas Avanzadas" Visible="false">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblASField" runat="server" Text="Campo" />
                        <asp:DropDownList ID="cboAdvanceField" runat="server">
                            <asp:ListItem Value="Participant.ID">ID</asp:ListItem>
                            <asp:ListItem Value="Participant.Code" Selected="True">Codigo</asp:ListItem>
                            <asp:ListItem Value="Participant.Name">Nombre</asp:ListItem>
                            <asp:ListItem Value="Participant.Enabled">Status</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label2" runat="server" Text="Comparador" />
                        <asp:DropDownList ID="cboFieldComparator" runat="server">
                            <asp:ListItem Value="0" Selected="True">Igual a</asp:ListItem>
                            <asp:ListItem Value="2">Mayor a</asp:ListItem>
                            <asp:ListItem Value="3">Mayor o Igual a</asp:ListItem>
                            <asp:ListItem Value="4">Menor que</asp:ListItem>
                            <asp:ListItem Value="5">Menor o Igual a</asp:ListItem>
                            <asp:ListItem Value="1">Diferente de</asp:ListItem>
                            <asp:ListItem Value="6">Contiene</asp:ListItem>
                            <asp:ListItem Value="7">No Contiene</asp:ListItem>
                            <asp:ListItem Value="8">Comienza con</asp:ListItem>
                            <asp:ListItem Value="9">Finaliza con</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text="Valor" />
                        <asp:TextBox ID="ASFieldValue" runat="server" />
                        <asp:Label ID="Label4" runat="server" Text="Operador Logico" />
                        <asp:RadioButtonList ID="rdoLogicalOperator" runat="server">
                            <asp:ListItem Value="1">AND</asp:ListItem>
                            <asp:ListItem Value="2" Selected="True">OR</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="btnAddCriteria" runat="Server" Text="Adicionar otra condicion" />
                        <asp:Button ID="btnAdvanceSearch" runat="Server" Text="Consultar" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </AjaxControlToolkit:TabPanel>
    </AjaxControlToolkit:TabContainer>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="True">
        <ContentTemplate>
            <asp:Panel ID="DataGridPanel" runat="server" BackColor="white">
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    AllowPaging="True" Width="100%" DataKeyNames="Id, Code" PageSize="25">
                    <Columns>
                        <asp:TemplateField HeaderText="Cod. Proceso">
                            <ItemStyle />
                            <ItemTemplate>
                                <a class="lnk" href='AddParticipant.aspx?Operation=Update&amp;IdParticipant=<%#Container.DataItem.Id%>&amp;Type=<%#CInt(Container.DataItem.Type)%>'>Editar</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Code" HeaderText="C&#243;digo" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre" />
                        <asp:BoundField DataField="Description" HeaderText="Descripci&#243;n" />
                        <asp:BoundField DataField="IsEnabled" HeaderText="Habilitada" />
                        <asp:BoundField DataField="Type" HeaderText="Tipo" />
                        <asp:TemplateField HeaderText="Responsabilidades" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle />
                            <ItemTemplate>
                                <a class="lnk" href="#" onclick='javascript:window.open("ShowResponsabilities.aspx?Id=<%#Container.DataItem.Id%>&Name=<%#Container.DataItem.Name%>","Participante","scrollbars=1,menubar=0,resizable=0,width=800,height=600");return false'>Ver</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <%--<AjaxControlToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" TargetControlID="DataGridPanel"
                Radius="6" Corners="All" />--%>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
