Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager
Imports System.Xml
Imports SILPA.AccesoDatos

Partial Class Security_Cambio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim applicationCredentials As ApplicationCredentials
        Dim usuario As String = Request.QueryString("usr")
        Dim modo As String = Request.QueryString("modo")
        Dim superUser As Long = 1
        Dim clientName As String = ConfigurationManager.AppSettings("clientName")
        Dim LOGON_USER As String
        Dim facade As New SecurityFacade
        Dim contrasena As String
        Dim infoUsuario As String


        If (modo <> "F") Then
            Session("UserOld") = Session("User")
            Session("User") = usuario
        Else
            Session("User") = Session("UserOld")
            Session("UserOld") = Nothing

        End If
        LOGON_USER = Session("User")
        'Session("UserOld") = Session("User")

        ' contruir el credentials
        applicationCredentials = PublicFunction.buildApplicationCredentials(clientName, Request, superUser, Session.SessionID)

        infoUsuario = SILPA.AccesoDatos.Identificacion.Gattaca.Clave(LOGON_USER)
        contrasena = SILPA.Comun.EnDecript.Desencriptar(infoUsuario)

        ' hacer login
        facade.doLogin(applicationCredentials, LOGON_USER, contrasena, _
                        Gattaca.Entity.eSecurity.AuthenticationMode.SecurityOnly, Session, Request)


        FormsAuthentication.SetAuthCookie(LOGON_USER, True)
        Response.Redirect(ConfigurationManager.AppSettings("URLFinalizarFB"))
        'Response.Redirect("~/Security/default.aspx")
    End Sub
End Class
