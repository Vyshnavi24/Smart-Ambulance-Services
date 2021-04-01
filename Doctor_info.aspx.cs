using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_App
{
    public partial class Doctor_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string hname = Session["hosp_name"].ToString();
           
           
            Response.Write(hname+ "<br/>");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string hid = Session["hosp_id"].ToString();
            string d_id = TextBox1.Text;
              string d_name = TextBox2.Text;
              string d_prof = DropDownList1.SelectedItem.ToString();
              string d_avail = DropDownList2.SelectedItem.ToString();

              string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
              MySqlConnection dbcon = new MySqlConnection(con);
              try
              {

                  dbcon.Open();
                  string query = "INSERT INTO `doctor_details` (`doctor_id`, `doctor_name`, `doctor_hc`, `doctor_availability`, `hosp_id`) VALUES ('"+d_id+"', '"+d_name+"', '"+d_prof+"', '"+d_avail+"','"+hid+"')";
                  MySqlCommand cmd = new MySqlCommand(query, dbcon);
                  cmd.ExecuteNonQuery();
                Response.Write("Sucessfully Saved Dr : " + d_name);
              }
              catch(Exception ex)
              {
                  Response.Write("Error" + ex);
              }
        }
    }
}