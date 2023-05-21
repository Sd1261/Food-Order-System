using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food
{
    public partial class Default1 : System.Web.UI.Page // Code By:-Samir//
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["id"] != null)
            {
                TextBox txtbox = (TextBox)(e.Item.FindControl("TextBox1"));
                Session["addproduct"] = "true";
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&Quantity=" + txtbox.Text);
            }
            else
            {
                Response.Redirect("Login.aspx");
                Session.RemoveAll();
            }
        }

        
    }
}