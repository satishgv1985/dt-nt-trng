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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            localhost.MyCustomerService mycust = new localhost.MyCustomerService();
            int result = mycust.addition(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            txtResult.Text = Convert.ToString(result);
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            localhost.MyCustomerService mycust = new localhost.MyCustomerService();
            int result = mycust.subtraction(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            txtResult.Text = Convert.ToString(result);
        }

        protected void btnMul_Click(object sender, EventArgs e)
        {
            localhost.MyCustomerService mycust = new localhost.MyCustomerService();
            int result = mycust.multiplication(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            txtResult.Text = Convert.ToString(result);
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            localhost.MyCustomerService mycust = new localhost.MyCustomerService();
            int result = mycust.divide(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            txtResult.Text = Convert.ToString(result);
        }
    }
}