Option Strict On

Imports System.Configuration
Imports System.Xml

Partial Class Master_mpAdmin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

        ' definir los objetos
        Dim tag As HtmlMeta = New HtmlMeta()

        ' tag para refrescar la pagina
        tag.HttpEquiv = "REFRESH"
        tag.Name = "SessionTimeout"
        tag.Content = (Session.Timeout * 60) - 5 & "; URL=" & ResolveUrl("~/Security/logout.aspx")

        ' agregarlo
        Page.Header.Controls.Add(tag)

    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblInfoImpers.Text = ""
        ' verificar que este vigente la session
        If Session Is Nothing Or Session.Count = 0 Then

            ' ir a pagina logout
            Response.Redirect("../security/LogOut.aspx")
            Response.End()

        End If

        ' 
        If Session("lblTitle") IsNot Nothing Then

            ' cargar el titulo
            ' Me.lblTitle.Text = Session("lblTitle").ToString
            Me.Page.Title = Session("lblTitle").ToString

        End If
        If Not (Session("UserOld")) Is Nothing Then
            'ScriptManager.RegisterClientScriptBlock(Page, Me.GetType, "men", "alert('Load " & Session("UserOld").ToString() & "')", True)
        Else
            'ScriptManager.RegisterClientScriptBlock(Page, Me.GetType, "men", "alert('Load vacio')", True)

        End If

        If Not Page.IsPostBack Then

            If Not (Session("UserOld")) Is Nothing Then
                If Session("User").ToString() <> Session("UserOld").ToString() Then
                    lblInfoImpers.Text = "Usuario: " & Session("UserOld").ToString() & " actuando en nombre de: " & Session("User").ToString()
                    lnkFinalizarImpersonalizacion.Visible = True
                Else
                    lnkFinalizarImpersonalizacion.Visible = False
                End If
            Else
                lblInfoImpers.Visible = False
                lnkFinalizarImpersonalizacion.Visible = False
            End If
        End If


        If Not Page.IsPostBack Then
			
            ' cargar la ruta
            Dim path As String = "~/Menu/"

            ' Menu
            Dim sPahtMenu As String = path & "mMenu" & Session("UserGroup").ToString & ".xml"

            If Not System.IO.File.Exists(Server.MapPath(sPahtMenu)) Then
				Me.Page.ClientScript.RegisterStartupScript(Me.GetType(), "alerta", String.Format("<script>alert('El menú  no esta configurado correctamente, comuniquese con el administrador. {0} No existe.');window.history.back();</script>", sPahtMenu))
				sPahtMenu = path & "mMenuVacio.xml"
            End If
			' INICIO JONASSS 20180405
            REM 'indicarle al proveedor cual es el archivo xml del menu
            REM Me.xdsMenu.DataFile = Server.MapPath(sPahtMenu)
            REM Me.xdsMenu.XPath = "/*/*"
			
			' FIN JONASSS 20180405
			'Fernando: se unifica el menu con las opciones que vienen del integrador:
            Dim doc As New XmlDocument
            doc.Load(Server.MapPath(sPahtMenu))

            If Session("deIntegracion").ToString = "True" Then
                'invocar la opción de pintar opciones
                Dim objAutenticacion As New integrador.servicios
                Dim respuesta As integrador.menu.osDarPerfil = CType(objAutenticacion.PintaOpcionesDeMenu(Session("user").ToString), integrador.menu.osDarPerfil)
				'lblMensaje.Text = Session("UserToken").ToString
				if respuesta is Nothing then
					Me.xdsMenu.DataFile = Server.MapPath(sPahtMenu)
					Me.xdsMenu.XPath = "/*/*"
					return
				end if
				
                If Not respuesta.listaOpcion Is Nothing Then
                    Dim raiz As XmlNode = doc.DocumentElement
                    Dim nodo As XmlElement = doc.CreateElement("MenuItem")

                    Dim textField As XmlAttribute = doc.CreateAttribute("textField")
                    textField.Value = "Subsistemas"
                    nodo.Attributes.Append(textField)

                    Dim ValueField As XmlAttribute = doc.CreateAttribute("ValueField")
                    ValueField.Value = "Subsistemas"
                    nodo.Attributes.Append(ValueField)

                    Dim NavigateUrlField As XmlAttribute = doc.CreateAttribute("NavigateUrlField")
                    NavigateUrlField.Value = "/"
                    nodo.Attributes.Append(NavigateUrlField)

                    Dim EnabledField As XmlAttribute = doc.CreateAttribute("EnabledField")
                    EnabledField.Value = "True"
                    nodo.Attributes.Append(EnabledField)

                    Dim TargetField As XmlAttribute = doc.CreateAttribute("TargetField")
                    TargetField.Value = ""
                    nodo.Attributes.Append(TargetField)


                    For Each opcion As integrador.menu.opcion In respuesta.listaOpcion
                        Dim sNodo As XmlElement = doc.CreateElement("MenuItem")

                        Dim sTextField As XmlAttribute = doc.CreateAttribute("textField")
                        sTextField.Value = opcion.nombre
                        sNodo.Attributes.Append(sTextField)

                        Dim sValueField As XmlAttribute = doc.CreateAttribute("ValueField")
                        sValueField.Value = opcion.nombre
                        sNodo.Attributes.Append(sValueField)

                        Dim sNavigateUrlField As XmlAttribute = doc.CreateAttribute("NavigateUrlField")
                        sNavigateUrlField.Value = "../VITAL/" & opcion.parametro
                        sNodo.Attributes.Append(sNavigateUrlField)

                        Dim sEnabledField As XmlAttribute = doc.CreateAttribute("EnabledField")
                        If opcion.esHabilitdo = 1 Then
                            sEnabledField.Value = "True"
                        Else
                            sEnabledField.Value = "False"
                        End If
                        sNodo.Attributes.Append(sEnabledField)

                        Dim sTargetField As XmlAttribute = doc.CreateAttribute("TargetField")
                        sTargetField.Value = ""
                        sNodo.Attributes.Append(sTargetField)

                        nodo.AppendChild(sNodo)

                    Next


                    Dim salir As XmlNode = raiz.LastChild
                    If salir Is Nothing Then
                        raiz.AppendChild(nodo)

                        Dim nodoSalir As XmlElement = doc.CreateElement("MenuItem")

                        Dim textFieldSalir As XmlAttribute = doc.CreateAttribute("textField")
                        textFieldSalir.Value = "Salir"
                        nodoSalir.Attributes.Append(textFieldSalir)

                        Dim ValueFieldSalir As XmlAttribute = doc.CreateAttribute("ValueField")
                        ValueFieldSalir.Value = "Salir"
                        nodoSalir.Attributes.Append(ValueFieldSalir)

                        Dim NavigateUrlFieldSalir As XmlAttribute = doc.CreateAttribute("NavigateUrlField")
                        NavigateUrlFieldSalir.Value = "../Security/logout.aspx"
                        nodoSalir.Attributes.Append(NavigateUrlFieldSalir)

                        Dim EnabledFieldSalir As XmlAttribute = doc.CreateAttribute("EnabledField")
                        EnabledFieldSalir.Value = "True"
                        nodoSalir.Attributes.Append(EnabledFieldSalir)

                        Dim TargetFieldSalir As XmlAttribute = doc.CreateAttribute("TargetField")
                        TargetFieldSalir.Value = ""
                        nodoSalir.Attributes.Append(TargetFieldSalir)

                        raiz.AppendChild(nodoSalir)
                    Else
                        raiz.InsertBefore(nodo, salir)
                    End If

                End If
            End If

            'indicarle al proveedor cual es el archivo xml del menu
            'Me.xdsMenu.DataFile = Server.MapPath(sPahtMenu)
            'se reemplaza por:
            Me.xdsMenu.Data = doc.OuterXml

            Me.xdsMenu.XPath = "/*/*"
            Me.xdsMenu.DataBind()
            mMenu.DataBind()	

        End If

        ' cargar el scrip de refrescar la pantalla
        ScriptManager.RegisterStartupScript(Page, Me.GetType, "imageWait", GattacaApplication.getWaitImageScript, False)

    End Sub


    Protected Sub lnkFinalizarImpersonalizacion_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkFinalizarImpersonalizacion.Click
        Response.Redirect(String.Format(ConfigurationManager.AppSettings("URLFinalizarSilpa").ToString()))
    End Sub


End Class

