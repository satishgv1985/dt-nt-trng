<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>
<body>
//nowrap:text neednot to wrap in the next file
    <form id="form1" runat="server">
    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="toptable">
        <tr>
            <td>
                <table border="1" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            +You
                        </td>
                        <td>
                            Web
                        </td>
                        <td>
                            Images
                        </td>
                        <td>
                            Maps
                        </td>
                        <td>
                            News
                        </td>
                        <td>
                            Orkut
                        </td>
                        <td>
                            Gmail
                        </td>
                        <td>
                            More
                        </td>
                        <td width="60%">
                        </td>
                        <td align="right">
                            Sign in
                        </td>
                        <td>
                            Image
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td style="height: 100px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="30%" align="center">
                    <tr>
                        <td>
                            <asp:Image ID="imgGoogle" runat="server" ImageUrl="~/google.png" ImageAlign="AbsMiddle" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtSearch" runat="server" Width="550px" Height="35px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td style="height: 60px;">
                            <asp:Button ID="btnGooglesearch" runat="server" Text="Google Search" />
                        </td>
                        <td width="16px">
                        </td>
                        <td>
                            <asp:Button ID="btnFeelinglucky" runat="server" Text="I'm Feeling Lucky" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" align="center" width="50%">
                    <tr>
                        <td>
                            Google.co.in offered in:
                        </td>
                        <td>
                            <asp:HyperLink ID="hlHindi" runat="server" Text="Hindi" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlBengali" runat="server" Text="Bengali" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlTelugu" runat="server" Text="Telugu" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlMarati" runat="server" Text="Marati" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlTamil" runat="server" Text="Tamil" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlKanada" runat="server" Text="Kanada" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlPunjabi" runat="server" Text="Punjabi" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlMalayalam" runat="server" Text="Malayalam" NavigateUrl="#"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" style="height: 150px;">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table border="1" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <asp:HyperLink ID="hlIgoogle" runat="server" Text="iGoogle" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlCBI" runat="server" Text="Change background image" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td width="35%">
                        </td>
                        <td>
                            <asp:HyperLink ID="hlAdds" runat="server" Text="Advertising Programs" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlBusinesssltn" runat="server" Text="Business Solutions" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlPrivacy" runat="server" Text="Privacy" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlAboutgoogle" runat="server" Text="About Google" NavigateUrl="#"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hlGooglecom" runat="server" Text="Go to Google.com" NavigateUrl="#"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
