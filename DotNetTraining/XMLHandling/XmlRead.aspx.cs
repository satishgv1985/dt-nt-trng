using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace XMLHandling
{
    public partial class XmlRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/students.xml"));

            XmlElement root = doc.DocumentElement;

            XmlNode student = root.FirstChild.FirstChild;
            string name = student.InnerText;
            lblName.Text = name;

            XmlNode secondStudentName = root.FirstChild.LastChild;
            lblSecondName.Text = secondStudentName.InnerText;

            Response.Write(root.FirstChild.Attributes["class"].Value);

            tblStudents.CellPadding = 3;
            tblStudents.CellSpacing = 3;
            tblStudents.BorderWidth = 2;
            
            foreach (XmlNode xn in root.ChildNodes)
            {
                TableRow tr;
                tr = new TableRow();
                TableCell tcAtb= new TableCell();
                tcAtb.Text = xn.Attributes["class"].Value;
                tr.Cells.Add(tcAtb);
                foreach (XmlNode cnXN in xn.ChildNodes)
                {                   
                    TableCell tc = new TableCell();
                    string str = cnXN.InnerText;
                    tc.Text = str;
                    tr.Cells.Add(tc);
                }
                tblStudents.Rows.Add(tr);
            }

        }
    }
}