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
    public partial class AddCategory : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["FoodConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constring);
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Category values('" + TextBox2.Text + "','" + TextBox1.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your Data Are Inserted Successfully')</script>");
            }
            catch
            {

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        }    
    }
