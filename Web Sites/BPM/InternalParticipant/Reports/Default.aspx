﻿<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/BPMReports.Master"
    CodeBehind="Default.aspx.vb" Inherits="BPMWebSite._Default5" Title="Reportes y Estadisticas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="width: 175px" class="cssLeftPanel" valign="top" align="left" rowspan="2">

                <asp:TreeView ID="tvReports" SkinID="TreeViewReports" runat="server" AutoGenerateDataBindings="False">
                </asp:TreeView>

            </td>
            <td class="cssCentralPanel" valign="top" align="center">
                <h3>
                    Consultas, reportes y estadisticas avanzadas</h3>
            </td>
        </tr>
        <tr>
            <td class="cssCentralPanel" valign="top" align="left">
                <p>
                    <asp:PlaceHolder ID="pholderMain" runat="server"></asp:PlaceHolder>
                </p>
            </td>
        </tr>
    </table>
</asp:Content>