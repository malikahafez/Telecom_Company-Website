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
    public partial class other_plans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mobile = Session["mobile_num"] as string;
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(mobile))
                {
                    // Call the ViewVoucher method with the mobile number
                    Loadotherplans(mobile);
                }
                else {
                    Response.Write("Mobile number not found in session.");

                      }
                 
            }
        }
        private void Loadotherplans(String customernumber)
        {

            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand ser = new SqlCommand("Unsubscribed_Plans", conn);
            ser.CommandType = CommandType.StoredProcedure;

            ser.Parameters.Add(new SqlParameter("@mobile_num", customernumber));

            Panel container = new Panel();

            
            conn.Open();

            SqlDataReader reader = ser.ExecuteReader();
            while (reader.Read())
            {
                Panel box = new Panel();
                box.CssClass = "service-plan-box"; // Optional CSS class for styling


                Label planLabel = new Label();
                //string planname= reader["name"].ToString();
                planLabel.Text = reader["name"].ToString();
                planLabel.CssClass = "plan-label";  // Optional CSS class for styling

                Label planidlabel = new Label();
                planidlabel.Text = reader["planID"].ToString();
                planidlabel.CssClass = "plan-id-label";


                // Create a button inside the box
                Button planButton = new Button();
                planButton.Text = "Select Plan";
                planButton.CssClass = "plan-button";  // Optional CSS class for styling
                planButton.CommandArgument = reader["name"].ToString();
                // Store plan name as argument for the button

                // Add the label and button to the box
                box.Controls.Add(planidlabel);
                box.Controls.Add(planLabel);
                box.Controls.Add(planButton);

                // Add the box to the container
                myContainer.Controls.Add(box);
            }
            conn.Close();


        }
    }
}