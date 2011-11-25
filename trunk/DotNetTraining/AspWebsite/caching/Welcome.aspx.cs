using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class caching_Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Cache["name"] != null)
            lblCachedData.Text = Convert.ToString(Cache["name"]);
        else
            lblCachedData.Text = "Nothing cached";

        Response.Write("hi");

        Response.Write("--"+Cache["RemovedEmpoyees"]+"--");
        
    }
}