using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class masterPages_htmlUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //   /AspWebsite/masterPages/html_getStarted.aspx
        string fileURL = Request.RawUrl;
        string[] splitString = fileURL.Split('/');

        
        switch (splitString[3])
        {
            case "HTMLDefault.aspx":
                hlHTMLBasic.Font.Bold = true;
                break;
            case "html_getStarted.aspx":
                hlHTMLGetStarted.Font.Bold = true;
                break;
            case "html_intro.aspx":
                hlHTMLIntroduction.Font.Bold = true;
                break;
        }
    }
}