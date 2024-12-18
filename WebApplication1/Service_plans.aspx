﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_plans.aspx.cs" Inherits="WebApplication1.Service_plans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                .service-plan-box {
            display: flex;
            border: 1px solid #ccc;
            padding: 50px;
            margin: 10px;
            flex-direction: column;
            display: inline-block;
            justify-content: center; /* Centers horizontally */
            align-items: center; 
            width:600px; 
            height: fit-content;
        }

        .plan-label {
            font-size: 16px;
            font-weight: bold;
            margin-right: 20px;
        }
        .plan-id-label {
          font-size: 16px;
         font-weight: bold;
         margin-right: 20px;
}

        .plan-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            margin-left: 10px;
            width : 150px;
            height : 70px;

        }

        .div{
            justify-content: center; /* Centers horizontally */
             align-items: center;
             border:thick;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="div">
            <asp:PlaceHolder ID="myContainer" runat="server"></asp:PlaceHolder>
        </div>
         <asp:Label ID="Label1" runat="server" Text="check Sctive plans you subscribed to ?"></asp:Label>
   <asp:Button ID="Button1" runat="server" Text="Here" Onclick="Active"/>

   <br />
   <asp:Label ID="Label2" runat="server" Text="check service plans you haven't subscribed to ?"></asp:Label>
   <asp:Button ID="Button2" runat="server" Text="Here" Onclick="Not_Subscribed_to"/>
    </form>
</body>
</html>
