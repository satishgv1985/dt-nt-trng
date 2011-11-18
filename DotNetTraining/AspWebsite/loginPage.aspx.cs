using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lblTime.Text = "PostBack Req New time:" + DateTime.Now.ToString();
            //txtUserName.Text = "";

        }
        else
        {
            ddlState.Items.Add(new ListItem("-Select One-", "0"));
            ddlState.Items.Add(new ListItem("Karnataka", "1"));
            ddlState.Items.Add(new ListItem("Andhra", "2"));

            lblTime.Text = DateTime.Now.ToString();
        }
        //txtUserName.Text = "Page Load event";
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string userName = txtUserName.Text;
        string password = txtPassword.Text;
        string gender = ddlGender.SelectedValue;
        string strTemp = "Welcome.aspx?";
        strTemp = "un=" + userName;
        strTemp += "&pass" + password;
        strTemp += "&gen" + gender;
        //Response.Redirect("Welcome.aspx?un=" + userName + "&pass=" + password + "&gen=" + gender);
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedValue == "0")
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Add(new ListItem("-Select State First-", "0"));
        }

        if (ddlState.SelectedValue == "1")
        {
            ddlDistrict.Items.Clear();
            ListItem ltDistrict = new ListItem("Bangalore", "1");
            ddlDistrict.Items.Add(ltDistrict);
            ltDistrict = new ListItem("Mysore", "2");
            ddlDistrict.Items.Add(ltDistrict);
        }
        if (ddlState.SelectedValue == "2")
        {
            ddlDistrict.Items.Clear();
            ListItem ltDistrict = new ListItem("Hyderbad", "1");
            ddlDistrict.Items.Add(ltDistrict);
            ltDistrict = new ListItem("Kurnool", "2");
            ddlDistrict.Items.Add(ltDistrict);
        }
    }
    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnlState.Visible = false;
    }
}