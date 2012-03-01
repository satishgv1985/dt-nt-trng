using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using google_login_page;
namespace Authentication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.IsInRole("admin"))
                hlAdmin.Visible = true;
            else
                hlAdmin.Visible = false;
        }
    }
}