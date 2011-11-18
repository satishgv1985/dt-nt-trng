using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class state_viewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            ViewState["user"] = "Satish";

            //System.Diagnostics.Debugger.Launch();
            //lblTime.Text = "PostBack Req New time:" + DateTime.Now.ToString();
            ////txtUserName.Text = "";
            //if(ViewState["user"]!=null)
            //lblNewValue.Text =(string)ViewState["user"];
        }

    }
    protected void txtPostBack_TextChanged(object sender, EventArgs e)
    {
        txtViewState.Text = (string)ViewState["user"];
    }

    public void changeValue()
    {
        
    }
}