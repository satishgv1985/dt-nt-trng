<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxClasses.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:Label ID="lblDate" runat="server"></asp:Label>
        <hr />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"  UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="lblAjaxDate" runat="server"></asp:Label>
                <br />
                <br />
                
            </ContentTemplate>
            <Triggers>
                
                <asp:AsyncPostBackTrigger ControlID="btnSubmit" />
            </Triggers>
        </asp:UpdatePanel>
         <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
          <asp:UpdatePanel ID="UpdatePanel2" runat="server"  UpdateMode="Conditional">
            <ContentTemplate>
              Panel2:  <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
            </ContentTemplate>
            <Triggers>
               
            </Triggers>
        </asp:UpdatePanel>
       
    </div>
    </form>
</body>
</html>
