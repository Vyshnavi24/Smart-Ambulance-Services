using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_App
{
    public partial class hospital_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
            if (Session["hosp_name"] == null)
            {
                Response.Redirect("Hospital_admin_login.aspx");
            }
            else
            {
                hos_name.Text = Session["hosp_name"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string hname = Session["hosp_name"].ToString();
            string hid = Session["hosp_id"].ToString();
            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
            MySqlConnection dbcon = new MySqlConnection(con);
            try {
            dbcon.Open();
            string query = " INSERT INTO `treatments_by_hosp` (`hospital_tId`, `treatments_treated`) VALUES('" + hid+"', '"+DropDownList1.SelectedItem.ToString()+"')";
            MySqlCommand cmd = new MySqlCommand(query,dbcon);
            cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
            Response.Write("Saved Sucessfully!!");
                
            dbcon.Close();
            }catch(Exception ex)
            {
                Response.Write("Error in query" + ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Hospital_admin_login.aspx");
        }
    }
}