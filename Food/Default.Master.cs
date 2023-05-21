using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] == null)
            {
                btnlogin.Visible = true;
                btnsignup.Visible = true;
            }
            else
            {
                btnlogout.Visible = true;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 4);
            Image2.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }
    }
}