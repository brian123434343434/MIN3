Option Strict On

Imports System.Data
Imports Gattaca.Application.ExceptionManager
Imports Gattaca.Application.Credentials
Imports System.Xml
Imports Microsoft.Win32

Public Class GattacaApplication

    ' defini el nombre
    Const MODULENAME As String = "GattacaApplication"

    ''' <summary>
    ''' Contructor vacio de la clase
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub New()
    End Sub

#Region "Base de datos"

    ''' <summary>
    ''' Ejecuta una Instruccion SQL sobre otra base de datos de otro producto.
    ''' </summary>
    ''' <param name="objAppCredentials"></param>
    ''' <param name="strSP"></param>
    ''' <param name="lOperationID"></param>
    ''' <param name="objParams"></param>
    ''' <param name="CommandType"></param>
    ''' <param name="sDatabase"></param>
    ''' <param name="sProductName "></param>
    ''' <remarks></remarks>
    Shared Function RunSQL(ByVal objAppCredentials As Gattaca.Application.Credentials.ApplicationCredentials, _
                                    ByVal strSP As String, _
                                    Optional ByVal lOperationID As Integer = 174, _
                                    Optional ByVal objParams() As System.Data.Common.DbParameter = Nothing, _
                                    Optional ByVal CommandType As System.Data.CommandType = CommandType.Text, _
                                    Optional ByVal sDatabase As String = "DB1", _
                                    Optional ByVal sProductName As String = "VBFormBuilder") As Integer

        ' definir los objetos
        Dim objAppDB As Gattaca.Application.xApplication.xApplication = Nothing
        Dim objCred As New Gattaca.Application.Credentials.ApplicationCredentials(objAppCredentials.ClientName, objAppCredentials.ProductName, _
                                                objAppCredentials.UserMachineIP, objAppCredentials.UserSessionID, objAppCredentials.UserID, _
                                                objAppCredentials.DbTypeCore)
        Try
            ' es security?
            If sProductName <> "" Then
                ' nombre del Producto que llegue por parametros
                objCred.ProductName = sProductName

            Else
                ' nombre del credentials que llegue
                objCred.ProductName = objAppCredentials.ProductName

            End If

            ' asingar el usuario
            objCred.UserID = objAppCredentials.UserID

            ' crear el objeto
            objAppDB = New Gattaca.Application.xApplication.xApplication

            ' ejecutar
            Return objAppDB.ExecuteNonQuery(objCred, strSP, lOperationID, objParams, CommandType, sDatabase)

        Catch oEx As Exception

            ' publicar el error
            GattacaApplication.Publish(oEx, objAppCredentials.ClientName, MODULENAME, "RunSQL")
            ExceptionPolicy.HandleException(oEx, "GattacaStandardExceptionPolicy")

            ' lanzar la exception
            Throw oEx

        Finally

            ' verificar que este limpio
            If Not (objAppDB Is Nothing) Then

                ' liberar
                objAppDB.Dispose()

                ' desreferenciar
                objAppDB = Nothing

            End If
            ' desreferenciar
            objCred = Nothing

        End Try

    End Function

    ''' <summary>
    ''' Retorna un dataTable.
    ''' </summary>
    ''' <param name="objAppCredentials"></param>
    ''' <param name="strSP"></param>
    ''' <param name="lOperationID"></param>
    ''' <param name="objParams"></param>
    ''' <param name="CommandType"></param>
    ''' <param name="sDatabase"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Shared Function RunSQLRDT(ByVal objAppCredentials As Gattaca.Application.Credentials.ApplicationCredentials, _
                                    ByVal strSP As String, _
                                    Optional ByVal sProductName As String = "VBFormBuilder", _
                                    Optional ByVal lOperationID As Integer = 174, _
                                    Optional ByVal objParams() As System.Data.Common.DbParameter = Nothing, _
                                    Optional ByVal CommandType As System.Data.CommandType = CommandType.Text, _
                                    Optional ByVal sDatabase As String = "DB1") As DataTable

        ' definir los objetos
        Dim objAppDB As Gattaca.Application.xApplication.xApplication = Nothing
        Dim objCred As New Gattaca.Application.Credentials.ApplicationCredentials(objAppCredentials.ClientName, objAppCredentials.ProductName, objAppCredentials.UserMachineIP, objAppCredentials.UserSessionID, objAppCredentials.UserID, objAppCredentials.DbTypeCore)

        Try
            ' cargar el nombre
            objCred.ProductName = sProductName

            ' cargar el usuario
            objCred.UserID = objAppCredentials.UserID

            ' crear el objeto
            objAppDB = New Gattaca.Application.xApplication.xApplication

            ' ejecutar
            Return objAppDB.GetDataTable(objCred, strSP, lOperationID, objParams, CommandType, sDatabase)

        Catch oEx As Exception

            ' publicar el error
            GattacaApplication.Publish(oEx, objAppCredentials.ClientName, MODULENAME, "RunSQLRDT")
            ExceptionPolicy.HandleException(oEx, "GattacaStandardExceptionPolicy")

            ' lanzar la exception
            Throw oEx

        Finally

            ' verificar que este limpio
            If Not (objAppDB Is Nothing) Then

                ' liberar
                objAppDB.Dispose()

                ' desreferenciar
                objAppDB = Nothing

            End If
            ' desreferenciar
            objCred = Nothing

        End Try

    End Function

