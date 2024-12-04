using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace WebApplication1
{   
    public partial class RemainingAmountView : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Ensure this logic only runs on the initial load, not on postbacks
            {
                string mobile = Session["mobile_num"] as string;

                if (!string.IsNullOrEmpty(mobile))
                {
                    // Call the ViewVoucher method with the mobile number
                    
                }

            }
        }

     

        //protected String mobileNo(String mobileNo)
        //{
        //    return mobileNo;
        //}

        protected void ViewAmount(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string query = "SELECT dbo.Remaining_plan_amount(@mobile_num,@plan_name)";
            SqlCommand rem = new SqlCommand(query, conn);
            rem.CommandType = CommandType.Text;
            string mobile = Session["mobile_num"] as string;
            rem.Parameters.Add(new SqlParameter("@mobile_num", mobile));
            rem.Parameters.Add(new SqlParameter("@plan_name", plan.Text));
            conn.Open();
            int amount = Convert.ToInt32(rem.ExecuteScalar());
            Response.Write($"Remaining amount:{amount}");
            conn.Close();

        }

     
    }
}