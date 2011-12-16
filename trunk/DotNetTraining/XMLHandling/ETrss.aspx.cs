using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace XMLHandling
{
    public partial class ETrss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("http://economictimes.feedsportal.com/c/33041/f/534022/index.rss");

            XmlNode root = doc.DocumentElement;

            tblStudents.CellPadding = 3;
            tblStudents.CellSpacing = 3;
            tblStudents.BorderWidth = 2;
            
            foreach (XmlNode xn in root.ChildNodes)
            {
                TableRow tr;
                tr = new TableRow();
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