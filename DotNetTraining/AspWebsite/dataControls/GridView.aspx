<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="dataControls_GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SupplierID"
            DataSourceID="SqlDataSource" AllowPaging="true" AllowSorting="true" EnableModelValidation="True"
            OnRowCreated="GridView1_RowCreated" ondatabound="GridView1_DataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onsorted="GridView1_Sorted">
            <SelectedRowStyle BackColor="Green" />
            <Columns>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ShowSelectButton="true" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" InsertVisible="False"
                    ReadOnly="True" SortExpression="SupplierID" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <%# Eval("CompanyName")%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="CompanyName" runat="server" Text='<%#Bind("CompanyName")%>'></asp:TextBox><br />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [SupplierID], [CompanyName], [ContactName], [ContactTitle], [Country], [Phone] FROM [Suppliers]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT ShipperID, CompanyName, Phone FROM Shippers WHERE (ShipperID = @shipperID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="shipperID" PropertyName="SelectedDataKey.Values['SupplierID']" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true" DataSourceID="SqlDataSource1" DataKeyNames="ShipperID">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
