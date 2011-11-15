<%@ Page Title="" Language="C#" MasterPageFile="~/masterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="HTMLDefault.aspx.cs" Inherits="masterPages_Default" %>
    <%@ Register Src="~/masterPages/htmlUserControl.ascx" TagName="HTMLUserControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td valign="top">
               <uc:HTMLUserControl ID="htmlUserControl" runat="server" />
            </td>
            <td width="500">
                html default page
            </td>
        </tr>
    </table>
</asp:Content>
