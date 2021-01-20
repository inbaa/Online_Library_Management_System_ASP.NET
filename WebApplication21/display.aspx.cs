using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls.Expressions;

namespace WebApplication21
{
    public partial class display : System.Web.UI.Page
    {

        String mycon = "Server=localhost; Database=library; Uid=root; Password=;";
        protected void Page_Load(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();


                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from bookentry ";
                
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                r1.DataSource = dt;
                r1.DataBind();


               //cmd.CommandText = "select * from bookentry ";
               cmd.CommandText = "select * from bookentry where(bookentry.CATEGORY='COMPUTER SCEIENCE') ";
               MySqlDataAdapter das = new MySqlDataAdapter(cmd);
               DataTable dtt = new DataTable();
               das.Fill(dtt);
               r2.DataSource = dtt;
               r2.DataBind();

                cmd.CommandText = "select * from bookentry where(bookentry.CATEGORY='GIFT') ";
                MySqlDataAdapter dad = new MySqlDataAdapter(cmd);
                DataTable dtd = new DataTable();
                dad.Fill(dtd);
                r3.DataSource = dtd;
                r3.DataBind();

            }

            catch { }

        }


            


            


        
   
    }   
}