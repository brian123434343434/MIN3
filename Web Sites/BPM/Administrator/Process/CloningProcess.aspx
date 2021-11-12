<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="CloningProcess.aspx.vb" Inherits="BPMWebSite.CloningProcess"
    Title="Clonar Procesos" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <h2>
                    Clonando el proceso</h2>
                <table border="0" cellpadding="5" cellspacing="5">
                    <tr>
                        <td colspan="3">
                            <b>Adicionales</b>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <span lang="es-co" style="font-weight: bold">Pasos realizados</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Prefijo del proceso</span></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtPrefix" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfPrefix" runat="server" Display="Dynamic" 
                                ErrorMessage="Dato Requerido" ControlToValidate="txtPrefix"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td rowspan="9" valign="top">
                            &nbsp;
                            <asp:TextBox ID="txtFeedback" runat="server" Height="228px" TextMode="MultiLine"
                                Width="617px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnGo" runat="server" Text="Continuar" Visible="false" />
                            <asp:Button ID="btnNext" runat="server" Text="Continuar" Visible="false" />
                            <br />
                            <br />
                            Este puede tardar varios minutos dependiendo del tamaño actual del proceso<br />
                            Por ningun motivo cierre esta ventana ni ejecute ningun comando mientras se 
                            termina el proceso..<br />
                            <asp:Label ID="lblMessage" runat="server" Style="color: #FF0000; font-weight: bold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Responsables por procesos</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkResponsiblesByProcess" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Auditores por proceso</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkAuditorsByProcess" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Supervisores por proceso</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkSupervisorsByProcess" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Otros por proceso</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkOthersByProcess" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            Auditores por actividad
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkAuditorsByActivity" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Supervisores por actividad</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkSupervisorsByActivity" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Participantes por actividad</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkPerformersByActivity" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <span lang="es-co">Otros por actividad</span>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="chkOthersByActivity" runat="server" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
