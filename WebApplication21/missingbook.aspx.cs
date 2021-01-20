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
    public partial class missingbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        private void dbconnection()
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
        }

        protected void UPDATE_Click(object sender, EventArgs e)
        {
            updatebook();
        }
        protected void DELETE_Click(object sender, EventArgs e)
        {

            deletebook();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            addbook();

        }
        void addbook()
        {
            try
            {
                string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
                MySqlConnection con = new MySqlConnection(mycon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("INSERT INTO missingbook(SERIAL,RNO,LGNO,SUBJECT,BNAME,ANAME,CATEGORY,MBID,PUBLISHER,PRICE,DATE,STATUS,BARCODE) values(@SERIAL,@RNO,@LGNO,@SUBJECT,@BNAME,@ANAME,@CATEGORY,@MBID,@PUBLISHER,@PRICE,@DATE,@STATUS,@BARCODE)", con);

                cmd.Parameters.AddWithValue("@SERIAL", SERIAL.Text.Trim());
                cmd.Parameters.AddWithValue("@RNO", RNO.Text.Trim());
                cmd.Parameters.AddWithValue("@LGNO", LGNO.Text.Trim());
                cmd.Parameters.AddWithValue("@SUBJECT", SUBJECT.Text.Trim());
                cmd.Parameters.AddWithValue("@BNAME", BNAME.Text.Trim());
                cmd.Parameters.AddWithValue("@ANAME", ANAME.Text.Trim());
                cmd.Parameters.AddWithValue("@CATEGORY", CATEGORY.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@MBID", MBID.Text.Trim());
                cmd.Parameters.AddWithValue("@PUBLISHER", PUBLISHER.Text.Trim());
                cmd.Parameters.AddWithValue("@PRICE", PRICE.Text.Trim());
                cmd.Parameters.AddWithValue("@DATE", DATE.Text.Trim());
                cmd.Parameters.AddWithValue("@STATUS", "active");
                cmd.Parameters.AddWithValue("@BARCODE", BARCODE.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book added successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


        void deletebook()
        {

            try
            {

                string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
                MySqlConnection con = new MySqlConnection(mycon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("DELETE from missingbook WHERE MBID='" + MBID.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Deleted Successfully');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }



        void updatebook()
        {
            try
            {
                string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
                MySqlConnection con = new MySqlConnection(mycon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                MySqlCommand cmd = new MySqlCommand("UPDATE missingbook set SERIAL=@SERIAL,RNO=@RNO,LGNO=@LGNO,SUBJECT=@SUBJECT,BNAME=@BNAME,ANAME=@ANAME,CATEGORY=@CATEGORY,MBID=@MBID,PUBLISHER=@PUBLISHER,PRICE=@PRICE,DATE=@DATE,BARCODE=@BARCODE  where MBID='" + MBID.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@SERIAL", SERIAL.Text.Trim());
                cmd.Parameters.AddWithValue("@RNO", RNO.Text.Trim());
                cmd.Parameters.AddWithValue("@LGNO", LGNO.Text.Trim());
                cmd.Parameters.AddWithValue("@SUBJECT", SUBJECT.Text.Trim());
                cmd.Parameters.AddWithValue("@BNAME", BNAME.Text.Trim());
                cmd.Parameters.AddWithValue("@ANAME", ANAME.Text.Trim());
                cmd.Parameters.AddWithValue("@CATEGORY", CATEGORY.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@MBID", MBID.Text.Trim());
                cmd.Parameters.AddWithValue("@PUBLISHER", PUBLISHER.Text.Trim());
                cmd.Parameters.AddWithValue("@PRICE", PRICE.Text.Trim());
                cmd.Parameters.AddWithValue("@DATE", DATE.Text.Trim());
                cmd.Parameters.AddWithValue("@BARCODE", BARCODE.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Book Updated Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void CATEGORY_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}