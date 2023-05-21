<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="Food.ViewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
    .auto-style5 {
        height: 119px;
    }
    .auto-style6 {
        text-align: center;
        color: #333300;
        font-weight: normal;
        font-size: xx-large;
    }
    .auto-style7 {
    }
    .auto-style8 {
        background-color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style4" style="width:1180px; height:668px; background-color:#CCCCFF; background-image: url('Images/adcb.jpg'); background-repeat: no-repeat;" align="center">
        <tr>
            <td colspan="2" class="auto-style5"><h1 class="auto-style6"><strong><span class="auto-style8">View Order</span></strong></h1></td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="185px" Width="330px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId">
                        </asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address">
                        </asp:BoundField>
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile">
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <center>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Height="202px" Width="594px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId">
                        </asp:BoundField>
                        <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno">
                        </asp:BoundField>
                        <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId">
                        </asp:BoundField>
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname">
                        </asp:BoundField>
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice">
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity">
                        </asp:BoundField>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date">
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                    </center>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FoodConnectionString %>" SelectCommand="SELECT * FROM [OrderA]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodConnectionString %>" InsertCommand="INSERT INTO [OrderD] ([OrderId], [sno], [ProductId], [Pname], [Pprice], [Quantity], [Date]) VALUES (@OrderId, @sno, @ProductId, @Pname, @Pprice, @Quantity, @Date)" SelectCommand="SELECT * FROM [OrderD]" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                    <InsertParameters>
                        <asp:Parameter Name="OrderId" Type="String" />
                        <asp:Parameter Name="sno" Type="Int32" />
                        <asp:Parameter Name="ProductId" Type="Int32" />
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="Pprice" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Date" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>
