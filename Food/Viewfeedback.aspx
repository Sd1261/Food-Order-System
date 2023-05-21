<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Viewfeedback.aspx.cs" Inherits="Food.Viewfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 1238px;
            height: 559px;
        }
        .auto-style5 {
            width: 1312px;
        }
    .auto-style6 {
        text-align: center;
        color: #333300;
        font-weight: normal;
        font-size: xx-large;
    }
    .auto-style8 {
        background-color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5" style="background-image: url('Images/adcb.jpg')">
                <Center>
                    <h1 class="auto-style6"><strong><span class="auto-style8">View Feedback</span></strong></h1>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Name" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="259px" Width="491px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Name] = @Name" InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Feedback]) VALUES (@Name, @Email, @Feedback)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Email] = @Email, [Feedback] = @Feedback WHERE [Name] = @Name">
                    <DeleteParameters>
                        <asp:Parameter Name="Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </Center>
            </td>
        </tr>
      
    </table>
    </center>
</asp:Content>
