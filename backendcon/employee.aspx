<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbleid" runat="server" Text="EmployeeId"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbeid" runat="server" OnTextChanged="tbeid_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblename" runat="server" Text="Employee name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbename" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btadd" runat="server" OnClick="btadd_Click" Text="Add" />
&nbsp;&nbsp;
                    <asp:Button ID="btedit" runat="server" OnClick="btedit_Click" Text="Edit" />
&nbsp;
                    <asp:Button ID="btview" runat="server" Text="View" OnClick="btview_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="EmployeeId" />
                <asp:BoundField DataField="enme" HeaderText="Employee name" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
