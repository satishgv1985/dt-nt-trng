<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" width="600" style="border: 1px solid gray;">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            Name:
                            <asp:TextBox ID="txtFirstName" Text="First Name" ForeColor="Gray" runat="server"></asp:TextBox>

                            <asp:TextBox ID="txtuserName" Text="Last Name" ForeColor="Gray" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender:<asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem>- Select One -</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Birthday:
                            <asp:DropDownList ID="ddlBirthday" runat="server">
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
                            <asp:TextBox ID="txtDate" runat="server" Width="30"></asp:TextBox>
                            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            Select an Id and Password
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Yahoo!Id and Password<asp:TextBox ID="txtYahooId" runat="server"></asp:TextBox>
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
                    </tr>
                    <tr>
                        <td colspan="3">
                            Password<asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox>Password Strength
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            Re-type Password<asp:TextBox ID="rpwdtxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            In Case you forget your Id or password
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Alternate Email(optional)<asp:TextBox ID="aetxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Secret Question1<asp:DropDownList ID="ddlQuestion1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Your Answer<asp:TextBox ID="txtYourAnswerQ1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Secret Question2<asp:DropDownList ID="ddlQuestion2" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Your Answer<asp:TextBox ID="txtYourAnswerQ2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <hr />
                            <asp:Button ID="cmabtn" runat="server" Text="Create My Account" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
