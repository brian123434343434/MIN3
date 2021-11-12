Imports System.EnterpriseServices
Imports Microsoft.VisualBasic

Module Tools


    ''' <summary>
    ''' Vericar si existe thema para el cliente
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub checkTheme(ByVal page As System.Web.UI.Page)

        If HttpContext.Current.Session("Theme") IsNot Nothing Then

            ' quemar el tema del cliente
            page.Theme = HttpContext.Current.Session("Theme").ToString

        Else
            ' quemar el tema por defecto
            page.Theme = "GattacaAdmin"

        End If

    End Sub

End Module
