<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderMsg.aspx.cs" Inherits="Food.OrderMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            border-width:53px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:20px;
        }
        .auto-style3 {
            font-weight: normal;
        }
 
        .auto-style4 {
            height: 98px;
        }
 
    </style>
    <link rel="stylesheet" href="Css/Buton.css">
</head>
<body>
   <form id="form1" runat="server">
   <div>    
     <table class="auto-style1">
        <tr>
         <td class="auto-style2">
         <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ol.png" />
         <p><h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large">Congrats..!! Your Order successful</h1>
         <h3 class="auto-style3">Thank you for ordering we recerived order processing it soon</h3>
         </p>
         <br />
         </td>
        </tr>
       <tr>
         <td class="auto-style4"> <asp:Button ID="Button1" runat="server" Height="84px" Text="Continue.." Width="272px" CssClass="button" PostBackUrl="~/Default.aspx" /></td>
       </tr>
      </table>
     </div>
    </form>
</body>
</html>
