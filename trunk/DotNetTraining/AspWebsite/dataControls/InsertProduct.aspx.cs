using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NorthWindDB;

public partial class dataControls_InsertProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)


        {

            NorthWindDB.Product p= new NorthWindDB.Product();
            p.ProductName = "p1";
            int a=NorthWindDB.ProductDAL.InsertProduct(p);
            //List<Suppliers> lSup =new List<Suppliers>();
            //lSup = SupplierDAL.GetAllSuppliers();

            //foreach (Supplier sup in lSup)
            //{
            //    ddlSupplier.Items.Add(new ListItem(sup.CompanyName, sup.SupplierID));
            //}

            //ddlSupplier.DataSource = lSup;
            //ddlSupplier.DataTextField = "CompanyName";
            //ddlSupplier.DataValueField= "SupplierID";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Product prod = new Product();
        prod.ProductName = txtPName.Text;
        prod.SupplierID = Convert.ToInt32(ddlSupplier.SelectedValue);

        int retVal;
            //= ProductDAL.InsertProduct(prod);
        //if (retVal == 1)
        //{
        //    lblMessage.Text = "Inserted Successfully";
        //    lblMessage.Visible = true;
        //}
        //else
        //    lblMessage.Text = "Some Error occured";
    }
    protected void ddlSupplier_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void ddlSupplier_Load(object sender, EventArgs e)
    {

    }
}