<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 103px;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 383px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lbluser" runat="server" Text="Username"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:TextBox ID="TxtBxuser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblpd" runat="server" Text="Password"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:TextBox ID="Txtbxpd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblcountry" runat="server" Text="Country"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:DropDownList ID="ddcountry" runat="server" OnSelectedIndexChanged="ddcountry_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:DropDownList ID="ddstate" runat="server" OnSelectedIndexChanged="ddstate_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:RadioButtonList ID="RBgender" runat="server" OnSelectedIndexChanged="RBgender_SelectedIndexChanged">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblqualification" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:CheckBoxList ID="Cbxqualification" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Cbxqualification_SelectedIndexChanged">
                        <asp:ListItem>10TH</asp:ListItem>
                        <asp:ListItem>12TH</asp:ListItem>
                        <asp:ListItem>UG</asp:ListItem>
                        <asp:ListItem>PG</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btsignup" runat="server" OnClick="Btsignup_Click" Text="Signup" />
&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Btcancel" runat="server" CssClass="auto-style3" Text="Cancel" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
