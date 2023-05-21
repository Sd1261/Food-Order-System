<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback1.aspx.cs" Inherits="Food.Feedback1" %>

<!DOCTYPE html>
    <script runat="server">

        
</script>


    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>feedback form Design</title>
   <link href="Css/feedback1.css" rel="stylesheet" />
</head>

<body>
 
    <div class="wrapper">
		<h2>Feedback Form</h2>
		 <form id="form1" runat="server">
			<div class="input-field">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
			</div>
			<div class="input-field">
                <asp:TextBox ID="TextBox2" runat="server"  placeholder="Email" TextMode="Email"></asp:TextBox>
			</div>
			<div class="input-field">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Feedback" TextMode="MultiLine"></asp:TextBox>
			</div>
                 <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn" OnClick="Button1_Click"/>			
         </form>
        </div>


</body>
</html>
