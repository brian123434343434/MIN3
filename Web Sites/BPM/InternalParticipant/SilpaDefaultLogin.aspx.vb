Public Partial Class BandejaTareas_SilpaDefaultLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Dim op As String = ""

            If Not Request.QueryString("IdUser") Is Nothing Then
                Session.Clear()
                'cargar los datos del usuario
                Dim IdUser As String = Request.QueryString("IdUser")
                Dim Client As String = Request.QueryString("Client")
                op = Request.QueryString("op")

                'cargar las credenciales del usuario a la session
                Session("ApplicationCredentials") = buildApplicationCredentials(Client.ToString, CLng(IdUser))
                Session("Authenticated") = True
                Session("UserID") = IdUser

            Else
                ' mostrar exception
                Throw New Exception("Usuario no Autorizado.")
            End If

            Select Case op.ToUpper
                Case "TL"
                    Session("AuthenticatedIP") = True
                    'Response.Redirect("../../Silpa.WebHost/BandejaTareas/BandejaTareas.aspx")
                    Response.Redirect("../../../Silpa_ut_pre/BandejaTareas/BandejaTareas.aspx")
                Case "IP"
                    Session("AuthenticatedUser") = True
                    Response.Redirect("User/MainMenu.aspx")
                Case "ADMIN"
                    Session("AuthenticatedWFAdmin") = True
                    Response.Redirect("Administrator/MainMenu.aspx")
                Case Else
            End Select

        End If

    End Sub


    ''' <summary>
    ''' Contruir las credenciales del usuario
    ''' </summary>
    ''' <param name="sUserId"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Function buildApplicationCredentials(ByVal sClient As String, ByVal sUserId As Long) As Gattaca.Application.Credentials.ApplicationCredentials

        ' definir los objetos
        Dim sUserMachineIp As String
        Dim sUserSessionId As String

        ' obtener la ip del usuario
        sUserMachineIp = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

        ' se chequea si hay un proxy
        If sUserMachineIp = "" Then
            ' tomar la remota
            sUserMachineIp = Request.ServerVariables("REMOTE_ADDR")
        End If

        ' obtener la session del usuario
        sUserSessionId = Session.SessionID

        ' crear las nuevas credenciales
        buildApplicationCredentials = New Gattaca.Application.Credentials.ApplicationCredentials(ClientName:=sClient, _
                                                                                                ProductName:="VBWorkFlow", _
                                                                                                UserMachineIp:=sUserMachineIp, _
                                                                                                UserSessionId:=sUserSessionId, _
                                                                                                userid:=sUserId)

    End Function

End Class