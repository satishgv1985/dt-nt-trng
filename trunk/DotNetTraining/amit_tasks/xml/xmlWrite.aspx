﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xmlWrite.aspx.cs" Inherits="xml_xmlWrite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
    </div>
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
    
    </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
