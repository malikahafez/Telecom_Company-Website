using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class consumption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Show_consumption(object sender, EventArgs e)
        {
            int national = Convert.ToInt32(id_input.Text);
            String connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string query = "SELECT * from DBO.Consumption(@Plan_name,@start_date,@end_date)";
            SqlCommand ser = new SqlCommand(query, conn);


            ser.Parameters.Add(new SqlParameter("@NID", national));
            conn.Open();
            SqlDataReader reader = ser.ExecuteReader();


            Table table = new Table();
            table.CssClass = "dynamic-table"; // Add CSS class for styling


            TableHeaderRow headerRow = new TableHeaderRow();
            headerRow.Cells.Add(new TableHeaderCell { Text = "Cashback_id" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "benefits_id" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "Wallet_id" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "the amount" });
            headerRow.Cells.Add(new TableHeaderCell { Text = "the date of transaction" });
            table.Rows.Add(headerRow);

            // Populate table rows with data
            while (reader.Read())
            {
                TableRow row = new TableRow();

                // Add cells for each column
                row.Cells.Add(new TableCell { Text = reader["CashbackID"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["benefitID"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["walletID"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["amount"].ToString() });
                row.Cells.Add(new TableCell { Text = reader["credit_date"].ToString() });

                table.Rows.Add(row);
            }

            conn.Close();


            myContainer.Controls.Add(table);
        }


    }
}
