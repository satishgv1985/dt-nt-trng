<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="sessionLogin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
        <table>
            <tr>
                <td>
                    Username:
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSignIn" runat="server" Text="SignIn" OnClick="btnSignIn_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
