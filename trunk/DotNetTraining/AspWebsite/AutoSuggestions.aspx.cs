using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

public partial class testSuggestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label l = new Label();
        string[] a = { "a", "b" };
        string b="";
        foreach (string s in a)
        {
            b += s;
            
        }

        l.Text = b.Trim();
        DataView dv;
       // DataSet
    }
}