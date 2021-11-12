<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addListSource, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
<asp:UpdatePanel runat="server" ID="upParams" UpdateMode="Conditional">
                                    <ContentTemplate>
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td colspan="4" class="cssPanel">
                            <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm" Font-Size="Large" Text="Datos de la lista"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lbCode" runat="server" Text="Código" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td style="width: 235px">
                            <asp:TextBox ID="txtCode" runat="server" Width="400px" CssClass="cssTextBoxForm"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                ErrorMessage="*" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label2" runat="server" CssClass="cssLabelForm" Text="Ingrese el código de la fuente de lista"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lblName" runat="server" Text="Nombre" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="400px" CssClass="cssTextBoxForm"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTxtName" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblHelpName" runat="server" CssClass="cssLabelForm" Text="Ingrese el nombre de la fuente de lista"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">
                            <asp:Label ID="lbListType" runat="server" Text="Tipo de fuente" CssClass="cssLabelForm"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="ddlListType" Width="400px" AutoPostBack="true">
                                <asp:ListItem Text="Values" Value="Values"></asp:ListItem>
                                <asp:ListItem Text="SQL" Value="SQL"></asp:ListItem>
                                <asp:ListItem Text="WS" Value="WS"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <%--Espacio para paneles--%>
                            <%--Panel de valores --%>
                            <br />
                            <asp:Panel runat="server" ID="pnValues">
                                <asp:Label ID="lbValueText" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                    Text="Ingreso de Valores"></asp:Label>
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td style="width: 235px">
                                            <asp:Label ID="lbValueCode" runat="server" Text="Código" CssClass="cssLabelForm"></asp:Label>
                                            <asp:HiddenField runat="server" ID="hfIdValue" />
                                        </td>
                                        <td style="width: 235px">
                                            <asp:TextBox ID="txtValueCode" runat="server" Width="400px" CssClass="cssTextBoxForm"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="left" style="padding-left: 10px">
                                            <asp:Label ID="Label5" runat="server" CssClass="cssLabelForm" Text="Ingrese el código"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbValueName" runat="server" Text="Nombre" CssClass="cssLabelForm"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtValueName" runat="server" Width="400px" CssClass="cssTextBoxForm"
                                                MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td align="left" style="padding-left: 10px">
                                            <asp:Label ID="Label6" runat="server" CssClass="cssLabelForm" Text="Ingrese el Nombre"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnAddValue" runat="server" Text="Agregar Valor" ValidationGroup="addForm"
                                                CssClass="cssButton" />
                                               <asp:Button ID="BtnUpdateValue" runat="server" Text="Actualizar" ValidationGroup="addForm" CssClass="cssButton" />
                                               <asp:Button ID="BtnCancelValue" runat="server" Text="Cancelar" ValidationGroup="addForm" CssClass="cssButton" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <%--Panel sql--%>
                            <asp:Panel runat="server" ID="pnSQL" Visible="false">
                                <asp:Label ID="lbTitleSQl" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                    Text="Información de la sentencia SQL"></asp:Label>
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td style="width: 235px">
                                            <asp:Label ID="Label3" runat="server" Text="Sentencia" CssClass="cssTextBoxForm"></asp:Label>
                                        </td>
                                        <td style="width: 235px">
                                            <asp:TextBox ID="txtSQL" runat="server" Width="400px" CssClass="cssTextBoxForm" TextMode="MultiLine"
                                                Rows="10" Columns="60"></asp:TextBox>
                                        </td>
                                        <td style="padding-left: 10px">
                                            <asp:Label ID="Label4" runat="server" CssClass="cssLabelForm" Text="Ingrese la sentencia, recuerde que la cosnulta deber tener los campos id, code, name para que funcione correctamete"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button runat="server" ID="btnPreviewSQL" CssClass="cssButton" Text="Preview" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" ID="lbMessageSQL"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <%--Panel ws--%>
                            <asp:Panel runat="server" ID="pnWS" Visible="false">
                                <asp:Label ID="lbTitleWS" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                    Text="Información del WS"></asp:Label>
                                <br />
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" ID="lbRecomendationWS"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button runat="server" ID="BtnPreviewWS" CssClass="cssButton" Text="Preview" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label runat="server" ID="lbMessageWS"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Panel runat="server" ID="pnResult">
                                <br />
                                <asp:Label ID="lbTitleTable" runat="server" CssClass="cssLabelForm" Font-Size="Large"
                                    Text="Valores de la lista"></asp:Label>
                                <br />
                                
                                        <div style="overflow: auto; height: 150px;">
                                            <asp:GridView runat="server" ID="gvParams" AutoGenerateColumns="false" Width="55%"
                                                HorizontalAlign="left">
                                                <Columns>
                                                    <asp:CommandField DeleteText="Eliminar" HeaderText="Acciones" ShowDeleteButton="true"
                                                        ShowEditButton="true" EditText="Editar" />
                                                    <asp:BoundField HeaderText="ID" DataField="id" />
                                                    <asp:BoundField HeaderText="Código" DataField="code" />
                                                    <asp:BoundField HeaderText="Nombre" DataField="name" />
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <b>No hay valores para este tipo de lista</b>
                                                </EmptyDataTemplate>
                                            </asp:GridView>
                                        </div>
                                    
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnAddData" runat="server" Text="Agregar Datos" ValidationGroup="addForm"
                    CssClass="cssButton" />
                <asp:Button ID="btnSave" runat="server" Text="Guardar" ValidationGroup="addForm"
                    CssClass="cssButton" />
                <asp:Button ID="btnDelete" runat="server" Text="Eliminar" CssClass="cssButton" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancelar" CssClass="cssButton" />
            </td>
        </tr>
    </table>
    </ContentTemplate>
                                </asp:UpdatePanel>
</asp:Content>
