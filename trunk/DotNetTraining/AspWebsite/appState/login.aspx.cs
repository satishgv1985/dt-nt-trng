using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sessionLogin_login : System.Web.UI.Page
{
    public string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Application["counter"] = 1;

        if (IsPostBack)
        {
            Application["counter"] = Convert.ToInt32(Application["counter"]) + 1;
        }

        if(Application["counter"]!=null)
        lblCounter.Text = Convert.ToString(Application["counter"]);
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/appState/appStateSample.aspx");
       
    }

    
}