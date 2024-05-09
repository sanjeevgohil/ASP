<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="25pt" Text="Panel"></asp:Label>
        <br />

        <asp:Button ID="Button1" runat="server" Text="BCA 1" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="Label2" runat="server" Text="BCA 1" Font-Size="20pt"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>C-Language</asp:ListItem>
                <asp:ListItem>DataStructure</asp:ListItem>
                <asp:ListItem>CF</asp:ListItem>
                <asp:ListItem>Maths</asp:ListItem>
            </asp:ListBox>

        </asp:Panel>
        <br />
        <asp:Button ID="Button2" runat="server" Text="BCA 2" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:Label ID="Label3" runat="server" Text="BCA 2" Font-Size="20pt"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox2" runat="server">
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>Network</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
            </asp:ListBox>

        </asp:Panel>
        <br />
        <asp:Button ID="Button3" runat="server" Text="BCA 3" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <asp:Label ID="Label4" runat="server" Text="BCA 3" Font-Size="20pt"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox3" runat="server">
                <asp:ListItem>Android</asp:ListItem>
                <asp:ListItem>J2EE</asp:ListItem>
                <asp:ListItem>Project</asp:ListItem>
                <asp:ListItem>Laravel</asp:ListItem>
            </asp:ListBox>

        </asp:Panel>

        <br />
    </div>
    </form>
</body>
</html>
