<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASPNetTags.aspx.cs" Inherits="ASPNetTags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:BulletedList ID="blDepartment" runat="server" BulletStyle="Numbered">
            <asp:ListItem Text="CSE"></asp:ListItem>
            <asp:ListItem Text="IT"></asp:ListItem>
        </asp:BulletedList>
        <asp:CheckBox ID="cbMale" runat="server" Text="Male" />
        
        <asp:HyperLink ID="hlClickHere"  NavigateUrl="~/Default.aspx"
            runat="server">Click Here</asp:HyperLink>

        <asp:ImageButton ID="ibCreateMyAccount" ImageUrl="~/googleIndia.png"  runat="server" />   

        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Click Here</asp:LinkButton>
    </div>   
    </form>
</body>
</html>
