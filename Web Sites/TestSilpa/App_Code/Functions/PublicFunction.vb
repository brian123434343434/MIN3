Option Strict On

Imports Gattaca.Application.Credentials
Imports Gattaca.Application.ExceptionManager
Imports System.Xml
Imports System.Data
Imports System.Xml.Serialization
Imports System.IO
Imports System.Text

Public Class PublicFunction

    ' defini el nombre
    Const MODULENAME As String = "PublicFunction"

    ''' <summary>
    ''' Contruir las credenciales del usuario
    ''' </summary>
    ''' <param name="sUserId"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Shared Function buildApplicationCredentials(ByVal clientName As String, _
                                                        ByVal request As HttpRequest, _
                                                        ByVal sUserId As Long, _
                                                        ByVal sessionId As String, _
                                                        Optional ByVal isOtherDataBase As Boolean = False) As ApplicationCredentials

        ' definir los objetos
        Dim sUserMachineIp As String
        Dim sUserSessionId As String
        Dim productName As String = "VBSecurity"

        If isOtherDataBase Then

            ' cambiar el nombre del producto
            productName = "VBSecurity" 'PublicFunction.getSettingValue("autenticationProductName")

        End If

        ' obtener la ip del usuario
        sUserMachineIp = request.ServerVariables("HTTP_X_FORWARDED_FOR")

        ' se chequea si hay un proxy
        If sUserMachineIp = "" Then
            ' tomar la remota
            sUserMachineIp = request.ServerVariables("REMOTE_ADDR")

        End If

        ' obtener la session del usuario
        sUserSessionId = sessionId

        ' crear las nuevas credenciales
        buildApplicationCredentials = New ApplicationCredentials(clientName, productName, sUserMachineIp, sUserSessionId, userid:=sUserId)

    End Function

End Class
