<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        UserName:
        <asp:TextBox ID="txtUserName" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
            ErrorMessage="Please enter UserName">
        </asp:RequiredFieldValidator><br />
        Password:
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
            ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
        <br />
        Re-enterPassword:
        <asp:TextBox ID="txtReEnterPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvReEnterPassword" runat="server" ControlToValidate="txtReEnterPassword"
            ErrorMessage="Please re enter Password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPasswords" runat="server" ErrorMessage="Please check the passwords" ControlToValidate="txtPassword" ControlToCompare="txtReEnterPassword"></asp:CompareValidator>
        <br />
        Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvage" runat="server" ControlToValidate="txtAge"
            ErrorMessage="Please enter Age"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvAge" runat="server" MinimumValue="18" MaximumValue="60"
            ControlToValidate="txtAge" ErrorMessage="Please enter age between 18-60"></asp:RangeValidator>
        <br />
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" />
    </div>
    </form>
</body>
</html>
