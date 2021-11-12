using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Gattaca.Application.Credentials;

public partial class BandejaTareas_WorkItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (string key in Session.Keys)
        {
            this.Label1.Text += String.Format("<br/>{0}={1}", key, Session[key]);
        }
ApplicationCredentials appCred =  (ApplicationCredentials)Session["ApplicationCredentials"];

this.Label1.Text += "<br/><br/> appCred.ClientName " + appCred.ClientName;
this.Label1.Text += "<br/> appCred.UserID " + appCred.UserID.ToString();
this.Label1.Text += "<br/> appCred.ProductName " + appCred.ProductName;
this.Label1.Text += "<br/> appCred.DbTypeCore " + appCred.DbTypeCore.ToString();
this.Label1.Text += "<br/> appCred.UserMachineIP " + appCred.UserMachineIP;	
this.Label1.Text += "<br/> appCred.UserSessionID " + appCred.UserSessionID;	
this.Label1.Text += "<br/> appCred.UserType " + appCred.UserType;	

        

        this.Label1.Text += "<BR/>PARAMS :";
        foreach (string paramKey in Request.Params.Keys)
        {
            this.Label1.Text += String.Format("<br/>{0}={1}", paramKey, Request.Params[paramKey]);

        }

        this.Label1.Text += "<BR/>Form :";
        foreach (string paramKey in Request.Form.Keys)
        {
            this.Label1.Text += String.Format("<br/>{0}={1}", paramKey, Request.Form[paramKey]);

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
}
