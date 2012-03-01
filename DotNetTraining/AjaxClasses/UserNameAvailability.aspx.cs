using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AjaxClasses
{
    public partial class UserNameAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AjaxConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT emp_name FROM User_Info WHERE emp_name='" + txtUserName.Text + "'", con);
            cmd.CommandType = CommandType.Text;
           
            SqlDataReader sdrUserName = cmd.ExecuteReader();

            while (sdrUserName.Read())
            {
                lbMessage.Text = "Already Taken";
               
                lbMessage.CssClass = "taken";
                
                con.Close();
                return;
            }

            lbMessage.Text = "UserName is Avaliable";
        
            lbMessage.CssClass = "available";
            con.Close();

        }

        protected void btnError_Click(object sender, EventArgs e)
        {
            Exception ex = new Exception();
            throw ex;
        }
    }
}