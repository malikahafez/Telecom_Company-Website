<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payments.aspx.cs" Inherits="DBM3.payments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#3366FF" BorderColor="#99CCFF" DataKeyNames="paymentID" DataSourceID="SqlDataSource1" Font-Bold="True" Height="227px" Width="382px">
            <Columns>
                <asp:BoundField DataField="paymentID" HeaderText="paymentID" InsertVisible="False" ReadOnly="True" SortExpression="paymentID" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:BoundField DataField="date_of_payment" HeaderText="date_of_payment" SortExpression="date_of_payment" />
                <asp:BoundField DataField="payment_method" HeaderText="payment_method" SortExpression="payment_method" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="mobileNo" HeaderText="mobileNo" SortExpression="mobileNo" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Back_to_HomePage" Width="102px" />
        <asp:Button ID="Button2" runat="server" OnClientClick="totalcashbck" Text="Display_CashBack" Width="132px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" SelectCommand="SELECT * FROM [AccountPayments]"></asp:SqlDataSource>
    </form>
</body>
</html>
