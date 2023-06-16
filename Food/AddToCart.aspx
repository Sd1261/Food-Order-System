<%@ Page Language="C#"  MasterPageFile="~/AllPage.Master"  AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Food.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .card-body {        
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
            height :auto;
            width: 700px;
            padding-top: 32px;
        }
        .box{
             box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
              width: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="sd" style ="margin-top:50px">  
      <center>
          <div class="card-body">
      <asp:GridView ID="GridView1" CssClass="box" runat="server" AutoGenerateColumns="False" EmptyDataText="No Product in Cart" Height="217px" Width="593px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
       <Columns>
                <asp:BoundField DataField="sno" HeaderText="SNo.   " >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Name" />
                <asp:ImageField DataImageUrlField="Pimage" HeaderText="Product Image">
                    <ControlStyle Height="120px" Width="120px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Pdesc" HeaderText="Description" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Pprice" HeaderText="Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="Total Price" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
        <EditRowStyle BackColor="#999999"></EditRowStyle>

<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

<PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

<RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

<SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
</asp:GridView>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" cssClass="btn btn-danger" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFFFF" Height="60px" PostBackUrl="~/Default.aspx" Text="Continue Shopping" Width="219px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="60px" OnClick="Button2_Click1" PostBackUrl="~/Order.aspx" Text="Order" Width="188px" CssClass="btn btn-success" Font-Bold="True" Font-Size="Medium" />
        <br />
        <br />
        <br />
        <br />
       </center>
       </div>
</asp:Content>