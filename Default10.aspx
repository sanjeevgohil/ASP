<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default10.aspx.cs" Inherits="Default10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:FileUpload ID="FileUpload1" runat="server" />

        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <%--  --%>

        <asp:Button ID="Button2" runat="server" Text="Show" OnClick="Button2_Click" />

        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"/>

        <asp:Button ID="Button3" runat="server" Text="Hide" OnClick="Button3_Click" />
    </div>
    </form>
</body>
</html>
