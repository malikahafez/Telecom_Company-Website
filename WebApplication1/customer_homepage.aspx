<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_homepage.aspx.cs" Inherits="WebApplication1.customer_homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .box {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: 300px;
            text-align: center;
            margin-top: 50px;
            
            background-color:aquamarine;
        }
        .h2{
            align-content:center;
        }
        .container{
            display: flex;
            
            margin: 10px;
            flex-direction: column;
            display: inline-block;
            justify-content: center; /* Centers horizontally */
            align-items: center; 
            width:800px; 
            height: fit-content;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="h2"> welcome to telecom company</h2>

<div class="container">
     <div class="box">
    <asp:Label ID="serviceplans" runat="server" Text="ALL Service plans"></asp:Label>
         <br />
         <br />
    <asp:Button ID="service" runat="server" Text="Click Me" OnClick="service_plan_direct" />
    </div>



     <div class="box">
      <asp:Label ID="Label1" runat="server" Text="Other Service plans"></asp:Label>
       <br />
        <br />
     <asp:Button ID="Button2" runat="server" Text="Click Me" OnClick="other_serviceplan" />
      </div>


      <div class="box">
     <asp:Label ID="Label2" runat="server" Text=" technical support tickets"></asp:Label>
     <br />
          <br />
     <asp:Button ID="Button3" runat="server" Text="Click Me" OnClick="other_serviceplan" />
      </div>


       <div class="box">
     <asp:Label ID="Label3" runat="server" Text="Benefits"></asp:Label>
     <br />
      <br />
     <asp:Button ID="Button4" runat="server" Text="Click Me" OnClick="service_plan_direct" />
    </div>
    </div>
    </form>
</body>
</html>
