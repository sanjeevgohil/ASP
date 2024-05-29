<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConnectedInsert.aspx.cs" Inherits="ConnectedInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Connected Insert</h1>
        Enter Id:
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Name:
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter City:
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Clear" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
