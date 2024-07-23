<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Panel ID="Panel1" runat="server" GroupingText="Write From Dataset to XML">
            <br />
            <asp:Button ID="btn_writedataset" runat="server" Font-Bold="True" Text="Write Dataset" OnClick="btn_writedataset_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" GroupingText="Read From XML to Dataset">
            <br />
            <asp:Button ID="btn_readxml" runat="server" Font-Bold="True" OnClick="btn_readxml_Click" Text="Read XML" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <br />
            <br />
        </asp:Panel>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
