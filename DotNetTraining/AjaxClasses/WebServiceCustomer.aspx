<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebServiceCustomer.aspx.cs" Inherits="AjaxClasses.WebServiceCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   Enter id: <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
   <br />
   <br />
   <asp:Button ID="btnGetName" runat="server" Text="Get Name" 
            onclick="btnGetName_Click" />

            <asp:Label ID="lblName" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
