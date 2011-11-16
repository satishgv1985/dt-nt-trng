using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Using Get of accessing values        
        //lblUserName.Text = Request.QueryString["un"]+"    Pass="+Request.QueryString["pass"];
        //if (Request.QueryString["gen"] == "1")
        //{
        //    lblGender.Text = "Male";
        //}

        //Using Post of accessing values
        TextBox txtUN = (TextBox)PreviousPage.FindControl("txtUserName");
        lblUserName.Text = txtUN.Text;
    }
}