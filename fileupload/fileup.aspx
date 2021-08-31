<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileup.aspx.cs" Inherits="fileup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" />
&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
        <p>
            <asp:Label ID="lb1" runat="server"></asp:Label>
        </p>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" DataSourceID="XmlDataSource1" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
