<%@ WebHandler Language="VB" Class="exportarActoAdministrativo" %>

Imports System
Imports System.Web
Imports integrador
Imports System.Data
Imports System.Data.SqlClient

Public Class exportarActoAdministrativo : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        'por ahora se propone devolver el estado de la operación: 1 correcto, 0 incorrecto
        Dim resultado As String = "0"
        context.Response.ContentType = "text/plain"
        Try

            Dim objActos As New integrador.servicios
            resultado = registrarPermiso()

        Catch ex As Exception
            resultado = ex.Message
        End Try
        context.Response.Write(resultado)
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

    Public Function registrarPermiso() As String
        Dim servicio As New registrarPermiso.ServicioRegistrarPermisoService
        Dim rta As String = ""
        Dim objActos As New actoAdministrativoDALC
        Dim listaActos

        listaActos = objActos.traeActoAdministrativoPorIds("AAF-00003-15", "2300001183076614001", "5006")


        For Each acto As actoAdministrativoEntity In listaActos
            'por cada uno invoca el web service,
            'rta = rta & "x"
            Dim entrada As New registrarPermiso.oeRegistrarPermiso
            entrada.permiso = New registrarPermiso.permisoRecurso
            entrada.permiso.tipoDocumento = acto.tipoDocumento
            entrada.permiso.documento = acto.numeroDocumento
            entrada.permiso.digitoChequeo = acto.digitoChequeo
            entrada.permiso.tipoPersona = acto.tipoPersona
            entrada.permiso.actividadEconomica = acto.ciiu
            entrada.permiso.correoElectronico = acto.correo
            entrada.permiso.indTelefono = acto.indicativo
            entrada.permiso.telefono = acto.telefonoFijo
            entrada.permiso.celularContacto = acto.celular


            entrada.permiso.primerNombre = acto.primerNombre
            entrada.permiso.segundoNombre = acto.segundoNombre
            entrada.permiso.primerApellido = acto.primerApellido
            entrada.permiso.segundoApellido = acto.segundoApellido

            entrada.permiso.razonSocial = acto.razonSocial
            entrada.permiso.nombreComercial = acto.nombreComercial
            entrada.permiso.tipoDocumentoRL = acto.repTipoDocumento
            entrada.permiso.documentoRL = acto.repNumeroDocumento
            entrada.permiso.primerNombreRL = acto.repPrimerNombre
            entrada.permiso.segundoNombreRL = acto.repSegundoNombre
            entrada.permiso.primerApellidoRL = acto.repPrimerApellido
            entrada.permiso.segundoApellidoRL = acto.repSegundoApellido

            entrada.permiso.departamentoNotif = acto.notDepartamento
            entrada.permiso.municipioNotif = acto.notCiudad
            entrada.permiso.direccionNotif = acto.notDireccionCorrespondencia

            entrada.permiso.departamentoApr = acto.aprDepartamento
            entrada.permiso.municipioApr = acto.aprCiudad
            entrada.permiso.direccionApr = acto.aprDireccion
            entrada.permiso.categoriaApr = acto.aprCategoria
            entrada.permiso.matriculaInmobiliaria = acto.aprMatricula
            entrada.permiso.cedulaCatastral = acto.aprCedulaCatastral

            entrada.permiso.autoridadOtorga = acto.actAutoridad
            entrada.permiso.numeroExpediente = acto.actExpediente
            entrada.permiso.numeroResolucion = acto.actResolucion
            entrada.permiso.fechaExpedicion = acto.actFechaExpedicion
            entrada.permiso.fechaVencimiento = acto.actFechaVencimiento
            entrada.permiso.tipoPermiso = acto.actTipoPermiso
            entrada.permiso.unidadRecurso = acto.actUnidadRecurso
            entrada.permiso.cantidadRecurso = acto.actCantidadRecurso


            servicio.Url = System.Configuration.ConfigurationManager.AppSettings("integradorRegistrarPermiso")
            Dim respuesta As registrarPermiso.osRegistrarPermiso = servicio.RegistrarPermiso(entrada)
            rta = rta & respuesta.respuesta.codigo & "/"

            If respuesta.respuesta.codigo = 0 Then
                'si el codigo de respuesta es ok , indica que ya se procesó
                objActos.actualizaActo(acto)
            Else
                Dim intentos As Integer = 0

                intentos = 1 'en ese array viene el ultimo numero de intentos en la cola... para no hacer un select por solo ese datos
                Dim sql As String
                Dim cadena As String = System.Configuration.ConfigurationManager.ConnectionStrings("SILPAConnectionString").ToString
                Dim conexion As New SqlConnection(cadena)
                Dim adaptador As New SqlDataAdapter()


                conexion.Open()
                sql = "INSERT INTO COLA_DE_MENSAJES ([CODIGO_EXPEDIENTE],[NUMERO_VITAL], [REC_ID], [ULTIMO_ERROR], [FECHA_PROCESO], [NUMERO_INTENTO]) VALUES ('" & acto.pkCodigoExpediente & "','" & acto.pkNumeroVital & "','" & acto.pkRecId & "','" & respuesta.respuesta.mensaje & "','" & DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss") & "','" & Val(intentos) + 1 & "') "
                'RETURN SQL
                Dim commando As New SqlCommand(sql, conexion)

                commando.ExecuteNonQuery()
            End If

        Next

        Return rta

    End Function
End Class