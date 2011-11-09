<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jsYahooRegistration.aspx.cs"
    Inherits="google_login_page.jsYahooRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <link href="yahooStyles.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" style="border-style: solid; border-width: 1px; border-color: Green;"
        cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table style="background-image: url('images/tableBGimage.png')" border="0" width="100%"
                    cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <a href="http://www.yahoo.com">
                                <img src="images/yahoo.gif" alt="Yahoo logo" />
                            </a>
                        </td>
                        <td width="50">
                            <a href="http://www.google.com">Yahoo!</a>
                        </td>
                        <td width="40">
                            | <a href="http://www.helpyahoo.com">Help</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="1" width="100%">
                    <tr>
                        <td style="font-size: 22px;">
                            With a Yahoo! Account, get free email and other leading web services.
                            <hr />
                        </td>
                        <td>
                            Sign in with an ID you already have
                        </td>
                    </tr>
                    <tr>
                        <td>Name <input type="text" value="First Name" /> <input type="text" />
                        </td>
                       
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
