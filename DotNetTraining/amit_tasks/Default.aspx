<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="padding: 0px; margin:0px auto">
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="topTable" runat="server" BackColor="AliceBlue" BorderWidth="0" CellPadding="0"
            CellSpacing="0" BorderColor="White">
            <asp:TableRow>
                <asp:TableCell Width="100%">
    Yahoo India
                </asp:TableCell>
                <asp:TableCell>Yahoo!|</asp:TableCell>
                <asp:TableCell>Help</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Table runat="server" ID="secTable">
            <asp:TableRow>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Name
                    <asp:TextBox ID="TextBox1" Text="Fist Name" ForeColor="Gray" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
