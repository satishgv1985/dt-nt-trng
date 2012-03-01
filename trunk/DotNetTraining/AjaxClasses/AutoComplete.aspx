<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoComplete.aspx.cs" Inherits="AjaxClasses.AutoComplete" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="Scriptmanager1" runat="server">
        </asp:ScriptManager>
        <%--        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" ServiceMethod="GetCompletionList"
            BehaviorID="AutoCompleteCities" TargetControlID="TextBox1" MinimumPrefixLength="1" ServicePath="http://localhost:49291/AspWebsite/AutoComplete.asmx">
        </cc1:AutoCompleteExtender>
        --%>
        <asp:TextBox ID="txtFileName" runat="server" />
        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" TargetControlID="txtFileName"
            ServiceMethod="GetCompletionList" ServicePath="http://localhost:49291/AspWebsite/AutoComplete.asmx"
            MinimumPrefixLength="1" runat="server" />
    </div>
    </form>
</body>
</html>
