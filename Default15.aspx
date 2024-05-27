<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default15.aspx.cs" Inherits="Default15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="View State"></asp:Label>
        <br />
        <br />
        No1 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        </br>

        <asp:Button ID="Button1" runat="server" Text="Store" OnClick="Button1_Click" />&nbsp&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Transfer" OnClick="Button2_Click" />
        <br />
        </br>

        No2 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
