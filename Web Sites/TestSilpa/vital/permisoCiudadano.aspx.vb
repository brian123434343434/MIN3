Imports System.Linq

Partial Class vital_permisos
    Inherits System.Web.UI.Page

    Dim respuesta As integrador.permiso.osConsultarPermiso

    Private Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click

        If txtNumeroDocumento.Text <> "" Then
            Response.Redirect("permisoCiudadano.aspx?tipoDocumento=" & ddlTipoDocumento.SelectedValue & "&documento=" & txtNumeroDocumento.Text)
        End If
    End Sub

    Private Sub rptPermisos_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptPermisos.ItemCommand

        If (e.CommandName = "registrar") Then
            Dim cadena As New StringBuilder
            Dim objRedir As New integrador.servicios

            'establece los datos de conexión, comunes para cualquier envío al integrador
            Dim datosConexion As String = "<aliasUsuarioOrigen>&aliasUsuarioOrigen</aliasUsuarioOrigen>" & _
                                        "<aliasUsuarioDestino>&aliasUsuarioDestino</aliasUsuarioDestino>" & _
                                        "<autoridadAmbiental>&autoridadAmbiental</autoridadAmbiental>" & _
                                        "<sistemaOrigen>&sistemaOrigen</sistemaOrigen>" & _
                                        "<sistemaDestino>&sistemaDestino</sistemaDestino>" & _
                                        "<codigoOperacion>&codigoOperacion</codigoOperacion>"
            datosConexion = datosConexion.Replace("&aliasUsuarioOrigen", Session("user"))
            datosConexion = datosConexion.Replace("&aliasUsuarioDestino", "")
            datosConexion = datosConexion.Replace("&autoridadAmbiental", Session("autoridadAmbiental"))
            datosConexion = datosConexion.Replace("&sistemaOrigen", "VITAL")
            datosConexion = datosConexion.Replace("&sistemaDestino", Session("sistemaDestino"))
            datosConexion = datosConexion.Replace("&codigoOperacion", "000002")

            datosConexion = "<datosConexion>" & datosConexion & "</datosConexion>"

            'establece los datos de operación.
            Dim datosOperacion As String = "<actividadEconomica>&actividadEconomica</actividadEconomica>" & _
                                            "<autoridadOtorga>&autoridadOtorga</autoridadOtorga>" & _
                                            "<cantidadRecurso>&cantidadRecurso</cantidadRecurso>" & _
                                            "<categoriaApr>&categoriaApr</categoriaApr>" & _
                                            "<cedulaCatastral>&cedulaCatastral</cedulaCatastral>" & _
                                            "<celularContacto>&celularContacto</celularContacto>" & _
                                            "<correoElectronico>&correoElectronico</correoElectronico>" & _
                                            "<departamentoApr>&departamentoApr</departamentoApr>" & _
                                            "<departamentoNotif>&departamentoNotif</departamentoNotif>" & _
                                            "<digitoChequeo>&digitoChequeo</digitoChequeo>" & _
                                            "<direccionApr>&direccionApr</direccionApr>" & _
                                            "<direccionNotif>&direccionNotif</direccionNotif>" & _
                                            "<documento>&documento</documento>" & _
                                            "<estado>&estado</estado>" & _
                                            "<fechaExpedicion>&fechaExpedicion</fechaExpedicion>" & _
                                            "<fechaVencimiento>&fechaVencimiento</fechaVencimiento>" & _
                                            "<indTelefono>&indTelefono</indTelefono>" & _
                                            "<matriculaInmobiliaria>&matriculaInmobiliaria</matriculaInmobiliaria>" & _
                                            "<municipioApr>&municipioApr</municipioApr>" & _
                                            "<municipioNotif>&municipioNotif</municipioNotif>" & _
                                            "<nombreComercial>&nombreComercial</nombreComercial>" & _
                                            "<numeroExpediente>&numeroExpediente</numeroExpediente>" & _
                                            "<numeroResolucion>&numeroResolucion</numeroResolucion>" & _
                                            "<primerApellido>&primerApellido</primerApellido>" & _
                                            "<primerApellidoRL>&primerApellidoRL</primerApellidoRL>" & _
                                            "<primerNombre>&primerNombre</primerNombre>" & _
                                            "<primerNombreRL>&primerNombreRL</primerNombreRL>" & _
                                            "<razonSocial>&razonSocial</razonSocial>" & _
                                            "<segundoApellido>&segundoApellido</segundoApellido>" & _
                                            "<segundoApellidoRL>&segundoApellidoRL</segundoApellidoRL>" & _
                                            "<segundoNombre>&segundoNombre</segundoNombre>" & _
                                            "<segundoNombreRL>&segundoNombreRL</segundoNombreRL>" & _
                                            "<telefono>&telefono</telefono>" & _
                                            "<tipoDocumento>&tipoDocumento</tipoDocumento>" & _
                                            "<tipoDocumentoRL>&tipoDocumentoRL</tipoDocumentoRL>" & _
                                            "<tipoPermiso>&tipoPermiso</tipoPermiso>" & _
                                            "<tipoPersona>&tipoPersona</tipoPersona>" & _
                                            "<unidadRecurso>&unidadRecurso</unidadRecurso>"

            datosOperacion = datosOperacion.Replace("&actividadEconomica", respuesta.listaPermiso(e.CommandArgument).actividadEconomica)
            datosOperacion = datosOperacion.Replace("&autoridadOtorga", respuesta.listaPermiso(e.CommandArgument).autoridadOtorga)
            datosOperacion = datosOperacion.Replace("&cantidadRecurso", respuesta.listaPermiso(e.CommandArgument).cantidadRecurso)
            datosOperacion = datosOperacion.Replace("&categoriaApr", respuesta.listaPermiso(e.CommandArgument).categoriaApr)
            datosOperacion = datosOperacion.Replace("&cedulaCatastral", respuesta.listaPermiso(e.CommandArgument).cedulaCatastral)
            datosOperacion = datosOperacion.Replace("&celularContacto", respuesta.listaPermiso(e.CommandArgument).celularContacto)
            datosOperacion = datosOperacion.Replace("&correoElectronico", respuesta.listaPermiso(e.CommandArgument).correoElectronico)
            datosOperacion = datosOperacion.Replace("&departamentoApr", respuesta.listaPermiso(e.CommandArgument).departamentoApr)
            datosOperacion = datosOperacion.Replace("&departamentoNotif", respuesta.listaPermiso(e.CommandArgument).departamentoNotif)
            datosOperacion = datosOperacion.Replace("&digitoChequeo", respuesta.listaPermiso(e.CommandArgument).digitoChequeo)
            datosOperacion = datosOperacion.Replace("&direccionApr", respuesta.listaPermiso(e.CommandArgument).direccionApr)
            datosOperacion = datosOperacion.Replace("&direccionNotif", respuesta.listaPermiso(e.CommandArgument).direccionNotif)
            datosOperacion = datosOperacion.Replace("&estado", respuesta.listaPermiso(e.CommandArgument).estado)
            datosOperacion = datosOperacion.Replace("&fechaExpedicion", respuesta.listaPermiso(e.CommandArgument).fechaExpedicion)
            datosOperacion = datosOperacion.Replace("&fechaVencimiento", respuesta.listaPermiso(e.CommandArgument).fechaVencimiento)
            datosOperacion = datosOperacion.Replace("&indTelefono", respuesta.listaPermiso(e.CommandArgument).indTelefono)
            datosOperacion = datosOperacion.Replace("&matriculaInmobiliaria", respuesta.listaPermiso(e.CommandArgument).matriculaInmobiliaria)
            datosOperacion = datosOperacion.Replace("&municipioApr", respuesta.listaPermiso(e.CommandArgument).municipioApr)
            datosOperacion = datosOperacion.Replace("&municipioNotif", respuesta.listaPermiso(e.CommandArgument).municipioNotif)
            datosOperacion = datosOperacion.Replace("&nombreComercial", respuesta.listaPermiso(e.CommandArgument).nombreComercial)
            datosOperacion = datosOperacion.Replace("&numeroExpediente", respuesta.listaPermiso(e.CommandArgument).numeroExpediente)
            datosOperacion = datosOperacion.Replace("&numeroResolucion", respuesta.listaPermiso(e.CommandArgument).numeroResolucion)
            datosOperacion = datosOperacion.Replace("&primerApellidoRL", respuesta.listaPermiso(e.CommandArgument).primerApellidoRL)
            datosOperacion = datosOperacion.Replace("&primerApellido", respuesta.listaPermiso(e.CommandArgument).primerApellido)
            datosOperacion = datosOperacion.Replace("&primerNombreRL", respuesta.listaPermiso(e.CommandArgument).primerNombreRL)
            datosOperacion = datosOperacion.Replace("&primerNombre", respuesta.listaPermiso(e.CommandArgument).primerNombre)
            datosOperacion = datosOperacion.Replace("&razonSocial", respuesta.listaPermiso(e.CommandArgument).razonSocial)
            datosOperacion = datosOperacion.Replace("&segundoApellidoRL", respuesta.listaPermiso(e.CommandArgument).segundoApellidoRL)
            datosOperacion = datosOperacion.Replace("&segundoApellido", respuesta.listaPermiso(e.CommandArgument).segundoApellido)
            datosOperacion = datosOperacion.Replace("&segundoNombreRL", respuesta.listaPermiso(e.CommandArgument).segundoNombreRL)
            datosOperacion = datosOperacion.Replace("&segundoNombre", respuesta.listaPermiso(e.CommandArgument).segundoNombre)
            datosOperacion = datosOperacion.Replace("&telefono", respuesta.listaPermiso(e.CommandArgument).telefono)
            datosOperacion = datosOperacion.Replace("&tipoDocumentoRL", respuesta.listaPermiso(e.CommandArgument).tipoDocumentoRL)
            datosOperacion = datosOperacion.Replace("&tipoDocumento", respuesta.listaPermiso(e.CommandArgument).tipoDocumento)
            datosOperacion = datosOperacion.Replace("&documentoRL", respuesta.listaPermiso(e.CommandArgument).documentoRL)
            datosOperacion = datosOperacion.Replace("&documento", respuesta.listaPermiso(e.CommandArgument).documento)
            datosOperacion = datosOperacion.Replace("&tipoPermiso", respuesta.listaPermiso(e.CommandArgument).tipoPermiso)
            datosOperacion = datosOperacion.Replace("&tipoPersona", respuesta.listaPermiso(e.CommandArgument).tipoPersona)
            datosOperacion = datosOperacion.Replace("&unidadRecurso", respuesta.listaPermiso(e.CommandArgument).unidadRecurso)

            'y las demás variables

            datosOperacion = "<datosOperacion>" & datosOperacion & "</datosOperacion>"


            Dim dataPost As String = "<root> " & "<datosSeguridad>" & "<token>&token</token>" & "<mac>&mac</mac>" & "</datosSeguridad>" & datosConexion & datosOperacion & "</root>"


            Dim token As String = objRedir.Encrypt(DateTime.Now.ToString("SIAC yyyy-MM-dd HH:mm:ss"))
            Dim mac As String = objRedir.GenerarMAC(datosConexion & datosOperacion)

            dataPost = dataPost.Replace("&token", token)
            dataPost = dataPost.Replace("&mac", mac)

            Dim data = New NameValueCollection()
            data.Add("datos", dataPost)

            Session("redirCuerpo") = dataPost.ToString

            Response.Redirect("../vital/redirigir.aspx")


        End If
    End Sub
    Private Sub vital_permisos_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim autoridadAmbiental As String = ""
        Dim aliasUsuario As String = ""
        Dim tipoDocumento As String = "1"
        Dim documento As String = ""
        ' esta opción lista permisos otorgados por ciudadano
        autoridadAmbiental = Session("autoridadAmbiental")

        aliasUsuario = Session("User")


        Session("lblTitle") = "Consultar permisos "
        'Session("UserGroup") = "integrador"

        If Not (Request.Item("tipoDocumento") Is Nothing) Then
            tipoDocumento = Request.Item("tipoDocumento")
        End If

        If Not (Request.Item("documento") Is Nothing) Then
            documento = Request.Item("documento")
        End If

        If Not (Request.Item("adaptador") Is Nothing) Then
            Session("adaptador") = Request.Item("adaptador")
        Else
            Session("adaptador") = System.Configuration.ConfigurationManager.AppSettings("integradorRedirect")
        End If


        If Not IsPostBack Then
            If Not (Request.Item("tipoDocumento") Is Nothing) Then
                tipoDocumento = Request.Item("tipoDocumento")
                ddlTipoDocumento.Items.FindByValue(tipoDocumento).Selected = True
            End If

            If Not (Request.Item("documento") Is Nothing) Then
                documento = Request.Item("documento")
                txtNumeroDocumento.Text = documento
            End If
        End If



        Dim objPermisos As New integrador.servicios
        respuesta = objPermisos.consultarPermiso(aliasUsuario, autoridadAmbiental, tipoDocumento, documento)
        If Not IsPostBack Then
            If Not respuesta.listaPermiso Is Nothing Then
                Dim query = From permiso In respuesta.listaPermiso _
                            Select permiso

                rptPermisos.DataSource = query
                rptPermisos.DataBind()
            End If
        End If



    End Sub

    Public Function divipol(id As String) As String
        Return id
    End Function
End Class
