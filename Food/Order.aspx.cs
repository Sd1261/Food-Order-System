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
    public partial class Order : System.Web.UI.Page
    {
        string mycon = ConfigurationManager.ConnectionStrings["FoodConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("login.aspx");
                Session.RemoveAll();
            }
            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("ProductId");
                dt.Columns.Add("Pname");
                dt.Columns.Add("Pimage");
                dt.Columns.Add("Pdesc");
                dt.Columns.Add("quantity");
                dt.Columns.Add("Pprice");
                dt.Columns.Add("total");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product_FF where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        decimal Pprice = Convert.ToDecimal(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        Int64 quantity = Convert.ToInt64(Request.QueryString["quantity"].ToString());
                        decimal totalprice = Pprice * quantity;
                        dr["total"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product_FF where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["Pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["Pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        Int64 Pprice = Convert.ToInt64(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        Int64 quantity = Convert.ToInt64(Request.QueryString["quantity"].ToString());
                        Int64 totalprice = Pprice * quantity;
                        dr["total"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }


            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

                }
            }
            Label2.Text = DateTime.Now.ToShortDateString();
            findOrderId();
        }
        public decimal grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            decimal gtotal = 0;
            while (i < nrow)
            {
                gtotal += Convert.ToDecimal(dt.Rows[i]["total"].ToString());
                i = i + 1;
            }
            return gtotal;
        }
        public void findOrderId()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String OrderId;
            OrderId = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
            Label1.Text = OrderId;
        }

        public void saveaddress()
        {
            String updatepass = "insert into OrderA(OrderId,Address,Mobile) values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlConnection s = new SqlConnection(mycon);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into OrderD(OrderId,sno,ProductId,Pname,Pprice,Quantity,Date) values('" + Label1.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["ProductId"] + ",'" + dt.Rows[i]["Pname"] + "'," + dt.Rows[i]["Pprice"] + "," + dt.Rows[i]["Quantity"] + ",'" + Label2.Text + "')";
                SqlConnection s = new SqlConnection(mycon);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }
            saveaddress();
            Response.Redirect("OrderMsg.aspx");
        }
      }
    }
