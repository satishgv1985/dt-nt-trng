using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AjaxClasses
{
    /// <summary>
    /// Summary description for Products
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Products : System.Web.Services.WebService
    {

        [WebMethod]
        public string[] GetProducts(string prefixText, int count)
        {
            //write logic of all products
            string[] prods = { "PName1", "PName2", "PName3", "PuName" };

            return prods.ToArray();

            //return (from m in prods where m.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();

            //int i = 1;
            //List<string> lRetVals;
            //foreach (string p in prods)
            //{
            //    if (p.StartsWith(prefixText))
            //    { 
            //        lRetVals.Add(p);
            //        i++;
            //        if (i == count)
            //            break;
            //    }
            //}

            //return lRetVals.ToArray();
        }
    }
}
