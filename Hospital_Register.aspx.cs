using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace Hospital_App
{
    public partial class Hospital_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //cancel button
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
        // submit button
        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
            MySqlConnection dbcon = new MySqlConnection(con);
            try
            {

                dbcon.Open();
                string query = "INSERT INTO `hospital_reg_table` (`Hospital_ID`, `Hospital_Name`, `Country`, `City`, `Address`, `Area`, `Landmark`, `Zipcode`, `Telephone`, `Hospital_Email`) VALUES ('" + Hosp_id.Text+ "', '" + Hos_name.Text + "', '" + country_dlist.SelectedItem.ToString()+ "', '" + city_dlist.SelectedItem.ToString() + "', '" + Addr_t.Text+ "','" + Area_t.Text + "','" + Landmark_t.Text + "', '" + Zip_t.Text + "', '" + Tele_t.Text + "', '" + Hosp_eml_t.Text+ "')";
                MySqlCommand cmd = new MySqlCommand(query, dbcon);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();

                string query2 = "INSERT INTO `hospital_admin_table` (`Ad_Hospital_ID`, `Password`) VALUES ('" + Hosp_id.Text + "', '" + Pass_t.Text + "')";
                      MySqlCommand cmd2 = new MySqlCommand(query2, dbcon);

                cmd2.ExecuteNonQuery();
                cmd2.Parameters.Clear();

                Response.Write("Sucessfully Inserted");

              
                dbcon.Close();

            }
            catch(Exception eex)
            {
                Response.Write("Error in connection!"+eex.ToString());

            }
           
        }
    }
}