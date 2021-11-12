Option Strict On

Partial Class Security_logout
    Inherits System.Web.UI.Page
	
	
'	Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

 '       If HttpContext.Current.Session("Theme") IsNot Nothing Then

            ' quemar el tema del cliente
            'Page.Theme = HttpContext.Current.Session("Theme").ToString
			'Page.Theme = HttpContext.Current.Session("SoftManagement").ToString

  '      Else
            ' quemar el tema por defecto
  '          Page.Theme = "SoftManagement"

   '     End If

    'End Sub
	
	

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
	 '//Response.Redirect("~/security/login.aspx") 
	 	 Response.Redirect("../../../SILPA/TestSilpa/security/login.aspx?fs=1")
    End Sub
	
	
	 Protected Sub btnLogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogOut.Click
        ' ir al inicio
		Response.Redirect("~/SILPA/TestSilpa/security/login.aspx?fs=1")
    End Sub

End Class