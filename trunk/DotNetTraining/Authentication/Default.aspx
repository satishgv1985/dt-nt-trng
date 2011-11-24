<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Authentication.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
this is home page
 <br />
    <asp:HyperLink ID="hlAdmin" runat="server" NavigateUrl="~/admin/adminPage.aspx" Text="Admin"></asp:HyperLink>
    <br />
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user/userPage.aspx" Text="User"></asp:HyperLink>
    <br />
</asp:Content>
