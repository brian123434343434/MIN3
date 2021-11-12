Option Strict On

Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager
Imports System.Xml

Partial Class Security_login
    Inherits System.Web.UI.Page

#Region "Eventos"

    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click

        ' definir los objetos
        Dim applicationCredentials As ApplicationCredentials
        Dim superUser As Long = 1
        Dim clientName As String = ConfigurationManager.AppSettings("clientName")
        Dim LOGON_USER As String = Me.txtUser.Text
        Dim facade As New SecurityFacade

        Try

            ' contruir el credentials
            applicationCredentials = PublicFunction.buildApplicationCredentials(clientName, Request, superUser, Session.SessionID)

            ' hacer login
            facade.doLogin(applicationCredentials, LOGON_USER, Me.txtPw.Text, _
                            Gattaca.Entity.eSecurity.AuthenticationMode.SecurityOnly, Session, Request)

            ' ir a la pagina
            Response.Redirect("~/security/default.aspx")


        Catch oEx As Threading.ThreadAbortException
            ' no hacer nada

        Catch ex As Exception

            'mostrando el error
            Session("error") = ex.Message

            Session("Url") = "" 'Request.UrlReferrer.PathAndQuery
            'Response.Redirect("~/errors/error.aspx")
            'lblError.Visible = True
            'lblError.Text = ex.ToString()

            Response.End()

        Finally

            ' liberar recursos
            applicationCredentials = Nothing
            superUser = Nothing
            clientName = Nothing
            LOGON_USER = Nothing

        End Try

    End Sub

#End Region

End Class
