<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertProduct.aspx.cs" Inherits="dataControls_InsertProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <h2>Insert Product</h2>
    Product Name: <asp:TextBox ID="txtPName" runat="server"></asp:TextBox><br />
    Select Supplier: 
    <asp:DropDownList ID="ddlSupplier" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="CompanyName" DataValueField="SupplierID" 
            onselectedindexchanged="ddlSupplier_SelectedIndexChanged" 
            onload="ddlSupplier_Load"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [SupplierID], [CompanyName] FROM [Suppliers]"></asp:SqlDataSource>
            <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    </div> 
    </form>
</body>
</html>
