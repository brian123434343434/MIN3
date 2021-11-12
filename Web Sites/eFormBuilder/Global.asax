<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.IO.Compression" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
 
     
    
     /*   HttpContext.Current.Cache.Remove("CargarColor");
        HttpContext.Current.Cache.Remove("CargarTipoRegistro");
        HttpContext.Current.Cache.Remove("CargarAsociaciones");
        HttpContext.Current.Cache.Remove("CargarPais");
        HttpContext.Current.Cache.Remove("CargarTipoSexo");
        HttpContext.Current.Cache.Remove("CargarTipoAndar");
        HttpContext.Current.Cache.Remove("CargarTipoEquinos");
    */
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Código que se ejecuta cuando se cierra la aplicación

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Código que se ejecuta al producirse un error no controlado

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando se inicia una nueva sesión

    }

    void Session_End(object sender, EventArgs e)
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: El evento Session_End se desencadena sólo con el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer 
        // o SQLServer, el evento no se genera.

    }

    protected void Application_BeginRequest(object sender, EventArgs e)
    {
        HttpApplication app = ((HttpApplication)sender);

        string acceptEncoding = app.Request.Headers["Accept-Encoding"];

        Stream prevUncompressedStream = app.Response.Filter;

        if (acceptEncoding == null || acceptEncoding.Length == 0)
        {
            return;

        }

        acceptEncoding = acceptEncoding.ToLower();

        if (app.Context.Request.FilePath.EndsWith(".aspx") || app.Context.Request.FilePath.EndsWith(".ashx") || app.Context.Request.FilePath.EndsWith(".Asmx"))
        {
            if (acceptEncoding.Contains("gzip"))
            {
                // gzip
                app.Response.Filter = new GZipStream(prevUncompressedStream, CompressionMode.Compress);
                app.Response.AppendHeader("Content-Encoding", "gzip");

            }
            else if (acceptEncoding.Contains("deflate"))
            {
                // defalte
                app.Response.Filter = new DeflateStream(prevUncompressedStream, CompressionMode.Compress);
                app.Response.AppendHeader("Content-Encoding", "deflate");

            }

        }
    }
       
</script>
