<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewState.aspx.cs" Inherits="state_viewState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
    <br />
    View State: <asp:TextBox ID="txtViewState" runat="server"></asp:TextBox>
    <br />
   Type here for Postback: <asp:TextBox ID="txtPostBack" runat="server"  AutoPostBack="true"
            ontextchanged="txtPostBack_TextChanged"></asp:TextBox>
    </div>
    <asp:Label id="lblNewValue" runat="server"></asp:Label>
    </form>
</body>
</html>
