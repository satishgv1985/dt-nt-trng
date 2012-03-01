<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedsDisplay.aspx.cs" Inherits="DotNetTraining.FeedsDisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlSelect" runat="server">
            <asp:ListItem Text="Google News Feed" Value="http://news.google.com/news?ned=us&topic=h&output=rss"></asp:ListItem>
            <asp:ListItem Text="CNN" Value="http://news.google.com/news?ned=in&topic=n&output=rss"></asp:ListItem>
        </asp:DropDownList>
        <br />
        No of feeds:
        <asp:TextBox ID="txtItems" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        <br />
        <br />


    </div>
    </form>
</body>
</html>
