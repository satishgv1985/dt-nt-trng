<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validatePage() {


            var tableBody = document.getElementById('cblDepartment').childNodes[0];

            for (var i = 0; i < tableBody.childNodes.length; i++) {
                var currentTd = tableBody.childNodes[i].childNodes[0];
                var listControl = currentTd.childNodes[0];

                if (listControl.checked)
                    return true;

            }
            document.getElementById('lblError').innerHTML = '<b> error. Please select a department</b>';
            return false;
        }

        function validate_Department(source, args) {
            var tableBody = document.getElementById('cblDepartment').childNodes[0];

            for (var i = 0; i < tableBody.childNodes.length; i++) {
                var currentTd = tableBody.childNodes[i].childNodes[0];
                var listControl = currentTd.childNodes[0];

                if (listControl.checked)
                    args.isValid = true;
            }
            args.isValid = false;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server" submitdisabledcontrols="true">
    <div>
        <asp:ValidationSummary ID="vsAllErrors" runat="server" DisplayMode="BulletList" HeaderText="Please correct the errors" />
        <br />
        UserName:
        <asp:TextBox ID="txtUserName" runat="server" Text="User Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
            ErrorMessage="Please enter UserName" InitialValue="User Name" ForeColor="Green"
            SetFocusOnError="true">
        </asp:RequiredFieldValidator>
        <br />
        Password:
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
            ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
        <br />
        Re-enterPassword:
        <asp:TextBox ID="txtReEnterPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvReEnterPassword" runat="server" ControlToValidate="txtReEnterPassword"
            ErrorMessage="Please re enter Password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPasswords" runat="server" ErrorMessage="Please check the passwords"
            ControlToValidate="txtPassword" ControlToCompare="txtReEnterPassword"></asp:CompareValidator>
        <br />
        Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvage" runat="server" ControlToValidate="txtAge"
            ErrorMessage="Please enter Age"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvAge" runat="server" MinimumValue="18" MaximumValue="60"
            ControlToValidate="txtAge" ErrorMessage="Please enter age between 18-60"></asp:RangeValidator>
        <br />
        Gender:
        <asp:DropDownList ID="ddlGender" runat="server">
            <asp:ListItem Text="-Select One-" Selected="True" Value="0"></asp:ListItem>
            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender"
            ErrorMessage="Please select Gender" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        Department:
        <asp:CheckBoxList ID="cblDepartment" runat="server">
            <asp:ListItem Text="CSE"></asp:ListItem>
            <asp:ListItem Text="ECE"></asp:ListItem>
            <asp:ListItem Text="IT"></asp:ListItem>
        </asp:CheckBoxList>
        <asp:CustomValidator ID="cvDepartment" runat="server" OnServerValidate="Department_ServerValidate"
            ErrorMessage="Please select atleast one Department" ></asp:CustomValidator>
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
        Mobile Number:<asp:TextBox ID="txtMobileNumber" runat="server" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" ControlToValidate="txtMobileNumber"
            ErrorMessage="Please enter Mobile Number"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="txtMobileNumber"
            ErrorMessage="Please enter 10digit numbers" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
        <br />
        Email ID:
        <asp:TextBox ID="txtEmailID" runat="server" MaxLength="20"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revEmailID" runat="server" ControlToValidate="txtEmailID"
            ErrorMessage="Please enter valid email id." ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" />
    </div>
    </form>
</body>
</html>
