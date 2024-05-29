<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisconnectedDisplay.aspx.cs" Inherits="DisconnectedDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Disconnected Display</h1>



        Select Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddid" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [Id] FROM [stud]"></asp:SqlDataSource>
        <br />
        <br />
        Stud Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtid" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Stud Name:&nbsp;
        <asp:Label ID="txtnm" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Stud City:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txtcity" runat="server" Text="Label"></asp:Label>
        <br />



    </div>
    </form>
</body>
</html>
