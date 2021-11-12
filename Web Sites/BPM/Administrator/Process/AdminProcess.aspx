<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AdminProcess.aspx.vb" Inherits="BPMWebSite.AdminProcess" Title=""
    Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <ajaxToolkit:TabContainer ID="Tabs" runat="server" ActiveTabIndex="0" 
        Width="100%">
        <ajaxToolkit:TabPanel ID="Panel1" runat="server" HeaderText="Busquedas Rapidas">
            <HeaderTemplate>
                Busquedas Rapidas
            </HeaderTemplate>
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                padding-top: 5px">
                                <div style="float: left">
                                    Crear Nuevos Procesos</div>
                                <div style="float: right; vertical-align: middle">
                                    <asp:Button ID="btnAdd" runat="server" Text="Adicionar Proceso" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle;
                                padding-top: 5px">
                                <div style="float: left">
                                    Ver Procesos Habilitados</div>
                                <div style="float: right; vertical-align: middle">
                                    <asp:ImageButton ID="btnShowEnabled" runat="server" AlternateText="(Mostrar...)"
                                        ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg" />
                                </div>
                            </div>
                        </asp:Panel>
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
                                    <asp:ListItem Value="Process.ID">ID</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="Process.Code">Codigo</asp:ListItem>
                                    <asp:ListItem Value="Process.Name">Nombre</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                                <asp:Button ID="btnSearch" runat="server" Text="Buscar" /></p>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="BasicSearchCollapsiblePanelExtender" runat="Server"
                            CollapseControlID="BasicSearchHeader" Collapsed="True" CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            CollapsedText="(Mostrar...)" ExpandControlID="BasicSearchHeader" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                            ExpandedText="(Ocultar...)" ImageControlID="Image1" SuppressPostBack="true" TargetControlID="BasicSearch"
                            TextLabelID="Label1">
                        </ajaxToolkit:CollapsiblePanelExtender>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="Panel3" runat="server" HeaderText="Busquedas Avanzadas" Enabled="false" Visible="false">
            <ContentTemplate>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="lblASField" runat="server" Text="Campo"></asp:Label>
                        <asp:DropDownList ID="cboAdvanceField" runat="server">
                            <asp:ListItem Value="Process.ID">ID</asp:ListItem>
                            <asp:ListItem Selected="True" Value="Process.Code">Codigo</asp:ListItem>
                            <asp:ListItem Value="Process.Name">Nombre</asp:ListItem>
                            <asp:ListItem Value="Process.Enabled">Status</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label2" runat="server" Text="Comparador"></asp:Label>
                        <asp:DropDownList ID="cboFieldComparator" runat="server">
                            <asp:ListItem Selected="True" Value="0">Igual a</asp:ListItem>
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
                        <asp:Label ID="Label3" runat="server" Text="Valor"></asp:Label>
                        <asp:TextBox ID="ASFieldValue" runat="server"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Operador Logico"></asp:Label>
                        <asp:RadioButtonList ID="rdoLogicalOperator" runat="server">
                            <asp:ListItem Value="1">AND</asp:ListItem>
                            <asp:ListItem Selected="True" Value="2">OR</asp:ListItem>
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
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Administrator/Process/AddProcess.aspx?Operation=Update&amp;IdProcess={0}"
                            HeaderText="" Text="Editar">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Code" HeaderText="C&#243;digo" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre" />
                        <asp:BoundField DataField="Description" HeaderText="Descripci&#243;n" />
                        <asp:TemplateField HeaderText="Actividades">
                            <ItemStyle HorizontalAlign="Center" />
                            <ItemTemplate>
                                <a class="lnk" href='AssignActivities.aspx?IdProcess=<%#Container.DataItem.ID%>'>
                                Ver Actividades asociadas</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Paquetes">
                            <ItemStyle HorizontalAlign="Center" />
                            <ItemTemplate>
                                <a class="lnk" href='AssignPackages.aspx?IdProcess=<%#Container.DataItem.ID%>'>
                                Ver Paquetes asociados</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Opciones">
                            <ItemStyle HorizontalAlign="Center" />
                            <ItemTemplate>
                                <a class="lnk" href='CloningProcess.aspx?IdProcess=<%#Container.DataItem.ID%>'>
                                Clonar Proceso</a>
                                <a class="lnk" href='../../Library/DesignTime/Process/<%#Container.DataItem.Documentation.FullFileName%>' target="_blank">
                                Dato adicional</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <%--<ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" TargetControlID="DataGridPanel"
                Radius="6" Corners="All" />--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
</asp:Content>
