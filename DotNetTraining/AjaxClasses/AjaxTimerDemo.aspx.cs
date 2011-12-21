using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxClasses
{
    public partial class AjaxTimerDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int rand = new Random().Next(1, 4);
            Image1.ImageUrl = "~/images/image" + rand + ".jpg";
        }
    }
}