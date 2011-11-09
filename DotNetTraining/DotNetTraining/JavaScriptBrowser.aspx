<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScriptBrowser.aspx.cs"
    Inherits="google_login_page.JavaScriptBrowser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>

    <script type="text/javascript">


        document.write(navigator.appName);
      

        if (navigator.appName == 'Netscape') {
            document.write('install Opera');
        }
        document.write('<br/>');
        document.write('hiiiii');
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        body content
        <table border="1" id="firefoxInstall" style="visibility:hidden;">
            <tr>
                <td>
                    <a href="http://www.google.com">Install Firefox</a>
                </td>
                <td>
                    because it is faster
                </td>
            </tr>
            <tr>
                <td  colspan="2">
                    <a href="http://www.google.com">
                        <img src="firefox.png" /></a>
                </td>
                
            </tr>
        </table>
        
        <script type="text/javascript">

            if (navigator.appName == 'Opera') {
                document.write('install firefox');
                document.getElementById('firfoxInstall').style.visibility = 'visible';

            }
        </script>
    </div>
    </form>
</body>
</html>
