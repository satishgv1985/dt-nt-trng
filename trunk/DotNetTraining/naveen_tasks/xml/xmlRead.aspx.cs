using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace naveen_tasks.xml
{
    public partial class xmlRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/xml/students.xml"));

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (Convert.ToString(ds.Tables[0].Rows[i]["name"]) == "amit")
                {
                    ds.Tables[0].Rows[i]["id"] = 54;
                }
            }

            ds.WriteXml(Server.MapPath("~/xml/students1.xml"));
            
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}