<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YahooLoginPage.aspx.cs" Inherits="YahooLoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="silver" style="border:1px solid gray;">
        <tr >
            <td style="width:"90%">
                <asp:Image runat="server" AlternateText="YahooImage"/>
            </td>
            <td align="right">
                Yahoo 
            </td>
            <td align="right"  >
            |
            </td>
            <td>
                Help
            </td>
        </tr>
    </table>
   
    <table  cellpadding="0" cellspacing="0" border="1"  width ="100%"style="border: 1px solid balck;">
        <tr>
            <td>
                <table >
                    <tr>
                        <td colspan="3">
                            With a Yahoo Account,get free email and other leading web Services
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" width:"100%">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name:
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtIntial" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Sex:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSex" runat="server">
                                <asp:ListItem>- Select One -</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Birthday:
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMonth" runat="server">
                                <asp:ListItem>- Select One -</asp:ListItem>
                                <asp:ListItem>Janurary</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>Octomber</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Country:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCountry" runat="server">
                                <asp:ListItem>- Select Country -</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>America</asp:ListItem>
                                <asp:ListItem>pakistan</asp:ListItem>
                                <asp:ListItem>Bangladesh</asp:ListItem>
                                <asp:ListItem>Newzeland</asp:ListItem>
                                <asp:ListItem>SouthAfrica</asp:ListItem>
                                <asp:ListItem>England</asp:ListItem>
                                <asp:ListItem>WestIndies</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    </table>
                <table class="ID">
                    <tr>
                        <td colspan="3" align="left">
                            Select an ID and Password
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Desired Yahoo ID and Email
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>@
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMail" runat="server">
                                <asp:ListItem>Yahoo.in</asp:ListItem>
                                <asp:ListItem>Gmail.com</asp:ListItem>
                                <asp:ListItem>HotMail.com</asp:ListItem>
                                <asp:ListItem>MSN</asp:ListItem>
                                <asp:ListItem>Skype</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btnCheck" runat="server" Text="Check" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            Password Strength
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Type the password again
                        </td>
                        <td>
                            <asp:TextBox ID="txtRetypePassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
                <table class="ForgetPassword">
                    <tr>
                        <td colspan="2">
                            In case you forget your Password
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Secret Question 1
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSecretQuestion1" runat="server">
                                <asp:ListItem>- Select One -</asp:ListItem>
                                <asp:ListItem>Your First School Name</asp:ListItem>
                                <asp:ListItem>Your First English Teacher</asp:ListItem>
                                <asp:ListItem>Your First Principal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Your Answer
                        </td>
                        <td>
                            <asp:TextBox ID="txtYourAnswer" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Secret Question2
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlSecretQuestion2" runat="server">
                                <asp:ListItem>- Select One -</asp:ListItem>
                                <asp:ListItem>Your Mother Tongue</asp:ListItem>
                                <asp:ListItem>Your SurName</asp:ListItem>
                                <asp:ListItem>Your BestFriend Name</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Your Answer
                        </td>
                        <td>
                            <asp:TextBox ID="txtYourAnswer2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
