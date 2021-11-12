
Partial Class FinalizarImpersonalizacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       Session.Abandon()
	           Response.Redirect(ConfigurationManager.AppSettings("TestSilpaDefault"))

    End Sub
End Class
