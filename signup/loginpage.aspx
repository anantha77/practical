<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 160px;
        }
        .auto-style2 {
            width: 161px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbluser" runat="server" Text="USERNAME"></asp:Label>
                </td>
                <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="Txbxuser" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblpd" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="Txtbxpd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Btlogin" runat="server" OnClick="Btlogin_Click" Text="LOGIN !" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Btnewur" runat="server" Text="SIGNUP" OnClick="Btnewur_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lbldisplay" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
