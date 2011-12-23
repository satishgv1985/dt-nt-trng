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
    <p>
        First Number:
        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Second Number:"></asp:Label>
&nbsp;<asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" 
            Text="Addition" />
&nbsp;
        <asp:Button ID="btnSub" runat="server" onclick="btnSub_Click" 
            Text="Substraction" />
&nbsp;
        <asp:Button ID="btnMul" runat="server" onclick="btnMul_Click" 
            Text="Multiplication" />
&nbsp;
        <asp:Button ID="btnDiv" runat="server" onclick="btnDiv_Click" Text="Divide" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Result: "></asp:Label>
&nbsp;<asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
    </p>
    </form>
</body>
</html>
