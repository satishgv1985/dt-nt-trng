using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class dataControls_dataControlsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet dsStudents = new DataSet();
        DataTable dtStudents = new DataTable();
        dsStudents.Tables.Add(dtStudents);

        DataColumn dcRollNo = new DataColumn("rollNo");
        DataColumn dcName = new DataColumn("name");
        DataColumn dcMarks = new DataColumn("marks");
        dtStudents.Columns.Add(dcRollNo);
        dtStudents.Columns.Add(dcName);
        dtStudents.Columns.Add(dcMarks);

        DataRow dr = dtStudents.NewRow();
        dr["rollNo"] = "A1";
        dr["name"] = "Amit";
        dr["marks"] = "90";
        dtStudents.Rows.Add(dr);

        dr = dtStudents.NewRow();
        dr["rollNo"] = "A2";
        dr["name"] = "Buddha";
        dr["marks"] = "35";
        dtStudents.Rows.Add(dr);
        
        dsStudents.AcceptChanges();

        gvStudents.DataSource = dsStudents.Tables[0];
        gvStudents.DataBind();

        //lvStudents.DataSource = dsStudents.Tables[0];
        //lvStudents.DataBind();

        //rpStudents.DataSource = dsStudents.Tables[0];
        //rpStudents.DataBind();
    }
}