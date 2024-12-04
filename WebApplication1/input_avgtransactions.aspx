<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input_avgtransactions.aspx.cs" Inherits="DBM3.input_avgtransactions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter walletID ,StartDate and EndDate
            <br />
            walletID<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            StartDate<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            EndDate<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClientClick="goback" Text="Back" Width="71px" />
            <asp:Button ID="Button2" runat="server" OnClientClick="viewamt" Text="view amount" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
