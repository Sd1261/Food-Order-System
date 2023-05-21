using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Food
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]!= null)
            {
                Session.RemoveAll();
            }
        }
        protected void Button1_Click2(object sender, EventArgs e) // Code By:Samir Dave
        {
            try
            {
                string constring = ConfigurationManager.ConnectionStrings["FoodConnectionString"].ToString();
                SqlConnection con = new SqlConnection(constring);
                string query = "select * from Users where Fname='" + TextBox1.Text.Trim() + "' and Password='" + TextBox2.Text.Trim() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                DataTable dtb1 = new DataTable();
                sda.Fill(dtb1);
                if (TextBox1.Text == "" && TextBox2.Text == "")
                {
                    Response.Write("<script>alert('enter Value')</script>");
                }
                else
                {
                    Session["id"] = TextBox1.Text;
                    Response.Redirect("~/Default.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert("+ex.Message+"+)</script>");
            }
        }
    }
}