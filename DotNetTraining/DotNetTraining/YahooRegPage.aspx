<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YahooRegPage.aspx.cs" Inherits="yahoo._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .topTable
        {
            background-image: url('images/tableBGimage.png');
            background-repeat: repeat-x;
        }
        .lightColorText
        {
            color: lightGray;
        }
    </style>
    <script type="text/javascript">
        function focusText(element) {
            document.getElementById(element).value = '';
        }
        function blurText() {
            var firstName = document.getElementById('firstName').value;
            if (firstName == '') {
                document.getElementById('firstName').value = 'First Name';
                return;
            }
            //check for special characters and display errors
            if (checkSpecialChars(firstName)) {
                document.getElementById('errorText').style.visibility = 'visible';
            }
        }

        function blurTextLastName() {
            var lastName = document.getElementById('lastName').value;
            if (lastName.length == 0) {
                document.getElementById('lastName').value = 'Last Name';
                return;
            }

            //check for special characters and display errors
            if (checkSpecialChars(lastName)) {
                document.getElementById('errorText').style.visibility = 'visible';
            }
        }

        function checkSpecialChars(str) {
            //if special chars found return true else return false
            var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?";
            for (var i = 0; i < str.length; i++) {
                if (iChars.indexOf(str.charAt(i)) != -1) {
                    return true;
                }
            }
            return false;
        }
        
    </script>
    <link href="yahooStyles.css" type="text/css" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" style="border-style: solid; border-width: 1px; border-color: Green;"
        class="topTable" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table style="" border="0" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <a href="http://www.yahoo.com">
                                <img src="images/yahoo.gif" alt="Yahoo logo" />
                            </a>
                        </td>
                        <td width="50">
                            <a href="http://www.google.com">Yahoo!</a>
                        </td>
                        <td width="40">
                            | <a href="http://www.helpyahoo.com">Help</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="1" width="100%" class="topTable">
                    <tr>
                        <td>
                            <span style="font-size: 22px;">With a Yahoo! Account, get free email and other leading
                                web services.</span>
                            <hr />
                        </td>
                        <td>
                            Sign in with an ID you already have
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td width="180" style="text-align: right;">
                            Name
                        </td>
                        <td>

                            <input type="text" value="First Name" id="firstName" class="lightColorText" onfocus="javascript:focusText('firstName')"
                                onblur="javascript:blurText()" />
                            <input type="text" value="last name" id="lastName" class="lightColorText" onfocus="javascript:focusText('lastName')"
                                onblur="javascript:blurTextLastName()" />
                            <span style="color: Red; font-size: 12px; visibility: hidden;" id="errorText">
                                <img src="images/error.png" />
                                Only letters, spaces, hyphens and apostrophes are allowed </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            gender
                        </td>
                        <td>
                            <select>
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Birthday
                        </td>
                        <td>
                            <select>
                                <option>select month</option>
                                <option>january</option>
                                <option>february</option>
                                <option>march</option>
                                <option>april</option>
                                <option>may</option>
                                <option>june</option>
                                <option>july</option>
                                <option>august</option>
                                <option>september</option>
                                <option>october</option>
                                <option>November</option>
                                <option>December</option>
                            </select>
                            <input type="text" value="date" class="lightColorText" />
                            <input type="text" value="year" class="lightColorText" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            country
                        </td>
                        <td>
                            <select>
                                <option>country</option>
                                <option>India</option>
                                <option>australia</option>
                                <option>america</option>
                                <option>russia</option>
                                <option>england</option>
                                <option>south africa</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span style="color: green">select an Id and Password</span>
                            <hr />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table>
                    <tr>
                        <td>
                            Yahoo! Id and Password
                            <input type="" value="" />
                            @
                            <select>
                                <option>yahoo</option>
                                <option>gmail</option>
                                <option>rocket mail</option>
                            </select>
                            <input type="button" value="check" />
                        </td>
                    </tr>
                    <table>
                        <tr>
                            <td>
                                Password
                                <input type="" />
                                &nbsp;&nbsp password strength
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                Re-type Password
                                <input type="" />
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <table border="0" width="90%">
                                    <tr>
                                        <td style="text-align: left">
                                            <span style="color: Purple">In Case you forget your Id or password....</span>
                                            <hr />
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            Alternate Email(optional)
                                            <input type="" />
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            Secret Question 1<select>
                                                <option>Select one</option>
                                                <option>what is your oldests cousin's name</option>
                                                <option>what is your youngest cousin's nickname</option>
                                                <option>what is your first aunt name</option>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            Your answer
                                            <input type="" />
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            Secret Question 2<select>
                                                <option>Select one</option>
                                                <option>what is your oldests cousin's name</option>
                                                <option>what is your youngest cousin's nickname</option>
                                                <option>what is your first aunt name</option>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            Your answer
                                            <input type="" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <hr />
                                <table>
                                    <tr>
                                        <td>
                                            <input type="submit" value="Create my account" />
                                        </td>
                                    </tr>
                                </table>
    </form>
</body>
</html>
