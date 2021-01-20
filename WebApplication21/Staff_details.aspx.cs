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
    public partial class WebForm4 : System.Web.UI.Page
    {
        String mycon = "Server=localhost; Database=library; Uid=root; Password=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select * from sta_signup WHERE user_id ='" + Session["userid"] + "' ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('DATA not found!')</script>");
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select bookLNo as 'Book L No',bookName as 'Book Name', authorName as 'Author Name', issueDate as 'Issue Date', rack as 'Rack' from book_issue where status='active' and userId = '" + Session["userid"] + "' ", con);

                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No Book issued!')</script>");
                    GridView2.DataSource = null;
                    GridView2.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();

            }

        }
    }
}
        
