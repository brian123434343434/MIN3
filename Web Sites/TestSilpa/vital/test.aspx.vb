Imports System.Data
Imports System.Text
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO

Partial Class vital_test
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        If Not Me.IsPostBack Then
            If Request.Item("op") = "E" Then
                Me.setData()
            Else

                'Populating a DataTable from database.
                Dim dt As DataTable = Me.GetData()


                'Building an HTML string.
                Dim html As New StringBuilder()

                'Table start.
                html.Append("<table border = '1'>")

                'Building the Header row.
                html.Append("<tr>")
                For Each column As DataColumn In dt.Columns
                    html.Append("<th>")
                    html.Append(column.ColumnName)
                    html.Append("</th>")
                Next
                html.Append("</tr>")

                'Building the Data rows.
                For Each row As DataRow In dt.Rows
                    html.Append("<tr>")
                    For Each column As DataColumn In dt.Columns
                        html.Append("<td>")
                        html.Append(row(column.ColumnName))
                        html.Append("</td>")
                    Next
                    html.Append("</tr>")
                Next

                'Table end.
                html.Append("</table>")

                'Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(New Literal() With { _
                .Text = html.ToString() _
            })
            End If
        End If
    End Sub


    Private Function GetData() As DataTable
        Dim constr As String = System.Configuration.ConfigurationManager.ConnectionStrings("SILPAConnectionString").ToString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("select * from SILAMC_MAVDT.dbo.AUTORIDAD_AMBIENTAL")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using
        End Using
    End Function
    Private Function setData() As Boolean
        Dim sql As String
        Dim cadena As String = System.Configuration.ConfigurationManager.ConnectionStrings("SILPAConnectionString").ToString
        Dim conexion As New SqlConnection(cadena)
        Dim adaptador As New SqlDataAdapter()

        Dim _file As New FileStream(Server.MapPath("tmp/script.sql"), FileMode.Open)
        Dim sr As New StreamReader(_file)
        sql = sr.ReadToEnd()
        sr.Close()
        _file.Close()


        conexion.Open()
        Dim commando As New SqlCommand(sql, conexion)
        commando.ExecuteNonQuery()
        Return True

    End Function
End Class
