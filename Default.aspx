<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Enter Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="20pt" Height="25px" MaxLength="10"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Size="10pt" OnClick="Button1_Click" Text="Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="20pt" Text="Name is :"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="20pt"></asp:Label>
    
    </div>
    </form>
</body>
</html>
