<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XMLDatasourceDemo.aspx.cs"
    Inherits="dataControls_XMLDatasourceDemo" %>

<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/bookstore.xml">
        </asp:XmlDataSource>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/bookstore.xml"
            XPath="bookstore/book/comments/userComment"></asp:XmlDataSource>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1"
        EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" DataSourceID="XmlDataSource2" EnableModelValidation="True"
        AutoGenerateColumns="true">
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/dataControls/students.xml"
        XPath="/students/student"></asp:XmlDataSource>
    <asp:Repeater ID="rptData" runat="server" DataSourceID="XmlDataSource3">
        <ItemTemplate>
            <%#XPath("@id") %><br />
            <%#XPath("rollno") %><br />
            <%#XPath("name") %><br />
            <%#XPath("marks") %>
            <asp:Repeater ID="innerRep" runat="server" DataSource='<%# XPathSelect("/students/student/subjects") %>'>
                <ItemTemplate>
                    <%#XPath("science") %><br />
                    <%#XPath("maths") %><br />
                </ItemTemplate>
            </asp:Repeater>
        </ItemTemplate>
    </asp:Repeater>
    <asp:TreeView ID="tvStudent" runat="server" DataSourceID="XmlDataSource3">
    </asp:TreeView>
 
    
    </form>
</body>
</html>
