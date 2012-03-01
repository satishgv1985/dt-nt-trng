<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGrid.aspx.cs" Inherits="DataGrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SupplierID"
            DataSourceID="SqlDataSource" AllowPaging="true" AllowSorting="true" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" InsertVisible="False"
                    ReadOnly="True" SortExpression="SupplierID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [SupplierID], [CompanyName], [ContactName], [ContactTitle], [Country], [Phone] FROM [Suppliers]">
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
            DataTextField="CompanyName" DataValueField="SupplierID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [SupplierID], [CompanyName] FROM [Suppliers] order by SupplierID">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ShipName], [ShipAddress] FROM [Invoices]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" EnableModelValidation="True">
            <LayoutTemplate>
                <h3>
                    Product Listing</h3>
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemSeparatorTemplate>
                <hr />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <%#Eval("ShipName")%>
                with
                <%#Eval("ShipAddress")%>.
            </ItemTemplate>
        </asp:ListView>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <%#Eval("ShipName")%></ItemTemplate>
        </asp:Repeater>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <%#Eval("ShipName")%></ItemTemplate>
        </asp:DataList>
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="ProductID" 
        DataSourceID="SqlDataSource3DV" EnableModelValidation="True" AllowPaging="true" AutoGenerateEditButton="true">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                SortExpression="SupplierID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                SortExpression="UnitsOnOrder" />
            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                SortExpression="ReorderLevel" />
            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
                SortExpression="Discontinued" />
        </Fields>
        
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3DV" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="ProductID" DataSourceID="SqlDataSource3DV" 
        EnableModelValidation="True" GridLines="Both">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" 
                Text='<%# Bind("ProductName") %>' />
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                Text='<%# Bind("CategoryID") %>' />
            <br />
            QuantityPerUnit:
            <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            UnitPrice:
            <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                Text='<%# Bind("UnitPrice") %>' />
            <br />
            UnitsInStock:
            <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                Text='<%# Bind("UnitsInStock") %>' />
            <br />
            UnitsOnOrder:
            <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            ReorderLevel:
            <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                Text='<%# Bind("ReorderLevel") %>' />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                Checked='<%# Bind("Discontinued") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" 
                Text='<%# Bind("ProductName") %>' />
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                Text='<%# Bind("CategoryID") %>' />
            <br />
            QuantityPerUnit:
            <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            UnitPrice:
            <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                Text='<%# Bind("UnitPrice") %>' />
            <br />
            UnitsInStock:
            <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                Text='<%# Bind("UnitsInStock") %>' />
            <br />
            UnitsOnOrder:
            <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            ReorderLevel:
            <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                Text='<%# Bind("ReorderLevel") %>' />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                Checked='<%# Bind("Discontinued") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" 
                Text='<%# Bind("ProductName") %>' />
            <br />
            SupplierID:
            <asp:Label ID="SupplierIDLabel" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" 
                Text='<%# Bind("CategoryID") %>' />
            <br />
            QuantityPerUnit:
            <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            UnitPrice:
            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            UnitsInStock:
            <asp:Label ID="UnitsInStockLabel" runat="server" 
                Text='<%# Bind("UnitsInStock") %>' />
            <br />
            UnitsOnOrder:
            <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            ReorderLevel:
            <asp:Label ID="ReorderLevelLabel" runat="server" 
                Text='<%# Bind("ReorderLevel") %>' />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                Checked='<%# Bind("Discontinued") %>' Enabled="false" />
            <br />

        </ItemTemplate>
    </asp:FormView>
    </form>

</body>
</html>
