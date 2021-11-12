Imports System.Linq
Imports System.Net
Imports System.IO
Imports System.Text

Partial Class vital_colaDeMensajes
    Inherits System.Web.UI.Page

    Private Sub rptPermisos_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptPermisos.ItemCommand

        If (e.CommandName = "registrar") Then
            Dim proceso As New integrador.servicios
            Dim arr() As String = e.CommandArgument.ToString().Split(";") 'PkCodigoExpediente;PkNumeroVital;pkRecId;idRelacionActoAdministrativo; intentos
            If arr(3) = "0" Or arr(3) = "-1" Then 'i es la creacion de un acto
                proceso.registrarPermiso(Context.Server.MapPath("tmp/Log.txt"), arr)
            End If
            If arr(3) = "1" Then 'si es un traspaso
                proceso.traspasarPermiso(Context.Server.MapPath("tmp/Log.txt"), arr)
            End If
            If arr(3) = "2" Or arr(3) = "3" Or arr(3) = "4" Then 'renovación, revocación, modificación
                proceso.modificarPermiso(arr(3), Context.Server.MapPath("tmp/Log.txt"), arr)
            End If
            Response.Redirect("/vital/colaDeMensajes.aspx")

        End If
    End Sub

    Private Sub vital_colaDeMensajes_Load(sender As Object, e As EventArgs) Handles Me.Load


        Session("lblTitle") = "Consultar log de transacciones(pendientes y con error) "
        'Session("UserGroup") = "integrador"

        Dim objTransacciones As New integrador.colaDeMensajesDALC

        If Not IsPostBack Then

            rptPermisos.DataSource = objTransacciones.traeListaMensajes
            rptPermisos.DataBind()

        End If



    End Sub

End Class
