using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        
        GridView gvProd = new GridView();
        gvProd.DataSource = sds;
        gvProd.DataBind();

        TemplateField tfName = new TemplateField();
        
    }

    public string GetItemBuy(int pId)
    {
        
        return "<img id='' alternateText='pid' >";
    }
}