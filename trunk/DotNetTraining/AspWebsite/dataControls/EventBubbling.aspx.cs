using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dataControls_EventBubbling : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }
    protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ButtonClick")
        {
            lblMessage.Text = "Success" + e.CommandArgument.ToString();
        }
    }

    protected void ddlSupplier_SelectedIndexChanged(object sender, EventArgs e)
    {
        //System.Diagnostics.Debugger.Launch();

        foreach (GridViewRow row in gvProducts.Rows)
        {
            Control ctrl = row.FindControl("ddlSupplier");
            if (ctrl!=null)
            {
                DropDownList ddlSuppliers = (DropDownList)ctrl;
                lblMessage.Text = ddlSuppliers.SelectedItem.Text;

                
            }
            
        }
        
    }

   
    protected void gvProducts_DataBound(object sender, EventArgs e)
    {

        foreach (GridViewRow row in gvProducts.Rows)
        {
            Control ctrl = row.FindControl("ddlSupplier");
            if (ctrl != null)
            {
                DropDownList ddlSuppliers = (DropDownList)ctrl;

                //ddlSuppliers.SelectedValue=

                Control ctrnHidVSup = row.FindControl("hdnSupID");
                if (ctrnHidVSup != null)
                {
                    HiddenField hd = (HiddenField)ctrnHidVSup;
                    ddlSuppliers.SelectedValue = hd.Value;
                }
            }

        }
    }
}