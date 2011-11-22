using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class appState_page2Master : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["counter"] != null)
        {
            Application["counter"] = Convert.ToInt32(Application["counter"]) + 1;
            Label lblCounter = (Label)(this.Master.FindControl("lblCounter"));
            lblCounter.Text = Convert.ToString(Application["counter"]);
        }
        
    }
}