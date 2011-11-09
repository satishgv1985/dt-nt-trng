<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YAHOOASP.NET._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Name:
                    <asp:TextBox ID="Name" Text="First Name" ForeColor="Gray" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtuserName" Text="Last Name" ForeColor="Gray" runat="server"></asp:TextBox>
                </td>
                <tr>
                    <td>
                        Gender:<asp:DropDownList ID="gddl" runat="server">
                            <asp:ListItem>- Select One -</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Birthday:
                        <asp:DropDownList ID="bddl1" runat="server">
                            <asp:ListItem>- Select Month -</asp:ListItem>
                            <asp:ListItem>Jan</asp:ListItem>
                            <asp:ListItem>feb</asp:ListItem>
                            <asp:ListItem>Mar</asp:ListItem>
                            <asp:ListItem>Apr</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>Aug</asp:ListItem>
                            <asp:ListItem>Sep</asp:ListItem>
                            <asp:ListItem>Oct</asp:ListItem>
                            <asp:ListItem>Nov</asp:ListItem>
                            <asp:ListItem>Dec</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="Dtxt" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="ytxt" runat="server"></asp:TextBox>
                    </td>
        </table>
        Select an Id and Password
        <hr />
        <table>
            <tr>
                <td>
                    Yahoo!Id and Password<asp:TextBox ID="idtxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    @<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem> Yahoo</asp:ListItem>
                        <asp:ListItem>Gmail</asp:ListItem>
                        <asp:ListItem>Hotmail</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="ckbtn" runat="server" Text="Check" />
                </td>
                <tr>
                    <td>
                        Password<asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox>Password Strength
                    </td>
                </tr>
                <tr>
                    <td>
                        Re-type Password<asp:TextBox ID="rpwdtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
        </table>
        <hr />
        <table>
            In Case you forget your Id or password
            <tr>
                <td>
                    Alternate Email(optional<asp:TextBox ID="aetxt" runat="server"></asp:TextBox>
                </td>
                <td>
                    Secret Question1<asp:DropDownList ID="sqddl" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    Secret Question2<asp:DropDownList ID="saddl" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    Your Answer<asp:TextBox ID="uatxt" runat="server"></asp:TextBox>
                </td>
        </table>
        <hr />
        <table>
            <tr>
                <td>
                    <asp:Button ID="cmabtn" runat="server" Text="Create My Account" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
