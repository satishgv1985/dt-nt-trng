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

    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        // Read the username and password
        string un = txtUserName.Text;
        string password = txtPassword.Text;

        // Validate the entered username and password against database
        //If success show welcome page
          // else login failed please try again.
        bool result=ValidateLogin(un, password);
        if (result)
            Response.Redirect("~/sessionLogin/Welcome.aspx");
        else
        {
            lblError.Text = "Invalid username and password";
        }
    }

    private bool ValidateLogin(string un, string password)
    {
        bool res = true;
        // send un, password to db and get the result

        if (res)
        {
            Session["name"] = "Satish";
            return true;
        }
        else
            return false;
    }
}