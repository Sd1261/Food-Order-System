<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Food.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>signup_page</title>

    <link href="project%20css/signup_css.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: 25px;
            font-weight: normal;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #339933;
        }
        .auto-style3 {
            font-size: x-large;
            font-weight: normal;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-weight: normal;
            color: #000000;
            font-size: large;
        }
        .auto-style7 {
            text-decoration: none;
        }
        .auto-style8 {
            color: #000000;
            font-size: large;
        }
        .auto-style9 {
            color: #003300;
        }
        .auto-style10 {
            color: red;
            text-decoration: underline;
            font-weight: bold;
        }
        .auto-style13 {
            width: 67%;
        }
        .auto-style15 {
            width: 584px;
            color: #003300;
        }
        .auto-style17 {
            height: 30px;
            width: 829px;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style19 {
            width: 584px;
            color: #003300;
            height: 43px;
        }
        .auto-style20 {
            height: 43px;
            width: 829px;
        }
        .auto-style24 {
            width: 584px;
            color: #003300;
            height: 44px;
        }
        .auto-style25 {
            height: 44px;
            width: 829px;
        }
        .auto-style26 {
            color: red;
            font-weight: bold;
        }
        .auto-style27 {
            width: 584px;
            color: #003300;
            height: 44px;
            font-weight: bold;
        }
        .auto-style28 {
            font-size: xx-large;
        }
        .auto-style29 {
            width: 829px;
        }
        .auto-style31 {
            width: 829px;
            height: 52px;
        }
        .auto-style33 {
            width: 829px;
            height: 26px;
        }
        .auto-style34 {
            width: 584px;
        }
        .auto-style35 {
            width: 584px;
            height: 52px;
        }
        .auto-style36 {
            width: 584px;
            height: 26px;
        }
        .auto-style37 {
            height: 30px;
            width: 584px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

   <div class="login_box">
    <img src="Images/ab.jpg" style="height: 156px; width: 470px" /><h1 class="auto-style2">Welcome To Nilkhant Restaurant</h1>
            <p class="auto-style5">Have Nice Day</p>    
            <table class="auto-style13" style="border: medium double #0000FF; margin-top: 0px; height: 489px; box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);border-radius: 50px 20px;">
                <tr>
                    <td class="auto-style27" style="font-size: medium">&nbsp;</td>
                    <td class="auto-style25">
                        <span class="auto-style26">&nbsp;</span><span class="auto-style10">&nbsp;<span class="auto-style28">Sign up</span></span></td>
                </tr>
                <tr>
                    <td class="auto-style24" style="font-size: medium"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><span class="auto-style18"><strong>Enter your name :</strong></span></td>
                    <td class="auto-style25">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="login_txt1" Height="29px" Width="392px" BorderColor="#3366FF" BorderStyle="Solid"  ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#FF3300" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="only Character" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="font-size: medium"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style18">Enter your e-mail :</span></strong></td>
                    <td class="auto-style20"><asp:TextBox ID="TextBox2" runat="server" TextMode="Email" CssClass="login_txt2" Height="28px" Width="400px" BorderColor="#0066FF"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="font-size: medium"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style18">Enter your password :</span></strong></td>
                    <td class="auto-style29"><asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="login_txt2" Width="400px" Height="28px" BorderColor="Blue"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="MIssing" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td>
                    <asp:Button ID="Button1" runat="server" Height="57px" Text="Submit" Width="219px" BorderColor="White" BorderStyle="Double" BorderWidth="5px" OnClick="Button1_Click" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                  </td>
                </tr>
                <tr>
                  <td class="auto-style17"> 
                      <a href="login_page.aspx" class="auto-style7"><span class="auto-style6">Have already an account </span><span class="auto-style8">?</span> <span class="auto-style8">&nbsp;</span></a><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" style="font-size: large; color: #FF3300">Login hear</asp:HyperLink>
                  </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
