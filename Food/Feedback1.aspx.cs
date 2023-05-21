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
    public partial class Feedback1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-3Q73J9FB;Initial Catalog=Food;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Default.aspx");
        }
    }
}