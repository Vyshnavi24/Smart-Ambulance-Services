using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_App
{
    public partial class distance_btw : System.Web.UI.Page
    {
        public string value, strImagePath;
        public string hname,haddr,hcity,curloc, destarea, hosname, lmark, destination,hid;

       

        protected void Page_Load(object sender, EventArgs e)
        {

            hid =Session["hosp_Id"].ToString();
            hname = Session["hosp_name"].ToString();
            haddr = Session["hosp_addr"].ToString();
            hcity = Session["hosp_city"].ToString();
           lmark = Session["hosp_Lmark"].ToString();

            Response.Write("Your have selected : " + hname + "<br/>" + "Address : " + haddr + "<br/>"
               + "City : " + hcity + "<br/>" + "LandMark : " + lmark+"<br/>");

            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
            MySqlConnection dbcon = new MySqlConnection(con);
            string query = "SELECT * FROM `doctor_details` WHERE hosp_id = '"+hid+"'";
            try
            {
                dbcon.Open();
                MySqlCommand cmd = new MySqlCommand(query, dbcon);
                cmd.ExecuteNonQuery();
                MySqlDataReader reader = cmd.ExecuteReader();
                Response.Write("Doctor's Availability" + "<br/>");
                while (reader.Read())
                {
                    string dname = reader.GetString("doctor_name");
                    string davail = reader.GetString("doctor_availability");
                    Response.Write(dname + " : " + davail + "<br/>");
                }


                dbcon.Close();

            }catch(Exception ex)
            {
                Response.Write("Error :" + ex);
            }
          




        }

       protected void Button1_Click(object sender, EventArgs e)
        {

            destination = hname + haddr + lmark;

           

            Response.Redirect("google.navigation:q='"+destination+"'");

            //< p >< a href = "google.navigation:q=San+Francisco" > Navigation to San Francisco </ a ></ p >

        }
       /* protected void Button1_Click1(object sender, EventArgs e)
        {
            curloc = Request.QueryString["mycurloc"];

            destarea = Request.QueryString["are"];
            hosname = Request.QueryString["hos"];
            lmark = Request.QueryString["lm"];
            destination = hosname + ", " + lmark + ", " + destarea;
            //Response.Write(destination);
            Response.Redirect("google.navigation:q='" + destination + "'");
          //  Response.Redirect("https://www.google.com/maps/dir/'" + curloc + "'/'" + destination + "'");

        }*/
    }
}