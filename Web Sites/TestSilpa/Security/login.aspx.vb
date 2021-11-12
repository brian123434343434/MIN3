Option Strict On

Imports Gattaca.Application.Credentials
Imports System.Collections.Generic
Imports Gattaca.Application.ExceptionManager
Imports System.Web.Caching
Imports System.Net
Imports System.IO
Imports System.Web.Script.Serialization

Public Class LoginImgCorporaciones
    Private _Imagen As String

    Private _URL As String

    Public Property Imagen As String
        Set(value As String)
            _Imagen = value
        End Set
        Get
            Return _Imagen
        End Get
    End Property

    Public Property URL As String
        Set(value As String)
            _URL = value
        End Set
        Get
            Return _URL
        End Get
    End Property

End Class

Public Class CaptchaResponse

    Private _Success As String

    Public Property success As String
        Set(value As String)
            _Success = value
        End Set
        Get
            Return _Success
        End Get
    End Property

End Class

Partial Class Security_login
    Inherits System.Web.UI.Page
    Shared itemRemoved As Boolean = False
    Shared reason As CacheItemRemovedReason
    Dim onRemove As CacheItemRemovedCallback

	Protected ReadOnly Property CaptchaKey As String
        Get
            Return ConfigurationManager.AppSettings("recpatcha-publico").ToString
        End Get
    End Property

    Protected ReadOnly Property URLBuscador As String
        Get
            Return ConfigurationManager.AppSettings("url-bscador").ToString
        End Get
    End Property


