using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shfinal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yuangongxinxi2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("shebeixinxi2.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bumenxinxi2.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("bianjiyuangong.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("bianjishebei.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("bianjibumen.aspx");
        }
    }
}