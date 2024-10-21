<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>FeedBack</h1>

        <asp:Label ID="Label1" runat="server" Text="Label">Enter Name</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Label">Enter Mobile</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ErrorMessage="Mobile Mismatch"></asp:CompareValidator>
        <br />

        <asp:Label ID="Label3" runat="server" Text="Label">Enter Confirm Mobile</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Label">Enter Email</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Not Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />

        <asp:Label ID="Label5" runat="server" Text="Label">Enter Age</asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Not Valid Range" MaximumValue="35" MinimumValue="18"></asp:RangeValidator>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="FeedBack" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
