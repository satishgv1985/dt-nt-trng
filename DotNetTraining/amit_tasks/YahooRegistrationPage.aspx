<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YahooRegistrationPage.aspx.cs"
    Inherits="amit_tasks_YahooRegistrationPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="padding: 0px; margin: 0px;">
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="tblYahoo" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="0"
            BackColor="AliceBlue" Width="100%">
            <asp:TableRow>
                <asp:TableCell Width="93%">
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
                <asp:TableCell>
                        
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                          With a Yahoo! Account, get free email and other leading web <asp:br></asp:br>services.
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <hr />
        <asp:Table ID="tblUserInfo" runat="server" BorderWidth="0"
            BorderColor="White" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    Name
                    <asp:TextBox ID="txtFirstName" runat="server" Text="First Name" ForeColor="Gray"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSurName" runat="server" Text="Surname or Initial" ForeColor="Gray"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    Select
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
                <asp:TableCell>
                    <asp:TextBox ID="txtYear" runat="server" Text="Year" ForeColor="Gray"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
            <asp:TableCell ColumnSpan="3">
            Country <asp:DropDownList ID="ddlCountry" runat="server" Width="400px">
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
        </asp:Table>
        <hr />


    </div>
    </form>
</body>
</html>
