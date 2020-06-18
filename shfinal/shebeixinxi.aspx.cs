using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;

namespace shfinal
{
    public partial class shebeixinxi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("yuangong.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView3.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            byte[] bytes = File.ReadAllBytes(@"c:\test.gif");         
            SqlCommand cmd = new SqlCommand("insert into Equipment(图片字段) values(@image)");
            cmd.Parameters.Add("@image", SqlDbType.Image).Value = bytes;
            cmd.ExecuteNonQuery();
            String strConn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            
        }
    }
}