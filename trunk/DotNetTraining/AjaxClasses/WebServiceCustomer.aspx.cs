using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxClasses
{
    public partial class WebServiceCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetName_Click(object sender, EventArgs e)
        {
            localhost.MyCustomerService myCust = new localhost.MyCustomerService();
            string name= myCust.GetCustomerNameById(Convert.ToInt32(txtId.Text));

            lblName.Text = name;

            lblName.Text += myCust.HelloWorld();
 
        }
    }
}