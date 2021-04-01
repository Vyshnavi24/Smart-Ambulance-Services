using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Hospital_App
{
    public partial class Hospital_admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
            MySqlConnection dbcon = new MySqlConnection(con);
            try
            {
                dbcon.Open();
                string query = "SELECT COUNT(hospital_reg_table.Hospital_Name),hospital_reg_table.Hospital_Name,Hospital_ID from hospital_reg_table INNER JOIN hospital_admin_table ON (hospital_reg_table.Hospital_ID = hospital_admin_table.Ad_Hospital_ID) WHERE hospital_admin_table.Ad_Hospital_ID = '" + TextBox1.Text + "' AND hospital_admin_table.Password = '" + TextBox2.Text + "'";
                MySqlCommand cmd = new MySqlCommand(query, dbcon);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                foreach(DataRow dr in dt.Rows)
                {
                    //string record = dt.Rows[0][1].ToString(); to get values from query
                    if(dt.Rows[0][0].ToString() == "1")
                    {
                        
                        Session["hosp_name"] = dt.Rows[0][1].ToString();
                        Session["hosp_id"] = dt.Rows[0][2].ToString();
                        Response.Redirect("hospital_admin.aspx");
                    }
                    else
                    {
                        Response.Write("data not found");
                    }
                   
                    
                }
               

                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error " + ex);
            }
        }
    }
}