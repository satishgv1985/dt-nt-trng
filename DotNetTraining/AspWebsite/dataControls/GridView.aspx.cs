using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dataControls_GridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string country = (string)DataBinder.Eval(e.Row.DataItem, "Country");
            if (country == "USA")
                e.Row.BackColor = System.Drawing.Color.Gray;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView1.SelectedIndex != -1)
        {
            ViewState["SelectedValue"] = GridView1.SelectedValue.ToString();
        }

        int index = GridView1.SelectedIndex;
        // You can retrieve the key field from the SelectedDataKey property.
        int ID = (int)GridView1.SelectedDataKey.Values["SupplierID"];


    }
    protected void GridView1_Sorted(object sender, EventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        if (ViewState["SelectedValue"] != null)
        {
            string selectedValue = (string)ViewState["SelectedValue"];
            // Reselect the last selected row.
            foreach (GridViewRow row in GridView1.Rows)
            {
                string keyValue = GridView1.DataKeys[row.RowIndex].Value.ToString();
                if (keyValue == selectedValue)
                {
                    GridView1.SelectedIndex = row.RowIndex;
                    return;
                }
            }
        }
    }
}