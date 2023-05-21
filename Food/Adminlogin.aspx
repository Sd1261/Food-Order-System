<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Food.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            width: 42%;
            border: 4px solid #000000;
            box-shadow: 0 6px 9px 0 rgba(0, 0, 0, 0.2), 0 7px 22px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
        }
        .auto-style6 {
            font-size: medium;
            color: #333333;
            font-weight: 700;
        }
        .auto-style7 {
            color: #FF6600;
            font-size: larger;
        }
        .auto-style9 {
            height: 75px;
            width: 253px;
        }
        .auto-style10 {
            width: 212px;
            height: 75px;
        }
        .auto-style11 {
            height: 23px;
            width: 253px;
        }
        .auto-style12 {
            width: 212px;
            height: 23px;
        }
        .auto-style13 {
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="text-align: center; background-image: url('Images/bg.jpg'); background-color: #FFFFFF; height: auto; color: #800080; width: auto;">
    
        <span class="auto-style7"><em><strong><br />
        </strong>
        <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="~/Images/adminlogin.png" Width="272px" />
        </em></span><br />
        <br />
        <table align="center" class="auto-style2" style="border: thick double #000000; height: 367px;">
            <tr>
                <td class="auto-style11" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large">
                    <br/>
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Enter User ID"></asp:Label>
                    <br/>
                    </strong>
                    <br/>
                </td>
                <td class="auto-style12">
                    <br/>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Double" Height="32px" Width="229px"></asp:TextBox>
                    <br/>
                    <br/>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Enter Password"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderStyle="Double" Height="29px" Width="227px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="LogIn" Width="145px" BorderColor="#006666" BorderStyle="Groove" BorderWidth="3px" Font-Bold="True" Font-Size="Large" style="text-align: center" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#663300" NavigateUrl="~/Login.aspx" style="font-size: medium">Go To User Login</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>

