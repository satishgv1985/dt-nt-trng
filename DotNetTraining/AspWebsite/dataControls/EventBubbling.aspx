<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventBubbling.aspx.cs" Inherits="dataControls_EventBubbling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID"
            DataSourceID="SqlDataSource" PageSize="8" AllowPaging="true" AllowSorting="true"
            EnableModelValidation="True" OnRowEditing="gvProducts_RowEditing" 
            OnRowCommand="gvProducts_RowCommand" ondatabound="gvProducts_DataBound">
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:TemplateField>
                    <HeaderTemplate>
                        Supplier Name
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Eval("CompanyName")%>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlSupplier" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName"
                            DataValueField="SupplierID" OnSelectedIndexChanged="ddlSupplier_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:HiddenField ID="hdnSupID" runat="server"  Value='<%#Eval("SupplierID")%>' />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                            SelectCommand="SELECT [SupplierID], [CompanyName] FROM [Suppliers]"></asp:SqlDataSource>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="true" ShowEditButton="true" EditText="modify" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnClick" runat="server" CommandName="ButtonClick" Text="Success"
                            CommandArgument=' <%#Eval("ProductID")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT Top 20 [ProductID] ,[ProductName],[CompanyName],[SupplierID] FROM [vw_ProductSuppliers]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
