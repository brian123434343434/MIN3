
Partial Class vital_ctr_link
    Inherits System.Web.UI.UserControl
    Dim _url As String = " "
    Dim _nombre As String = "_"
    Dim _activo As Boolean = True
    Public Property url() As String
        Get
            Return _url
        End Get
        Set(ByVal Value As String)
            _url = Value
            pintarLink()
        End Set
    End Property

    Public Property nombre() As String
        Get
            Return _nombre
        End Get
        Set(ByVal Value As String)
            _nombre = Value
            pintarLink()
        End Set
    End Property

    Public Property activo() As Boolean
        Get
            Return _activo
        End Get
        Set(ByVal Value As Boolean)
            _activo = Value
        End Set
    End Property

    'contenidoOpcion
    Sub pintarLink()
        Me.link.Text = "<a href='" + _url + "'>" + _nombre + "</a>"
    End Sub
    Public Function getClase() As String
        If _activo = True Then
            Return "opcionDeMenu"

        Else
            Return "opcionDeMenu inactiva"
        End If

    End Function
End Class
