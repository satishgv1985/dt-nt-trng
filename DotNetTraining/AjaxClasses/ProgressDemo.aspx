<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgressDemo.aspx.cs" Inherits="AjaxClasses.ProgressDemo" %>

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
           <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="100" AssociatedUpdatePanelID="UpdatePanel1" DynamicLayout="true">
        <ProgressTemplate>
        <div style="width:100px; height:30px; border:1px solid green; ">Please wait...</div>

        .....
        </ProgressTemplate>
       
        </asp:UpdateProgress>   

        <script type="text/javascript">
            function pageLoad() {
                var manager = Sys.WebForms.PageRequestManager.getInstance();
                manager.add_beginRequest(OnBeginRequest);
            }
            function OnBeginRequest(sender, args) {
                var postBackElement = args.get_postBackElement();
                if (postBackElement.id == 'btnSubmit')
                    $get('UpdateProgress1').style.display = "block";
            }

        </script>
    </div>
    </form>
</body>
</html>
