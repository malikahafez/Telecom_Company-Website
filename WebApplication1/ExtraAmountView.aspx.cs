using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ExtraAmountView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewAmount(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string query1 = "SELECT dbo.Extra_plan_amount(@mobile_num,@plan_name)";
            SqlCommand Extra = new SqlCommand(query1, conn);
            Extra.CommandType = CommandType.Text;
            Extra.Parameters.Add(new SqlParameter("@mobile_num", mobile.Text));
            Extra.Parameters.Add(new SqlParameter("@plan_name", plan.Text));
            conn.Open();
            int amount1 = Convert.ToInt32(Extra.ExecuteScalar());
            Response.Write($"Extra amount:{amount1}");
            conn.Close();
        }
    }
}