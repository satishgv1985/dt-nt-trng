<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hiddenField.aspx.cs" Inherits="state_hiddenField" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HiddenField ID="hfName" runat="server" />
   Welcome: <asp:Label ID="lblHiddenValue" runat="server" Text="Before Hidden data store"></asp:Label>

        <asp:Button ID="btnClickHere" runat="server" onclick="btnClickHere_Click" 
            Text="Click Here" />

    </div>
    </form>
</body>
</html>
