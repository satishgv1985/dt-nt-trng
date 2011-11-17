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
        //http://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.button.postbackurl.aspx
       // System.Diagnostics.Debugger.Launch();
        TextBox txtUN = (TextBox)Page.PreviousPage.FindControl("txtUserName");
        string ddlValue = ((DropDownList)PreviousPage.FindControl("ddlGender")).SelectedItem.Text;
        string txtSample = ((TextBox)PreviousPage.FindControl("txtSample")).Text;
        lblUserName.Text = txtUN.Text+"     "+ddlValue+"    <b>Sample:</b>"+txtSample;

    }
}