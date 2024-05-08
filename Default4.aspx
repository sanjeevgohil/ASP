<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label3" runat="server" Font-Size="20pt" Text="Single List Item"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem>Apple</asp:ListItem>
            <asp:ListItem>Banana</asp:ListItem>
            <asp:ListItem>Orange</asp:ListItem>
            <asp:ListItem>Graps</asp:ListItem>
            <asp:ListItem>DragonFruit</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="20pt" Text="Multiple List Item"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple">
            <asp:ListItem>Window</asp:ListItem>
            <asp:ListItem>Ubuntu</asp:ListItem>
            <asp:ListItem>Linux</asp:ListItem>
            <asp:ListItem>IOS</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
