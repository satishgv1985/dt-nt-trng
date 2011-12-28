using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dataControls_gv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {
        gvProducts.SelectedIndex = -1;
        
    }
    protected void gvProducts_Sorted(object sender, EventArgs e)
    {
        
        gvProducts.SelectedIndex = -1;

    }
    protected void gvProducts_SelectedIndexChanged(object sender, EventArgs e)
    {
        System.Diagnostics.Debugger.Launch();
        ViewState["ProductSelected"] = gvProducts.SelectedDataKey.Values["ProductID"];
        hdnSupId.Value = gvProducts.SelectedDataKey.Values["SupplierID"].ToString();
      
        
        
    }
    protected void gvProducts_DataBound(object sender, EventArgs e)
    {
        if (ViewState["ProductSelected"] != null)
        {
            foreach (GridViewRow row in gvProducts.Rows)
            {
                string keyValue = gvProducts.DataKeys[row.RowIndex].Value.ToString();

                if (keyValue == Convert.ToString(ViewState["ProductSelected"]))
                {
                    gvProducts.SelectedIndex = row.RowIndex;
                    return;
                }
            }
        }
    }
    protected void gvProducts_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //System.Diagnostics.Debugger.Launch();
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    string supID = DataBinder.Eval(e.Row.DataItem, "SupplierID").ToString();
        //    if (supID == "3")
        //        e.Row.BackColor = System.Drawing.Color.GreenYellow;
            
        //}
    }
}