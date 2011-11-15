<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterPages/MasterPage.master"
    CodeFile="html_getStarted.aspx.cs" Inherits="masterPages_html_getStarted" %>
    <%@ Register Src="~/masterPages/htmlUserControl.ascx" TagName="htmlUserControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="htmlGetStarted" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <uc:htmlUserControl ID="htmlUserControl" runat="server" />
            </td>
            <td>
                Main content of Get Started
            </td>
        </tr>
    </table>
</asp:Content>
