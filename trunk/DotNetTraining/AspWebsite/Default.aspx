<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        User Name:
        <asp:TextBox ID="txtUserName" Text="User Name" ForeColor="Gray" onfocus="javascript:alert('hi');" runat="server"></asp:TextBox><br />
        Password:
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" />
      <br />
     Sex: <asp:RadioButton ID="rbMale" runat="server" GroupName="Sex" Text="Male" />
     <asp:RadioButton ID="rbFemale" runat="server" GroupName="Sex" Text="Female" />
     <asp:DropDownList ID="ddlSex" runat="server" >
     <asp:ListItem Text="-Select One-" ></asp:ListItem>
     <asp:ListItem Text="Male" Selected="True"></asp:ListItem>
     <asp:ListItem Text="Female"></asp:ListItem>
     </asp:DropDownList>


    </div>
    </form>
</body>
</html>
