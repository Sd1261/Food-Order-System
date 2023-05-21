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
    public partial class AddProduct1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminlogin"] == null)
            {
                Response.Redirect("~/Adminlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string constring = ConfigurationManager.ConnectionStrings["FoodConnectionString"].ToString();
                SqlConnection con = new SqlConnection(constring);
                con.Open();
                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.PostedFile.FileName;
                    string filepath = "Images/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                    SqlCommand cmd = new SqlCommand("insert into Product_FF (Pname,Pimage,Pprice,Pdesc)values('" + TextBox2.Text + "','" + filepath + "','" + TextBox4.Text + "','" + TextBox3.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Your Data Are Inserted Successfully')</script>");
                    GridView1.DataBind();
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + "+)</script>");
            }
        }
    }
}