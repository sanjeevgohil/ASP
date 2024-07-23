<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="prime_number" runat="server" GroupingText="Prime Number">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="15pt" Text="Enter Any Number:"></asp:Label>
            &nbsp;<asp:TextBox ID="txtnumber" runat="server" Font-Size="15pt"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="lbl_prime" runat="server" Font-Bold="True" Text="Answer:"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_checkprime" runat="server" Font-Bold="True" OnClick="btn_checkprime_Click" Text="Check Prime " />
            <br />
        </asp:Panel>
   
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
