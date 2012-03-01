<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feeds.aspx.cs" Inherits="DotNetTraining.feeds" %>

<%@ Register Src="~/NewsFeed.ascx" TagName="googleNews" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc:googleNews ID="gn" runat="server" feed="http://news.google.com/news?ned=us&topic=h&output=rss"
            NumberOfFeeds="1" />
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://news.google.com/news?ned=us&amp;topic=h&amp;output=rss"
        XPath="rss/channel/item"></asp:XmlDataSource>
    
    <asp:DataList ID="DataList" runat="server" DataSourceID="XmlDataSource1">
        <ItemTemplate>
            <font face="tahoma" size="6"><strong>
                <%#XPath("title")%><br />
            </strong></font>
            <%#XPath("description")%><br />
            <font color="navy"><i>
                <%#XPath("pubDate")%><br />
            </i></font>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
