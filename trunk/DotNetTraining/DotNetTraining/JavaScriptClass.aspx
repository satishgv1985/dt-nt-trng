<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScriptClass.aspx.cs"
    Inherits="google_login_page.JavaScriptClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>

    <script type="text/javascript">
        document.write("this is first class of javascript");
        function checkError() {
            var un = document.getElementById('userName').value;
            if (un == '')
                alert('Please enter the user name');
            else
                alert('you entered ' + un);
        }

        function add() {
            var addition1 = document.getElementById('add1').value;
            if(isNaN(addition1))
            {
                alert('Please check the first number');
                return;
            }
            if (addition1 == '') {
                alert('please enter the first number');
                return;
            }
            
            
            var addition2 = document.getElementById('add2').value;
            if (isNaN(addition2)) {
                alert('Please check the second number');
                return;
            }

            var additionAnswer = parseInt(addition1) + parseInt(addition2);
            document.getElementById('addAnswer').value = additionAnswer;
            
        }

        function subtract() {
            var subtract1 = document.getElementById('subtract1').value;
            if (isNaN(subtract1)) {
                alert('Please enter only numbers');
                return;
            }
            if (subtract1 == '') {
                alert('please enter the number');
                return;
            }
            var subtract2 = document.getElementById('subtract2').value;
            if (isNaN(subtract2)) {
                alert('Please check the error');
                return;
            }
            var subtractAnswer = parseInt(subtract1) - parseInt(subtract2);
            document.getElementById('subtractAnswer').value = subtractAnswer;
        }
        function multiplication() {
            var multiplication1 = document.getElementById('multiplication1').value;
            var multiplication2 = document.getElementById('multiplication2').value;
            var multiplicationAnswer = parseInt(multiplication1) * parseInt(multiplication2);
            document.getElementById('multiplicationAnswer').value = multiplicationAnswer;
        }
        function division() {
            var division1 = document.getElementById('division1').value;
            var division2 = document.getElementById('division2').value;
            var divisionAnswer = parseInt(division1) / parseInt(division2);
            document.getElementById('divisionanswer').value = divisionAnswer;
        }
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        this is JS in body section

        <script type="text/javascript">
            document.write("this is second line");
        </script>

        <br />
        <br />
        User Name:<input type="text" id="userName" size="30" />
        <br />
        Password:<input type="text" id="password" />
        <br />
        <input type="button" value="Submit" onclick="javascript:checkError()" />
    </div>
    <br />
    <br />
    <br />
    <input type="text" id="add1" />&nbsp;+&nbsp;<input type="text" id="add2" />&nbsp;=&nbsp;<input
        type="text" id="addAnswer" />
    &nbsp;<input type="button" value="Answer" onclick="javascript:add()" />
    <br />
    <input type="text" id="subtract1" />
    -
    <input type="text" id="subtract2" />
    =
    <input type="text" id="subtractAnswer" />
    <input type="button" value="Answer" onclick="javascript:subtract()" />
    <br />
    <input type="text" id="multiplication1" />
    *
    <input type="text" id="multiplication2" />
    =
    <input type="text" id="multiplicationAnswer" />
    <input type="button" value="Answer" onclick="javascript:multiplication()" />
    <br />
    <input type="text" id="division1" />
    /
    <input type="text" id="division2" />
    =
    <input type="text" id="divisionanswer" />
    <input type="button" value="Answer" onclick="javascript:division()" />
    </form>
</body>
</html>
