<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YahooRegistrationPage.aspx.cs"
    Inherits="amit_tasks_YahooRegistrationPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="padding: 0px; margin: 0px auto; width: 600px;">
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="topTable" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="1">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="tblYahoo" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0"
                        BackColor="AliceBlue" Width="100%">
                        <asp:TableRow Width="100%">
                            <asp:TableCell>
                                <asp:Image ImageUrl="~/in.gif" ID="YahooaIcon" runat="server" />
                            </asp:TableCell>
                            <asp:TableCell>
    
                              Yahoo!
                            </asp:TableCell>
                            <asp:TableCell>
                             | Help
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0">
                        <asp:TableRow>
                            <asp:TableCell Height="20">
                        
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                          With a Yahoo! Account, get free email and other leading web<br>services.
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr />
                    <asp:Table ID="tblUserInfo" runat="server" BorderWidth="0" BorderColor="White" HorizontalAlign="Center">
                        <asp:TableRow>
                            <asp:TableCell>
                                 Name
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtFirstName" runat="server" Text="First Name" ForeColor="Gray"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtSurName" runat="server" Text="Surname or Initial" ForeColor="Gray"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                Sex
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2">
                                <asp:DropDownList ID="ddlGender" runat="server" Width="150px">
                                    <asp:ListItem Selected="True" Value="0">-Select-</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="2">Female</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                             Birthday
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtDate" runat="server" Text="Date" ForeColor="gray"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlMonth" runat="server" Width="150px">
                                    <asp:ListItem> -Select Month- </asp:ListItem>
                                    <asp:ListItem>Janaury</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>August</asp:ListItem>
                                    <asp:ListItem>Sepetmber</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell Width="50px">
                                <asp:TextBox ID="txtYear" runat="server" Text="Year" ForeColor="Gray"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                Country
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="3">
                                <asp:DropDownList ID="ddlCountry" runat="server" Width="400px">
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>Japan</asp:ListItem>
                                    <asp:ListItem>Malesiya</asp:ListItem>
                                    <asp:ListItem>Canada</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="1">India</asp:ListItem>
                                    <asp:ListItem>Pakistan</asp:ListItem>
                                    <asp:ListItem>France</asp:ListItem>
                                    <asp:ListItem>Indonesia</asp:ListItem>
                                    <asp:ListItem>Srilanka</asp:ListItem>
                                    <asp:ListItem>Germani</asp:ListItem>
                                    <asp:ListItem>Switzerland</asp:ListItem>
                                    <asp:ListItem>Turkish</asp:ListItem>
                                    <asp:ListItem>Saudi Arab</asp:ListItem>
                                    <asp:ListItem>UAE</asp:ListItem>
                                    <asp:ListItem>England</asp:ListItem>
                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                    <asp:ListItem>Hongkong</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Height="20">
                        
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4" Height="20" ForeColor="Violet">
                        Select an ID and Password
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="tblSelectId" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0">
                        <asp:TableRow>
                            <asp:TableCell>
                                    Desired Yahoo! ID and Email 
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtYahooId" runat="server"></asp:TextBox>
                                @
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlDomain" runat="server">
                                    <asp:ListItem Value="1">yahoo.in</asp:ListItem>
                                    <asp:ListItem Value="2">yahoo.com</asp:ListItem>
                                    <asp:ListItem Value="3">ymail.com</asp:ListItem>
                                    <asp:ListItem Value="4">rocketmail.com</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Button ID="btnCheck" runat="server" Text="Check" BackColor="DimGray" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                             Password 
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                weak
                                <br />
                                <asp:CheckBox ID="cbWeakPassword1" runat="server" Checked="False" />
                                <asp:CheckBox ID="cbWeakPassword2" runat="server" Checked="False" />
                                <asp:CheckBox ID="cbWeakPassword3" runat="server" Checked="False" />
                                <asp:CheckBox ID="cbWeakPassword4" runat="server" Checked="False" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4"><center>
                        Capitalization matters. Use 6 to 32 characters, <br> and don't use your name or Yahoo! ID.</center>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                        Type the password again
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Height="20px">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Height="20px" ForeColor="Violet" ColumnSpan="4">
                        In case yor forgot your id or password...
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <hr />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                        Secret Question 1
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSecretQ1" runat="server">
                        <asp:ListItem Selected="True" Value="0">- Select One -</asp:ListItem>
                        <asp:ListItem>What town you born in ?</asp:ListItem>
                        <asp:ListItem>What town was your born in ?</asp:ListItem>
                        <asp:ListItem>What is the first name of your childhood friend ?</asp:ListItem>
                        <asp:ListItem>What is your faviorte pass time ?</asp:ListItem>
                        <asp:ListItem>What was the name of your first primary school ?</asp:ListItem>
                        <asp:ListItem>- Type your question Here - </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Specify Your Question
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOwnQuestion" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Your Answer
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Security Question 2
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlSecretQ2" runat="server">
                        <asp:ListItem Selected="True" Value="0">- Select One -</asp:ListItem>
                        <asp:ListItem>What is your favourite author ?</asp:ListItem>
                        <asp:ListItem>What is your favourite cartoon character ?</asp:ListItem>
                        <asp:ListItem>What is your favourite childhood game ?</asp:ListItem>
                        <asp:ListItem>What is your all time favourite movie character ?</asp:ListItem>
                        <asp:ListItem>What is your all time favourite sport personal ?</asp:ListItem>
                        <asp:ListItem>- Type your question Here - </asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Specify Your Question
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOwnQuestion2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Your Answer
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAnswer2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Height="20px">
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <hr />
    </div>
    </form>
</body>
</html>
