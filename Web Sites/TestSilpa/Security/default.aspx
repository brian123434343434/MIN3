<%@ Page Language="VB" MasterPageFile="~/Master/mpAdmin.master" AutoEventWireup="false"
    CodeFile="default.aspx.vb" Inherits="Security_Default" Title="VITAL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <asp:Label ID="Token" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblWelcome" runat="server" Width="100%" CssClass="cssLabelForm" 
		Text="Usted se encuenta en la página principal del Sistema VITAL. Si desea Realizar un trámite, 
		escoja la opción 'Iniciar Trámite' y seleccione el trámite deseado, para llenar el formulario de solicitud. Si ya tiene trámites en proceso
		y desea consultar las actividades pendientes o ejecutarlas, seleccione la opción 'Tareas' y luego 'Mis Tareas'. Puede ver la 
		lista de sus trámites en proceso a través de la opción 'Mis Trámites', la lista de sus notificaciones en la opción 'Notificaciones' y para 
		Realizar Quejas o Denuncias o Consultar, Diligenciar formulario RUA seleccione la opción correcta en 'Otras Actividades' "></asp:Label>
    <br />
</asp:Content>
