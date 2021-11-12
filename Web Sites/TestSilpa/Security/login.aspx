<%@ Page Title="" Language="VB" MasterPageFile="~/Master/mpTest.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Security_login"  %>

<asp:Content ID="cphLoginHead" ContentPlaceHolderID="head" runat="server">     
	<script type="text/javascript" src="Resources/js/login.js"></script>
    <link rel="stylesheet" href="Resources/login.css" />    

    <script type="text/javascript">
        var key = '<%= CaptchaKey %>';

        var onloadCallback = function () {
            grecaptcha.render('loginRecaptcha', {
                'sitekey': key,
                'size': 'compact',
                'type': 'image',
            });
        };

        urlBuscador = '<%= URLBuscador %>';
    </script>
</asp:Content>
<asp:Content ID="cphLoginBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
    <!-- SLIDE SUPERIOR -->
    <div id="slideSuperior" class="carousel-superior">       
        <div id="homeCarousel" class="carousel slide" data-bs-ride="carousel">             
            <div class="carousel-play-pause">   
                <span id="a-img-play"><i id="img-pause-play" class="bi bi-pause-fill"></i></span>
            </div>
            <div class="carousel-indicators">
            <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../Resources/img_banner/BANNER-001.png" class="d-block w-100" alt="..." />
                </div>
                <div class="carousel-item">
                    <img src="../Resources/img_banner/BANNER-002.png" class="d-block w-100" alt="..." />
                </div>
                <div class="carousel-item">
                    <img src="../Resources/img_banner/BANNER-003.png" class="d-block w-100" alt="..." />
                </div>
            </div>
        </div>
    </div>

    <!-- FIN SLIDE SUPERIOR -->


    <!-- BUSCADOR -->

    <div class="row buscador">
        <div class="buscar">
            <input type="text" id="txtBuscar" placeholder="Encontrar en VITAL" autocomplete="off" onkeypress="CapturarEnterBuscar(event)" />
            <span id="cmdBuscar" class="buscar-icon"></span>
        </div>
        <div class="accesos row">
            <div id="acceso-encuesta">
                <a href="https://forms.office.com/Pages/ResponsePage.aspx?id=lMscb6Wtf0OHbUl5IMy-GGV1IRFkN3NHhRxLwgbOqFhUNkwxRUZMQkUxMEJJNkQxNlBTRjE4RDJNUS4u" target="_blank" title="Encuenta de Satisfacción"><div>Encuesta de Satisfacción VITAL</div></a>
            </div>
            <div id="acceso-silamc">
                <a href="http://vital-qa.minambiente.gov.co/silamc" target="_blank" title="SilaMC"><div>Acceder a SILAMC</div></a>
            </div>            
        </div>
    </div>

    <!-- FIN BUSCADOR -->


    <!-- ACCESO Y LOGIN  -->
    <div class="row acceso-login">

        <div class="accesos">
            <div>
                <div class="row">
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Solicitudes" href="http://vital-qa.minambiente.gov.co/ventanillasilpa/Inicio/SolicitudesVITAL/tabid/79/language/es-ES/Default.aspx">
                                <img src="../Resources/Img_Vital/ICO-tramites.png" />
                                <h3>Trámites</h3>
                                <p>Solicitud de licencias y permisos ambientales.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Denuncias Ambientales" href="http://vital-qa.minambiente.gov.co/silpa_ut_pre/QuejasDenuncias/QuejasDenuncias.aspx?Ubic=Ext">
                                <img src="../Resources/Img_Vital/ICO-denuncias.png" />
                                <h3>Denuncias</h3>
                                <p>Presentación de denuncias ambientales.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Registro Único de Infractores Ambientales" href="http://vital-qa.minambiente.gov.co/SILPA_UT_PRE/RUIA/ConsultarSancion.aspx?Ubic=ext">
                                <img src="../Resources/Img_Vital/ICO-ruia.png" />
                                <h3>RUIA</h3>
                                <p>Registro Unico de Infractores Ambientales.</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Sistema Nacional de Trazabilidad de Biodiversidad" href="http://vital-qa.minambiente.gov.co/silpa_ut_pre/SINTRAB/MenuSINTRAB.aspx?Ubic=ext">
                                <img src="../Resources/Img_Vital/ICO-Sintrab.png" />
                                <h3>SINTRAB</h3>
                                <p>Sistema Nacional de Trazabilidad de Biodiversidad.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Certificados" href="https://pruebas.anla.gov.co/Vitalanla/ModulosPublicos/PruebaDinamica/ConsultaCertificado">
                                <img src="../Resources/Img_Vital/ICO-pdv.png" />
                                <h3>Certificados PDV</h3>
                                <p>Consulta Certificados de Emisiones de Prueba Dinámica.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Audiencia Pública" href="http://vital-qa.minambiente.gov.co/SILPA_UT_PRE/AudienciaPublica/MenuAudienciaPublica.aspx?Ubic=Ext">
                                <img src="../Resources/Img_Vital/ICO-audiencias.png" />
                                <h3>Audiencias</h3>
                                <p>Solicitud, incripción y consultas de audiencias públicas.</p>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Publicaciones" href="http://vital-qa.minambiente.gov.co/ventanillasilpa/Inicio/PublicacionesVITAL/tabid/81/language/es-ES/Default.aspx">                                
                                <i class="icon bi bi-journal-text"></i>
                                <h3>Publicaciones</h3>
                                <p>Documentos públicados por las entidades que actuan en VITAL.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Normativa" href="http://vital-qa.minambiente.gov.co/ventanillasilpa/Inicio/NormativaVITAL/tabid/77/language/es-ES/Default.aspx">
                                <i class="icon fas fa-clipboard-list"></i>
                                <h3>Normativa</h3>
                                <p>Leyes o reglamentos que rigen sobre VITAL.</p>
                            </a>
                        </div>
                    </div>
                    <div class="card col-4">
                        <div class="card-body card-vital">
                            <a target="_blank" title="Políticas y Condiciones" href="http://vital-qa.minambiente.gov.co/ventanillasilpa/Inicio/PoliticasycondicionesdeU/tabid/78/language/es-ES/Default.aspx">
                                <i class="icon fas fa-gavel"></i>
                                <h3>Políticas</h3>
                                <p>Términos y condiciones de uso de VITAL.</p>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
                        
        </div>        
        
        <div class="login">
            <div class="titulo"><label>Inicio de sesión</label></div>            
            <div class="lnk-registro">
                ¿Aún no tiene cuenta?<br />
                <a href="http://vital-qa.minambiente.gov.co/SILPA_UT_PRE/Datospersonales.aspx?reg=registro" target="_blank">Registrar nuevo Usuario</a>
            </div>
            <div class="mensaje-error">
                <asp:label id="lblError" runat="server" visible="False"></asp:label>
            </div>
            <div class="formulario">
                <label for="txtUser">Usuario *</label>
                <asp:TextBox ID="txtUser" runat="server" MaxLength="18" title="Usuario" onfocus="this.addEventListener('copy', function(e) { return e.preventDefault(); }); this.addEventListener('paste', function(e) { return e.preventDefault(); });"
                                AutoComplete="off" placeholder="Ingrese su usuario"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" BorderStyle="None" ControlToValidate="txtUser" Display="Dynamic" ErrorMessage="Ingrese el usuario de ingreso a VITAL." ValidationGroup="Login">*</asp:RequiredFieldValidator>
            </div>
            <div class="formulario">
                <label for="txtPw">Contraseña *</label>
                <asp:TextBox ID="txtPw" runat="server" MaxLength="18" title="Contraseña" onfocus="this.addEventListener('copy', function(e) { return e.preventDefault(); }); this.addEventListener('paste', function(e) { return e.preventDefault(); });"
                                TextMode="Password" placeholder="Ingrese su contraseña" AutoComplete="off" CssClass="text-show-password"></asp:TextBox>
                <span class="fa fa-fw fa-eye password-icon show-password"></span>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" BorderStyle="None" ControlToValidate="txtPw" Display="Dynamic" ErrorMessage="Ingrese la contraseña de acceso a VITAL." ValidationGroup="Login">*</asp:RequiredFieldValidator>

            </div>
            <div class="lnk-recordar"><a href="http://vital-qa.minambiente.gov.co/SILPA_UT_PRE/ReestablecerClave.aspx" target="_blank">Recordar contraseña</a></div>
            <div id="loginRecaptcha"></div>
			<div>
                <asp:Button ID="btnLogIn" runat="server" Text="Entrar a VITAL" CausesValidation="true" ToolTip="Entrar a VITAL" ValidationGroup="Login" OnClientClick="postbackButtonClick();"></asp:Button>
                <asp:ValidationSummary ID="vsLogin" runat="server" ShowSummary="false" ShowMessageBox="true" ValidationGroup="Login" />
            </div>
            <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
            <asp:CustomValidator runat="server" ID="cvCaptcha" Display="Dynamic" ClientValidationFunction="CaptchaSelectionValidation" ErrorMessage="Haga clic sobre el campo de verificación de captcha." ValidationGroup="Login">&nbsp;</asp:CustomValidator>
        </div>            

        </div>
        
            
    <!-- FIN ACCESO Y LOGIN  -->


    <!-- SLIDE INFERIOR -->

    <div class="tituloSlideInferior">
        <label>Entidades que actúan en VITAL</label>
    </div>
    <div id="slideInferior" class="carousel-inferior">      
        <div class="controls-direction d-none d-sm-none d-md-block d-lg-block d-xl-block">
            <a href="#homeCarouselInferior" data-bs-slide="prev" class="left"><i class="fas fa-chevron-left"></i></a>
        </div>
        <div class="controls-direction-small d-block d-sm-block d-md-none d-lg-none d-xl-none">
            <a href="#homeCarouselInferiorSmall" data-bs-slide="prev" class="left"><i class="fas fa-chevron-left"></i></a>
        </div>
        
        <div id="homeCarouselInferior" class="carousel slide d-none d-sm-none d-md-block d-lg-block d-xl-block" data-bs-ride="carousel slide">
            <div class="carousel-inner" role="listbox">

                <asp:Repeater runat="server" ID="rptSlideLargo" OnItemDataBound="rptSlideLargo_ItemDataBound">
                    <ItemTemplate>
                        <div runat="server" id="dvOpcionSlide">
                            <div class="row">
                                <asp:Repeater runat="server" ID="rptOpcionesSlideLargo">
                                    <ItemTemplate>
                                        <div class="col-xs-2 col-md-2 col-sm-2 d-flex justify-content-center"><a target="_blank" href='<%# Eval("URL")%>'><img src='../Resources/img_corporaciones/<%# Eval("Imagen")%>'  alt="MINAMBIENTE" class="img-responsive" /></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </ItemTemplate>            
                </asp:Repeater>
                                           
            </div>
		</div>

        <div id="homeCarouselInferiorSmall" class="carousel slide d-block d-sm-block d-md-none d-lg-none d-xl-none" data-bs-ride="carousel slide">

            <div class="carousel-inner" role="listbox">

                <asp:Repeater runat="server" ID="rptSlideCorto" OnItemDataBound="rptSlideCorto_ItemDataBound">
                    <ItemTemplate>
                        <div runat="server" id="dvOpcionSlide">
                            <div class="row">
                                <asp:Repeater runat="server" ID="rptOpcionesSlideCOrto">
                                    <ItemTemplate>
                                        <div class="col-sm-6 col-6 d-flex justify-content-center"><a target="_blank" href='<%# Eval("URL")%>'><img src='../Resources/img_corporaciones/<%# Eval("Imagen")%>'  alt="MINAMBIENTE" class="img-responsive" /></a></div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </ItemTemplate>            
                </asp:Repeater>                
            </div>
        </div>
        <div class="controls-direction d-none d-sm-none d-md-block d-lg-block d-xl-block">
            <a href="#homeCarouselInferior" data-bs-slide="next" class="right"><i class="fas fa-chevron-right"></i></a>
        </div>
        <div class="controls-direction-small d-block d-sm-block d-md-none d-lg-none d-xl-none">
            <a href="#homeCarouselInferiorSmall" data-bs-slide="next" class="right"><i class="fas fa-chevron-right"></i></a>
        </div>
    </div>

    <!-- FIN SLIDE INFERIOR -->

</asp:Content>


