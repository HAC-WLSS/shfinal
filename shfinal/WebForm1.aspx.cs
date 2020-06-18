using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shfinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string psw = TextBox2.Text.Trim();
            String strConn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection conn = new SqlConnection(strConn);        
            SqlCommand cmd = new SqlCommand("select * from Employee where 人员编号='"+name+"'and 密码='"+psw+ "'and 是否管理人='1'", conn);
            DataSet ds = new DataSet();
            //打开数据库连接
            conn.Open();
            //获取数据
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["name"] = dr["人员编号"].ToString().Trim();
                Session["psw"] = dr["密码"].ToString().Trim();
                Response.Redirect("guanliren.aspx");
            }
            else
                Label2.Text = "登录失败！";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string psw = TextBox2.Text.Trim();
            String strConn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("select * from Employee where 人员编号='" + name + "'and 密码='" + psw + "'and 是否管理人='0'", conn);
            DataSet ds = new DataSet();
            //打开数据库连接
            conn.Open();
            //获取数据
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["name"] = dr["人员编号"].ToString().Trim();
                Session["psw"] = dr["密码"].ToString().Trim();
                Response.Redirect("yuangong.aspx");
            }
            else
                Label2.Text = "登录失败！";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }
    }
}