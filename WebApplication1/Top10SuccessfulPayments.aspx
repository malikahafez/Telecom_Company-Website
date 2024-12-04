<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top10SuccessfulPayments.aspx.cs" Inherits="WebApplication1.Top10SuccessfulPayments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
          Please enter your mobile number<p>
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
     <asp:GridView ID="gvPayments" runat="server" AutoGenerateColumns="True"></asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="ViewPayments" Text="ViewPayments" />
        </p>
    </form>
</body>
</html>
