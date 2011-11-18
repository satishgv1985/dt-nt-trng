using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class state_hiddenField : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = (string)Request.QueryString["name"];
            hfName.Value = str;
           
        }

    }
    protected void btnClickHere_Click(object sender, EventArgs e)
    {
        if (hfName.Value == "1")
            lblHiddenValue.Text = "Satish";
        else if (hfName.Value == "2")
            lblHiddenValue.Text = "Buddha reddy";
    }
}