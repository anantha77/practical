<%@ Page Language="C#" AutoEventWireup="true" CodeFile="spconexamples.aspx.cs" Inherits="spconexamples" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 138px;
        }
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            width: 220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Employee_ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtbxeid" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Employee_Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtbxename" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btedit" runat="server" OnClick="btnview_Click" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="btndelete" runat="server" Text="Remove" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                <asp:BoundField DataField="enme" HeaderText="enme" SortExpression="enme" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AnanthB2 %>" SelectCommand="SELECT * FROM [emp_de]"></asp:SqlDataSource>
    </form>
</body>
</html>
