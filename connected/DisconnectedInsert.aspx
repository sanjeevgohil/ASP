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
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="4px" CellPadding="4" GridLines="Horizontal">
            <AlternatingRowStyle Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="14pt" Font-Underline="True" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
