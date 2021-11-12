Imports System.Configuration.ConfigurationManager
Imports Gattaca.Application.Credentials

Partial Class SilpaDefaultLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            If AppSettings("AuthenticationMode") = 3 Then
                btnLogIn_Click(sender, e)
            End If
        End If

    End Sub

    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click

        Dim _oAppCredentials As ApplicationCredentials = CType(Session("ApplicationCredentials"), Gattaca.Application.Credentials.ApplicationCredentials)

        Dim sIP As String
        Dim Pwd As String
        Dim Usr As String

        Dim lsGroups As String = String.Empty
        Dim lsCompanies As String = String.Empty
        Dim lsModules As String = String.Empty

        Dim oSecurity As New Gattaca.Facade.eSecurity.eSecurity
        Dim oUser As Gattaca.Entity.eSecurity.ApplicationUserEntity

        Dim lActivityInstance As Long = 0

        Dim oGroups As List(Of Gattaca.Entity.eSecurity.UserGroupEntity)
        Dim oCompanies As List(Of Gattaca.Entity.eSecurity.CompanyEntity)
        Dim oModules As List(Of Gattaca.Entity.eSecurity.ModuleEntity)

        Dim AuthenticationMode As String = "2"

        Dim bAccess As Boolean = False
        Dim superUser As Long = 1
        Dim IdUser As Long = CLng(Request.QueryString("IdUser"))

        Try

            sIP = CStr(Request.ServerVariables("REMOTE_ADDR"))

            Select Case AppSettings("AuthenticationMode")
                Case 3
                    Application("AppClient") = AppSettings("ClientName")
                    'Usr = Request.ServerVariables("LOGON_USER")
                    Usr = Request("LOGON_USER")
                    Pwd = ""
                Case Else
                    Application("AppClient") = Me.cboClient.SelectedValue
                    Usr = Me.txtUserName.Text.Trim
                    Pwd = Me.txtPassword.Text.Trim
            End Select

            _oAppCredentials.UserID = 174
            _oAppCredentials.ClientName = Application("AppClient")

            oUser = oSecurity.UserLogin(_oAppCredentials, Usr, Pwd, AppSettings("AuthenticationMode"))
            'oUser = oSecurity.GetUserInfo(_oAppCredentials, IdUser)

            _oAppCredentials.UserID = oUser.ID

            Session("AuthenticatedSecurity") = True
            Session("UserID") = oUser.ID
            Session("UserName") = "[" & oUser.Code & "] - " & oUser.Name

            Session("UserUsr") = Usr

            Session("ApplicationCredentials") = _oAppCredentials
            Session("AppClient") = _oAppCredentials.ClientName

            'Cargar los grupos de usuarios a los que pertenece el usuario.

            oGroups = oSecurity.GetUserGroupsbyUser(_oAppCredentials, oUser.ID)
            Session("Groups") = oGroups

            If oGroups.Count > 0 Then
                For Each Groups As Gattaca.Entity.eSecurity.UserGroupEntity In oGroups
                    lsGroups = lsGroups & Groups.ID & ","
                    If Trim(lsGroups) <> "" Then
                        Session("UserGroupsID") = Left(lsGroups, Len(lsGroups) - 1)
                    Else
                        Session("UserGroupsID") = "0"
                    End If
                Next
            End If

            oGroups = Nothing

            'Cargar las compañias a las que pertenece el usuario

            oCompanies = oSecurity.GetUserCompanies(_oAppCredentials, oUser.ID)
            Session("Companies") = oCompanies

            If oCompanies.Count > 0 Then
                For Each Companies As Gattaca.Entity.eSecurity.CompanyEntity In oCompanies
                    lsCompanies = lsCompanies & Companies.ID & ","
                    If Trim(lsCompanies) <> "" Then
                        Session("UserCompaniesID") = Left(lsCompanies, Len(lsCompanies) - 1)
                    Else
                        Session("UserCompaniesID") = "0"
                    End If
                Next
            End If

            oCompanies = Nothing

            'Cargar los modulos modulos del sistema puede acceder para validar si es administrador o no.

            oModules = oSecurity.GetAuthorizedModules(_oAppCredentials, oUser.ID)
            Session("Modules") = oModules

            If oModules.Count > 0 Then
                For Each Modules As Gattaca.Entity.eSecurity.ModuleEntity In oModules
                    lsModules = lsModules & Modules.ID & ","
                    If Trim(lsModules) <> "" Then
                        Session("UserModulesID") = Left(lsModules, Len(lsModules) - 1)
                    Else
                        Session("UserModulesID") = "0"
                    End If
                Next
            End If

            oModules = Nothing

            'Atención. Este numero corresponde al modulo en el Security

            If Not InStr(1, lsModules, "1,") <> 0 Then
                Throw New Exception("Este acceso solo es para personal autorizado.")
            End If

            ' Requiere cambio de contraseña
            Dim lsURL As String = Request.ServerVariables("URL")

            If oUser.IsChangePassword Then
                lsURL = "~/Common/changepassword.aspx?Status=AdminOrder&lsURL=" & lsURL
            ElseIf oUser.DaysToExpiration < 15 Then
                lsURL = "~/Common/changepassword.aspx?Status=TimeLine&Days=" & CStr(Fix(CInt(oUser.DaysToExpiration \ 1))) & "&lsURL=" & lsURL
            Else
                lsURL = "~/Main.aspx"
            End If

            Response.Redirect(lsURL)
            Response.End()

        Catch oEx As System.Threading.ThreadAbortException
            ' No hacer nada, no importa el error.
        Catch oEx As Exception
            Session("sError") = oEx.Message
            Response.Redirect("~/Errors/ErrorWithOutMenu.aspx", False)
            Response.End()
        Finally
            oSecurity = Nothing
            oUser = Nothing
            oGroups = Nothing
            oModules = Nothing
            oCompanies = Nothing
        End Try

    End Sub

End Class
