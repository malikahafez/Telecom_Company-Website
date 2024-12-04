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
            display: flex;
            
            margin: 10px;
            flex-direction: column;
            display: inline-block;
            justify-content: center; /* Centers horizontally */
            align-items: center; 
            width:1500px; 
            height: auto;
            background-color:#363b72;
        }
        body{
            background-color:#474984;
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
     <asp:Label ID="Label4" runat="server" Text="unresolvedtickets"></asp:Label>
     <br />
      <br />
     <asp:Button ID="Button1" runat="server" Text="Click Me" OnClick="UnresolvedTickets" />
    </div>



           <div class="box">
     <asp:Label ID="Label5" runat="server" Text="activeBenefits"></asp:Label>
     <br />
      <br />
     <asp:Button ID="Button5" runat="server" Text="Click Me" OnClick="ActiveBenefits" />
    </div>


               <div class="box">
     <asp:Label ID="Label6" runat="server" Text="HighestVoucherValue"></asp:Label>
     <br />
      <br />
     <asp:Button ID="Button6" runat="server" Text="Click Me" OnClick="HighestVoucherValue" />
    </div>


                  <div class="box">
    <asp:Label ID="Label7" runat="server" Text="RemainingAmount"></asp:Label>
    <br />
     <br />
    <asp:Button ID="Button7" runat="server" Text="Click Me" OnClick="RemainingAmount" />
   </div>


    
                  <div class="box">
    <asp:Label ID="Label8" runat="server" Text="ExtraAmount"></asp:Label>
    <br />
     <br />
    <asp:Button ID="Button8" runat="server" Text="Click Me" OnClick="ExtraAmount" />
   </div>

                    <div class="box">
  <asp:Label ID="Label9" runat="server" Text="Top10SuccessfulPayments"></asp:Label>
  <br />
   <br />
  <asp:Button ID="Button9" runat="server" Text="Click Me" OnClick="Top10SuccessfulPayments" />
 </div>




    </div>


    </form>
</body>
</html>
