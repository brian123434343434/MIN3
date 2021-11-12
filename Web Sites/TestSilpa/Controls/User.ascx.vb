
Partial Class Controls_User
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("ApplicationUserEntity") IsNot Nothing Then

            ' mostrar los datos del usuario
            Me.lblUserName.Text = CType(Session("ApplicationUserEntity"), Gattaca.Entity.eSecurity.ApplicationUserEntity).Name
            Me.lblLastLogin.Text = CType(Session("ApplicationUserEntity"), Gattaca.Entity.eSecurity.ApplicationUserEntity).LastLogin.ToString("yyyy/MM/dd hh:mm:ss")

        End If

    End Sub

End Class
