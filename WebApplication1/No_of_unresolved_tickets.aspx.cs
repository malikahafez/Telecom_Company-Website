using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class No_of_unresolved_tickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowUnresolvedTickets(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int id = Int16.Parse(NationalID.Text);
            SqlCommand unrestickets = new SqlCommand("Ticket_Account_Customer", conn);
            unrestickets.CommandType = CommandType.StoredProcedure;
            unrestickets.Parameters.Add(new SqlParameter("@NID", id));
            conn.Open();
            SqlDataReader reader=unrestickets.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            reader.Close();
            gvTickets.DataSource = dt;
            gvTickets.DataBind();
            conn.Close();
        }
    }
}