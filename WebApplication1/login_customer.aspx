<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_customer.aspx.cs" Inherits="WebApplication1.login_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .div{

        }
    </style>
</head>
<body>
   
    <h1> <centre>welcome to telecome Company</centre> </h1>
     <form id="form2" runat="server">
    <div class="div">
        <asp:Label ID="Label1" runat="server" Text="Label"> please enter your mobile number and password </asp:Label>
        <pre></pre>
        <asp:Label ID="mobile_label" runat="server" Text="Mobile Number "></asp:Label> 
        <br /> 
        <asp:TextBox ID="mobile_text" runat="server"></asp:TextBox>
        <p></p>
        <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
        <br />
        <input type="password" id="PasswordInput" name="PasswordInput">

        <br />
        <br />
        <asp:Button ID="login" runat="server" Text="Log In" OnClick="login_Click" />
    </div>
</form>
    
</body>
</html>
