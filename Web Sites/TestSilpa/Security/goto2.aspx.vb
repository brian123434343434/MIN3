Option Strict On
Option Explicit On

Imports Gattaca.Application.Credentials

Partial Class Process_gotoWorkFlow
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' verificar que este vigente la session
        If Session Is Nothing Or Session.Count = 0 Then

            ' ir a pagina logout
            Response.Redirect("~/security/LogOut.aspx")
            Response.End()

        End If

        Dim appCred As ApplicationCredentials = CType(Session("ApplicationCredentials"), ApplicationCredentials)
        Dim url As String = ""
        Dim op As String = Request.QueryString("op")
        Dim _case As String = Request.QueryString("case")
        Dim app As String = Request.QueryString("app")

        ' cargar los parametros del usuario y el cliente
        url = "?IdUser=" & appCred.UserID.ToString & "&LOGON_USER=" & appCred.UserID.ToString & "&op=" & op & "&Client=" & appCred.ClientName

        Select Case app

            Case "BPM"
                url = ConfigurationManager.AppSettings("bpmLogin") & url
            Case "NuevoBPM"
                url = ConfigurationManager.AppSettings("SilpaBpmLogin") & url

            Case "SEC"
                url = ConfigurationManager.AppSettings("securityLogin") & url

            Case "FB"
                url = ConfigurationManager.AppSettings("formBuilderLogin") & url

            Case "FBApp"

                ' definir las variables
                Dim IdActivityInstance As String = "-1"
                Dim IdProcessInstance As String = "-1"

                If Request.QueryString("IdActivityInstance") IsNot Nothing Then

                    ' cargar los parametros
                    IdActivityInstance = Request.QueryString("IdActivityInstance")

                End If

                If Request.QueryString("IdProcessInstance") IsNot Nothing Then

                    ' cargar los parametros
                    IdProcessInstance = Request.QueryString("IdProcessInstance")

                End If

                ' cargar el tipo del formulario
                Dim type As String = Request.QueryString("type")

                ' armar la url
                url = ConfigurationManager.AppSettings("formBuilderAppLogin") & _
                        "?type=" & type & "&Case=" & _case & "&Form=" & op & "&IdRelated=" & appCred.UserID.ToString & _
                        "&ClientName=" & appCred.ClientName & _
                        "&IdProcessInstance=" & IdProcessInstance & _
                        "&IdActivityInstance=" & IdActivityInstance & "&" & _
                        "EntryDataType=0&EntryData=" & op & _
                        "&idEntryData=0&op=add" & _
                        "&IdCondition=" & Request.QueryString("IdCondition")


            Case "RB"
                url = ConfigurationManager.AppSettings("reportBuilderLogin") & url

            Case "RBApp"

                ' cargar el tipo del formulario
                Dim type As String = Request.QueryString("type")

                ' armar la url
                url = ConfigurationManager.AppSettings("reportBuilderAppLogin") & _
                        "?type=" & type & "&IdRelated=" & appCred.UserID.ToString & _
                        "&ClientName=" & appCred.ClientName
            Case "DP"

                url = ConfigurationManager.AppSettings("datosPersonales") & url

        End Select

        ' ir a la pagina
        Response.Redirect(url)

    End Sub

End Class
