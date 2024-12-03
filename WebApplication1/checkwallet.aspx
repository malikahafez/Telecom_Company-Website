<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkwallet.aspx.cs" Inherits="DBM3.checkwallet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            please enter the mobile number<br />
            <br />
            mobile number<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Back" />
            <asp:Button ID="Button2" runat="server" OnClientClick="checkifwallet" Text="check" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
