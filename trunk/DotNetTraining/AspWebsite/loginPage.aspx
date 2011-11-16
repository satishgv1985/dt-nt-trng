<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="loginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="pnlPagePanel" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                </td>
            </tr>
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
                    Gender:
                    <asp:DropDownList ID="ddlGender" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlGender_SelectedIndexChanged">
                        <asp:ListItem Text="Select One" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <asp:Panel id="pnlState" runat="server">
                    State:
                    <asp:DropDownList ID="ddlState" runat="server" 
                        onselectedindexchanged="ddlState_SelectedIndexChanged" AutoPostBack="true">
                       
                    </asp:DropDownList>
                    <br />
                    District:
                    <asp:DropDownList ID="ddlDistrict" runat="server">
                    <asp:ListItem Text="-Select State first-"></asp:ListItem>
                    </asp:DropDownList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSignIn"  runat="server" Text="SignIn" OnClick="btnSignIn_Click" />
                   
                    <asp:LinkButton ID="lbSignIn" runat="server" Text="SignIn" PostBackUrl="~/Welcome.aspx"></asp:LinkButton>
                    <asp:HyperLink ID="hlSignIn" runat="server" NavigateUrl="http://www.google.com" Text="Sign In(Hyperlink)"></asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    </form>
</body>
</html>
