<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="MessageSettings.aspx.vb" Inherits="BPMWebSite.MessageSettings"
    Title="Mensaje de Notificación" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <ajaxToolkit:TabContainer ID="Tabs" runat="server" ActiveTabIndex="0" Width="100%">
        <ajaxToolkit:TabPanel ID="Panel1" runat="server" HeaderText="Busquedas Rapidas">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                padding-top: 5px">
                                <div style="float: left;">
                                    Crear Nuevo Mensaje de Notificación
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:Button ID="btnAdd" runat="server" Text="Adicionar Mensaje" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                padding-top: 5px">
                                <div style="float: left;">
                                    Ver Mensajes Habilitadas</div>
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
                                    <asp:ListItem Selected="True" Value="ID">Id</asp:ListItem>
                                    <asp:ListItem Value="Status">Estado de la Entidad</asp:ListItem>
                                    <%--<asp:ListItem Value="EntityType">Tipo de Entidad</asp:ListItem>--%>
                                    <asp:ListItem Value="">Entidad</asp:ListItem>
                                    <asp:ListItem Value="FromMail">Remitente</asp:ListItem>
                                    <asp:ListItem Value="Subject">Asunto</asp:ListItem>
                                    <asp:ListItem Value="Content">Contenido</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="btnSearch" runat="server" Text="Buscar" />
                            </p>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="BasicSearchCollapsiblePanelExtender" runat="Server"
                            TargetControlID="BasicSearch" ExpandControlID="BasicSearchHeader" CollapseControlID="BasicSearchHeader"
                            Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                            CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            SuppressPostBack="true" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" ID="Panel3" HeaderText="Busquedas Avanzadas" Visible="false">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblASField" runat="server" Text="Campo" />
                        <asp:DropDownList ID="cboAdvanceField" runat="server">
                            <asp:ListItem Value="ID">ID</asp:ListItem>
                            <asp:ListItem Value="Code" Selected="True">Codigo</asp:ListItem>
                            <asp:ListItem Value="Name">Nombre</asp:ListItem>
                            <asp:ListItem Value="Type">Tipo</asp:ListItem>
                            <asp:ListItem Value="Enabled">Status</asp:ListItem>
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
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="True">
        <ContentTemplate>
            <asp:Panel ID="DataGridPanel" runat="server" BackColor="white" Width="99%">
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    AllowPaging="True" Width="100%" PageSize="25">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Administrator/Settings/AddMessageSettings.aspx?Operation=Update&amp;Id={0}"
                            HeaderText="" Text="Editar">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="ID" HeaderText="ID">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <%--<asp:BoundField DataField="ParticipantRole" HeaderText="Nombre" />--%>
                        <asp:BoundField DataField="Status" HeaderText="Estado">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <%--<asp:BoundField DataField="EntityType" HeaderText="Tipo de Entidad" />--%>
                        <%--<asp:BoundField DataField="EntityTypeCode" HeaderText="Entidad" />--%>
                        <asp:BoundField DataField="FromMail" HeaderText="eMail" />
                        <asp:BoundField DataField="Subject" HeaderText="Asunto" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
