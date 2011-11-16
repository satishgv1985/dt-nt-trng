using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblName =(Label)Page.Master.FindControl("lblName");

        lblReadText.Text = lblName.Text;

        Label lblCP = (Label)Page.Master.FindControl("lblReadCPText");
        if(lblCP!=null)        
        lblCP.Text = lblCPdata.Text;
    }
}