
Partial Class SessionPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Label1.Text = ""
        For Each key As String In Session.Keys
            Me.Label1.Text &= String.Format("<br>{0}='{1}'", key, Session(key))
        Next
    End Sub
End Class
