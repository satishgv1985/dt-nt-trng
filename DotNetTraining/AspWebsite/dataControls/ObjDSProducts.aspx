<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjDSProducts.aspx.cs" Inherits="dataControls_ObjDSProducts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
<%--    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                SortExpression="ProductID" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAllProducts" TypeName="ProductDAL"></asp:ObjectDataSource>--%>

        <asp:Label ID="lblPName" runat="server"></asp:Label>

    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>


    </form>
</body>
</html>
