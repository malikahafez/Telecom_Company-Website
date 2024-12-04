<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="No_of_unresolved_tickets.aspx.cs" Inherits="WebApplication1.No_of_unresolved_tickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Enter NationalID<br />
        <asp:TextBox ID="NationalID" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="ShowUnresolvedTickets" Text="ShowUnresolvedTickets" />
        </p>
      <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="True"></asp:GridView>
    </form>
</body>
</html>
