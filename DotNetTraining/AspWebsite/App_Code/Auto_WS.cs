using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class WS : System.Web.Services.WebService
{

    [WebMethod]
    public string[] GetSuggestions(string prefixText, int count)
    {
        string[] movies = { "Star Wars", "Star Trek", "Superman", "Memento", "Shrek", "Shrek II" };

        // Return matching movies  
        return (from m in movies where m.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();
    }
}