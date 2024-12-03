<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lists.aspx.cs" Inherits="WebApplication1.lists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="BackButton" runat="server" OnClick="backToHomepage" Text="Back to Homepage" />
            <br />
            <asp:Label ID ="Choose1" runat="server" Text = "Choose what you would like to see a list of"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged= "selectedList" AutoPostBack="true" Width="415px">
                <asp:ListItem Value = "0" Text = "Choose what to list" > </asp:ListItem>
                <asp:ListItem Value  = "Accounts subscribed to a plan" Text ="Accounts subscribed to a plan" ></asp:ListItem>
                <asp:ListItem Value = "SMS offers of an account" Text = "SMS offers of an account" ></asp:ListItem>
                <asp:ListItem Value ="Account Total Usage on All Subscribed Plans" Text ="Account Total Usage on All Subscribed Plans"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:label ID = "Input1" runat="server" Text = "Input Plan ID" Visible =" false" ></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID = "Input2" runat="server" Text ="Input" Visible =" false"></asp:Label>
            <br />
            <asp:TextBox ID="planID" runat="server" Visible =" false"></asp:TextBox>
            <asp:TextBox ID="DateORacc" runat="server" Visible =" false"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" Visible ="false" />
            <br />
            <asp:GridView ID="GridView2" runat="server" Width="500px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
