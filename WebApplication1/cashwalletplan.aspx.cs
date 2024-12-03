using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBM3
{
    public partial class cashwalletplan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Click += new EventHandler(this.viewamount);
            Button1.Click += new EventHandler(this.goback);
        }
        protected void goback(object sender, EventArgs e)
        {
            Response.Redirect("admin_homepage");
        }
        protected void viewamount(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            int walletID = int.Parse(TextBox1.Text);
            int planID = int.Parse(TextBox1.Text);
            SqlCommand viewamt = new SqlCommand("select dbo.Wallet_Cashback_Amount(@walletID,@planID)", conn);
            viewamt.Parameters.Add(new SqlParameter("@walletID", walletID));
            viewamt.Parameters.Add(new SqlParameter("@planID", planID)); 
            conn.Open();
            object res = viewamt.ExecuteScalar();
            Label1.Text = "Cashback Amount :" + res.ToString();

            conn.Close();
            
        }
    }
}