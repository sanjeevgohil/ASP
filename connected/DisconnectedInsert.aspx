<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisconnectedInsert.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Disconnected<br />
        <br />
        Enter Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Insert" runat="server" Font-Bold="True" Font-Size="12pt" Text="Insert" OnClick="Insert_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="Button2_Click" Text="Clear" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
