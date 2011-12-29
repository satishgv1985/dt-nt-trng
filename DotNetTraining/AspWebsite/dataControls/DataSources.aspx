<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataSources.aspx.cs" Inherits="dataControls_DataSources" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
            EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <%# GetDiscontinued(Convert.ToInt32(Eval("Discontinued")))%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:CheckBox ID="cbdiscontinued" runat="server" Checked='<%# GetDiscontinued(Convert.ToInt32(Eval("Discontinued")))%>' />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/NW.mdb"
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [QuantityPerUnit], [Discontinued] FROM [Products]">
        </asp:AccessDataSource>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" 
            StartFromCurrentNode="True" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/ASPNetTags.aspx" 
                    Text="AboutUs" Value="AboutUs" />
                <asp:TreeNodeBinding DataMember="SiteMapNode" 
                    NavigateUrl="~/dataControls/dataControlsHome.aspx" Text="DataControls" 
                    Value="DataControls" />
            </DataBindings>
        </asp:TreeView>


    </div>
    </form>
</body>
</html>
