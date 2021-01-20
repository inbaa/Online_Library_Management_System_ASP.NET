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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string mycon = "Server=localhost;Database=library;Uid=root;Password= ;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //issue date (today)
            issueDate.Text =System.DateTime.Now.ToString("dd-MM-yyyy");
            // DateTime id = Convert.ToDateTime(issueDate.Text);
            //dueDate.Text=Convert.ToString(id.AddDays(30));
            dueDate.Text = DateTime.Now.AddDays(30).ToString("dd-MM-yyyy");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkBookStatus())
            {
                if (checkMemberExist() && checkBookExist())
                {
                    if (checkIfEntryExist())
                    {
                        Response.Write("<script>alert('This member has this book')</script>");
                        bookLNo.Text = "";
                    }
                    else
                    {
                        search();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Member or Book ID is wrong')</script>");
                    bookLNo.Text = "";
                    userId.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Book is not available')</script>");
                bookLNo.Text = "";
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (checkBookStatus())
            {
                if (checkMemberExist() && checkBookExist())
                {
                    if (checkIfEntryExist())
                    {
                        Response.Write("<script>alert('This member has this book')</script>");
                        bookLNo.Text = "";
                    }
                    else
                    {
                        // is used bcoz userName.Text did not give empty value changed by js on client side  
                        string x = userName.Text;
                       // string zzzz = "<script> if(document.getElementById('<%=userName.ClientID%>').value=='' ) return False </script>";
                       // Response.Write("<script>alert(' "+zzzz+"')</script>");
                        if (String.IsNullOrEmpty(dueDate.Text) || String.IsNullOrEmpty(x) || x.Equals(""))
                        {
                            Response.Write("<script>alert('Enter Due Date or Click Search again!')</script>");
                            userName.Text = "";
                            bookName.Text = "";
                            authorName.Text = "";
                        }
                        else
                        {
                            //Compare due date an issue date
                            string IssueDate = issueDate.Text.Trim();
                            string DueDate = dueDate.Text.Trim();
                            DateTime id, dt;
                            id = Convert.ToDateTime(IssueDate);
                            dt = Convert.ToDateTime(DueDate);
                            if ((DateTime.Compare(id, dt)) >= 0)
                            {
                                Response.Write("<script>alert('Due date cannot be earlier than issue date')</script>");
                            }
                            else
                            {
                                bookIssue();
                            }
                        }

                    }
                }

                else
                {
                    Response.Write("<script>alert('Member or Book ID is wrong')</script>");
                    bookLNo.Text = "";
                    userId.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Book is not available')</script>");
                bookLNo.Text = "";
            }


        }


        bool checkBookStatus()
            {
                MySqlConnection con = new MySqlConnection(mycon);
                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    //grid view for all the books user issued and active
                    MySqlCommand cmd = new MySqlCommand("select BNAME from bookentry WHERE LGNO='" + bookLNo.Text.Trim() + "' and STATUS= 'active' ", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                finally
                {
                    con.Close();
                }
            }
        //check member exists
        bool checkMemberExist()
        {
            // check if member exists no need to check for no of books issued as it is shown in gridview
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select UserId from st_signup WHERE Register_no ='" + userId.Text.Trim() + "'  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            finally
            {
                con.Close();
            }

        }

        //check book exist
        bool checkBookExist()
        {
            //check if book exists and if stock>0 else print no stock
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select BNAME from bookentry WHERE LGNO='" + bookLNo.Text.Trim() + "'  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            finally
            {
                con.Close();
            }

        }

        //check if entry exist
        bool checkIfEntryExist()
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from bookissue WHERE userId='" + userId.Text.Trim() + "' and bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                //returns true if entry exists else false
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();

            }
        }

        //search
        void search()
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //changeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                MySqlCommand cmd = new MySqlCommand("select ANAME,BNAME, RNO from bookentry WHERE  LGNO  ='" + bookLNo.Text.Trim() + "' and STATUS = 'active' ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                   
                    authorName.Text = dt.Rows[0]["ANAME"].ToString();
                    bookName.Text = dt.Rows[0]["BNAME"].ToString();
                    rack.Text = dt.Rows[0]["RNO"].ToString();
                }

                //need to search from user table
                cmd = new MySqlCommand("select Full_Name from st_signup WHERE  Register_no  ='" + userId.Text.Trim() + "'  ", con);
                MySqlDataAdapter daa = new MySqlDataAdapter(cmd);
                DataTable dtt = new DataTable();
                daa.Fill(dtt);
                if (dtt.Rows.Count >= 1)
                {
                    //need to search from user table
                    userName.Text = dtt.Rows[0]["Full_Name"].ToString();
                }

                //grid view for all the books issued by this user and active
                cmd = new MySqlCommand("select userName as 'User Name', bookName as 'Book Name', authorName as 'Author Name', issueDate as 'Issue Date', dueDate as 'Due Date', rack as 'Rack' from bookissue WHERE userId='" + userId.Text.Trim() + "' and status= 'active' ", con);
                da = new MySqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 4)
                {
                    //cannot issue 4 books to a user
                    Response.Write("<script>alert('Cannot issue more than 4 Books to a user')</script>");
                    userId.Text = "";
                    bookLNo.Text = "";
                    userName.Text = "";
                    bookName.Text = "";
                    authorName.Text = "";
                    rack.Text = "";
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = dt;
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

        //issue book 
        void bookIssue()
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                /*
                string UserId = Request.Form.Get("userId").Trim();
                string BookLNo = Request.Form.Get("bookLNo").Trim();
                string BookName = Request.Form.Get("bookName");
                string AuthorName = Request.Form.Get("authorName");
                string IssueDate = Request.Form.Get("issueDate");
                string DueDate = Request.Form.Get("dueDate");
                */

                MySqlCommand cmd = new MySqlCommand("insert into BookIssue(userId,bookLNo,userName,bookName,authorName,issueDate,dueDate,status,rack) values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9)", con);
                cmd.Parameters.AddWithValue("@a1", userId.Text.Trim());
                cmd.Parameters.AddWithValue("@a2", bookLNo.Text.Trim());
                cmd.Parameters.AddWithValue("@a3", userName.Text.Trim());
                cmd.Parameters.AddWithValue("@a4", bookName.Text.Trim());
                cmd.Parameters.AddWithValue("@a5", authorName.Text.Trim());
                cmd.Parameters.AddWithValue("@a6", issueDate.Text.Trim());
                cmd.Parameters.AddWithValue("@a7", dueDate.Text.Trim());
                cmd.Parameters.AddWithValue("@a8", "active");
                cmd.Parameters.AddWithValue("@a9", rack.Text.Trim());
                cmd.ExecuteNonQuery();
                //need to update stock table
                cmd = new MySqlCommand("update bookentry SET STATUS = 'inactive' where LGNO  ='" + bookLNo.Text.Trim() + "' and STATUS = 'active' ", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    //update query
                    Response.Write("<script>alert('Book Issued Successfully')</script>");
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
                userName.Text = "";
                bookName.Text = "";
                authorName.Text = "";
                rack.Text = "";
                GridView1.DataSource = null;
                GridView1.DataBind();

            }


        }

    }
}