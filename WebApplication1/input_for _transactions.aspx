<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input_for _transactions.aspx.cs" Inherits="DBM3.input_for__transactions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter the account you want to get the number of successful transactions for</div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="PaymentCount" HeaderText="PaymentCount" ReadOnly="True" SortExpression="PaymentCount" />
                <asp:BoundField DataField="PointsSum" HeaderText="PointsSum" ReadOnly="True" SortExpression="PointsSum" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" ProviderName="<%$ ConnectionStrings:Milestone2DB_24ConnectionString.ProviderName %>" SelectCommand="Account_Payment_Points" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="mobile_num" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="gettransactions" Text="Get_Transactions" />
        <asp:Button ID="Button2" runat="server" OnClientClick="goback" Text="Back_To_Homepage" />
    </form>
</body>
</html>
