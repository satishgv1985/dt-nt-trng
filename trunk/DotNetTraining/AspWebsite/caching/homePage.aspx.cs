using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;
using System.Xml;

public partial class caching_homePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Simple Cache
        //Cache["name"] = "satish";
        //Cache.Remove("name");

        //File Based Dependency Cache
        //CacheDependency cdFileBased = new CacheDependency(Server.MapPath("users.xml"));
        //Cache.Insert("name", "satish", cdFileBased);

        //time Based dependency -- absolute expiration
        //Cache.Insert("name", "satish", null, DateTime.Now.AddSeconds(10), Cache.NoSlidingExpiration);

        //time based dependency -- sliding expiration
        //Cache.Insert("name", "satish", null, Cache.NoAbsoluteExpiration, TimeSpan.FromSeconds(15));
     
        //key based dependency
        Cache["employee"] = "1";
        //Create the array of cache key item names
        string[] keys = new String[1];
        keys[0] = "employee";
        CacheDependency cdKey = new CacheDependency(null,keys);
        CacheItemRemovedCallback circbEmployeeRemoved = new CacheItemRemovedCallback(employeeRemoved);
        Cache.Insert("name", "satish",cdKey,Cache.NoAbsoluteExpiration,Cache.NoSlidingExpiration,CacheItemPriority.Default,circbEmployeeRemoved);
        

    }

    protected void employeeRemoved(string str,object value, CacheItemRemovedReason reason)
    {
        if(reason==CacheItemRemovedReason.DependencyChanged)
        Cache["RemovedEmpoyees"] = value;
    }
}