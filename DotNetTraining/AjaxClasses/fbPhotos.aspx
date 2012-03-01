<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fbPhotos.aspx.cs" Inherits="AjaxClasses.fbPhotos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .divImage
        {
            border: 1px solid gray;
        }
        .divImage:hover
        {
            border: 1px solid red;
        }
        .bgClass
        {
            background-color: Gray;
            opacity: 0.7;
        }
    </style>
    <script type="text/javascript">
        function pageLoad(sender, args) {
            $addHandler(document, "keydown", OnKeyPress);
        }
        function OnKeyPress(args) {
            
            if (args.keyCode == Sys.UI.Key.esc) {
                $find("ModalPopupExtender1").hide();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <%--<asp:Image ID="imgPhoto" runat="server" ImageUrl="~/images/image1.jpg" Height="100"
            Width="100" />
        <div class="divImage" style="border: 1px solid gray; height: 101px; width: 101px;
            position: absolute">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/image1.jpg" Height="100"
                Width="100" />
        </div>
        <asp:Panel ID="PnlImage" runat="server" Style="display: none">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/image1.jpg" Height="100"
                Width="100" />
            <asp:Button ID="btnClose" runat="server" Text="Close" />
        </asp:Panel>
        <asp:Button ID="BtnHidden" runat="server" Text="Hidden" Style="display: none" />
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="bgClass"
            TargetControlID="BtnHidden" PopupControlID="PnlImage" BehaviorID="MPEImage" CancelControlID="btnClose">
        </cc1:ModalPopupExtender>--%>
        <br />
        <br />
        <br />
        <hr />
        <asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="~/images/image2.jpg" Height="100"
            CssClass="divImage" Width="100" />
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="bgClass"
            TargetControlID="imgbtn1" PopupControlID="panelImage">
        </cc1:ModalPopupExtender>
       <%-- <cc1:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="imgbtn1" 
            PopupControlID="panelImage" Position="Center" >
        </cc1:PopupControlExtender>--%>
        <asp:Panel ID="panelImage" runat="server">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/image2.jpg"
                Height="500" Width="500" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
