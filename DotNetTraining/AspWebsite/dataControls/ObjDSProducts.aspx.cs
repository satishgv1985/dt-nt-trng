using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NorthWindDB;
public partial class dataControls_ObjDSProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ProductDAL pDal = new ProductDAL();
        List<NorthWindDB.Product> pList = ProductDAL.GetAllProducts();
        GridView2.DataSource = pList;
        GridView2.DataBind();

        NorthWindDB.Product p = new NorthWindDB.Product();
        p = ProductDAL.GetProductById(2);

        lblPName.Text = p.ProductName;
        
    }
}