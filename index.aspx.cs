using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_App
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ambulance_s_register.aspx");
        }

       
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hospital_Register.aspx");
        }

    }
}