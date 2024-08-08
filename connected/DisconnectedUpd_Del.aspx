<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisconnectedUpd_Del.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Update and Delete<br />
        <br />
        <br />
        Student Id :
        <asp:DropDownList ID="ddid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="ddid_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [Id] FROM [stud]"></asp:SqlDataSource>
        </br></br>Student Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        <br />
        </br>Student Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        <br />
        <br />
        Student City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Button ID="updbtn" runat="server" Text="Update" OnClick="updbtn_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Deletebtn" runat="server" Text="Delete" OnClick="Deletebtn_Click" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="id">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
