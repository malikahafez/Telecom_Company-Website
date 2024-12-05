<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="My_Wallet.aspx.cs" Inherits="WebApplication1.My_Wallet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    /* Table container styling */
    .dynamic-table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        text-align: left;
    }

    /* Table borders and spacing */
    .dynamic-table table {
        width: 100%;
        border: 1px solid #ccc;
        border-collapse: collapse;
    }

    .dynamic-table th, .dynamic-table-container td {
        border: 1px solid #ccc;
        padding: 10px;
    }

   
    .dynamic-table th {
        background-color: #f4f4f4;
        font-weight: bold;
        text-align: center;
    }

   
    .dynamic-table tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .dynamic-table tr:nth-child(odd) {
        background-color: #ffffff;
    }

   
    .dynamic-table td {
        text-align: center;
    }
</style>

</head>
<body> 
    <div>
            <asp:Label ID="nationalid" runat="server" Text="please provide ur national id"></asp:Label>
            <br />
            <asp:TextBox ID="id_input" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Show " OnClick="Show_Transactions" />
        </div>
        <asp:PlaceHolder ID="myContainer" runat="server"></asp:PlaceHolder>
    <form id="form1" runat="server">
       
    </form>
</body>
</html>
