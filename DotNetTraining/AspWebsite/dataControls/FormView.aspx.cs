using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dataControls_FormView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        //System.Diagnostics.Debugger.Launch();
        lblMessage.Text = "Updated!!";
        lblMessage.Visible = true;
    }
    protected void FormView1_Load(object sender, EventArgs e)
    {

        lblMessage.Visible = false;
    }
}