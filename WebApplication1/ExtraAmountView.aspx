<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtraAmountView.aspx.cs" Inherits="WebApplication1.ExtraAmountView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter mobile number<br />
        </div>
       
        <p>
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Please enter plan name</p>
        <p>
            <asp:TextBox ID="plan" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="ViewAmount" Text="ViewAmount" />
        </p>
    </form>
</body>
</html>
