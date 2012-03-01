using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        System.Diagnostics.Debugger.Launch();
    }
    public void Department_ServerValidate(object source, ServerValidateEventArgs args)
    {
        for (int i = 0; i < cblDepartment.Items.Count; i++)
        {
            
            ListItem lt=(ListItem)cblDepartment.Items[0];

            if (lt.Selected)
            {
                args.IsValid = true;
                return;
            }
        }
        args.IsValid = false;
    }
}