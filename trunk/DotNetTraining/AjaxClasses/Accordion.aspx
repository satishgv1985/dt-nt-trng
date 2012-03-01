<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accordion.aspx.cs" Inherits="AjaxClasses.Accordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
        <cc1:Accordion ID="Accordion1" runat="server" Height="400px" SelectedIndex="0" ContentCssClass="accordionContent"
            HeaderCssClass="accordionHeader" FadeTransitions="true" AutoSize="Fill">
            <Panes>
                <cc1:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>
                        Pane1</Header>
                    <Content>
                        hi pane1</Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane2" runat="server">
                    <Header>
                        Pane2</Header>
                    <Content>
                        hi pane2</Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane3" runat="server">
                    <Header>
                        Pane3</Header>
                    <Content>
                        hi pane3</Content>
                </cc1:AccordionPane>
            </Panes>
        </cc1:Accordion>
        <br />
        Date:<asp:TextBox runat="server" ID="txtDate" />
        <asp:Button ID="btnImage" runat="server" Text="Cal" />
        <cc1:CalendarExtender ID="ceCal" runat="server" TargetControlID="txtDate" PopupPosition="BottomLeft"
            PopupButtonID="btnImage">
        </cc1:CalendarExtender>
    </div>
    </form>
</body>
</html>
