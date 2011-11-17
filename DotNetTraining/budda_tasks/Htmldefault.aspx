<%@ Page Title="" Language="C#" MasterPageFile="~/W3SchoolsMasterPage.master" AutoEventWireup="true"
    CodeFile="Htmldefault.aspx.cs" Inherits="Htmldefault" %>

<%@ Register Src="~/Htrmldefaultusercontrol.ascx" TagName="HTMLUSERCONTROL" TagPrefix="UC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterPage" runat="Server">
    <table>
        <tr>
            <td>
                <UC:HTMLUSERCONTROL ID="Htmlusercontrol" runat="server" />
            </td>
            <td style="width:987px;" >
            </td>
        </tr>
    </table>
</asp:Content>
