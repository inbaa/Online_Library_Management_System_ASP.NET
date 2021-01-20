using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace WebApplication21
{
    public partial class guest_Login : System.Web.UI.Page
    {
        String con = "server =localhost;database =library; Uid=root; password = ; ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection mycon = new MySqlConnection(con);
                if (mycon.State == ConnectionState.Closed)
                {
                    mycon.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from  guest_signup where UserId ='" + TextBox1.Text.Trim() + "' and PASSWORD = '" + TextBox2.Text.Trim() + "';", mycon);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('username and password is correct')</script>");
                    Session["userid"] = TextBox1.Text.Trim();
                    Response.Redirect("PageCommong.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid user')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");

            }
        }
    }
}