using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Active_plans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mobile = Session["mobile_num"] as string;
            if (!IsPostBack)
            {
                
                LoadActivePlans(mobile);
            }
        }
        private void LoadActivePlans(String customernumber)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string query = "SELECT * from DBO.Usage_Plan_CurrentMonth(@mobile_num)";
            SqlCommand ser = new SqlCommand(query, conn);


            ser.Parameters.Add(new SqlParameter("@mobile_num", customernumber));

            Panel container = new Panel();

            conn.Open();

            SqlDataReader reader = ser.ExecuteReader(CommandBehavior.CloseConnection);
            while (reader.Read())
            {
                Panel box = new Panel();
                box.CssClass = "service-plan-box"; // Optional CSS class for styling


                Label data_consume = new Label();
                data_consume.Text = "DATA CONSUMED :" + reader["data_consumption"].ToString();
                data_consume.CssClass = "plan-label";  // Optional CSS class for styling

                Label SMS = new Label();
                SMS.Text = "SMS CONSUMED :" + reader["SMS_sent"].ToString();
                SMS.CssClass = "plan-id-label";

                Label Min = new Label();
                Min.Text = "Minutes Used :" + reader["minutes_used"].ToString();
                Min.CssClass = "plan-id-label";



                // Add the label and button to the box
                box.Controls.Add(data_consume);
                box.Controls.Add(SMS);
                box.Controls.Add(Min);

                // Add the box to the container
                myContainer.Controls.Add(box);
            }
            conn.Close();


        }
    }
}