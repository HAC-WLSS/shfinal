using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shfinal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("shebeixinxi.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bumenxinxi.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yuangongxinxi.aspx");
        }
    }
}