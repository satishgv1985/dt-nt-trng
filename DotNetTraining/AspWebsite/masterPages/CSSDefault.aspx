<%@ Page Title="" Language="C#" MasterPageFile="~/masterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="CSSDefault.aspx.cs" Inherits="masterPages_CSSDefault" %>
    <%@ Register Src="~/masterPages/CSSUserControl.ascx" TagName="CSSUserControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
               <uc:CSSUserControl ID="cssUC" runat="server" />
            </td>
            <td>
                css default page content
            </td>
        </tr>
    </table>
</asp:Content>
