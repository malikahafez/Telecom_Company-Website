<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E_shops.aspx.cs" Inherits="DBM3.E_shops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="E_shops Details"></asp:Label>
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="#3366FF" DataKeyField="shopID" DataSourceID="SqlDataSource1" Font-Bold="True" ForeColor="Black" Width="336px">
            <ItemTemplate>
                shopID:
                <asp:Label ID="shopIDLabel" runat="server" Text='<%# Eval("shopID") %>' />
                <br />
                URL:
                <asp:Label ID="URLLabel" runat="server" Text='<%# Eval("URL") %>' />
                <br />
                rating:
                <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
                <br />
                voucherID:
                <asp:Label ID="voucherIDLabel" runat="server" Text='<%# Eval("voucherID") %>' />
                <br />
                value:
                <asp:Label ID="valueLabel" runat="server" Text='<%# Eval("value") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" SelectCommand="SELECT * FROM [E_shopVouchers]"></asp:SqlDataSource>
        <asp:Button ID="Backwallets" runat="server" OnClientClick="goback" Text="Back_to_HomePage" />
    </form>
</body>
</html>
