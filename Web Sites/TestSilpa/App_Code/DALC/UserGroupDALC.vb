Imports Microsoft.VisualBasic
Imports System.data
Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager

Public Class UserGroupDALC

    ' contantes
    Const MODULENAME As String = "UserGroupDALC"

#Region "Metodos de Persistencia"

    '*******************************************************************
    'Objetivo:      Regresa un objetocon la información básica de un usuario
    'Entradas:      Credenciales, Id del Usuario Solicitado
    'Salidas:       Objeto tipo 
    'Autor:         Diego Armando Gomez
    'creado:        09/04/2008
    '********************************************************************
    Public Function GetUsersGroupList(ByVal objApplicationCredentials As ApplicationCredentials, _
                                    Optional ByVal order As String = "Name", _
                                    Optional ByVal enabledOnly As Boolean = True) As List(Of UserGroupEntity)

        ' definiendo los objetos
        Dim dtUser As DataTable
        Dim sql As New StringBuilder
        Dim usersGroupList As New List(Of UserGroupEntity)

        ' construir la sentencia
        sql.AppendLine(" SELECT * ")
        sql.AppendLine(" FROM UserGroup ")

        If enabledOnly Then
            ' solo los activos
            sql.AppendLine(" WHERE Enabled = 'T' ")

        End If

        'ordenar
        sql.AppendLine(" ORDER BY " & order)

        Try

            ' cargando los datos basicos del usuario
            dtUser = GattacaApplication.RunSQLRDT(objApplicationCredentials, sql.ToString)

            For Each row As DataRow In dtUser.Rows

                ' definir el objeto
                Dim objUserGroup As New UserGroupEntity

                ' si hay registros
                objUserGroup.iID = Gattaca.Application.Tools.Formatter.GetInteger(row("ID"))
                objUserGroup.sCode = Gattaca.Application.Tools.Formatter.GetString(row("Code")).Trim()
                objUserGroup.sName = Gattaca.Application.Tools.Formatter.GetString(row("Name")).Trim()
                objUserGroup.bIsEnabled = Gattaca.Application.Tools.Formatter.GetBoolean(row("Enabled"))


                ' agregar a la lista
                usersGroupList.Add(objUserGroup)

            Next

            ' retornar
            GetUsersGroupList = usersGroupList

            ' finalizar la transaccion
            'CtxSetComplete()

        Catch ex As Exception

            ' cancelar la transaccion
            'CtxSetAbort()

            ' publicar el error
            GattacaApplication.Publish(ex, objApplicationCredentials.ClientName, MODULENAME, "getList")
            ExceptionPolicy.HandleException(ex, "GattacaStandardExceptionPolicy")

            ' subir el error de nivel
            Throw New Exception("Error al cargar los parametros de la aplicacion. ")

        Finally
            ' liberar recursos
            sql = Nothing
            dtUser = Nothing
            usersGroupList = Nothing

        End Try

    End Function

#End Region

End Class

