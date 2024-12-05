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
            
            background-color:#588BAE;
        }
        .h2{
            align-content:center;
        }
        .container{
             width: 75%;
        
        border: 1px solid #ccc;
        padding: 10px;
        box-sizing: border-box;
            background-color:#363b72;
        }
        body{
            background-color:#474984;
        }
        .navbar{
            
        width: 20%;
        margin-right: 10px;
        background-color: #f8f9fa;
        border: 1px solid #ccc;
        padding: 10px;
        box-sizing: border-box;
        height:max-content;
   
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="h2"> welcome to telecom company</h2>


   <div class="navbar">
    <div class="navbar-container">
        
        <div class="navbar-logo">
            <a href="#">Telecom Company</a>
        </div>

        <!-- Navigation Links -->
        <ul class="navbar-links">
            <li><a href="Service_plans.aspx">Service Plans</a></li>
            <li><a href="other_plans.aspx">Other Plans</a></li>
            <li><a href="My_Wallet.aspx">My Wallet</a></li>
            <li><a href="customer_homepage.aspx">Home Page</a></li>
        </ul>
    </div>
</div>

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


       <div class="box">
      <asp:Label ID="Label4" runat="server" Text="Benefits"></asp:Label>
      <br />
      <br />
      <asp:Button ID="Button1" runat="server" Text="Click Me" OnClick="service_plan_direct" />
      </div>

    </div>


    </form>
</body>
</html>
