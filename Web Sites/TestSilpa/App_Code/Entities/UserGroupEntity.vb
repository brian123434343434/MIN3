Imports Microsoft.VisualBasic

Public Class UserGroupEntity

#Region "Campos"

    ' definicion de campos
    Private _ID As Integer
    Private _Code As String
    Private _Name As String
    Private _IsEnabled As Boolean

#End Region

#Region "Propiedades"

    ' definicion de propiedades
    Public Property iID() As Integer
        Get
            Return _ID
        End Get
        Set(ByVal Value As Integer)
            _ID = Value
        End Set
    End Property

    Public Property sCode() As String
        Get
            Return _Code
        End Get
        Set(ByVal Value As String)
            _Code = Value
        End Set
    End Property

    Public Property sName() As String
        Get
            Return _Name
        End Get
        Set(ByVal Value As String)
            _Name = Value
        End Set
    End Property

    Public Property bIsEnabled() As Boolean
        Get
            Return _IsEnabled
        End Get
        Set(ByVal Value As Boolean)
            _IsEnabled = Value
        End Set
    End Property

#End Region

End Class

