using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class caching_cacheKey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Cache.Remove("employee");
        Cache.Remove("userNo");
    }
}