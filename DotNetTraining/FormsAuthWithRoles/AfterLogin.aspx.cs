using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormsAuthWithRoles
{
    public partial class AfterLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.IsInRole("principal"))
                Response.Redirect("~/principal/principalHome.aspx");
            else if(User.IsInRole("student"))
                Response.Redirect("~/student/studentHome.aspx");
        }
    }
}