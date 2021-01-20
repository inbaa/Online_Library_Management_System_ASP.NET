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
    public partial class staffsignup : System.Web.UI.Page
    {
        String con = "server =localhost;database =library; Uid=root; password = ; ";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkid())
            {
                Response.Write("<script>alert('user Id already exsist');</script>");
            }
            else
            {
                signupn();
            }


        }
        bool checkid()
        {
            try
            {
                MySqlConnection mycon = new MySqlConnection(con);
                if (mycon.State == ConnectionState.Closed)
                {
                    mycon.Open();
                }
                MySqlCommand cmd = new MySqlCommand("select * from sta_signup where User_id='" + TextBox5.Text.Trim() + "';", mycon);
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
                mycon.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to LOGIN');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }

            return false;
        }
        void signupn()
        {
            MySqlConnection mycon = new MySqlConnection(con);
            try
            {
                if (mycon.State == ConnectionState.Closed)
                    mycon.Open();

                MySqlCommand cmd = new MySqlCommand("insert into sta_signup(User_id,FULL_NAME,DoB,CONTACT_NO,MAIL_ID,DESIGINATION,PASSWORD) values(@User_id,@FULL_NAME,@DoB,@CONTACT_NO,@MAIL_ID,@DESIGINATION,@PASSWORD)", mycon);
                cmd.Parameters.AddWithValue("@FULL_NAME", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DoB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@CONTACT_NO", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@MAIL_ID", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@DESIGINATION", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@User_id", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@PASSWORD", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Sign Up Successful. Go to LOGIN');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script> ");
            }
            finally
            {
                mycon.Close();
            }
        }

    }
}