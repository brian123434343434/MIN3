Public Partial Class BandejaTareas_SilpaSalir
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Session.Abandon()
		Response.Redirect("/Silpa_ut_pre/Salir.aspx?logout=1")

    End Sub



End Class