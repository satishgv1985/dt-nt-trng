<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CssClass2.aspx.cs" Inherits="google_login_page.CssClass2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        a
        {
            color: Black;
            text-decoration: none;
        }
        .topLinks a:hover
        {
            color: Green;
            text-decoration: underline;
        }
        .topLinks td
        {
            color: Blue;
            width: 100px;
            background-color: Gray;
        }
        .topLinks td a
        {
            color: Red;
        }
    </style>
</head>
<body style="background-image: url('gradientfromtop.gif'); background-repeat: repeat-x">
    <form id="form1" runat="server">
    <div>
        <table border="1" class="topLinks" style="margin-bottom:30px;">
            <tr>
                <td>
                    We are on <a href="http://www.google.com">Home</a> page
                </td>
                <td>
                    <a href="http://www.google.com">Html</a>
                </td>
                <td>
                    <a href="http://www.google.com">Css</a>
                </td>
            </tr>
        </table>
      <span> normal text, some text</span>
        <table border="1" style="margin-top:10px;">
            <tr>
                <td>
                    <a href="">Basic Web Hosting</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="">Php MySQL Hosting</a>
                </td>
            </tr>
        </table>
        <span style="cursor: move;">Span text</span>
        <div style="height:50px; width:200px; border:solid 1px green; padding:10px;">this is in div tag</div>
    </div>
    </form>
</body>
</html>
