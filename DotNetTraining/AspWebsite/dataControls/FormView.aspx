<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormView.aspx.cs" Inherits="dataControls_FormView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
    <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
        <asp:FormView ID="FormView1" runat="server" DefaultMode="Edit" 
            DataSourceID="SqlDataSource" DataKeyNames="ProductID"
            AllowPaging="true" onload="FormView1_Load">
            <ItemTemplate>
                Product ID:
                <%#Eval("ProductID")%><br />
                Product Name:
                <%#Eval("ProductName")%><br />
                UnitPrice:
                <%#Eval("UnitPrice")%><br />
                <asp:LinkButton ID="lblNew" runat="server" CommandName="Insert" Text="New"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
            <EditItemTemplate>
                Product ID:
                <%#Eval("ProductID")%><br />
                Product Name:
                <asp:TextBox ID="ProductName" runat="server" Text='<%#Bind("ProductName")%>'></asp:TextBox><br />
                UnitPrice:
                <asp:TextBox ID="UnitPrice" runat="server" Text='<%#Bind("UnitPrice")%>'></asp:TextBox><br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update" Text="Update"
                    CausesValidation="false"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false"></asp:LinkButton>
            </EditItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT TOP 10 [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued] FROM [Products]"
            DeleteCommand="DELETE FROM Products WHERE (ProductID = @productId)" 
            UpdateCommand="UPDATE Products SET [ProductName] = @productName, [UnitPrice] = @unitPrice WHERE (ProductID = @productid)"
            UpdateCommandType="Text" DeleteCommandType="Text" 
            onupdated="SqlDataSource_Updated">
            <UpdateParameters>
                <asp:Parameter Name="productName" DbType="String" />
                <asp:Parameter Name="unitPrice" DbType="Decimal" />
                <asp:Parameter Name="productid" DbType="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="productid" DbType="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
