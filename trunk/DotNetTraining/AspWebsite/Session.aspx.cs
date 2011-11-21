using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            Session["name"] = "Asp.Net";
            
        }

    }
    protected void btnSession_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
            lblName.Text = (string)Session["name"];
    }
}