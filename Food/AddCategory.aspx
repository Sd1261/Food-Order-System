<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Food.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .auto-style1{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
        }
        .auto-style4 {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
        }
        .auto-style5 {
        }
        .auto-style8 {
            height: 80px;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style10 {
            color: #000000;
        }
        .auto-style11 {
            text-align: center;
            font-weight: normal;
        }
        .auto-style12 {
            width: 340px;
            font-size: x-large;
            height: 96px;
        }
        .auto-style13{
                margin-right: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:870px; background-image: url('Images/adcb.jpg');">
    <table class="auto-style4" style="width:700px; height:390px; background-color:white;" align="center">
        <tr>
            <td align="center" width="50%" colspan="2" class="auto-style1"><h1 style="color: #FF0000; font-family: Arial, Helvetica, sans-serif">Add Category</h1></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong style="margin-left:102px;">Category Id</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style9">&nbsp;</span><span class="auto-style10">Category Name</span></strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style8"><asp:Button ID="Button6" runat="server" Height="37px" OnClick="Button6_Click1" Style="margin-left:225px;" Text="Add" Width="118px" BorderStyle="Dotted" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style14" >   
           </td>   
        </tr>
    </table>
   </div>
</asp:Content>
