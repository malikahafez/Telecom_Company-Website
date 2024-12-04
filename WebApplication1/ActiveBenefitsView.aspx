<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActiveBenefitsView.aspx.cs" Inherits="WebApplication1.ActiveBenefitsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="benefitID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="benefitID" HeaderText="benefitID" InsertVisible="False" ReadOnly="True" SortExpression="benefitID" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="validity_date" HeaderText="validity_date" SortExpression="validity_date" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="mobileNo" HeaderText="mobileNo" SortExpression="mobileNo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" ProviderName="<%$ ConnectionStrings:Milestone2DB_24ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [allBenefits]"></asp:SqlDataSource>
    </form>
</body>
</html>
