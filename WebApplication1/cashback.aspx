<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cashback.aspx.cs" Inherits="DBM3.cashback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#3366FF" DataSourceID="SqlDataSource1" Font-Bold="True" Height="180px" Width="438px">
            <Columns>
                <asp:BoundField DataField="walletID" HeaderText="walletID" SortExpression="walletID" />
                <asp:BoundField DataField="count of transactions" HeaderText="count of transactions" SortExpression="count of transactions" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" SelectCommand="SELECT * FROM [Num_of_cashback]"></asp:SqlDataSource>
        <asp:Button ID="payment" runat="server" OnClientClick="goback" Text="Go_To_HomePage" />
    </form>
</body>
</html>
