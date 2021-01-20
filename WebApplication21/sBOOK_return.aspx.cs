using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls.Expressions;

namespace WebApplication21
{
    public partial class sBOOK_return : System.Web.UI.Page
    {
        String mycon = "Server=localhost; Database=library; Uid=root; Password=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //return date (today)
                returnDate.Text = System.DateTime.Now.ToString("dd-MM-yyyy");
            }

        }

        protected void userIdChanged(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select userName as 'User Name',bookLNo as 'Book L No', bookName as 'Book Name', authorName as 'Author Name', issueDate as 'Issue Date', rack as 'Rack' from book_issue WHERE userId='" + userId.Text.Trim() + "' and status= 'active' ", con);
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
                    Response.Write("<script>alert('This user has not issued any book.')</script>");
                    userId.Text = "";
                    remark.Text = "Nil";
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void bookLNoChanged(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select issueDate, rack from book_issue WHERE userId='" + userId.Text.Trim() + "' and bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    issueDate.Value = dt.Rows[0]["issueDate"].ToString();
                    rack.Text = dt.Rows[0]["rack"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Book L No')</script>");
                    bookLNo.Text = "";
                    rack.Text = "";
                    remark.Text = "Nil";
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

        protected void submit_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("update book_issue SET status = 'inactive' where userId='" + userId.Text.Trim() + "' and bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                cmd.ExecuteNonQuery();
                //need to update stock table
                cmd = new MySqlCommand("update bookentry SET STATUS = 'active' where LGNO ='" + bookLNo.Text.Trim() + "' and STATUS= 'inactive' ", con);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    //update query

                    //insert into book return
                    cmd = new MySqlCommand("insert into book_return(userId,bookLNo,issueDate,returnDate,remark) values(@a1,@a2,@a3,@a5,@a6)", con);
                    cmd.Parameters.AddWithValue("@a1", userId.Text.Trim());
                    cmd.Parameters.AddWithValue("@a2", bookLNo.Text.Trim());
                    cmd.Parameters.AddWithValue("@a3", Convert.ToString(issueDate.Value)); //retrieve val from hiddenfield
                    cmd.Parameters.AddWithValue("@a5", returnDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@a6", remark.Text.Trim());
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Book Returned Successfully')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
                //clear all fields
                userId.Text = "";
                bookLNo.Text = "";
                remark.Text = "Nil";
                rack.Text = "";
                GridView1.DataSource = null;
                GridView1.DataBind();

            }

        }
    }
}