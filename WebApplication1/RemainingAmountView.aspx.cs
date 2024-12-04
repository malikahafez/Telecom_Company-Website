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
    public partial class RemainingAmountView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewAmount(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string query = "SELECT dbo.Remaining_plan_amount(@mobile_num,@plan_name)";
            SqlCommand rem = new SqlCommand(query, conn);
            rem.CommandType = CommandType.Text;
            rem.Parameters.Add(new SqlParameter("@mobile_num", mobile.Text));
            rem.Parameters.Add(new SqlParameter("@plan_name", plan.Text));
            conn.Open();
            int amount = Convert.ToInt32(rem.ExecuteScalar());
            Response.Write($"Remaining amount:{amount}");
            conn.Close();
           
        }

       
    }
}