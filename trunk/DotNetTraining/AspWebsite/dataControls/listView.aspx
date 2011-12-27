<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listView.aspx.cs" Inherits="dataControls_listView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .productsList
        {
        }
        .productsList li
        {
            display: inline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="hi">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource" ItemPlaceholderID="phList">
            <LayoutTemplate>
                <ul class="productsList">
                    <asp:PlaceHolder ID="phList" runat="server"></asp:PlaceHolder>
                </ul>
            </LayoutTemplate>
            <ItemTemplate>
                <li>
                    <%# Eval("ProductName") %>
                </li>
            </ItemTemplate>
        </asp:ListView>
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="7">
            <Fields>
                <asp:NumericPagerField />
            </Fields>
        </asp:DataPager>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT TOP 10 [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued] FROM [Products]"
            DeleteCommand="DELETE FROM Products WHERE (ProductID = @productId)" UpdateCommand="UPDATE Products SET ProductName = @productName, UnitPrice = @unitPrice WHERE (ProductID = @productid)">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
