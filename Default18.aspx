<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default18.aspx.cs" Inherits="Default18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         Cookie Example<br />
         <br />
         <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <br />
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSetCookie" runat="server" Text="Set Cookie" OnClick="btnSetCookie_Click" />
            <asp:Button ID="btnDeleteCookie" runat="server" Text="Delete Cookie" OnClick="btnDeleteCookie_Click" />
    </div>
    </form>
</body>
</html>
