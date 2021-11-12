Public Partial Class BandejaTareas_SilpaSalir
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Session.Abandon()
		Response.Redirect("/xcars/Silpa_ut_pre/Salir.aspx?logout=" + Request.Params("logout"))

    End Sub



End Class
