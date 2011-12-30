<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XPathUsing.aspx.cs" Inherits="dataControls_XPathUsing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/order.xml">
        </asp:XmlDataSource>
        <asp:Repeater ID="rpXML" runat="server" DataSourceID="XmlDataSource1">
            <ItemTemplate>
                <h2>
                    Order</h2>
                <table>
                    <tr>
                        <td>
                            Customer
                        </td>
                        <td>
                            <%#XPath("customer/@id") %>>
                        </td>
                        <td>
                            <%#XPath("customer/firstn") %>>
                        </td>
                        <td>
                            <%#XPath("customer/lastn") %>>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ship To
                        </td>
                        <td>
                            <%#XPath("shipaddress/address1") %>>
                        </td>
                        <td>
                            <%#XPath("shipaddress/city") %>>
                        </td>
                        <td>
                            <%#XPath("shipaddress/state") %>>
                        </td>
                        <td>
                            <%#XPath("shipaddress/zip") %>>
                        </td>
                    </tr>
                </table>
                <h3>
                    Order Summary</h3>
                <asp:Repeater ID="rpXML2" DataSourceID="XmlDataSource1" runat="server">
                    <ItemTemplate>
                        <b>
                            <%#XPath("@dept")%>
                        </b>
                        <%#XPath(".") %><br />
                    </ItemTemplate>
                </asp:Repeater>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
