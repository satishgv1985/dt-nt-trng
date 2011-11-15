<%@ Page Title="" Language="C#" MasterPageFile="~/W3Schools.master" AutoEventWireup="true"
    CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="1" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="50%">
                <asp:HyperLink ID="hlHome" runat="server" Text="HOME" NavigateUrl="~/Home.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlHtml" runat="server" Text="HTML" NavigateUrl="~/Html.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlcss" runat="server" Text="CSS" NavigateUrl="~/css.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlxml" runat="server" Text="XML" NavigateUrl="~/XML.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hljavascript" runat="server" Text="JAVASCRIPT" NavigateUrl="~/Javascript.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlAsp" runat="server" Text="ASP" NavigateUrl="~/Asp.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlPhp" runat="server" Text="PHP" NavigateUrl="~/Php.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlSql" runat="server" Text="SQL" NavigateUrl="~/Sql.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlMore" runat="server" Text="MORE...." NavigateUrl="~/More.aspx"></asp:HyperLink>
            </td>
            <td align="right" colspan="2">
                <asp:HyperLink ID="hlReference" runat="server" Text="REFERENCE" NavigateUrl="~/References.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlExample" runat="server" Text="EXAMPLE" NavigateUrl="~/Examples.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlForum" runat="server" Text="FORUM" NavigateUrl="~/Forum.aspx"></asp:HyperLink>
                <asp:HyperLink ID="hlAbout" runat="server" Text="ABOUT" NavigateUrl="~/Abt.aspx"></asp:HyperLink>
            </td>
        </tr>

        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="30%" style="margin-right: 80px">
                    <tr>
                        <td>
                            <span style="color: Green">HTML</span> <span>BASIC</span>
                            <br />
                            HTML INTRODUCTION
                            <br />
                            HTML GETSTARTED
                            <br />
                            HTML BASIC
                            <br />
                            HTML ELEMENTS
                            <br />
                            HTML ATTRIBUTES
                            <br />
                            HTML HEADINGS
                            <br />
                            HTML PARAGRAPHS
                            <br />
                            HTML FORMATING
                            <br />
                            HTML FONTS
                            <br />
                            HTML STYLES
                            <br />
                            HTML LINKS
                            <br />
                            HTML IMAGES
                            <br />
                            HTML LISTS
                            <br />
                            HTML FORMS
                            <br />
                            HTML FRAMES
                            <br />
                            HTML IFRAMES
                            <br />
                            HTML COLORS
                            <br />
                            HTML COLOMAMES
                            <br />
                            HTML COLORVALUES
                            <br />
                            HTML QUICKLIST
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            This Is the Middle Row
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table>
                    <tr>
                        <td>
                            This Column
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
