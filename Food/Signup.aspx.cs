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
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string constring = ConfigurationManager.ConnectionStrings["FoodConnectionString"].ToString();
                SqlConnection con = new SqlConnection(constring);
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Users(Fname,Lname,Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your Data Are Inserted Successfully')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + "+)</script>");
            }
        }
    }
}