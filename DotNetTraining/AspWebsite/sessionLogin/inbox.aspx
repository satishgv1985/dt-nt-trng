﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="sessionLogin_inbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hi <asp:Label ID="lblName" runat="server"></asp:Label> <br />
    You have 10 mails

     <br />
    <br />
    <asp:LinkButton ID="lbLogout" runat="server" Text="Log Out" 
            onclick="lbLogout_Click"></asp:LinkButton>
    </div>
    </form>
</body>
</html>
