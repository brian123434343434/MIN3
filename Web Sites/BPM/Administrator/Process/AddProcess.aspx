<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddProcess.aspx.vb" Inherits="BPMWebSite.AddProcess" Title="Adicionar Procesos"
    Theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Width="100%">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Proceso" ID="TabPanel1">
            <ContentTemplate>
                <asp:Panel ID="FormPanel" runat="server" BackColor="White">
                    <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                        <tr>
                            <td align="left" class="cssLabelTitle" colspan="2">
                                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Procesos</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                &nbsp;<br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                    CssClass="cssRequired" Display="None" ErrorMessage="* Debe digitar un código para identificar el proceso "></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    HighlightCssClass="highlight" TargetControlID="rfvCode" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    Width="350px" Enabled="True">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                    CssClass="cssRequired" Display="None" ErrorMessage="* Debe digitar un nombre para el proceso "></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    HighlightCssClass="highlight" TargetControlID="rfvName" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    Width="350px" Enabled="True">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" CssClass="cssTextBoxForm" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                    CssClass="cssRequired" Display="None" ErrorMessage="* Debe digitar una descripción del proceso "></asp:RequiredFieldValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="vceDescription" runat="server" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    HighlightCssClass="highlight" TargetControlID="rfvDescription" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    Width="350px" Enabled="True">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Información Relacionada"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="fuDocumentation" runat="server" />
                                &nbsp;<asp:HyperLink ID="hlDocumentation" runat="server" Target="_blank" Visible="False"></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Unidad de Duración"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="cboDurationUnit" runat="server">
                                    <asp:ListItem Value="0">Año</asp:ListItem>
                                    <asp:ListItem Value="2">Mes</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="4">Día</asp:ListItem>
                                    <asp:ListItem Value="7">Hora</asp:ListItem>
                                    <asp:ListItem Value="8">Minuto</asp:ListItem>
                                    <asp:ListItem Value="9">Segundo</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Duración"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDuration" runat="server" MaxLength="5" onKeyPress="if (((event.keyCode < 48) ||  (event.keyCode> 57))) event.returnValue = false;"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revDuration" runat="server" 
                                    ControlToValidate="txtDuration" ErrorMessage="* Debe ser un valor numérico" Display="None"
                                    ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                                <ajaxToolkit:ValidatorCalloutExtender ID="vceDuration" runat="server" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    HighlightCssClass="highlight" TargetControlID="revDuration" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    Width="350px" Enabled="True">
                                </ajaxToolkit:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Actividad Inicial"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="cboInitialActivity" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="cboStatus" runat="server">
                                    <asp:ListItem Selected="True" Value="T">Habilitado</asp:ListItem>
                                    <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="btnSave" runat="server" CssClass="cssButton" OnClick="btnSave_Click"
                                    Text="Crear" />
                                &nbsp;<asp:Button ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton"
                                    OnClick="btnDelete_Click" Text="Eliminar" />
                                &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="cssButton"
                                    OnClick="btnCancel_Click" Text="Cancelar" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                    ConfirmText="Esta Seguro que desea eliminar este Proceso?, esta accion no puede revertirse."
                    Enabled="True">
                </ajaxToolkit:ConfirmButtonExtender>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Atributos">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server" BackColor="White">
                    <table id="Table2" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                        <tr>
                            <td align="left" class="cssLabelTitle">
                                <asp:Label ID="Label5" runat="server" CssClass="cssLabelTitle">Atributos del proceso</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;<br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:DataGrid ID="dgAttributes" Width="100%" runat="server" AutoGenerateColumns="False"
                                            CellPadding="2" ShowFooter="True" AllowPaging="True" AllowSorting="False" BorderColor="Black"
                                            BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingItemStyle BackColor="WhiteSmoke"></AlternatingItemStyle>
                                            <HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="Black" CssClass=""
                                                BackColor="Silver"></HeaderStyle>
                                            <Columns>
                                                <asp:BoundColumn Visible="True" DataField="Id" SortExpression="Id" ReadOnly="True"
                                                    HeaderText="Id"></asp:BoundColumn>
                                                <asp:TemplateColumn SortExpression="Name" HeaderText="Nombre">
                                                    <HeaderStyle Width="70%"></HeaderStyle>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>'> </asp:Label></ItemTemplate>
                                                    <FooterTemplate>
                                                        <asp:TextBox ID="txtAddName" Width="300px" MaxLength="400" runat="server"></asp:TextBox></FooterTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtName" Width="300px" runat="server" MaxLength="400" Text='<%# DataBinder.Eval(Container, "DataItem.Name") %>'> </asp:TextBox></EditItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn>
                                                    <HeaderStyle Width="8%"></HeaderStyle>
                                                    <ItemStyle Wrap="False" HorizontalAlign="Center"></ItemStyle>
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imgbutEdit" runat="server" EnableViewState="False" CausesValidation="False"
                                                            ToolTip="Editar" CommandName="Edit" BorderStyle="None" ImageUrl="/App_Themes/GattacaAdmin/Images/icon-pencil.gif"
                                                            AlternateText="Editar"></asp:ImageButton></ItemTemplate>
                                                    <FooterStyle Wrap="False" HorizontalAlign="Center"></FooterStyle>
                                                    <FooterTemplate>
                                                        <asp:ImageButton ID="imgbutInsert" runat="server" EnableViewState="False" CausesValidation="False"
                                                            ToolTip="Adicionar" CommandName="INSERT" BorderStyle="None" ImageUrl="/App_Themes/GattacaAdmin/Images/add.gif"
                                                            AlternateText="Adicionar"></asp:ImageButton></FooterTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ImageButton ID="imgbutUpdate" runat="server" EnableViewState="False" CausesValidation="False"
                                                            ToolTip="Actualizar" CommandName="UPDATE" BorderStyle="None" ImageUrl="/App_Themes/GattacaAdmin/Images/icon-floppy.gif"
                                                            AlternateText="Actualizar"></asp:ImageButton>&nbsp;
                                                        <asp:ImageButton ID="imgbutCancelEdit" runat="server" EnableViewState="False" DESIGNTIMEDRAGDROP="149"
                                                            CausesValidation="False" ToolTip="Cancelar" CommandName="Cancel" BorderStyle="None"
                                                            ImageUrl="/App_Themes/GattacaAdmin/Images/icon-pencil-x.gif" AlternateText="Cancelar">
                                                        </asp:ImageButton></EditItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn>
                                                    <HeaderStyle HorizontalAlign="Center" Width="8%"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imgbutDelete" runat="server" EnableViewState="False" CausesValidation="False"
                                                            ToolTip="Eliminar" CommandName="DELETE" BorderStyle="None" ImageUrl="/App_Themes/GattacaAdmin/Images/DeleteSmall.gif"
                                                            AlternateText="Eliminar"></asp:ImageButton></ItemTemplate>
                                                    <FooterStyle HorizontalAlign="Center"></FooterStyle>
                                                </asp:TemplateColumn>
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Right" Mode="NumericPages"></PagerStyle>
                                        </asp:DataGrid></ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>
