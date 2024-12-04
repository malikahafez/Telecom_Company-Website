<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buttons.aspx.cs" Inherits="WebApplication1.Benefits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="activeBenefits" runat="server" OnClick="ActiveBenefits" Text="ActiveBenefits" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="unresolvedtickets" runat="server" OnClick="UnresolvedTickets" Text="UnresolvedTickets" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="HighestVoucherValue" Text="HighestVoucherValue" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="RemainingAmount" Text="RemainingAmount" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="ExtraAmount" Text="ExtraAmount" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Top10SuccessfulPayments" Text="Top10SuccessfulPayments" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
