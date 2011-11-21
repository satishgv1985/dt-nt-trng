using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sessionLogin_inbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
            Response.Redirect("~/sessionLogin/login.aspx");
        if (!IsPostBack)
        {
            lblName.Text = (string)Session["name"];
        }
    }
    protected void lbLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/sessionLogin/login.aspx");
    }
}