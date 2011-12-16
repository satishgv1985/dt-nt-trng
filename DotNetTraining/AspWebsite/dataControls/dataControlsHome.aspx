<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dataControlsHome.aspx.cs" Inherits="dataControls_dataControlsHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="true">
        </asp:GridView>

        
           <%-- <asp:ListView ID="lvStudents" runat="server">
            </asp:ListView>

            <asp:Repeater ID="rpStudents" runat="server"></asp:Repeater>--%>
    </div>
    
   
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
        DataFile="~/dataControls/students.xml" XPath="students/student/">
    </asp:XmlDataSource>
&nbsp;</form>
</body>
</html>
