<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowFile.aspx.vb" Inherits="BPMWebSite.ShowFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true" />
<script type="text/javascript" >
  // Get a PageRequestManager reference.
  var prm = Sys.WebForms.PageRequestManager.getInstance();
 
  // Hook the _initializeRequest event and add our own handler.
  prm.add_initializeRequest(InitializeRequest);
 
  function InitializeRequest(sender, args)
  {
    // Check to be sure this async postback is actually 
    //   requesting the file download.
    if (sender._postBackSettings.sourceElement.id == "DownloadFile")
    {
      // Create an IFRAME.
      var iframe = document.createElement("iframe");
 
      // Get the desired region from the dropdown.
      var region = $get("Region").value;
 
      // Point the IFRAME to GenerateFile, with the
      //   desired region as a querystring argument.
      iframe.src = "LoadFile.aspx?region=" + region;
 
      // This makes the IFRAME invisible to the user.
      iframe.style.display = "none";
 
      // Add the IFRAME to the page.  This will trigger
      //   a request to GenerateFile now.
      document.body.appendChild(iframe); 
    }
  }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
    <asp:DropDownList runat="server" ID="Region">
      <asp:ListItem Value="N">North Region</asp:ListItem>
      <asp:ListItem Value="W">West Region</asp:ListItem>
      <asp:ListItem Value="SE">Southeast Region</asp:ListItem>
    </asp:DropDownList>
    <asp:Button runat="server" ID="DownloadFile" Text="Generate Report" />
  </ContentTemplate>
</asp:UpdatePanel>
</form>
</body>
</html>
