using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Hospital_App
{
    public partial class Registered_Hospitals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hospital_reg;SslMode=none";
            MySqlConnection dbcon = new MySqlConnection(con);

            string query = "SELECT * FROM `hospital_reg_table`";

            try
            {
                dbcon.Open();

                MySqlCommand cmd = new MySqlCommand(query,dbcon);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                dbcon.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error in connection " + ex.ToString());
            }

          
            
        }
    }
}