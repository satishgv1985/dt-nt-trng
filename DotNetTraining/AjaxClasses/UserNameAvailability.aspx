<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserNameAvailability.aspx.cs"
    Inherits="AjaxClasses.UserNameAvailability" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .progress
        {
            background-image: url(usernameImages/spinner.gif);
            background-repeat: no-repeat;
            padding-left: 20px;
        }        
        
        .taken
        {
            background-image: url(usernameImages/taken.gif);
            background-repeat: no-repeat;
            padding-left: 20px;
        }
        .available
        {
            background-image: url(usernameImages/available.gif);
            background-repeat: no-repeat;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Username:
        <asp:TextBox runat="server" ID="txtUserName" AutoPostBack="true" OnTextChanged="txtUserName_TextChanged" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="lbMessage" runat="server"></asp:Label>

                <asp:Button ID="btnError" runat="server" Text="Throw exception" 
            onclick="btnError_Click" />
            <asp:Label ID="ErrMessage" runat="server"></asp:Label>
            </ContentTemplate>
           
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="txtUserName" />
            </Triggers>


        </asp:UpdatePanel>
        <br />
        Password:
        <asp:TextBox runat="server" ID="TextBox1" AutoPostBack="true" />

        <br />
        <br />
        
        <script language="javascript" type="text/javascript">
            // Hook the InitializeRequest event.
            Sys.WebForms.PageRequestManager.getInstance().add_initializeRequest(InitializeRequest);

            var manager = Sys.WebForms.PageRequestManager.getInstance();
            manager.add_endRequest(endRequest);

            function InitializeRequest(sender, args) {
                // Change div's CSS class and text content.
                $get('lbMessage').className = 'progress';
                $get('lbMessage').innerHTML = 'Checking availability...';

            }


            function endRequest(sender, args) {
                $get("ErrMessage").innerHTML = args.get_error().message;
                args.set_errorHandled(true);
            }

        </script>
    </div>
    </form>
</body>
</html>