#Region "Metodos"

    ''' <summary>
    ''' Se encarga de cargar la información de las imaganes del slide inferior
    ''' </summary>
    Private Sub SlideInferior()
        Dim intNumeroSeccionesLargo As Integer
        Dim intNumeroSeccionesCorto As Integer
        Dim objLstRptTemp As List(Of List(Of LoginImgCorporaciones))
        Dim objLstImagenesCorporacionesTemp As List(Of LoginImgCorporaciones)
        Dim intTamanoSlideLargo As Integer = 6
        Dim intTamanoSlideCorto As Integer = 2

        'Cargar listado de imagenes que deben ser publicadas
        Dim objImagenesCorporaciones As System.Resources.ResourceSet = Resources.ImgCorporacionesRecurso.ResourceManager.GetResourceSet(System.Globalization.CultureInfo.InvariantCulture, True, False)
        Dim objLstImagenesCorporaciones As List(Of LoginImgCorporaciones) = New List(Of LoginImgCorporaciones)
        Dim objImagenCorporacion As LoginImgCorporaciones
        For Each objCorporacion As DictionaryEntry In objImagenesCorporaciones

            objImagenCorporacion = New LoginImgCorporaciones
            objImagenCorporacion.Imagen = objCorporacion.Key.ToString
            objImagenCorporacion.URL = objCorporacion.Value.ToString
            objLstImagenesCorporaciones.Add(objImagenCorporacion)

        Next

        'Cargar el numero de secciones que tiene cada uno de los slides
        If objLstImagenesCorporaciones.Count > 0 Then

            'Mostrar slide largo
            If objLstImagenesCorporaciones.Count Mod 6 = 0 Then
                intNumeroSeccionesLargo = Convert.ToInt32((objLstImagenesCorporaciones.Count / intTamanoSlideLargo))
            Else
                intNumeroSeccionesLargo = Convert.ToInt32((objLstImagenesCorporaciones.Count / intTamanoSlideLargo))
                intNumeroSeccionesLargo = intNumeroSeccionesLargo + 1
            End If

            objLstRptTemp = New List(Of List(Of LoginImgCorporaciones))
            For intCont As Integer = 1 To intNumeroSeccionesLargo
                objLstImagenesCorporacionesTemp = New List(Of LoginImgCorporaciones)

                For intCont2 As Integer = 1 To intTamanoSlideLargo
                    If (((intCont - 1) * intTamanoSlideLargo) + (intCont2 - 1)) < objLstImagenesCorporaciones.Count Then
                        objLstImagenesCorporacionesTemp.Add(objLstImagenesCorporaciones(((intCont - 1) * intTamanoSlideLargo) + (intCont2 - 1)))
                    End If
                Next

                objLstRptTemp.Add(objLstImagenesCorporacionesTemp)
            Next

            'Cargar el slide largo
            rptSlideLargo.DataSource = objLstRptTemp
            rptSlideLargo.DataBind()


            'Mostrar slide corto
            If objLstImagenesCorporaciones.Count Mod 2 = 0 Then
                intNumeroSeccionesCorto = Convert.ToInt32((objLstImagenesCorporaciones.Count / intTamanoSlideCorto))
            Else
                intNumeroSeccionesCorto = Convert.ToInt32((objLstImagenesCorporaciones.Count / intTamanoSlideCorto))
                intNumeroSeccionesCorto = intNumeroSeccionesCorto + 1
            End If

            objLstRptTemp = New List(Of List(Of LoginImgCorporaciones))
            For intCont As Integer = 1 To intNumeroSeccionesCorto
                objLstImagenesCorporacionesTemp = New List(Of LoginImgCorporaciones)

                For intCont2 As Integer = 1 To intTamanoSlideCorto
                    If (((intCont - 1) * intTamanoSlideCorto) + (intCont2 - 1)) < objLstImagenesCorporaciones.Count Then
                        objLstImagenesCorporacionesTemp.Add(objLstImagenesCorporaciones(((intCont - 1) * intTamanoSlideCorto) + (intCont2 - 1)))
                    End If
                Next

                objLstRptTemp.Add(objLstImagenesCorporacionesTemp)
            Next

            'Cargar el slide largo
            rptSlideCorto.DataSource = objLstRptTemp
            rptSlideCorto.DataBind()

        End If

    End Sub

    ''' <summary>
    ''' Verifica que se realice la validación del captcha de manera correcta
    ''' </summary>
    ''' <returns>Boolean que indica si se verifico de manaera correcta el captcha</returns>
    Private Function ValidateRecaptcha() As Boolean
        Dim strCaptchaResponse As String = Request.Form("g-Recaptcha-Response")
        Dim strLLavePrivada = ConfigurationManager.AppSettings("recpatcha-privado").ToString
        Dim strURLCapcha = ConfigurationManager.AppSettings("recpatcha-url").ToString
        Dim blnValido As Boolean = False

        If Not String.IsNullOrEmpty(strCaptchaResponse) Then

            Dim objSolicitud As WebRequest = WebRequest.Create(strURLCapcha & "?secret=" & strLLavePrivada & "&response=" + strCaptchaResponse)

            Using objWebResponse As WebResponse = objSolicitud.GetResponse

                Using objReadStream As StreamReader = New StreamReader(objWebResponse.GetResponseStream)

                    Dim strJsonResponse As String = objReadStream.ReadToEnd
                    Dim objSerializador As JavaScriptSerializer = New JavaScriptSerializer
                    Dim objCaptchaResponse As CaptchaResponse = objSerializador.Deserialize(Of CaptchaResponse)(strJsonResponse)

                    blnValido = Convert.ToBoolean(objCaptchaResponse.success)

                End Using

            End Using

        Else

            blnValido = False

        End If

        Return blnValido

    End Function

	Private Sub ValidaPassword()
        Dim utilidad As New Utilitario
			'MesgBox("Entro a Validar")

        If utilidad.DebeCambiarPassword(txtUser.Text.Trim()) = True Then
			'MesgBox("A Redireccionar")
            Response.Redirect(ConfigurationManager.AppSettings("PaginaCambio"))
		End If
			'MesgBox("Va a Salidar de Validación")
    End Sub

	Private Sub MesgBox(ByVal sMessage As String)
		Dim msg As String
		msg = "<script language='javascript'>"
		msg += "alert('" & sMessage & "');"
		msg += "</script>"
				Response.Write(msg)
	End Sub
	
#End Region

	Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        Page.Theme = ""

    End Sub


	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("fs") IsNot Nothing Then
            If Request.QueryString("fs") = "1" Then

                Me.lblError.Text = "La sesión a finalizado. Se ha superado el tiempo máximo de inactividad. Por favor inicie sesión de nuevo. "
                Me.lblError.Visible = True
            End If
        End If
		
		If Not Page.IsPostBack Then
            Try
                SlideInferior()
            Catch ex As Exception
                Me.lblError.Text = "Se presento un problema cargando componentes de la página"
                Me.lblError.Visible = True
            End Try

        End If
    End Sub
	
	
#Region "Eventos"

    Public Sub RemovedCallback(k As String, v As Object, r As CacheItemRemovedReason)
        itemRemoved = True
        reason = r
    End Sub
	
	
    Protected Sub btnLogIn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.Click

	Const fic As String = "E:\Gattaca\Web Sites\TestSilpa\SeguimientoNuevo.txt"
	Dim texto As String = "Error en texto"


	
        ' definir los objetos
        Dim applicationCredentials As ApplicationCredentials
        Dim superUser As Long = 1
        Dim clientName As String = ConfigurationManager.AppSettings("clientName")
        Dim LOGON_USER As String = Me.txtUser.Text
        Dim facade As New SecurityFacade
		dim noExisteVITAL as Exception
		'MesgBox("Entra Tray")

		'sw.Close()

        Try

			Me.lblError.Text = ""
            Me.lblError.Visible = False
			'MesgBox("Tray")
            Session("User") = Me.txtUser.Text
            ' contruir el credentials
			
			If Page.IsValid Then

				If ValidateRecaptcha() Then
			
						

                    applicationCredentials = PublicFunction.buildApplicationCredentials(clientName, Request, superUser, Session.SessionID)

                    If ConfigurationManager.AppSettings("WriteLog") = "1" Then
                        Dim sw As New System.IO.StreamWriter(fic, True)
                        sw.WriteLine("Entra Tray")
                        sw.WriteLine("clientName :")
                        sw.WriteLine(clientName)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("Request :")
                        sw.WriteLine(Request)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("superUser :")
                        sw.WriteLine(superUser)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("Session.SessionID : ")
                        sw.WriteLine(Session.SessionID)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("LOGON_USER :        ")
                        sw.WriteLine(LOGON_USER)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("Me.txtPw.Text :")
                        sw.WriteLine(Me.txtPw.Text)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("Session :")
                        sw.WriteLine(Session)
                        sw.WriteLine("____________________________________________")
                        sw.WriteLine("applicationCredentials :")
                        sw.WriteLine(applicationCredentials)
                        sw.WriteLine("____________________________________________")
                        sw.Flush()
                        sw.Close()
                    End If
                    

				   ' hacer login
					try   
						facade.doLogin(applicationCredentials, LOGON_USER, Me.txtPw.Text, _
									Gattaca.Entity.eSecurity.AuthenticationMode.SecurityOnly, Session, Request)
					
					Catch ex As Exception
						if ex.Message.Contains("El Usuario no existe") then
							Session("UserToken") = Nothing
							noExisteVITAL = ex
						else 
							throw ex
						end if
					End Try
					'Fernando: 
					'para cumplir con lo especificado en CU001, si el usuario no existe en Vital, intente con los otros subsistemas            
					If Not (Session("UserToken") Is Nothing) Then
						' ir a la pagina
						ValidaPassword()
						itemRemoved = False
						Session("deIntegracion") = "True" ' pinta el menú de integración así no se haya validado el acceso en el bus
						If (Request.UrlReferrer Is Nothing OrElse (Request.UrlReferrer.ToString.IndexOf("ReturnUrl") < 0)) Then
							'Response.Redirect("~/vital/menu.aspx")
							FormsAuthentication.RedirectFromLoginPage(Me.txtUser.Text, False)
						Else
							onRemove = New CacheItemRemovedCallback(AddressOf Me.RemovedCallback)
							Cache.Add("UserVitalID", LOGON_USER, Nothing, DateTime.Now.AddSeconds(60), Cache.NoSlidingExpiration, CacheItemPriority.High, onRemove)
							FormsAuthentication.RedirectFromLoginPage(Me.txtUser.Text, False)
						End If
					Else
						Session("UserGroup") = "integrador"
						'consume el servicio de conectividad del integrador.
						Dim objAutenticacion As New integrador.servicios
						Dim respuesta As integrador.auth.osAutenticar = objAutenticacion.Autenticar(Me.txtUser.Text, Me.txtPw.Text)
						Dim codigoRespuesta As Integer
						'hack para validar conectividad con el integrador
						If respuesta Is Nothing Then
							codigoRespuesta = -1
						Else
							codigoRespuesta = Integer.Parse(respuesta.respuesta.codigo.ToString())
						End If
						Session("deIntegracion") = "False"
						Select Case codigoRespuesta
							Case -1 'el integrador no está disponible
								ValidaPassword()
								Me.lblError.Text = "Hay un error de conexión. Por favor intente después"
								Session("User") = ""
								Me.lblError.Visible = True
									'FormsAuthentication.RedirectFromLoginPage(txtUser.Text.Trim(), False)
									throw noExisteVITAL
							Case 0
								Session("deIntegracion") = "True"
								Session("esFuncionario") = respuesta.esFuncionario
								Session("nombreCompleto") = respuesta.nombreCompleto.ToString
								Session("autoridadAmbiental") = respuesta.autoridadAmbiental.ToString
								Session("sistemaPerteneciente") = respuesta.sistemaPerteneciente.ToString
								Session("UserOld") = Me.txtUser.Text
								If (Request.UrlReferrer Is Nothing OrElse (Request.UrlReferrer.ToString.IndexOf("ReturnUrl") < 0)) Then
									FormsAuthentication.RedirectFromLoginPage(Me.txtUser.Text, False)
								Else
									FormsAuthentication.RedirectFromLoginPage(Me.txtUser.Text, False)
								End If
							Case 1
								Me.lblError.Text = "Clave incorrecta"
								Session("User") = ""
								Me.lblError.Visible = True
							Case 2
								Me.lblError.Text = "Usuario bloqueado"
								Session("User") = ""
								Me.lblError.Visible = True
							Case 3
								Me.lblError.Text = "Usuario no existe"
								Session("User") = ""
								Me.lblError.Visible = True
								throw noExisteVITAL
							Case 4
								Me.lblError.Text = "Se requiere cambio de clave"
								Session("User") = ""
								Me.lblError.Visible = True
							Case Else
								Me.lblError.Text = "Error no identificado (" & codigoRespuesta & ")"
								Session("User") = ""
								Me.lblError.Visible = True
						End Select
					End If
				Else
					Me.lblError.Text = "Verificación de captcha es incorrecto, por favor trate nuevamente."
					Session("User") = ""
					Me.lblError.Visible = True					
				End If
			End If
        Catch oEx As Threading.ThreadAbortException
            ' no hacer nada
            'sw.Close()   ' Cierra
        Catch ex As Exception

            'mostrando el error
            Session("error") = ex.Message
            Session("Url") = "" 'Request.UrlReferrer.PathAndQuery
            'Response.Redirect("~/errors/error.aspx")
            Dim mapError As MapeoError
            mapError = New MapeoError()
            mapError.rutaXmlMapeo = ConfigurationManager.AppSettings("MapeoError").ToString()

            Me.lblError.Text = ex.Message.ToString() + Session("error").ToString()
            ''Me.lblError.Text = mapError.mapearError(ex.Message.ToString(), Me.txtUser.Text)
            Me.lblError.Visible = True
            ' Response.End()
            If (Not IsNothing(Cache("UserVitalID"))) Then
                Cache.Remove("UserVitalID")
            End If
            'sw.Close()   ' Cierra
			'MesgBox(ex.Message)
        Finally

            ' liberar recursos
            applicationCredentials = Nothing
            superUser = Nothing
            clientName = Nothing
            LOGON_USER = Nothing

        End Try

    End Sub

    
	
	''' <summary>
    ''' Evento que carga la información de los slides largos
    ''' </summary>
    Protected Sub rptSlideLargo_ItemDataBound(sender As Object, e As RepeaterItemEventArgs)
        Dim objRepeater As Repeater
        Dim objDiv As System.Web.UI.HtmlControls.HtmlGenericControl
        Dim objLstImagenesCorporacionesTemp As List(Of LoginImgCorporaciones)

        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then

            'Cargar datos
            objRepeater = CType(e.Item.FindControl("rptOpcionesSlideLargo"), Repeater)
            objDiv = CType(e.Item.FindControl("dvOpcionSlide"), System.Web.UI.HtmlControls.HtmlGenericControl)
            objLstImagenesCorporacionesTemp = CType(e.Item.DataItem, List(Of LoginImgCorporaciones))

            If Not objDiv Is Nothing Then

                If e.Item.ItemIndex = 0 Then
                    objDiv.Attributes.Add("class", "carousel-item active")

                Else
                    objDiv.Attributes.Add("class", "carousel-item")
                End If

            End If

            If Not objRepeater Is Nothing Then

                objRepeater.DataSource = objLstImagenesCorporacionesTemp
                objRepeater.DataBind()

            End If

        End If


    End Sub

    ''' <summary>
    ''' Evento que carga la información de los slides cortos
    ''' </summary>
    Protected Sub rptSlideCorto_ItemDataBound(sender As Object, e As RepeaterItemEventArgs)

        Dim objRepeater As Repeater
        Dim objDiv As System.Web.UI.HtmlControls.HtmlGenericControl
        Dim objLstImagenesCorporacionesTemp As List(Of LoginImgCorporaciones)

        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then

            'Cargar datos
            objRepeater = CType(e.Item.FindControl("rptOpcionesSlideCOrto"), Repeater)
            objDiv = CType(e.Item.FindControl("dvOpcionSlide"),System.Web.UI.HtmlControls.HtmlGenericControl)
            objLstImagenesCorporacionesTemp = CType(e.Item.DataItem, List(Of LoginImgCorporaciones))

            If Not objDiv Is Nothing Then

                If e.Item.ItemIndex = 0 Then
                    objDiv.Attributes.Add("class", "carousel-item active")

                Else
                    objDiv.Attributes.Add("class", "carousel-item")
                End If

            End If

            If Not objRepeater Is Nothing Then

                objRepeater.DataSource = objLstImagenesCorporacionesTemp
                objRepeater.DataBind()

            End If

        End If

    End Sub
	
#End Region

    


End Class
