Imports Microsoft.VisualBasic
Imports System.Xml
Imports SILPA.AccesoDatos.Generico
Imports SILPA.Comun
Imports SILPA.LogicaNegocio.Enumeracion
Imports SoftManagement.ServicioCorreoElectronico

Public Class MapeoError

    ''' <summary>
    ''' Xml que contendrá los errores para el mapeo
    ''' </summary>
    ''' <remarks></remarks>
    Public xmlDoc As XmlDocument

    ''' <summary>
    ''' Ruta de ubicacion del archivo xml
    ''' </summary>
    ''' <remarks></remarks>
    Public rutaXmlMapeo As String


    ''' <summary>
    ''' Método que mapea error de gattaca a  error de Silpa
    ''' mediante un documento xml
    ''' </summary>
    ''' <remarks></remarks>
    Public Function mapearError(ByVal errorGattaca As String, ByVal strUser As String) As String

        Dim errorSilpa As String
        errorSilpa = errorGattaca
        Me.xmlDoc = New XmlDocument()
        Me.xmlDoc.Load(Me.rutaXmlMapeo)
        'Dim nodo As XmlNode
        Dim numero As String = ""

        Dim lstNnodo As XmlNodeList
        lstNnodo = Me.xmlDoc.ChildNodes(1).ChildNodes
        numero = errorSilpa.IndexOf(".").ToString()

        For Each nodo As XmlNode In lstNnodo

            If Trim(nodo.Attributes("mensajeGattaca").Value.ToString()) = Trim(errorGattaca) Then
                errorSilpa = nodo.Attributes("mensajeSilpa").Value
            End If

            'JMM - 2010-08-03 - Se modifica para valida cuando el usuario este inactivo y enviar correo al administrador
            If (errorSilpa.Substring(0, numero + 1) = Trim(nodo.Attributes("mensajeGattaca").Value.ToString())) Then
                Dim objPersona As New PersonaIdentity
                Dim BuscarDALC As New PersonaDalc
                Dim correo As New ServicioCorreoElectronico
                Dim EnumCorreo As New EnumPlantillaCorreo

                objPersona = BuscarDALC.BuscarPersonaByUsername(strUser)
                Dim strCorreoAdmin As String = System.Configuration.ConfigurationManager.AppSettings("str_correo_control").ToString
                Dim strUsuario As String = objPersona.PrimerNombre & " " & objPersona.SegundoNombre & " " & objPersona.PrimerApellido

                correo.Para.Add(strCorreoAdmin)
                correo.Tokens.Add("USUARIO", strUsuario)
                correo.Enviar(CInt(EnumPlantillaCorreo.EnumPlantillaCorreo.UsuarioInactivo))

            End If
            'JMM - 2010-08-03
        Next

        If numero > 0 Then
            Return errorSilpa.Substring(0, numero)
        Else
            Return errorSilpa
        End If
    End Function

End Class
