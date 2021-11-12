<%@ control language="VB" autoeventwireup="false" inherits="Controls_ExternalValueSourceSelector, App_Web_opgzw_gw" %>

<div style="margin: 5px 0px 5px 0px">
    <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
    Proceso</label>
      <asp:DropDownList ID="ddlProcess" runat="server" AutoPostBack="True">
</asp:DropDownList>
</div>

<div style="margin: 5px 0px 5px 0px">
    <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
    Actividad fuente</label>
      <asp:DropDownList ID="ddlSourceActivity" runat="server" AutoPostBack="True">
    </asp:DropDownList>
</div>
