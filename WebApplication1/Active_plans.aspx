<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Active_plans.aspx.cs" Inherits="WebApplication1.Active_plans" %>

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
            width:550px; 
            height: fit-content;
            background-color:#588BAE;
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


        .div{
            justify-content: center; /* Centers horizontally */
             align-items: center;
             border:thick;
             background-color:whitesmoke;
             width:1500px;
        }
        body{
    background-color:#1D2951;
}
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Here is all the Active plans you have subscribed to in this current month</h1>
        <div class ="div">
    <asp:PlaceHolder ID="myContainer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
