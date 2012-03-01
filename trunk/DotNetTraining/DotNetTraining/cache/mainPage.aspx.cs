using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace DotNetTraining.cache
{
    public partial class mainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }

            lblCache.Text = Convert.ToString(Cache["fileDependency"]);
        }

        private string GetCachedData()
        {
            
            return Convert.ToString(Cache["name"]);
        }
    }
}