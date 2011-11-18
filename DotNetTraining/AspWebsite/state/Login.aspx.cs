using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitGet_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/state/hiddenField.aspx?name="+txtLogin.Text);
    }
}