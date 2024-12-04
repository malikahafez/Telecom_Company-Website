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
    public partial class HighestVoucherValueView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewVoucher(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand highest_voucher = new SqlCommand("Account_Highest_Voucher", conn);
            highest_voucher.CommandType = CommandType.StoredProcedure;
            highest_voucher.Parameters.Add(new SqlParameter("@mobile_num", mobile.Text));
            conn.Open();
            SqlDataReader reader = highest_voucher.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            reader.Close();
            gvVoucher.DataSource = dt;
            gvVoucher.DataBind();
            conn.Close();
        }
    }
}