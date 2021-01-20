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
    public partial class userlogin : System.Web.UI.Page
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

                MySqlCommand cmd = new MySqlCommand("select * from  st_signup where Register_no ='" + TextBox1.Text.Trim() + "' and password = '" + TextBox2.Text.Trim() + "';", mycon);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Write("<script>alert('WELCOME TO DCS')</script>");
                     Session["regno"] = TextBox1.Text.Trim(); 
                    Response.Redirect("PageCommon1.aspx");
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