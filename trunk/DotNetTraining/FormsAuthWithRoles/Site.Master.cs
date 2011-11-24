using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace FormsAuthWithRoles
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                lbLogInfo.Text = "Log Out";
            }
            else
            {
                lbLogInfo.Text = "Log In";
            }
             
        }

        protected void lbLogInfo_Click(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }

        }
    }
}