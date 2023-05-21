<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminH.aspx.cs" Inherits="Food.AdminH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <style type="text/css">
    .auto-style4 {
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large">Welcome <strong>To Admin Panel..@Nilkhant Restaurant</strong></h1> 
    <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
    <script>
        var xValues = ["Punjabi", "Italian", "Gujarati", "kathiyavadi", "Jain"];
        var yValues = [55, 49, 44, 24, 15];
        var barColors = [
            "#b91d47",
            "#00aba9",
            "#2b5797",
            "#e8c3b9",
            "#1e7145"
        ];

        new Chart("myChart", {
            type: "doughnut",
            data: {
                labels: xValues,
                datasets: [{
                    backgroundColor: barColors,
                    data: yValues
                }]
            },
            options: {
                title: {
                    display: true,
                    text: "Nilkhant Restaurant"
                }
            }
        });
    </script>
</asp:Content>
