<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteProducts.aspx.cs" Inherits="AjaxClasses.AutoCompleteProducts" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" >
        </asp:ScriptManager>
        <asp:TextBox ID="txtProductSearch" runat="server"></asp:TextBox>
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtProductSearch" 
            UseContextKey="True" ServiceMethod="GetProducts" MinimumPrefixLength="1" CompletionSetCount="5" ServicePath="~/Products.asmx">
        </asp:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
