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
    public partial class checkwallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Click += new EventHandler(this.checkifwallet);
            Button1.Click += new EventHandler(this.goback);
        }
        protected void goback(object sender, EventArgs e)
        {
            Response.Redirect("admin_homepage");
        }

        protected void checkifwallet(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string mobile = TextBox1.Text;

                    if (string.IsNullOrWhiteSpace(mobile))
                    {
                        Label1.Text = "Please enter a valid mobile number.";
                        return;
                    }

                    // Use SELECT to call the SQL function
                    SqlCommand Checkwallet = new SqlCommand("SELECT dbo.Wallet_MobileNo(@mobile_num)", conn);
                    Checkwallet.Parameters.Add(new SqlParameter("@mobile_num", mobile));

                    conn.Open();
                    object res = Checkwallet.ExecuteScalar();
                    

                    
                        if (res is bool bitValue)
                            Label1.Text = "The mobile number is linked to a wallet";
                        else
                            Label1.Text = "The mobile number is not linked to a wallet";
                   
                }
            }
            catch (SqlException ex)
            {
                Label1.Text = "Database error: " + ex.Message;
            }
            catch (Exception ex)
            {
                Label1.Text = "An unexpected error occurred: " + ex.Message;
            }
        }
    }
}