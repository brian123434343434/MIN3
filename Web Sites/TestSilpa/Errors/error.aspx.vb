
Partial Class Errors_error
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mapError As MapeoError
        mapError = New MapeoError()
        mapError.rutaXmlMapeo = ConfigurationManager.AppSettings("MapeoError").ToString()
        Me.lblError.Text = mapError.mapearError(Session("error").ToString(), "")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("~/Security/login.aspx")
    End Sub
End Class
