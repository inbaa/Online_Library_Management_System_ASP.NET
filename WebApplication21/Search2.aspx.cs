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
    public partial class Search2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =library";
            MySqlConnection con = new MySqlConnection(mycon);

            MySqlCommand cmd = new MySqlCommand();

            mycon = "select * from bookentry where(BNAME like '%' @bname '%' OR ANAME like '%' @aname '%')";
            cmd = new MySqlCommand(mycon, con);
            cmd.Parameters.Add("@bname", MySqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@aname", MySqlDbType.VarChar).Value = TextBox1.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "BNAME");
            da.Fill(ds, "ANAME");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}