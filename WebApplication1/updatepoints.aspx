<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepoints.aspx.cs" Inherits="DBM3.updatepoints" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter the mobile number you want to update the total points for<br />
            mobile number<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Back" />
            <asp:Button ID="Button2" runat="server" OnClientClick="updatepts" Text="Update" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Milestone2DB_24ConnectionString %>" ProviderName="<%$ ConnectionStrings:Milestone2DB_24ConnectionString.ProviderName %>" SelectCommand="Total_Points_Account" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="0" Name="mobile_num" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
