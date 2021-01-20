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
    public partial class Staff_Update : System.Web.UI.Page
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


                    MySqlCommand cmd = new MySqlCommand("update sta_signup set Full_Name=@Full_Name, DoB=@DoB, CONTACT_NO=@CONTACT_NO, MAIL_ID=@MAIL_ID, DESIGINATION=@DESIGINATION,,PASSWORD=@PASSWORD,where user_id='" + Session["userid"].ToString().Trim() + "'", mycon);

                    cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@DoB", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@CONTACT_NO", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@MAIL_ID", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@DESIGINATION", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@PASSWORD", password);


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

                MySqlCommand cmd = new MySqlCommand("select * from sta_signup where user_id='" + Session["userid"].ToString() + "';", mycon);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["Full_Name"].ToString();
                TextBox2.Text = dt.Rows[0]["DoB"].ToString();
                TextBox3.Text = dt.Rows[0]["CONTACT_NO"].ToString();
                TextBox4.Text = dt.Rows[0]["MAIL_ID"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["DESIGINATION"].ToString().Trim();
                TextBox8.Text = dt.Rows[0]["user_id"].ToString();
                TextBox9.Text = dt.Rows[0]["PASSWORD"].ToString();
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
    
