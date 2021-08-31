<%@ Page Language="C#" AutoEventWireup="true" CodeFile="validate.aspx.cs" Inherits="validate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 345px;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            width: 259px;
        }
        .auto-style4 {
            width: 259px;
            height: 43px;
        }
        .auto-style5 {
            width: 171px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbluser" runat="server" Text="USERNAME"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtbxuser" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtbxuser" ErrorMessage="Please Enter Ur Name" ValidationGroup="vlg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtbxpass" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">RE-TYPE PASSWORD</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtbxrepass" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Txtbxpass" ControlToValidate="Txtbxrepass" ErrorMessage="Re-type ur pasword"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="AGE"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtbxage" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Txtbxage" ErrorMessage="Please Enter valid age" MaximumValue="40" MinimumValue="18" ValidationGroup="vlg"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblemail" runat="server" Text="EMAIL-ID"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txtbxemail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtbxemail" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vlg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblnumber" runat="server" Text="PHONE NUMBER"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtbxphonenumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtbxphonenumber" ErrorMessage="Invalid phone number" ValidationExpression="^([6-9]{1})([0-9]{9})$" ValidationGroup="vlg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vlg" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Btcreate" runat="server" Text="CREATE" ValidationGroup="vlg" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
