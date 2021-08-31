<%@ Page Language="C#" AutoEventWireup="true" CodeFile="act.aspx.cs" Inherits="act" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple" Width="87px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple" Width="107px"></asp:ListBox>
    
    </div>
        <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="&gt;&gt;" />
        <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="&lt;&lt;" />
    </form>
</body>
</html>
