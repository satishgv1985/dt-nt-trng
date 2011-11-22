using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appState_appStateSample : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Application["counter"] = Convert.ToInt32(Application["counter"]) + 1;
        }

        if (Application["counter"] != null)
            lblCounter.Text = Convert.ToString(Application["counter"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/appState/page2.aspx");
    }
}