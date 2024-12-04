<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HighestVoucherValueView.aspx.cs" Inherits="WebApplication1.HighestVoucherValueView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

     <asp:GridView ID="gvVoucher" runat="server" AutoGenerateColumns="True"></asp:GridView>

       <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>


    </form>
</body>
</html>
