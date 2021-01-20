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
    public partial class guestlecture_Signup : System.Web.UI.Page
    {
        String con = "server =localhost;database =library; Uid=root; password = ; ";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
                MySqlCommand cmd = new MySqlCommand("select * from  guest_signup where UserId='" + TextBox5.Text.Trim() + "';", mycon);
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

                MySqlCommand cmd = new MySqlCommand("insert into guest_signup(UserId,Full_Name,DOB,contact_no,mail_id,Desigination,Dept_Name,Password) values(@UserId,@Full_Name,@DOB,@contact_no,@mail_id,@Desigination,@Dept_Name,@Password)", mycon);
                cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@mail_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Desigination", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Dept_Name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@UserId", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox8.Text.Trim());

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