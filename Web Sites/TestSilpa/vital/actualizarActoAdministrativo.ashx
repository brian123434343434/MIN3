<%@ WebHandler Language="VB" Class="exportarActoAdministrativo" %>

Imports System
Imports System.Web

Public Class exportarActoAdministrativo : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        'por ahora se propone devolver el estado de la operación: 1 correcto, 0 incorrecto
        Dim resultado As String = "0"
        context.Response.ContentType = "text/plain"
        Try

            Dim objActos As New integrador.servicios '1: TRASPASO, 2:RENOVACION, 3:REVOCACION, 4:MODIFICACION
            resultado = objActos.modificarPermiso("2", context.Server.MapPath("tmp/Log.txt"))

        Catch ex As Exception
            resultado = "0"
        End Try
        context.Response.Write(resultado)
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class