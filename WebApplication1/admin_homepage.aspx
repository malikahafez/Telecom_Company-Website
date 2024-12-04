<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_homepage.aspx.cs" Inherits="WebApplication1.admin_homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="welcomeMsg" runat="server" Text="Welcome back, Admin!"></asp:Label>
            <br />
        </div>
        <asp:Button ID="viewing" runat="server" OnClick="view" Text="Views" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="listing" runat="server" OnClick="list" Text="Lists" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="actions" runat="server" OnClick="takeAction" Text="Actions" />
        <br />
        <asp:Button ID="Button2" runat="server" OnClientClick="goE_shops" Text="View E_Shops" Width="138px" />
        <asp:Button ID="Button4" runat="server" Height="22px" OnClientClick="goadminpt2" style="margin-left: 127px; margin-top: 37px" Text="View Wallets" Width="114px" />
        <asp:Button ID="Button5" runat="server" OnClientClick="goPayments" style="margin-left: 145px" Text="View Payments" Width="102px" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="gocashback" Text="View cashback" />
        <asp:Button ID="Button3" runat="server" OnClientClick="gocheckwallet" style="margin-left: 116px" Text="check for account wallets" Width="172px" />
        <asp:Button ID="Button6" runat="server" OnClientClick="gotransactions" style="margin-left: 102px" Text="View Customer Accepted Transactions " Width="235px" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" OnClientClick="gocashbackwallet" Text="View Customer Cashback" Width="186px" />
        <asp:Button ID="Button8" runat="server" OnClientClick="goavgtransactions" style="margin-left: 44px" Text="View Average Transactions for Customers " Width="237px" />
        <asp:Button ID="Button9" runat="server" OnClientClick="goupdatepts" style="margin-left: 59px" Text="Update Customer Points" Width="198px" />
        <br />
    </form>
</body>
</html>
