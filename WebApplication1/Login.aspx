<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Login</div>
        UserID<asp:TextBox ID="userID" runat="server"></asp:TextBox>
        <p>
            Password<asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="signIn" runat="server" OnClick="login" Text="Sign in" />
        </p>
    </form>
</body>
</html>
