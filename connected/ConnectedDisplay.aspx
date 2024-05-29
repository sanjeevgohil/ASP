<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConnectedDisplay.aspx.cs" Inherits="ConnectedDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Connected Display</h1>



        <br />
        Stud Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddid" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" OnSelectedIndexChanged="ddid_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [Id] FROM [stud]"></asp:SqlDataSource>
        </br>
        </br>
        Stud id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        <br />
        <br />
        Stud Name:&nbsp; <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        <br />
        <br />
        Stud City:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <br />



    </div>
    </form>
</body>
</html>
