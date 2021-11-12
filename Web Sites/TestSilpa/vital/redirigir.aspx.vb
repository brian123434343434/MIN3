Imports System.Collections.Generic
Imports System.Collections.Specialized
Imports System.IO
Imports System.Linq
Imports System.Security.Cryptography
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Class vital_redirigir
    Inherits System.Web.UI.Page
    Public respuesta As integrador.permisos.osConsultarPermisos





    Public Sub RedirectWithData(data As String, url As String)
        Dim response As HttpResponse = HttpContext.Current.Response
        response.Clear()
        Dim objRedir As New integrador.servicios

        Dim s As New StringBuilder()
        s.Append("<html>")
        s.AppendFormat("<body onload='document.form.submit();'>")
        's.AppendFormat("<body'>")

        s.AppendFormat("Cargando... <BR/> <img src='img/loading.gif'>")
        s.AppendFormat("<form name='form' action='{0}' method='post'>", url)
        For Each key As String In data
            s.AppendFormat("<input type='hidden' name='{0}' value='{1}' />", "datos", data)
        Next
        s.Append(" <input id='Submit1' type='submit' value='submit' style='display:none;' /> ")
        s.Append("</form>")
        s.Append("<script>")
        s.Append("document.onreadystatechange = Function() { ")
        s.Append(" //document.form.submit(); ")
        s.Append(" } ")
        s.Append("</script></body></html>")

        Dim token As String = objRedir.Encrypt(DateTime.Now.ToString("SIAC yyyy-MM-dd HH:mm:ss"))
        s = s.Replace("&token", token)

        Session("redirCuerpo") = Nothing
        response.Write(s.ToString())
        response.End()

    End Sub

    Private Sub vital_redirigir_Init(sender As Object, e As EventArgs) Handles Me.Init
        Dim autoridadAmbiental As String = ""
        Dim aliasUsuario As String = ""
        Dim mensaje As String = ""
        Dim redireccion As String = ""
        Dim objRedir As New integrador.servicios
        Dim codioOperacion As String = "000001"
        'ya viene desde la seguridad, entonces no se debe validar nada de esto
        autoridadAmbiental = Session("autoridadAmbiental")
        aliasUsuario = Session("User")

        If (Session("User") Is Nothing) Then
            Response.Redirect("/security/Login.aspx")
        End If

        'para casos en los que venga ya armado el cuerpo
        If Not (Session("redirCuerpo") Is Nothing) Then
            RedirectWithData(Session("redirCuerpo").ToString, Session("adaptador").ToString)
        End If

        If Not (Request.Item("op") Is Nothing) Then
            codioOperacion = Request.Item("op")
        End If

        'para casos en los que solamente necesite el header por default pero no requiera cuerpo
        If Not (Request.Item("sistemaDestino") Is Nothing) Then
            Dim sistemaDestino As String = Request.Item("sistemaDestino")
            Dim datosConexion As String = "<aliasUsuarioOrigen>&aliasUsuarioOrigen</aliasUsuarioOrigen>" & _
                                            "<aliasUsuarioDestino>&aliasUsuarioDestino</aliasUsuarioDestino>" & _
                                            "<autoridadAmbiental>&autoridadAmbiental</autoridadAmbiental>" & _
                                            "<sistemaOrigen>&sistemaOrigen</sistemaOrigen>" & _
                                            "<sistemaDestino>&sistemaDestino</sistemaDestino>" & _
                                            "<codigoOperacion>&codigoOperacion</codigoOperacion>"

            datosConexion = datosConexion.Replace("&aliasUsuarioOrigen", aliasUsuario)
            datosConexion = datosConexion.Replace("&aliasUsuarioDestino", "")
            datosConexion = datosConexion.Replace("&autoridadAmbiental", autoridadAmbiental)
            datosConexion = datosConexion.Replace("&sistemaOrigen", "VITAL")
            datosConexion = datosConexion.Replace("&sistemaDestino", sistemaDestino)
            datosConexion = datosConexion.Replace("&codigoOperacion", codioOperacion)

            datosConexion = "<datosConexion>" & datosConexion & "</datosConexion>"

            Dim datosOperacion As String = "&datosOperacion"
            datosOperacion = "<datosOperacion>" & datosOperacion & "</datosOperacion>"

            Dim dataPost As String = "<root> " & "<datosSeguridad>" & "<token>&token</token>" & "<mac>&mac</mac>" & "</datosSeguridad>" & datosConexion & datosOperacion & "</root>"

            Dim token As String = objRedir.Encrypt(DateTime.Now.ToString("SIAC yyyy-MM-dd HH:mm:ss"))
            Dim mac As String = objRedir.GenerarMAC(datosConexion & datosOperacion)

            dataPost = dataPost.Replace("&token", token)
            dataPost = dataPost.Replace("&mac", mac)
            Dim RedirUrl As String = System.Configuration.ConfigurationManager.AppSettings("integradorRedirect")
            If Not (Request.Item("RedirUrl") Is Nothing) Then
                RedirUrl = Request.Item("RedirUrl")
            End If


            RedirectWithData(dataPost, RedirUrl)

        End If
    End Sub
End Class
