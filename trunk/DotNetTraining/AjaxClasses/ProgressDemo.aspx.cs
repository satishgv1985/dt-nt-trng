using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxClasses
{
    public partial class ProgressDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            //lblDate.Text = DateTime.Now.ToString();
            lblAjaxDate.Text = DateTime.Now.ToString();
            //Label1.Text = DateTime.Now.ToString();
        }
    }
}