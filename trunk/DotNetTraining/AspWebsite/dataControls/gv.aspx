<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gv.aspx.cs" Inherits="dataControls_gv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID,SupplierID"
            DataSourceID="SqlDataSource" PageSize="8" AllowPaging="true" AllowSorting="true"
            EnableModelValidation="True" OnPageIndexChanged="gvProducts_PageIndexChanged"
            OnDataBound="gvProducts_DataBound" OnRowCreated="gvProducts_RowCreated" OnSelectedIndexChanged="gvProducts_SelectedIndexChanged"
            OnSorted="gvProducts_Sorted">
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" ReadOnly="true"
                    SortExpression="QuantityPerUnit" />
                <asp:TemplateField>
                    <HeaderTemplate>
                        <b>UP</b>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("UnitPrice")%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <%#Eval("UnitPrice")%>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <b>Discontinued</b>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("Discontinued")%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkDisc" runat="server" Checked='<%#Eval("Discontinued")%>' />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="true" ShowEditButton="true" EditText="modify" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT top 20 [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [Discontinued] FROM [Products]">
        </asp:SqlDataSource>
        <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="OrderID,ProductID" DataSourceID="SqlDataSourceOrderDetails" 
            EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                    SortExpression="OrderID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                    SortExpression="ProductID" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" 
                    SortExpression="Discount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceOrderDetails" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT OrderID, ProductID, UnitPrice, Quantity, Discount FROM [Order Details] WHERE (ProductID = @ProductID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvProducts" Name="ProductID" 
                    PropertyName="SelectedDataKey.Values['ProductID']" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:HiddenField ID="hdnSupId" runat="server" />
        <asp:SqlDataSource ID="SqlDataSourceSupplier" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [SupplierID], [CompanyName], [ContactName] FROM [Suppliers] WHERE ([SupplierID] = @SupplierID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="hdnSupId" Name="SupplierID" 
                    PropertyName="Value" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SupplierID" DataSourceID="SqlDataSourceSupplier" 
            EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="SupplierID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
            </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
