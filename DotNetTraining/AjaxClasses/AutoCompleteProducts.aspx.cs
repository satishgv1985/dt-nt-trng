using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace AjaxClasses
{
    public partial class AutoCompleteProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //[System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        //public static string[] GetProducts(string prefixText, int count)
        //{
        //    //write logic of all products
        //    string[] prods = { "PName1", "PName2", "PName3", "PuName" };

        //    return prods.ToArray();

        //    //return (from m in prods where m.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();

        //    //int i = 1;
        //    //List<string> lRetVals;
        //    //foreach (string p in prods)
        //    //{
        //    //    if (p.StartsWith(prefixText))
        //    //    { 
        //    //        lRetVals.Add(p);
        //    //        i++;
        //    //        if (i == count)
        //    //            break;
        //    //    }
        //    //}

        //    //return lRetVals.ToArray();
        //}
    }
}