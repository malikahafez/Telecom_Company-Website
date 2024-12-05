<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consumption.aspx.cs" Inherits="WebApplication1.consumption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
        <asp:Label ID="plan_id" runat="server" Text="please provide the plan id"></asp:Label>
        <br />
        <asp:TextBox ID="id_input" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Show " OnClick="Show_consumption" />
          <asp:Calendar runat="server"></asp:Calendar>
    </div>
    <asp:PlaceHolder ID="myContainer" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
