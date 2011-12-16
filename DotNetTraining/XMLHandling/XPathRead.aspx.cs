using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace XMLHandling
{
    public partial class XPathRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/students.xml"));

            XmlNode xnRoot = doc.SelectSingleNode("students");

            XmlNodeList xnlStudents = doc.SelectNodes("students/student");

            string str = doc.SelectSingleNode("students/student[@class]").InnerText;

            XmlNodeList xnClass8 = doc.SelectNodes("students/student[@class='8']");
        }
    }
}