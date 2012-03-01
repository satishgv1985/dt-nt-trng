<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Animation.aspx.cs" Inherits="AjaxClasses.Animation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    <Scripts>
        <asp:ScriptReference Path="animation.js" />
    </Scripts>
</asp:ScriptManager>


<asp:UpdatePanel runat="server" ID="UpdatePanel1">
    <ContentTemplate>
        <asp:Label runat="server" ID="Label1" />
        hi
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="button1" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>
<asp:Button runat="server" ID="Button1" Text="Start task"
     OnClick="Button1_Click" />
    


<script type="text/javascript">
    var postbackElement;
    var animation;

    function pageLoad() {
        var manager = Sys.WebForms.PageRequestManager.getInstance();
        manager.add_beginRequest(OnBeginRequest);
        manager.add_pageLoaded(OnPageLoaded);
    }

    function OnBeginRequest(sender, args) {
        postbackElement = args.get_postBackElement();
    }

    function OnPageLoaded(sender, args) {
        animation = new IntroAjax.BorderAnimation('red', '5px', 2000);

        var updatedPanels = args.get_panelsUpdated();
        if (typeof (postbackElement) === "undefined")
            return;
        else if (postbackElement.id.toLowerCase().indexOf('button1') > -1) {
            for (i = 0; i < updatedPanels.length; i++)
                animation.animatePanel(updatedPanels[i]);
        }
    }
</script>

    
    </div>
    </form>
</body>
</html>
