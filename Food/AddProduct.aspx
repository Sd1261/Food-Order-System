<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Food.AddProduct1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style1{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius:15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:870px; background-image: url('Images/adcb.jpg');">
    <table style="width:700px; height:390px; background-color:white;" class="auto-style1" align="center">
        <tr>
            <td align="center" width="50%" colspan="2" class="auto-style1"><h1 style="color: #FF0000; font-family: Arial, Helvetica, sans-serif">Add Product</h1></td>
        </tr>
        <tr>
            <td align="center" width="50%" class="auto-style4">
                <h3><strong>Category</strong></h3>
            </td>
            <td>
                <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName">
                </asp:DropDownList>--%>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%"><h3>Product Name</h3></td>
            <td width="50%"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" width="50%"><h3>Product Desc</h3></td>
            <td width="50%"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" width="50%"><h3>Image</h3></td>
            <td width="50%"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td align="center" width="50%"><h3>Product Price</h3></td>
            <td width="50%"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="2">   
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Height="32px" Width="77px" /> 
            </td>
            <td></td>
        </tr>
        <tr>
            <td align="center" width="50%"colspan="2"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td align="center" width="50%"colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" InsertVisible="False" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="Pdesc" HeaderText="Pdesc" SortExpression="Pdesc"></asp:BoundField>

                        <asp:BoundField DataField="Pimage" HeaderText="Pimage" SortExpression="Pimage" />
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FoodConnectionString %>" SelectCommand="SELECT * FROM [Product_FF]" DeleteCommand="DELETE FROM [Product_FF] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Product_FF] ([Pname], [Pdesc], [Pimage], [Pprice]) VALUES (@Pname, @Pdesc, @Pimage, @Pprice)" UpdateCommand="UPDATE [Product_FF] SET [Pname] = @Pname, [Pdesc] = @Pdesc, [Pimage] = @Pimage, [Pprice] = @Pprice WHERE [ProductId] = @ProductId">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductId" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pdesc" Type="String" />
                        <asp:Parameter Name="Pimage" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pdesc" Type="String" />
                        <asp:Parameter Name="Pimage" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Decimal" />
                        <asp:Parameter Name="ProductId" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
