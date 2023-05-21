using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "samir")
            {
                Session["adminlogin"] = TextBox1.Text;  
                Response.Redirect("AdminH.aspx");
            }
            else
            {
                Response.Write("<script>alert('Enter Valid Credentials')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}