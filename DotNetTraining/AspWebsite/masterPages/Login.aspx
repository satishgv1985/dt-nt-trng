<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="masterPages_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Login Here for Our w3Schools:<asp:TextBox ID="txtLogin" runat="server"></asp:TextBox><br />

    <asp:Button ID="btnSubmit" Text="Submit" runat="server" PostBackUrl="~/masterPages/HTMLDefault.aspx" />
    </div> 
    </form>
</body>
</html>
