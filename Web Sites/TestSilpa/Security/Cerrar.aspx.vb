Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager
Imports System.Xml
Imports SILPA.AccesoDatos

Partial Class Security_Cambio2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load     
	If (Session("UserOld") IsNot Nothing)
		Session("User") = Session("UserOld")
        	Session("UserOld") = Nothing
	End If
	Dim _str_btnActualizar as String
	_str_btnActualizar=Request.QueryString("btnId")
	Response.Redirect("../../../SILPA_UT_PRE/Salir.aspx?out=S")
	'ScriptManager.RegisterClientScriptBlock(Page, Me.GetType, "men", "window.close();", True)
	'ClientScript.RegisterClientScriptBlock(Me.GetType(), "asociacion", "<script></script>",True)
    End Sub
End Class
