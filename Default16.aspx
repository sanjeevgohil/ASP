<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default16.aspx.cs" Inherits="Default16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Query String"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="Enter Value:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="20pt"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="15pt" OnClick="Button1_Click" Text="Pass" />
        <br />
    
    </div>
    </form>
</body>
</html>
