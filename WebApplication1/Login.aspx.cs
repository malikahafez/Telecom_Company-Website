using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            int id = Int16.Parse(userID.Text);
            string pass = password.Text;

            if (id == 0 && pass.CompareTo("adminAccount") ==0)
            {
                Session["user"] = id;
                Response.Write("Welcome Admin");
                Response.Redirect("admin_homepage.aspx");
            }
           

            conn.Open();
            conn.Close();



        }

    }
}