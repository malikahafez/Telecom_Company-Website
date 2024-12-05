<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminpt2.aspx.cs" Inherits="DBM3.Adminpt2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wallets for Customers</title>
</head>
<body style="height: 24px">
    <form id="form1" runat="server">
        <p>
            Wallets
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="walletID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 0px" Width="932px">
                <Columns>
                    <asp:BoundField DataField="walletID" HeaderText="walletID" ReadOnly="True" SortExpression="walletID" />
                    <asp:BoundField DataField="current_balance" HeaderText="current_balance" SortExpression="current_balance" />
                    <asp:BoundField DataField="currency" HeaderText="currency" SortExpression="currency" />
                    <asp:BoundField DataField="last_modified_date" HeaderText="last_modified_date" SortExpression="last_modified_date" />
                    <asp:BoundField DataField="nationalID" HeaderText="nationalID" SortExpression="nationalID" />
                    <asp:BoundField DataField="mobileNo" HeaderText="mobileNo" SortExpression="mobileNo" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" ProviderName="<%$ ConnectionStrings:Milestone2DB_24ConnectionString.ProviderName %>" SelectCommand="SELECT [walletID], [current_balance], [currency], [last_modified_date], [nationalID], [mobileNo], [first_name], [last_name] FROM [CustomerWallet]"></asp:SqlDataSource>
        </p>
        <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Go_To_HomePage" Width="161px" />
    </form>
</body>
</html>
