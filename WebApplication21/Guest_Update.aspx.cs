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
    public partial class Guest_Update : System.Web.UI.Page
    {
        String con = "server =localhost;database =library; Uid=root; password = ; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["userid"].ToString() == "" || Session["userid"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    getUserBookData();

                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["userid"].ToString() == "" || Session["userid"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
            void updateUserPersonalDetails()
            {
                string password = "";
                if (TextBox10.Text.Trim() == "")
                {
                    password = TextBox9.Text.Trim();
                }
                else
                {
                    password = TextBox10.Text.Trim();
                }
                try
                {
                    MySqlConnection mycon = new MySqlConnection(con);
                    if (mycon.State == ConnectionState.Closed)
                    {
                        mycon.Open();
                    }


                    MySqlCommand cmd = new MySqlCommand("update st_signup set Full_Name=@Full_Name, DOB=@DOB, contact_no=@contact_no, mail_id=@mail_id, course=@course, batch=@batch,password=@password,where Register_no='" + Session["userid"].ToString().Trim() + "'", mycon);

                    cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@mail_id", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@Desigination", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@password", password);


                    int result = cmd.ExecuteNonQuery();
                    mycon.Close();
                    if (result > 0)
                    {

                        Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                        getUserPersonalDetails();
                        getUserBookData();
                    }
                    else
                    {
                        Response.Write("<script>alert('Invaid entry');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
        void getUserPersonalDetails()
        {
            try
            {
                MySqlConnection mycon = new MySqlConnection(con);
                if (mycon.State == ConnectionState.Closed)
                {
                    mycon.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from st_signup where Register_no='" + Session["userid"].ToString() + "';", mycon);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["Full_Name"].ToString();
                TextBox2.Text = dt.Rows[0]["DOB"].ToString();
                TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox4.Text = dt.Rows[0]["mail_id"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["course"].ToString().Trim();
                TextBox8.Text = dt.Rows[0]["Register_no"].ToString();
                TextBox9.Text = dt.Rows[0]["password"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void getUserBookData()
        {
            try
            {
                MySqlConnection mycon = new MySqlConnection(con);
                if (mycon.State == ConnectionState.Closed)
                {
                    mycon.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from bookissue where userId='" + Session["userid"].ToString() + "';", mycon);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}

