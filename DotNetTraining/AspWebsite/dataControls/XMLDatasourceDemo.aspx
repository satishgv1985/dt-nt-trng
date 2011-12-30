<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XMLDatasourceDemo.aspx.cs"
    Inherits="dataControls_XMLDatasourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        


        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/App_Data/bookstore.xml"></asp:XmlDataSource>
        


    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="XmlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
