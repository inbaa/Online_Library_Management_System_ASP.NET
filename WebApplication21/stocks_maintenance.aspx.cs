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
    public partial class stocks_maintenance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNameSearch_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        protected void btnCategory_Click(object sender, EventArgs e)
        {

        }

        protected void btnRackNameSearch9_Click(object sender, EventArgs e)
        {

        }
        protected void btnRackNameSearch_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(CATEGORY like '%' @category '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@category", MySqlDbType.VarChar).Value = TextBox2.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "CATEGORY");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(RNO like '%' @rno '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@rno", MySqlDbType.VarChar).Value = TextBox3.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "RNO");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(ANAME like '%' @aname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@aname", MySqlDbType.VarChar).Value = TextBox4.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "ANAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlCommand cmd = new MySqlCommand();
            mycon = "select * from bookentry where(MBID like '%' @mbid '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@mbid", MySqlDbType.VarChar).Value = TextBox6.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "MBID");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from missingbook where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {


            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "Select count(*) from bookentry";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label30.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "SELECT COUNT(CATEGORY) FROM bookentry WHERE CATEGORY='UNIVERSITY'";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label31.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "SELECT COUNT(CATEGORY) FROM bookentry WHERE CATEGORY='GIFT'";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label32.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "SELECT COUNT(CATEGORY) FROM bookentry WHERE CATEGORY='JOURNAL'";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label33.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "SELECT COUNT(CATEGORY) FROM bookentry WHERE CATEGORY='PROJECT'";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label34.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);
            MySqlDataAdapter da = new MySqlDataAdapter();
            MySqlCommand cmd = new MySqlCommand();
            DataSet ds = new DataSet();
            mycon = "Select count(*) from bookissue";
            try
            {
                con.Open();
                cmd = new MySqlCommand(mycon, con);
                Int32 rows_count = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Label35.Text = rows_count.ToString();

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

    
