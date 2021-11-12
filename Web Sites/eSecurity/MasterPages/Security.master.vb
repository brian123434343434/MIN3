Imports Gattaca.Application.Credentials

Partial Class MasterPages_Security
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("AuthenticatedSecurity") <> True Then

            Dim _oAppCredentials As ApplicationCredentials = CType(Session("ApplicationCredentials"), Gattaca.Application.Credentials.ApplicationCredentials)
            Dim sUrl As String = String.Empty

            Select Case Session("AuthenticationMode").ToString
                Case "1"    ' Mixto
                    sUrl = "~/Default.aspx?auth=1&client="
                Case "2"    ' Security
                    sUrl = "~/Default.aspx?auth=2&client="
                Case "3"    ' Directorio Activo
                    sUrl = "~/Default.aspx?auth=3&client="
                Case Else
                    sUrl = "~/Default.aspx"
            End Select

            ' mostrando el error
            Session("sUrl") = sUrl & _oAppCredentials.ClientName
            Session("sError") = "Se ha finalizado la session. Ingrese de nuevo al sistema"
            Response.Redirect("~/Errors/Error.aspx")
            Response.End()
        End If

        If Not Page.IsPostBack Then

            Try

                ' Datos del Usuario y personalizacion del Menu
                Me.lblUsername.Text = "Bienvenido " & Session("UserName")

            Catch oex As System.Threading.ThreadAbortException
                ' No hacer nada, no importa el error.

            Catch ex As Exception
                ' Mostrando el error
                Session("sError") = ex.Message
                Session("sUrl") = Request.UrlReferrer.PathAndQuery
                Response.Redirect("Errors/Error.aspx")
                Response.End()
            Finally
            End Try

        End If

    End Sub

End Class

