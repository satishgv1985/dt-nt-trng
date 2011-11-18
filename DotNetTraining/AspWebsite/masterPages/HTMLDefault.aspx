<%@ Page Title="" Language="C#" MasterPageFile="~/masterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="HTMLDefault.aspx.cs" Inherits="masterPages_Default" %>
    <%@ Register Src="~/masterPages/htmlUserControl.ascx" TagName="HTMLUserControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .style1
    {
        width: 158px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td valign="top" class="style1">
               <uc:HTMLUserControl ID="htmlUserControl" runat="server" />
            </td>
            <td width="500">
            <asp:Label ID="lblReadText" runat="server"></asp:Label>
            <asp:Label ID="lblCPdata" runat="server" Text="HTML Default CP"></asp:Label>
                html default page
                <asp:Label ID="lblViewState" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