#End Region

    ''' <summary>
    ''' retorna el script que genera el efecto de bloqueo y espera en la pantalla
    ''' </summary>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Shared Function getWaitImageScript() As String

        ' definir los objetos
        Dim script As New StringBuilder

        ' concatenar
        script.AppendLine(" 	<script> ")
        script.AppendLine("     var obj_MODAL_DIV_AJAX = document.getElementById('MODAL_DIV_AJAX'); ")
        script.AppendLine("     var obj_MODAL_DIV_AJAX_TOTAL = document.getElementById('MODAL_DIV_AJAX_TOTAL'); ")
        script.AppendLine("     Sys.UI.DomEvent.addHandler(window, 'scroll', scrollEvent); ")
        script.AppendLine("     Sys.UI.DomEvent.addHandler(window, 'resize', resizeEvent); ")
        script.AppendLine("     function scrollEvent() ")
        script.AppendLine("     {  ")
        script.AppendLine("     	mover_MODAL_DIV_AJAX();  ")
        script.AppendLine("     } ")
        script.AppendLine("     function resizeEvent() ")
        script.AppendLine("     {  ")
        script.AppendLine("     	mover_MODAL_DIV_AJAX();  ")
        script.AppendLine("     } ")
        script.AppendLine("     function mover_MODAL_DIV_AJAX() ")
        script.AppendLine("     { ")
        script.AppendLine("         var divWidth = parseInt(obj_MODAL_DIV_AJAX.style.width); ")
        script.AppendLine("         var divHeight = parseInt(obj_MODAL_DIV_AJAX.style.height); ")
        script.AppendLine("         var scrollLeft = parseInt(document.documentElement.scrollLeft); ")
        script.AppendLine("         var scrollTop = parseInt(document.documentElement.scrollTop); ")
        script.AppendLine("         var clientWidth = parseInt(document.documentElement.clientWidth); ")
        script.AppendLine("         var clientHeight = parseInt(document.documentElement.clientHeight); ")
        script.AppendLine("         var styleLeft = parseInt((clientWidth + scrollLeft) - (clientWidth / 2) - (divWidth / 2)); ")
        script.AppendLine("         var styleHeight = parseInt((clientHeight + scrollTop) - (clientHeight / 2) - (divHeight / 2)); ")
        script.AppendLine("         obj_MODAL_DIV_AJAX.style.left = parseInt(styleLeft).toString() + 'px'; ")
        script.AppendLine("         obj_MODAL_DIV_AJAX.style.top = parseInt(styleHeight).toString() + 'px'; ")
        script.AppendLine("         scrollLeft = parseInt(document.documentElement.scrollLeft); ")
        script.AppendLine("         scrollTop = parseInt(document.documentElement.scrollTop); ")
        script.AppendLine("         clientWidth = parseInt(document.documentElement.clientWidth); ")
        script.AppendLine("         clientHeight = parseInt(document.documentElement.clientHeight); ")
        script.AppendLine("         obj_MODAL_DIV_AJAX_TOTAL.style.left = parseInt(scrollLeft).toString() + 'px'; ")
        script.AppendLine("         obj_MODAL_DIV_AJAX_TOTAL.style.top = parseInt(scrollTop).toString() + 'px'; ")
        script.AppendLine("         obj_MODAL_DIV_AJAX_TOTAL.style.width = parseInt(clientWidth).toString() + 'px'; ")
        script.AppendLine("         obj_MODAL_DIV_AJAX_TOTAL.style.height = parseInt(clientHeight).toString() + 'px'; ")
        script.AppendLine("     } ")
        script.AppendLine("     /* LLAMA LA FUNCIÓN POR PRIMERA VEZ CUANDO LA PÁGINA CARGA */ ")
        script.AppendLine("     mover_MODAL_DIV_AJAX(); ")
        script.AppendLine(" 	</script> ")

        ' retornar
        Return script.ToString()

    End Function

    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="oEx"></param>
    ''' <param name="ClientName"></param>
    ''' <param name="ModuleName"></param>
    ''' <param name="MethodName"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Shared Function Publish(ByVal oEx As Exception, _
                            ByVal ClientName As String, _
                            ByVal ModuleName As String, _
                            ByVal MethodName As String) As Exception
        ' limpiar
        oEx.Data.Clear()

        ' agregar la informacion adicional
        oEx.Data.Add("ClientName", ClientName)
        oEx.Data.Add("Module", ModuleName)
        oEx.Data.Add("Method", MethodName)

        ' retornar
        Return oEx

    End Function

End Class
