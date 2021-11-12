Imports Microsoft.VisualBasic
Imports System.data
Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager
Imports System.Data.SqlClient

Public Class Utilitario
    Public Function DebeCambiarPassword(ByVal usuario As String) As Boolean
        Dim salida As Boolean = False

        Dim dtUser As New DataTable
        Dim sql As New StringBuilder
        Dim cadena As String = ConfigurationManager.AppSettings("ConexionBD")
        Dim conexion As New SqlConnection(cadena)
        Dim adaptador As New SqlDataAdapter()
        Dim commando As New SqlCommand()
        'ConexionBD

        Try
            conexion.Open()
            commando.Connection = conexion

            sql.AppendLine(" SELECT * ")
            sql.AppendLine(" FROM applicationuser ")
            sql.AppendLine(" WHERE CODE = '" & usuario & "' AND CHANGEPASSWORD = 'T'")

            commando.CommandText = sql.ToString()

            adaptador.SelectCommand = commando
            adaptador.Fill(dtUser)

            If dtUser.Rows.Count > 0 Then
                salida = True
            End If

            Return salida
        Catch ex As Exception
            Throw New ApplicationException()
        Finally
            If conexion.State <> ConnectionState.Closed Then
                conexion.Close()
            End If
            conexion.Dispose()
            adaptador.Dispose()
            commando.Dispose()
        End Try


    End Function
End Class
