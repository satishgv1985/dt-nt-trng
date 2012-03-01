<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EntityDataSourceDemo.aspx.cs" Inherits="dataControls_EntityDataSourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--<asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=NorthwindEntities" 
        DefaultContainerName="NorthwindEntities" EntitySetName="Categories" 
        Select="it.[CategoryID], it.[CategoryName], it.[Description], it.[Picture], it.[Date_Modified]">
    </asp:EntityDataSource>--%>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="EntityDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                ReadOnly="True" SortExpression="CategoryName" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                ReadOnly="True" SortExpression="Description" />
            <asp:BoundField DataField="Date_Modified" HeaderText="Date_Modified" 
                ReadOnly="True" SortExpression="Date_Modified" />
        </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
