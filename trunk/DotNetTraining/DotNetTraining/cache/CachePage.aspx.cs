using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace DotNetTraining.cache
{
    public partial class CachePage : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
                CacheDependency cdFile = new CacheDependency(Server.MapPath("~/cache/error.xml"));

            Cache.Insert("fileDependency", "old ERRORS", cdFile);

            Cache.Insert("name", "satish", null, DateTime.Now.AddDays(1), Cache.NoSlidingExpiration);
          

        }
        protected void itemRemoved(string key, object val,
                              CacheItemRemovedReason reason)
        {
            if(reason==CacheItemRemovedReason.Expired)
                AddItemsToCache();
        }

        private void AddItemsToCache()
        {
            
            CacheItemRemovedCallback circbOnItemRemoved = new CacheItemRemovedCallback(itemRemoved);

            Cache.Insert("name", "satish", null, Cache.NoAbsoluteExpiration, Cache.NoSlidingExpiration,CacheItemPriority.High,circbOnItemRemoved);
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            
        }
    }
}