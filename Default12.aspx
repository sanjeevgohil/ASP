<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="25pt" Text="AdRotator"></asp:Label>
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="200px" Width="860px" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Advertisement.xml"></asp:XmlDataSource>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
