<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Htrmldefaultusercontrol.ascx.cs"
    Inherits="Htrmldefaultusercontrol" %>
<table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:HyperLink ID="hlHtmlbasic" runat="server" Text="HtmlBasic" NavigateUrl="#"></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hlHtmldefault" runat="server" Text="HtmlDefault" NavigateUrl="#"></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hlHtmlfonts" runat="server" Text="HtmlFonts" NavigateUrl="#"></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        Body Of Html
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
