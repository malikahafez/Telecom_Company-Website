<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actions.aspx.cs" Inherits="WebApplication1.actions" %>

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
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged= "selectedList" Width="400px">
                <asp:ListItem Value = "0" Text ="Choose an action"></asp:ListItem>
                <asp:ListItem Value = "Remove benefits from an account" Text = "Remove benefits from an account"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:label ID = "Input1" runat="server" Text ="Input Account Mobile Number" Visible ="false"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:label ID = "Input2" runat="server" Text="Input Plan ID" Visible ="false" ></asp:label>
            <br />
            <asp:TextBox ID="mobileNo" runat="server" Width="287px" Visible ="false"></asp:TextBox>
            <asp:TextBox ID="planID" runat="server" style="margin-left: 101px" Width="197px" Visible ="false"></asp:TextBox>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Remove" Visible ="false" OnClick="Remove"/>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="confirmation" runat="server" Text="Are you sure you want to proceed with this action?" Visible="false"></asp:Label>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox1" runat="server" Text ="Yes" OnCheckedChanged ="yes" Visible="false" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox2" runat="server" Text ="No" OnCheckedChanged ="no" Visible="false" />
        </p>
    </form>
</body>
</html>
