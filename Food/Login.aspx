<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Food.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN PAGE</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide"/> 
    <link href="project%20css/login_css.css" rel="stylesheet" />
    <script src="fontaewsome/js/all.js"></script>
    <style type="text/css">
        .auto-style11 {
            width: 58%;
            height: 545px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 50px 20px;
            margin-top: 49px;

        }
        .auto-style15 {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 10px 20px;
        }        
        .centertag{
              display: block;
              margin-left: auto;
              margin-right: auto;
        }
        .auto-style19 {
            height: 187px;
        }
        .auto-style20 {
            width: 256px
        }
        .text{
            text-shadow: 4px 4px 6px green;          
            font-size: 45px;
            margin-left:177px;
            font-family: "Audiowide", sans-serif;           
        }
        .textl{
          font-size: 15px;
        }
    </style>
    </head>
<body>
 <form id="form1" runat="server">
  <div class="auto-style15" style="background-image: none; height: 776px; background-repeat: repeat; background-attachment: fixed;">
  <table class="auto-style11"  bottom: auto;" align="center">
  <tr>
    <td colspan="4" class="auto-style19"><label class="text">Neelkhant Login</label></td>
  </tr>
   <tr>
      <td></td>
      <td class="auto-style20"><label Text="Email"  class="textl centertag" style="margin-left:215px">Email</label></td>
      <td><asp:TextBox ID="TextBox1"  CssClass ="form-control" style="margin-left:18px" runat="server" width="273px" height="42px" placeholder="Email"/></td> 
      <td></td>
  </tr>
   <tr>
       <td></td>
      <td class="auto-style20"><label class="textl centertag" style="margin-left:215px">Passward</label></td>
      <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="margin-left:18px" CssClass="form-control" width="273px" height="42px" placeholder="Passward"/></td>
       <td></td>
  </tr>
  <tr>
      <td colspan="4"><asp:Button ID="Button1" runat="server" cssclass="btn btn-primary centertag" Height="39px" Width="107px" style="margin-left: 259px;" OnClick="Button1_Click2" Text="Login" Font-Bold="True" /></td>
  </tr>
   <tr>
    <td colspan="4"><a href="signup_page.aspx" class="centertag" style="margin-left: 256px;"><span class="centertag">Don't have an account ?</span></a>
     <asp:HyperLink ID="HyperLink1" style="margin-left: 256px;" CssClass="centertag" runat="server" BorderColor="White" ForeColor="Red" NavigateUrl="~/Signup.aspx">Sign Up</asp:HyperLink></td>
  </tr>
     </table>
    </div>
</form>  
</body>
</html>

