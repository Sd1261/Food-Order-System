<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Food.Order" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FF0000;
        }
        .auto-style2 {
            width: 50%;
            height: 83px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
            margin-bottom:10px;
            padding-right:50px;
        }
        .auto-style4 {
            width: 67%;
            height: 177px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
            margin-top:10px;
            padding-right:50px;
        }
        .auto-style6 {
            padding-left:50px;

        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style9 {
            width: 253px;
            color: #000000;
            font-size: large;
        }
        .auto-style6{
        margin-bottom:10px;
        }
        .auto-style10 {
            width: 701px;
        }
        .auto-style12 {
            width: 253px;
            color: #000000;
            font-size: large;
            height: 53px;
        }
        .auto-style13 {
            width: 701px;
            height: 53px;
        }
        .auto-style14 {
            text-decoration: underline;
        }
        .auto-style15 {
            width: 156px;
            font-weight: bold;
            font-size: large;
            height: 51px;
        }
        .auto-style16 {
            width: 552px;
            height: 51px;
        }
    </style>
</head>
<body style="margin-left: 10px;">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <span class="auto-style14"><strong>Nilkhant Restaurants 
        <br />
        </strong></span>
        <br />
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style15">Order ID:</td>
                <td class="auto-style16">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style8" BackColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Order Date:</td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" BackColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style3"><tr>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True" CssClass="auto-style6" GridLines="None" Height="243px" HorizontalAlign="Left" Width="650px" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Pimage" HeaderText="Product Image">
                    <ControlStyle Height="120px" Width="120px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Pprice" HeaderText="Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="Total Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="50px" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </tr></table>
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Type Your Address&nbsp;&nbsp; :-</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="69px" Width="351px" BorderColor="Black" BorderStyle="Groove" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Mobile Number&nbsp; :-</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" Width="308px" cssClass="form-control" Height="26px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <h3>
            <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="Order Now" Width="199px" CssClass="btn btn-success" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
        </h3>
    </form>
</body>
</html>
