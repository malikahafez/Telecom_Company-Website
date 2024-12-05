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
            SqlDataReader reader = unrestickets.ExecuteReader(); 
                DataTable dt = new DataTable();
                dt.Load(reader);
                reader.Close();
           
                
                    // Check if the NationalID exists in the database
                    SqlCommand validateID = new SqlCommand(
                        "SELECT COUNT(*) FROM customer_account WHERE nationalID = @NID", conn);
                    validateID.Parameters.Add(new SqlParameter("@NID", id));
                    int idCount = (int)validateID.ExecuteScalar();

                    if (idCount > 0)
                    {
                        gvTickets.DataSource = dt;
                        gvTickets.DataBind();
                        ErrorMessage.Visible = false;
            }
                    else
                    {
                        gvTickets.DataSource = null;
                        gvTickets.DataBind();
                        ErrorMessage.Text = "Invalid National ID. No matching records found.";
                        ErrorMessage.Visible = true;
                    }



                    //gvTickets.DataSource = dt;
                    //gvTickets.DataBind();
                    conn.Close();
                }
            }
        }
    
