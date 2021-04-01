using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_App
{
    public partial class patient_test : System.Web.UI.Page
    {
       
         
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       protected void Button1_Click(object sender, EventArgs e)
        {
            
             string loc = lochf.Value.ToString();
           
               string[] arr = loc.Split(',');
           // Response.Write(arr.Length);
            
            string s1 = arr[0];
            string s2 = arr[1];
            string s3 = arr[2];
            string s4 = arr[3];

           // Response.Write("here"+s2);
          
            string type_chsn = DropDownList1.SelectedItem.ToString();
            string con = "datasource=127.0.0.1;port=3306; username=root;password=;database=hosp_app;SslMode=none";
             MySqlConnection dbcon = new MySqlConnection(con);
            string query = "SELECT DISTINCT hospital_reg_table.Hospital_Name,hospital_reg_table.Hospital_ID,hospital_reg_table.Address,hospital_reg_table.City,hospital_reg_table.Landmark FROM hospital_reg_table INNER JOIN treatments_by_hosp ON(hospital_reg_table.Hospital_ID = treatments_by_hosp.hospital_tId) WHERE treatments_treated = '" + type_chsn+"' AND Area IN('"+s1+ "','"+s2+ "','"+s3+"') OR Zipcode = '"+s4+"'";
            //string query = "SELECT DISTINCT hospital_reg_table.Hospital_Name,hospital_reg_table.Hospital_ID FROM hospital_reg_table INNER JOIN treatments_by_hosp ON(hospital_reg_table.Hospital_ID = treatments_by_hosp.hospital_tId) WHERE treatments_treated = 'Cardiac Arrest' AND Area IN('malkajgiri','secunderabad','kapra') OR Zipcode = '500047'";
            try
            {

                dbcon.Open();
              
                MySqlCommand cmd = new MySqlCommand(query, dbcon);

                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);    
                    GridView1.DataSource = dt;
                GridView1.DataBind();
             
                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string loc = lochf.Value;

            GridViewRow gr = GridView1.SelectedRow;
            Session["hosp_name"] = gr.Cells[1].Text;
            Session["hosp_Id"] = gr.Cells[2].Text;
            Session["hosp_addr"] = gr.Cells[3].Text;
            Session["hosp_city"] = gr.Cells[4].Text;
            Session["hosp_lmark"] = gr.Cells[5].Text;
            Response.Redirect("~/distance_btw.aspx");
            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[3].Visible = false;

        }

       
    }
}