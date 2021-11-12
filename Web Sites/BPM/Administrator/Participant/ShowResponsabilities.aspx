<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowResponsabilities.aspx.vb"
    Inherits="BPMWebSite.ShowResponsabilities" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Actividades asignadas</title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="cssBkgWorkItem">
                <h3>
                    Actividades asignadas al Grupo o Participante:
                    <asp:Label ID="lblNameParticipant" runat="server" Text=""></asp:Label></h3>
                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    AllowPaging="false" Width="100%" DataKeyNames="IdProcess, IdActivity" PageSize="25">
                    <Columns>
                        <asp:BoundField DataField="IdProcess" HeaderText="Id Proceso" />
                        <asp:BoundField DataField="ProcessName" HeaderText="Proceso" />
                        <asp:BoundField DataField="IdActivity" HeaderText="Id Actividad" />
                        <asp:BoundField DataField="ActivityName" HeaderText="Actividad" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
