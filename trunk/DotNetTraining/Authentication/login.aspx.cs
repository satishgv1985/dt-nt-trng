using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Authentication
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

           // if (txtUserName.Text == "amit111" && txtPassword.Text == "aaa")
           
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
            
            //else
                lblError.Text = "Invalid user name";
        }
    }
}