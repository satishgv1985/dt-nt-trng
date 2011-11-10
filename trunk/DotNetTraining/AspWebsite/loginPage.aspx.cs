using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString();
        //txtUserName.Text = "Page Load event";
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string password = txtPassword.Text;
        string gender = ddlGender.SelectedValue;
        string strTemp = "Welcome.aspx?";
        strTemp = "un=" + userName;
        strTemp += "&pass" + password;
        strTemp += "&gen" + gender;
        Response.Redirect("Welcome.aspx?un=" + userName + "&pass=" + password + "&gen=" + gender);
    }
}