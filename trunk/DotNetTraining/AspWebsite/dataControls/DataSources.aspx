<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataSources.aspx.cs" Inherits="dataControls_DataSources" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/App_Data/Countries.xml" XPath="countries/country/text"></asp:XmlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="XmlDataSource1" EnableModelValidation="True" 
            ForeColor="#333333" GridLines="None">
            <Columns>

            </Columns>
            
        </asp:GridView>
    </div>
    </form>
</body>
</html>
