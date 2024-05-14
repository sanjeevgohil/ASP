<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        Enter Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter 12 to 25" MaximumValue="25" MinimumValue="12" SetFocusOnError="True"></asp:RangeValidator>
        <br />
        <br />
        Enter Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Does Not Match" SetFocusOnError="True"></asp:CompareValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter 12 To 25" MaximumValue="25" MinimumValue="12" SetFocusOnError="True"></asp:RangeValidator>
        <br />
        <br />
        Enter Mobile:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter 10 Digit" ValidationExpression="\d{10}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <br />
        <br />
        Enter Email:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Email" ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Click" OnClick="Button1_Click" />
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
    </div>
    </form>
</body>
</html>
