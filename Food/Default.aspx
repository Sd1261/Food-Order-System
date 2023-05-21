<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Food.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 
      {
      height: 19px;
      }
     .divs {        
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      border-radius: 50px  20px;
      margin-left: 25px;
      }
     .zoom {
      padding: 50px;
      transition: transform .9s;
      width: 300px;
      height: 300px;
      margin: 0 auto;
     }

     .zoom:hover {
     -ms-transform: scale(1.3); /* IE 9 */
     -webkit-transform: scale(1.3); /* Safari 3-8 */
     transform: scale(1.2); 
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1289px; height:29px">
        <tr style="background-color:black">
            <td colspan="2" style="text-align:right" class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:FoodConnectionString %>' SelectCommand="SELECT * FROM [Product_FF] WHERE ([Pname] LIKE '%' + @Pname + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="Pname" Type="String"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <h1 class="rating_title"Style="text-align:center; font-family: Arial, Helvetica, sans-serif;">Top Rated Foods</h1>
   <p class="rating_title"Style="text-align:center; font-family: Arial, Helvetica, sans-serif;">Food For good Mood</p>  
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" Style="padding-right:15px;" DataSourceID="SqlDataSource1" Height="293px" Width="590px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" HorizontalAlign="Center">
        <ItemTemplate>
            <table class ="divs ">
                <tr>
                    <td style="text-align:center; background-color:#666666; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: large;">
                        <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" BorderColor="#FFFF99" BorderStyle="None" Height="275px" Width="278px" ImageUrl='<%# Eval("Pimage") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#666666; color: #FFFFFF;">
                        <asp:Label ID="Label2" runat="server" Text="Price:Rs" Font-Bold="True" Font-Names="Arial" Style="text-align:center"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" Font-Names="Arial" Style="text-align:center"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">Qauntity
                        <asp:TextBox ID="TextBox1" Text="1" runat="server" Height="35px" Width="70px" cssClass="form-control" BorderWidth="3px"></asp:TextBox>
                   </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="60px" ImageUrl="~/Images/add-cart-button-walmart.jpg" Width="181px" CommandArgument='<%# Eval("ProductId")%>'
                             CommandName="AddToCart" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
</asp:DataList>
       
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodConnectionString %>" SelectCommand="SELECT [ProductId], [Pname], [Pimage], [Pprice] FROM [Product_FF]"></asp:SqlDataSource>

</asp:Content>
