<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cashwalletplan.aspx.cs" Inherits="DBM3.cashwalletplan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            please enter walletID and planID to view the cashback amount
            <br />
            walletID<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            planID<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Back" Width="87px" />
            <asp:Button ID="Button2" runat="server" OnClientClick="viewamount" Text="view amount" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
