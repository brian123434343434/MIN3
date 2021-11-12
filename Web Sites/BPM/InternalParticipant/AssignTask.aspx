<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowIP.Master"
    CodeBehind="AssignTask.aspx.vb" Inherits="BPMWebSite.AssignTask" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phDefault" runat="server">
    <asp:UpdatePanel ID="upDefault" runat="server">
        <ContentTemplate>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="cssBkgWorkItem">
                        <table>
                            <tr>
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td>
                                    Esta(s) Actividad(ades) debe ser asignada(s) manualmente.<br />
                                    Seleccione a que usuario le será(an) asignada(s) esta(s) Actividad(es).<br />
                                    <br />
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px" rowspan="3">
                                </td>
                                <td>
                                    <asp:Label ID="lblTaskParticipants" runat="server" Text="Asignar Tarea a estos Participantes"></asp:Label>
                                </td>
                                <td style="width: 100px" rowspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvParticipants" runat="server" AutoGenerateColumns="False" Visible="false">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:RadioButton ID="rdoID" runat="server" GroupName="rdoResponsible" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Code" HeaderText="Code" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" />
                                            <asp:BoundField HeaderText="RCode" DataField="RelatedCode" />
                                            <asp:BoundField HeaderText="RName" DataField="RelatedName" />
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnAssignManualActivity" runat="server" Text="Asignar Actividades" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
