using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Text;

public partial class xml_xmlWrite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds= new DataSet();
        //DataRow dr;
        //ds.ReadXml(MapPath("~/xml/items.xml"));


        //dr = ds.Tables[0].NewRow();
        //dr["ItemID"] = "11";
        //dr["ItemName"] = "nothing";
        //ds.Tables[0].Rows.Add(dr);


        ////for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        ////{
        ////    if (ds.Tables[0].Rows[i]["ItemID"] == "1")
        ////        ds.Tables[0].Rows[i]["ItemID"] = "10";
        ////}
        //ds.WriteXml(MapPath("~/xml/items.xml"), XmlWriteMode.WriteSchema);

        DataSet ds1 = new DataSet();
        ds1.ReadXml(MapPath("~/xml/items.xml"));
        XmlDataDocument xmlDoc = new XmlDataDocument(ds1);

        xmlDoc.Save(Server.MapPath("~/xml/Attendance.xml"));



        //GridView1.DataSource = ds1.Tables[0];
        //GridView1.DataBind();


        //ListView1.DataSource = ds1.Tables[0];
        //ListView1.DataBind();
        //DataList1.DataSource = ds1.Tables[0];
        //DataList1.DataBind();


        //// Create a new XmlTextWriter instance
        //XmlTextWriter writer = new
        //     XmlTextWriter(Server.MapPath("~/xml/items.xml"),Encoding.UTF8);

        //// start writing!
        //writer.WriteStartDocument();
        //writer.WriteStartElement("userInfo");

        //writer.WriteStartElement("browserInfo");

        //if (Request.UrlReferrer == null)
        //    writer.WriteElementString("urlReferrer", "none");
        //else
        //    writer.WriteElementString("urlReferrer",
        //                     Request.UrlReferrer.PathAndQuery);

        //writer.WriteElementString("userAgent", Request.UserAgent);
        //writer.WriteElementString("userLanguages",
        //                 String.Join(", ", Request.UserLanguages));
        //writer.WriteEndElement();

        //// Creating the <visitInfo> element
        //writer.WriteStartElement("visitInfo");
        //writer.WriteAttributeString("timeVisited", DateTime.Now.ToString());
        //writer.WriteElementString("ip", Request.UserHostAddress);
        //writer.WriteElementString("rawUrl", Request.RawUrl);
        //writer.WriteEndElement();	  

        //writer.WriteEndElement();
        //writer.WriteEndDocument();
        //writer.Close(); 
    }
}