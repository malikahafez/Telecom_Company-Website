<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HighestVoucherValueView.aspx.cs" Inherits="WebApplication1.HighestVoucherValueView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter your mobile number<br />
        </div>

        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="ViewVoucher" Text="ViewVoucher" />
        </p>

     <asp:GridView ID="gvVoucher" runat="server" AutoGenerateColumns="True"></asp:GridView>

    </form>
</body>
</html>
