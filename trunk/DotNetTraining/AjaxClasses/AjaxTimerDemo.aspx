﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxTimerDemo.aspx.cs" Inherits="AjaxClasses.AjaxTimerDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
       
        <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick">
        </asp:Timer>

         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/image1.jpg" 
                 Height="300px" Width="300px" />
         </ContentTemplate>
         <Triggers>
         <asp:AsyncPostBackTrigger ControlID="Timer1" />
         </Triggers>
        </asp:UpdatePanel>

        <marquee>this is marque moving tag</marquee>
    </div>
    </form>
</body>
</html>
