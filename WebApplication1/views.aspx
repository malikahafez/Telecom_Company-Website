<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="views.aspx.cs" Inherits="WebApplication1.views" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Instructions" runat="server" Text="Choose what you would like to view:"></asp:Label>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="selectView" AutoPostBack="true">
            <asp:ListItem Value = "0" Text = "Choose a view"></asp:ListItem>
            <asp:ListItem Value = "Customer Profiles + Active Accounts" Text ="Customer Profiles + Active Accounts"> </asp:ListItem>
            <asp:ListItem Value = "Physical Stores + Vouchers" Text = "Physical Stores + Vouchers"></asp:ListItem>
            <asp:ListItem Value ="Resolved Tickets" Text ="Resolved Tickets"></asp:ListItem>
            <asp:ListItem Value = "Accounts + Subscribed Plans" Text ="Accounts + Subscribed Plans"></asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
