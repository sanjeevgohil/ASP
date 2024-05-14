<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default14.aspx.cs" Inherits="Default14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="25pt" Text="ImageMap"></asp:Label>
        <br />
        <br />
        <asp:ImageMap ID="ImageMap1" runat="server" Height="1600px" ImageUrl="~/upload/sunset4-768.jpg" Width="1600px" OnClick="ImageMap1_Click">
            <asp:CircleHotSpot Radius="100" X="250" Y="250" HotSpotMode="PostBack" NavigateUrl="~/Default14.aspx" PostBackValue="P1" />
            <asp:CircleHotSpot Radius="100" X="550" Y="550" HotSpotMode="PostBack" NavigateUrl="~/Default14.aspx" PostBackValue="P2" />
            <asp:CircleHotSpot Radius="100" X="750" Y="750" HotSpotMode="PostBack" NavigateUrl="~/Default14.aspx" PostBackValue="P3" />
        </asp:ImageMap>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/upload/art1.jpg" Width="150px" />
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/upload/art2.jpg" Width="150px" />
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel3" runat="server" Visible="False">
            <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/upload/animals21.jpg" Width="150px" />
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
