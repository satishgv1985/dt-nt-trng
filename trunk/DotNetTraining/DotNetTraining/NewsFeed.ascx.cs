using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetTraining
{



    public partial class NewsFeed : System.Web.UI.UserControl
    {
        public string feedUrl = "http://news.google.com/news?ned=us&topic=h&output=rss";
        public string feedNumber = "10";
        public string errMessage = "Error Occured while Fetching Feeds!";
      
        public string feed { set { feedUrl = value; } }
        public string NumberOfFeeds { set { feedNumber = value; } }
        public string ErrorMessage { set { errMessage = value; } }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }


}