<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Registration Form</h1>

        <asp:Label ID="Label1" runat="server" Text="Label">Enter Name:</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </br>

        <asp:Label ID="Label2" runat="server" Text="Label">Enter Email:</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </br>

        <asp:Label ID="Label3" runat="server" Text="Label">Enter Mobile:</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </br>

        <asp:Label ID="Label4" runat="server" Text="Label">Enter City:</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </br>

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>

        <br />

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" DeleteCommand="DELETE FROM [emp] WHERE [Id] = @Id" InsertCommand="INSERT INTO [emp] ([name], [email], [mno], [city]) VALUES (@name, @email, @mno, @city)" SelectCommand="SELECT * FROM [emp]" UpdateCommand="UPDATE [emp] SET [name] = @name, [email] = @email, [mno] = @mno, [city] = @city WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mno" Type="String" />
                <asp:Parameter Name="city" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mno" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
